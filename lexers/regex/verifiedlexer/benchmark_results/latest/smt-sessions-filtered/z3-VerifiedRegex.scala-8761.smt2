; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!467564 () Bool)

(assert start!467564)

(declare-fun b!4645798 () Bool)

(declare-fun e!2898090 () Bool)

(declare-datatypes ((K!13210 0))(
  ( (K!13211 (val!18839 Int)) )
))
(declare-datatypes ((V!13456 0))(
  ( (V!13457 (val!18840 Int)) )
))
(declare-datatypes ((tuple2!52942 0))(
  ( (tuple2!52943 (_1!29765 K!13210) (_2!29765 V!13456)) )
))
(declare-datatypes ((List!51974 0))(
  ( (Nil!51850) (Cons!51850 (h!57980 tuple2!52942) (t!359070 List!51974)) )
))
(declare-datatypes ((tuple2!52944 0))(
  ( (tuple2!52945 (_1!29766 (_ BitVec 64)) (_2!29766 List!51974)) )
))
(declare-datatypes ((List!51975 0))(
  ( (Nil!51851) (Cons!51851 (h!57981 tuple2!52944) (t!359071 List!51975)) )
))
(declare-fun lt!1810086 () List!51975)

(declare-datatypes ((ListLongMap!3739 0))(
  ( (ListLongMap!3740 (toList!5181 List!51975)) )
))
(declare-fun inv!67148 (ListLongMap!3739) Bool)

(assert (=> b!4645798 (= e!2898090 (inv!67148 (ListLongMap!3740 lt!1810086)))))

(declare-fun tp_is_empty!29791 () Bool)

(declare-fun e!2898081 () Bool)

(declare-fun tp_is_empty!29789 () Bool)

(declare-fun tp!1343134 () Bool)

(declare-fun b!4645799 () Bool)

(assert (=> b!4645799 (= e!2898081 (and tp_is_empty!29789 tp_is_empty!29791 tp!1343134))))

(declare-fun res!1951932 () Bool)

(declare-fun e!2898088 () Bool)

(assert (=> start!467564 (=> (not res!1951932) (not e!2898088))))

(declare-fun oldBucket!40 () List!51974)

(declare-fun noDuplicateKeys!1624 (List!51974) Bool)

(assert (=> start!467564 (= res!1951932 (noDuplicateKeys!1624 oldBucket!40))))

(assert (=> start!467564 e!2898088))

(assert (=> start!467564 true))

(assert (=> start!467564 e!2898081))

(assert (=> start!467564 tp_is_empty!29789))

(declare-fun e!2898085 () Bool)

(assert (=> start!467564 e!2898085))

(declare-fun b!4645800 () Bool)

(declare-fun res!1951926 () Bool)

(declare-fun e!2898086 () Bool)

(assert (=> b!4645800 (=> (not res!1951926) (not e!2898086))))

(declare-datatypes ((Hashable!6021 0))(
  ( (HashableExt!6020 (__x!31724 Int)) )
))
(declare-fun hashF!1389 () Hashable!6021)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun newBucket!224 () List!51974)

(declare-fun allKeysSameHash!1478 (List!51974 (_ BitVec 64) Hashable!6021) Bool)

(assert (=> b!4645800 (= res!1951926 (allKeysSameHash!1478 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4645801 () Bool)

(declare-fun e!2898083 () Bool)

(assert (=> b!4645801 (= e!2898083 e!2898090)))

(declare-fun res!1951927 () Bool)

(assert (=> b!4645801 (=> res!1951927 e!2898090)))

(declare-datatypes ((ListMap!4517 0))(
  ( (ListMap!4518 (toList!5182 List!51974)) )
))
(declare-fun lt!1810085 () ListMap!4517)

(declare-fun eq!903 (ListMap!4517 ListMap!4517) Bool)

(declare-fun +!1968 (ListMap!4517 tuple2!52942) ListMap!4517)

(declare-fun addToMapMapFromBucket!1081 (List!51974 ListMap!4517) ListMap!4517)

(assert (=> b!4645801 (= res!1951927 (not (eq!903 (+!1968 lt!1810085 (h!57980 oldBucket!40)) (addToMapMapFromBucket!1081 oldBucket!40 (ListMap!4518 Nil!51850)))))))

(declare-fun lt!1810091 () tuple2!52942)

(declare-fun lt!1810088 () List!51974)

(assert (=> b!4645801 (eq!903 (addToMapMapFromBucket!1081 (Cons!51850 lt!1810091 lt!1810088) (ListMap!4518 Nil!51850)) (+!1968 lt!1810085 lt!1810091))))

(declare-datatypes ((Unit!116275 0))(
  ( (Unit!116276) )
))
(declare-fun lt!1810090 () Unit!116275)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!154 (tuple2!52942 List!51974 ListMap!4517) Unit!116275)

(assert (=> b!4645801 (= lt!1810090 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!154 lt!1810091 lt!1810088 (ListMap!4518 Nil!51850)))))

(declare-fun head!9724 (List!51974) tuple2!52942)

(assert (=> b!4645801 (= lt!1810091 (head!9724 oldBucket!40))))

(declare-fun b!4645802 () Bool)

(declare-fun res!1951930 () Bool)

(assert (=> b!4645802 (=> (not res!1951930) (not e!2898088))))

(assert (=> b!4645802 (= res!1951930 (noDuplicateKeys!1624 newBucket!224))))

(declare-fun b!4645803 () Bool)

(declare-fun res!1951931 () Bool)

(assert (=> b!4645803 (=> (not res!1951931) (not e!2898088))))

(declare-fun key!4968 () K!13210)

(declare-fun removePairForKey!1247 (List!51974 K!13210) List!51974)

(assert (=> b!4645803 (= res!1951931 (= (removePairForKey!1247 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4645804 () Bool)

(declare-fun e!2898087 () Bool)

(assert (=> b!4645804 (= e!2898087 e!2898083)))

(declare-fun res!1951939 () Bool)

(assert (=> b!4645804 (=> res!1951939 e!2898083)))

(assert (=> b!4645804 (= res!1951939 (not (= lt!1810085 (addToMapMapFromBucket!1081 newBucket!224 (ListMap!4518 Nil!51850)))))))

(assert (=> b!4645804 (= lt!1810085 (addToMapMapFromBucket!1081 lt!1810088 (ListMap!4518 Nil!51850)))))

(declare-fun b!4645805 () Bool)

(declare-fun res!1951936 () Bool)

(assert (=> b!4645805 (=> res!1951936 e!2898090)))

(declare-fun lt!1810087 () ListMap!4517)

(assert (=> b!4645805 (= res!1951936 (not (= lt!1810085 lt!1810087)))))

(declare-fun b!4645806 () Bool)

(assert (=> b!4645806 (= e!2898088 e!2898086)))

(declare-fun res!1951940 () Bool)

(assert (=> b!4645806 (=> (not res!1951940) (not e!2898086))))

(declare-fun lt!1810084 () ListMap!4517)

(declare-fun contains!14991 (ListMap!4517 K!13210) Bool)

(assert (=> b!4645806 (= res!1951940 (contains!14991 lt!1810084 key!4968))))

(declare-fun extractMap!1680 (List!51975) ListMap!4517)

(assert (=> b!4645806 (= lt!1810084 (extractMap!1680 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))))

(declare-fun b!4645807 () Bool)

(declare-fun e!2898089 () Bool)

(assert (=> b!4645807 (= e!2898086 (not e!2898089))))

(declare-fun res!1951935 () Bool)

(assert (=> b!4645807 (=> res!1951935 e!2898089)))

(get-info :version)

(assert (=> b!4645807 (= res!1951935 (or (not ((_ is Cons!51850) oldBucket!40)) (not (= (_1!29765 (h!57980 oldBucket!40)) key!4968))))))

(declare-fun e!2898084 () Bool)

(assert (=> b!4645807 e!2898084))

(declare-fun res!1951937 () Bool)

(assert (=> b!4645807 (=> (not res!1951937) (not e!2898084))))

(declare-fun lt!1810089 () ListMap!4517)

(assert (=> b!4645807 (= res!1951937 (= lt!1810084 (addToMapMapFromBucket!1081 oldBucket!40 lt!1810089)))))

(assert (=> b!4645807 (= lt!1810089 (extractMap!1680 Nil!51851))))

(assert (=> b!4645807 true))

(declare-fun b!4645808 () Bool)

(declare-fun res!1951938 () Bool)

(assert (=> b!4645808 (=> res!1951938 e!2898090)))

(declare-fun containsKey!2690 (List!51974 K!13210) Bool)

(assert (=> b!4645808 (= res!1951938 (containsKey!2690 lt!1810088 key!4968))))

(declare-fun b!4645809 () Bool)

(declare-fun res!1951928 () Bool)

(assert (=> b!4645809 (=> (not res!1951928) (not e!2898088))))

(assert (=> b!4645809 (= res!1951928 (allKeysSameHash!1478 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4645810 () Bool)

(declare-fun e!2898082 () Bool)

(assert (=> b!4645810 (= e!2898089 e!2898082)))

(declare-fun res!1951934 () Bool)

(assert (=> b!4645810 (=> res!1951934 e!2898082)))

(assert (=> b!4645810 (= res!1951934 (not (= lt!1810088 newBucket!224)))))

(declare-fun tail!8239 (List!51974) List!51974)

(assert (=> b!4645810 (= lt!1810088 (tail!8239 oldBucket!40))))

(declare-fun b!4645811 () Bool)

(declare-fun tp!1343135 () Bool)

(assert (=> b!4645811 (= e!2898085 (and tp_is_empty!29789 tp_is_empty!29791 tp!1343135))))

(declare-fun b!4645812 () Bool)

(assert (=> b!4645812 (= e!2898084 (= lt!1810089 (ListMap!4518 Nil!51850)))))

(declare-fun b!4645813 () Bool)

(declare-fun res!1951933 () Bool)

(assert (=> b!4645813 (=> (not res!1951933) (not e!2898086))))

(declare-fun hash!3747 (Hashable!6021 K!13210) (_ BitVec 64))

(assert (=> b!4645813 (= res!1951933 (= (hash!3747 hashF!1389 key!4968) hash!414))))

(declare-fun b!4645814 () Bool)

(assert (=> b!4645814 (= e!2898082 e!2898087)))

(declare-fun res!1951929 () Bool)

(assert (=> b!4645814 (=> res!1951929 e!2898087)))

(assert (=> b!4645814 (= res!1951929 (not (= lt!1810087 (extractMap!1680 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))))))

(assert (=> b!4645814 (= lt!1810087 (extractMap!1680 lt!1810086))))

(assert (=> b!4645814 (= lt!1810086 (Cons!51851 (tuple2!52945 hash!414 lt!1810088) Nil!51851))))

(assert (= (and start!467564 res!1951932) b!4645802))

(assert (= (and b!4645802 res!1951930) b!4645803))

(assert (= (and b!4645803 res!1951931) b!4645809))

(assert (= (and b!4645809 res!1951928) b!4645806))

(assert (= (and b!4645806 res!1951940) b!4645813))

(assert (= (and b!4645813 res!1951933) b!4645800))

(assert (= (and b!4645800 res!1951926) b!4645807))

(assert (= (and b!4645807 res!1951937) b!4645812))

(assert (= (and b!4645807 (not res!1951935)) b!4645810))

(assert (= (and b!4645810 (not res!1951934)) b!4645814))

(assert (= (and b!4645814 (not res!1951929)) b!4645804))

(assert (= (and b!4645804 (not res!1951939)) b!4645801))

(assert (= (and b!4645801 (not res!1951927)) b!4645808))

(assert (= (and b!4645808 (not res!1951938)) b!4645805))

(assert (= (and b!4645805 (not res!1951936)) b!4645798))

(assert (= (and start!467564 ((_ is Cons!51850) oldBucket!40)) b!4645799))

(assert (= (and start!467564 ((_ is Cons!51850) newBucket!224)) b!4645811))

(declare-fun m!5510841 () Bool)

(assert (=> start!467564 m!5510841))

(declare-fun m!5510843 () Bool)

(assert (=> b!4645803 m!5510843))

(declare-fun m!5510845 () Bool)

(assert (=> b!4645809 m!5510845))

(declare-fun m!5510847 () Bool)

(assert (=> b!4645804 m!5510847))

(declare-fun m!5510849 () Bool)

(assert (=> b!4645804 m!5510849))

(declare-fun m!5510851 () Bool)

(assert (=> b!4645801 m!5510851))

(declare-fun m!5510853 () Bool)

(assert (=> b!4645801 m!5510853))

(assert (=> b!4645801 m!5510851))

(declare-fun m!5510855 () Bool)

(assert (=> b!4645801 m!5510855))

(declare-fun m!5510857 () Bool)

(assert (=> b!4645801 m!5510857))

(declare-fun m!5510859 () Bool)

(assert (=> b!4645801 m!5510859))

(declare-fun m!5510861 () Bool)

(assert (=> b!4645801 m!5510861))

(declare-fun m!5510863 () Bool)

(assert (=> b!4645801 m!5510863))

(assert (=> b!4645801 m!5510863))

(assert (=> b!4645801 m!5510857))

(declare-fun m!5510865 () Bool)

(assert (=> b!4645801 m!5510865))

(assert (=> b!4645801 m!5510853))

(declare-fun m!5510867 () Bool)

(assert (=> b!4645807 m!5510867))

(declare-fun m!5510869 () Bool)

(assert (=> b!4645807 m!5510869))

(declare-fun m!5510871 () Bool)

(assert (=> b!4645798 m!5510871))

(declare-fun m!5510873 () Bool)

(assert (=> b!4645813 m!5510873))

(declare-fun m!5510875 () Bool)

(assert (=> b!4645802 m!5510875))

(declare-fun m!5510877 () Bool)

(assert (=> b!4645814 m!5510877))

(declare-fun m!5510879 () Bool)

(assert (=> b!4645814 m!5510879))

(declare-fun m!5510881 () Bool)

(assert (=> b!4645806 m!5510881))

(declare-fun m!5510883 () Bool)

(assert (=> b!4645806 m!5510883))

(declare-fun m!5510885 () Bool)

(assert (=> b!4645808 m!5510885))

(declare-fun m!5510887 () Bool)

(assert (=> b!4645810 m!5510887))

(declare-fun m!5510889 () Bool)

(assert (=> b!4645800 m!5510889))

(check-sat (not b!4645811) (not b!4645800) (not b!4645798) (not b!4645803) tp_is_empty!29791 (not b!4645813) (not b!4645801) (not start!467564) (not b!4645807) (not b!4645802) (not b!4645806) (not b!4645809) (not b!4645808) (not b!4645799) (not b!4645810) tp_is_empty!29789 (not b!4645804) (not b!4645814))
(check-sat)
(get-model)

(declare-fun d!1464922 () Bool)

(assert (=> d!1464922 true))

(assert (=> d!1464922 true))

(declare-fun lambda!197489 () Int)

(declare-fun forall!10987 (List!51974 Int) Bool)

(assert (=> d!1464922 (= (allKeysSameHash!1478 newBucket!224 hash!414 hashF!1389) (forall!10987 newBucket!224 lambda!197489))))

(declare-fun bs!1036258 () Bool)

(assert (= bs!1036258 d!1464922))

(declare-fun m!5510891 () Bool)

(assert (=> bs!1036258 m!5510891))

(assert (=> b!4645800 d!1464922))

(declare-fun bs!1036259 () Bool)

(declare-fun d!1464926 () Bool)

(assert (= bs!1036259 (and d!1464926 d!1464922)))

(declare-fun lambda!197490 () Int)

(assert (=> bs!1036259 (= lambda!197490 lambda!197489)))

(assert (=> d!1464926 true))

(assert (=> d!1464926 true))

(assert (=> d!1464926 (= (allKeysSameHash!1478 oldBucket!40 hash!414 hashF!1389) (forall!10987 oldBucket!40 lambda!197490))))

(declare-fun bs!1036260 () Bool)

(assert (= bs!1036260 d!1464926))

(declare-fun m!5510893 () Bool)

(assert (=> bs!1036260 m!5510893))

(assert (=> b!4645809 d!1464926))

(declare-fun d!1464928 () Bool)

(assert (=> d!1464928 (= (tail!8239 oldBucket!40) (t!359070 oldBucket!40))))

(assert (=> b!4645810 d!1464928))

(declare-fun d!1464930 () Bool)

(declare-fun res!1951945 () Bool)

(declare-fun e!2898097 () Bool)

(assert (=> d!1464930 (=> res!1951945 e!2898097)))

(assert (=> d!1464930 (= res!1951945 (not ((_ is Cons!51850) oldBucket!40)))))

(assert (=> d!1464930 (= (noDuplicateKeys!1624 oldBucket!40) e!2898097)))

(declare-fun b!4645827 () Bool)

(declare-fun e!2898098 () Bool)

(assert (=> b!4645827 (= e!2898097 e!2898098)))

(declare-fun res!1951946 () Bool)

(assert (=> b!4645827 (=> (not res!1951946) (not e!2898098))))

(assert (=> b!4645827 (= res!1951946 (not (containsKey!2690 (t!359070 oldBucket!40) (_1!29765 (h!57980 oldBucket!40)))))))

(declare-fun b!4645828 () Bool)

(assert (=> b!4645828 (= e!2898098 (noDuplicateKeys!1624 (t!359070 oldBucket!40)))))

(assert (= (and d!1464930 (not res!1951945)) b!4645827))

(assert (= (and b!4645827 res!1951946) b!4645828))

(declare-fun m!5510895 () Bool)

(assert (=> b!4645827 m!5510895))

(declare-fun m!5510897 () Bool)

(assert (=> b!4645828 m!5510897))

(assert (=> start!467564 d!1464930))

(declare-fun d!1464932 () Bool)

(declare-fun res!1951951 () Bool)

(declare-fun e!2898103 () Bool)

(assert (=> d!1464932 (=> res!1951951 e!2898103)))

(assert (=> d!1464932 (= res!1951951 (and ((_ is Cons!51850) lt!1810088) (= (_1!29765 (h!57980 lt!1810088)) key!4968)))))

(assert (=> d!1464932 (= (containsKey!2690 lt!1810088 key!4968) e!2898103)))

(declare-fun b!4645833 () Bool)

(declare-fun e!2898104 () Bool)

(assert (=> b!4645833 (= e!2898103 e!2898104)))

(declare-fun res!1951952 () Bool)

(assert (=> b!4645833 (=> (not res!1951952) (not e!2898104))))

(assert (=> b!4645833 (= res!1951952 ((_ is Cons!51850) lt!1810088))))

(declare-fun b!4645834 () Bool)

(assert (=> b!4645834 (= e!2898104 (containsKey!2690 (t!359070 lt!1810088) key!4968))))

(assert (= (and d!1464932 (not res!1951951)) b!4645833))

(assert (= (and b!4645833 res!1951952) b!4645834))

(declare-fun m!5510899 () Bool)

(assert (=> b!4645834 m!5510899))

(assert (=> b!4645808 d!1464932))

(declare-fun d!1464934 () Bool)

(declare-fun isStrictlySorted!567 (List!51975) Bool)

(assert (=> d!1464934 (= (inv!67148 (ListLongMap!3740 lt!1810086)) (isStrictlySorted!567 (toList!5181 (ListLongMap!3740 lt!1810086))))))

(declare-fun bs!1036261 () Bool)

(assert (= bs!1036261 d!1464934))

(declare-fun m!5510901 () Bool)

(assert (=> bs!1036261 m!5510901))

(assert (=> b!4645798 d!1464934))

(declare-fun bs!1036299 () Bool)

(declare-fun b!4645912 () Bool)

(assert (= bs!1036299 (and b!4645912 d!1464922)))

(declare-fun lambda!197562 () Int)

(assert (=> bs!1036299 (not (= lambda!197562 lambda!197489))))

(declare-fun bs!1036300 () Bool)

(assert (= bs!1036300 (and b!4645912 d!1464926)))

(assert (=> bs!1036300 (not (= lambda!197562 lambda!197490))))

(assert (=> b!4645912 true))

(declare-fun bs!1036301 () Bool)

(declare-fun b!4645910 () Bool)

(assert (= bs!1036301 (and b!4645910 d!1464922)))

(declare-fun lambda!197563 () Int)

(assert (=> bs!1036301 (not (= lambda!197563 lambda!197489))))

(declare-fun bs!1036302 () Bool)

(assert (= bs!1036302 (and b!4645910 d!1464926)))

(assert (=> bs!1036302 (not (= lambda!197563 lambda!197490))))

(declare-fun bs!1036303 () Bool)

(assert (= bs!1036303 (and b!4645910 b!4645912)))

(assert (=> bs!1036303 (= lambda!197563 lambda!197562)))

(assert (=> b!4645910 true))

(declare-fun lambda!197564 () Int)

(assert (=> bs!1036301 (not (= lambda!197564 lambda!197489))))

(assert (=> bs!1036302 (not (= lambda!197564 lambda!197490))))

(declare-fun lt!1810277 () ListMap!4517)

(assert (=> bs!1036303 (= (= lt!1810277 lt!1810089) (= lambda!197564 lambda!197562))))

(assert (=> b!4645910 (= (= lt!1810277 lt!1810089) (= lambda!197564 lambda!197563))))

(assert (=> b!4645910 true))

(declare-fun bs!1036304 () Bool)

(declare-fun d!1464936 () Bool)

(assert (= bs!1036304 (and d!1464936 b!4645912)))

(declare-fun lt!1810261 () ListMap!4517)

(declare-fun lambda!197565 () Int)

(assert (=> bs!1036304 (= (= lt!1810261 lt!1810089) (= lambda!197565 lambda!197562))))

(declare-fun bs!1036305 () Bool)

(assert (= bs!1036305 (and d!1464936 b!4645910)))

(assert (=> bs!1036305 (= (= lt!1810261 lt!1810089) (= lambda!197565 lambda!197563))))

(declare-fun bs!1036306 () Bool)

(assert (= bs!1036306 (and d!1464936 d!1464922)))

(assert (=> bs!1036306 (not (= lambda!197565 lambda!197489))))

(declare-fun bs!1036307 () Bool)

(assert (= bs!1036307 (and d!1464936 d!1464926)))

(assert (=> bs!1036307 (not (= lambda!197565 lambda!197490))))

(assert (=> bs!1036305 (= (= lt!1810261 lt!1810277) (= lambda!197565 lambda!197564))))

(assert (=> d!1464936 true))

(declare-fun e!2898153 () ListMap!4517)

(assert (=> b!4645910 (= e!2898153 lt!1810277)))

(declare-fun lt!1810262 () ListMap!4517)

(assert (=> b!4645910 (= lt!1810262 (+!1968 lt!1810089 (h!57980 oldBucket!40)))))

(assert (=> b!4645910 (= lt!1810277 (addToMapMapFromBucket!1081 (t!359070 oldBucket!40) (+!1968 lt!1810089 (h!57980 oldBucket!40))))))

(declare-fun lt!1810264 () Unit!116275)

(declare-fun call!324407 () Unit!116275)

(assert (=> b!4645910 (= lt!1810264 call!324407)))

(assert (=> b!4645910 (forall!10987 (toList!5182 lt!1810089) lambda!197563)))

(declare-fun lt!1810278 () Unit!116275)

(assert (=> b!4645910 (= lt!1810278 lt!1810264)))

(assert (=> b!4645910 (forall!10987 (toList!5182 lt!1810262) lambda!197564)))

(declare-fun lt!1810274 () Unit!116275)

(declare-fun Unit!116299 () Unit!116275)

(assert (=> b!4645910 (= lt!1810274 Unit!116299)))

(declare-fun call!324409 () Bool)

(assert (=> b!4645910 call!324409))

(declare-fun lt!1810273 () Unit!116275)

(declare-fun Unit!116300 () Unit!116275)

(assert (=> b!4645910 (= lt!1810273 Unit!116300)))

(declare-fun lt!1810269 () Unit!116275)

(declare-fun Unit!116301 () Unit!116275)

(assert (=> b!4645910 (= lt!1810269 Unit!116301)))

(declare-fun lt!1810268 () Unit!116275)

(declare-fun forallContained!3202 (List!51974 Int tuple2!52942) Unit!116275)

(assert (=> b!4645910 (= lt!1810268 (forallContained!3202 (toList!5182 lt!1810262) lambda!197564 (h!57980 oldBucket!40)))))

(assert (=> b!4645910 (contains!14991 lt!1810262 (_1!29765 (h!57980 oldBucket!40)))))

(declare-fun lt!1810276 () Unit!116275)

(declare-fun Unit!116302 () Unit!116275)

(assert (=> b!4645910 (= lt!1810276 Unit!116302)))

(assert (=> b!4645910 (contains!14991 lt!1810277 (_1!29765 (h!57980 oldBucket!40)))))

(declare-fun lt!1810263 () Unit!116275)

(declare-fun Unit!116303 () Unit!116275)

(assert (=> b!4645910 (= lt!1810263 Unit!116303)))

(assert (=> b!4645910 (forall!10987 oldBucket!40 lambda!197564)))

(declare-fun lt!1810280 () Unit!116275)

(declare-fun Unit!116304 () Unit!116275)

(assert (=> b!4645910 (= lt!1810280 Unit!116304)))

(declare-fun call!324408 () Bool)

(assert (=> b!4645910 call!324408))

(declare-fun lt!1810275 () Unit!116275)

(declare-fun Unit!116305 () Unit!116275)

(assert (=> b!4645910 (= lt!1810275 Unit!116305)))

(declare-fun lt!1810271 () Unit!116275)

(declare-fun Unit!116306 () Unit!116275)

(assert (=> b!4645910 (= lt!1810271 Unit!116306)))

(declare-fun lt!1810281 () Unit!116275)

(declare-fun addForallContainsKeyThenBeforeAdding!583 (ListMap!4517 ListMap!4517 K!13210 V!13456) Unit!116275)

(assert (=> b!4645910 (= lt!1810281 (addForallContainsKeyThenBeforeAdding!583 lt!1810089 lt!1810277 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))))))

(assert (=> b!4645910 (forall!10987 (toList!5182 lt!1810089) lambda!197564)))

(declare-fun lt!1810272 () Unit!116275)

(assert (=> b!4645910 (= lt!1810272 lt!1810281)))

(assert (=> b!4645910 (forall!10987 (toList!5182 lt!1810089) lambda!197564)))

(declare-fun lt!1810267 () Unit!116275)

(declare-fun Unit!116307 () Unit!116275)

(assert (=> b!4645910 (= lt!1810267 Unit!116307)))

(declare-fun res!1951987 () Bool)

(assert (=> b!4645910 (= res!1951987 (forall!10987 oldBucket!40 lambda!197564))))

(declare-fun e!2898151 () Bool)

(assert (=> b!4645910 (=> (not res!1951987) (not e!2898151))))

(assert (=> b!4645910 e!2898151))

(declare-fun lt!1810279 () Unit!116275)

(declare-fun Unit!116308 () Unit!116275)

(assert (=> b!4645910 (= lt!1810279 Unit!116308)))

(declare-fun e!2898152 () Bool)

(assert (=> d!1464936 e!2898152))

(declare-fun res!1951988 () Bool)

(assert (=> d!1464936 (=> (not res!1951988) (not e!2898152))))

(assert (=> d!1464936 (= res!1951988 (forall!10987 oldBucket!40 lambda!197565))))

(assert (=> d!1464936 (= lt!1810261 e!2898153)))

(declare-fun c!794957 () Bool)

(assert (=> d!1464936 (= c!794957 ((_ is Nil!51850) oldBucket!40))))

(assert (=> d!1464936 (noDuplicateKeys!1624 oldBucket!40)))

(assert (=> d!1464936 (= (addToMapMapFromBucket!1081 oldBucket!40 lt!1810089) lt!1810261)))

(declare-fun b!4645911 () Bool)

(declare-fun res!1951986 () Bool)

(assert (=> b!4645911 (=> (not res!1951986) (not e!2898152))))

(assert (=> b!4645911 (= res!1951986 (forall!10987 (toList!5182 lt!1810089) lambda!197565))))

(declare-fun bm!324402 () Bool)

(assert (=> bm!324402 (= call!324409 (forall!10987 (ite c!794957 (toList!5182 lt!1810089) (t!359070 oldBucket!40)) (ite c!794957 lambda!197562 lambda!197564)))))

(assert (=> b!4645912 (= e!2898153 lt!1810089)))

(declare-fun lt!1810266 () Unit!116275)

(assert (=> b!4645912 (= lt!1810266 call!324407)))

(assert (=> b!4645912 call!324408))

(declare-fun lt!1810265 () Unit!116275)

(assert (=> b!4645912 (= lt!1810265 lt!1810266)))

(assert (=> b!4645912 call!324409))

(declare-fun lt!1810270 () Unit!116275)

(declare-fun Unit!116309 () Unit!116275)

(assert (=> b!4645912 (= lt!1810270 Unit!116309)))

(declare-fun bm!324403 () Bool)

(assert (=> bm!324403 (= call!324408 (forall!10987 (ite c!794957 (toList!5182 lt!1810089) (toList!5182 lt!1810262)) (ite c!794957 lambda!197562 lambda!197564)))))

(declare-fun b!4645913 () Bool)

(declare-fun invariantList!1284 (List!51974) Bool)

(assert (=> b!4645913 (= e!2898152 (invariantList!1284 (toList!5182 lt!1810261)))))

(declare-fun b!4645914 () Bool)

(assert (=> b!4645914 (= e!2898151 (forall!10987 (toList!5182 lt!1810089) lambda!197564))))

(declare-fun bm!324404 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!584 (ListMap!4517) Unit!116275)

(assert (=> bm!324404 (= call!324407 (lemmaContainsAllItsOwnKeys!584 lt!1810089))))

(assert (= (and d!1464936 c!794957) b!4645912))

(assert (= (and d!1464936 (not c!794957)) b!4645910))

(assert (= (and b!4645910 res!1951987) b!4645914))

(assert (= (or b!4645912 b!4645910) bm!324404))

(assert (= (or b!4645912 b!4645910) bm!324402))

(assert (= (or b!4645912 b!4645910) bm!324403))

(assert (= (and d!1464936 res!1951988) b!4645911))

(assert (= (and b!4645911 res!1951986) b!4645913))

(declare-fun m!5511045 () Bool)

(assert (=> d!1464936 m!5511045))

(assert (=> d!1464936 m!5510841))

(declare-fun m!5511047 () Bool)

(assert (=> bm!324402 m!5511047))

(declare-fun m!5511049 () Bool)

(assert (=> b!4645914 m!5511049))

(declare-fun m!5511051 () Bool)

(assert (=> bm!324404 m!5511051))

(declare-fun m!5511053 () Bool)

(assert (=> bm!324403 m!5511053))

(declare-fun m!5511055 () Bool)

(assert (=> b!4645913 m!5511055))

(declare-fun m!5511057 () Bool)

(assert (=> b!4645911 m!5511057))

(declare-fun m!5511059 () Bool)

(assert (=> b!4645910 m!5511059))

(assert (=> b!4645910 m!5511049))

(declare-fun m!5511061 () Bool)

(assert (=> b!4645910 m!5511061))

(assert (=> b!4645910 m!5511061))

(declare-fun m!5511063 () Bool)

(assert (=> b!4645910 m!5511063))

(declare-fun m!5511065 () Bool)

(assert (=> b!4645910 m!5511065))

(declare-fun m!5511067 () Bool)

(assert (=> b!4645910 m!5511067))

(declare-fun m!5511069 () Bool)

(assert (=> b!4645910 m!5511069))

(declare-fun m!5511071 () Bool)

(assert (=> b!4645910 m!5511071))

(assert (=> b!4645910 m!5511071))

(declare-fun m!5511073 () Bool)

(assert (=> b!4645910 m!5511073))

(assert (=> b!4645910 m!5511049))

(declare-fun m!5511075 () Bool)

(assert (=> b!4645910 m!5511075))

(assert (=> b!4645807 d!1464936))

(declare-fun d!1464958 () Bool)

(declare-fun lt!1810295 () ListMap!4517)

(assert (=> d!1464958 (invariantList!1284 (toList!5182 lt!1810295))))

(declare-fun e!2898171 () ListMap!4517)

(assert (=> d!1464958 (= lt!1810295 e!2898171)))

(declare-fun c!794966 () Bool)

(assert (=> d!1464958 (= c!794966 ((_ is Cons!51851) Nil!51851))))

(declare-fun lambda!197574 () Int)

(declare-fun forall!10988 (List!51975 Int) Bool)

(assert (=> d!1464958 (forall!10988 Nil!51851 lambda!197574)))

(assert (=> d!1464958 (= (extractMap!1680 Nil!51851) lt!1810295)))

(declare-fun b!4645946 () Bool)

(assert (=> b!4645946 (= e!2898171 (addToMapMapFromBucket!1081 (_2!29766 (h!57981 Nil!51851)) (extractMap!1680 (t!359071 Nil!51851))))))

(declare-fun b!4645947 () Bool)

(assert (=> b!4645947 (= e!2898171 (ListMap!4518 Nil!51850))))

(assert (= (and d!1464958 c!794966) b!4645946))

(assert (= (and d!1464958 (not c!794966)) b!4645947))

(declare-fun m!5511105 () Bool)

(assert (=> d!1464958 m!5511105))

(declare-fun m!5511107 () Bool)

(assert (=> d!1464958 m!5511107))

(declare-fun m!5511109 () Bool)

(assert (=> b!4645946 m!5511109))

(assert (=> b!4645946 m!5511109))

(declare-fun m!5511111 () Bool)

(assert (=> b!4645946 m!5511111))

(assert (=> b!4645807 d!1464958))

(declare-fun b!4645980 () Bool)

(declare-fun e!2898192 () Unit!116275)

(declare-fun lt!1810359 () Unit!116275)

(assert (=> b!4645980 (= e!2898192 lt!1810359)))

(declare-fun lt!1810353 () Unit!116275)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1493 (List!51974 K!13210) Unit!116275)

(assert (=> b!4645980 (= lt!1810353 (lemmaContainsKeyImpliesGetValueByKeyDefined!1493 (toList!5182 lt!1810084) key!4968))))

(declare-datatypes ((Option!11803 0))(
  ( (None!11802) (Some!11802 (v!46054 V!13456)) )
))
(declare-fun isDefined!9068 (Option!11803) Bool)

(declare-fun getValueByKey!1591 (List!51974 K!13210) Option!11803)

(assert (=> b!4645980 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810084) key!4968))))

(declare-fun lt!1810352 () Unit!116275)

(assert (=> b!4645980 (= lt!1810352 lt!1810353)))

(declare-fun lemmaInListThenGetKeysListContains!729 (List!51974 K!13210) Unit!116275)

(assert (=> b!4645980 (= lt!1810359 (lemmaInListThenGetKeysListContains!729 (toList!5182 lt!1810084) key!4968))))

(declare-fun call!324416 () Bool)

(assert (=> b!4645980 call!324416))

(declare-fun b!4645981 () Bool)

(declare-datatypes ((List!51976 0))(
  ( (Nil!51852) (Cons!51852 (h!57984 K!13210) (t!359074 List!51976)) )
))
(declare-fun e!2898195 () List!51976)

(declare-fun keys!18351 (ListMap!4517) List!51976)

(assert (=> b!4645981 (= e!2898195 (keys!18351 lt!1810084))))

(declare-fun b!4645982 () Bool)

(declare-fun getKeysList!734 (List!51974) List!51976)

(assert (=> b!4645982 (= e!2898195 (getKeysList!734 (toList!5182 lt!1810084)))))

(declare-fun b!4645983 () Bool)

(declare-fun e!2898194 () Bool)

(declare-fun contains!14992 (List!51976 K!13210) Bool)

(assert (=> b!4645983 (= e!2898194 (not (contains!14992 (keys!18351 lt!1810084) key!4968)))))

(declare-fun b!4645984 () Bool)

(declare-fun e!2898196 () Bool)

(declare-fun e!2898193 () Bool)

(assert (=> b!4645984 (= e!2898196 e!2898193)))

(declare-fun res!1952015 () Bool)

(assert (=> b!4645984 (=> (not res!1952015) (not e!2898193))))

(assert (=> b!4645984 (= res!1952015 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810084) key!4968)))))

(declare-fun b!4645979 () Bool)

(assert (=> b!4645979 (= e!2898193 (contains!14992 (keys!18351 lt!1810084) key!4968))))

(declare-fun d!1464970 () Bool)

(assert (=> d!1464970 e!2898196))

(declare-fun res!1952016 () Bool)

(assert (=> d!1464970 (=> res!1952016 e!2898196)))

(assert (=> d!1464970 (= res!1952016 e!2898194)))

(declare-fun res!1952017 () Bool)

(assert (=> d!1464970 (=> (not res!1952017) (not e!2898194))))

(declare-fun lt!1810354 () Bool)

(assert (=> d!1464970 (= res!1952017 (not lt!1810354))))

(declare-fun lt!1810358 () Bool)

(assert (=> d!1464970 (= lt!1810354 lt!1810358)))

(declare-fun lt!1810356 () Unit!116275)

(assert (=> d!1464970 (= lt!1810356 e!2898192)))

(declare-fun c!794975 () Bool)

(assert (=> d!1464970 (= c!794975 lt!1810358)))

(declare-fun containsKey!2691 (List!51974 K!13210) Bool)

(assert (=> d!1464970 (= lt!1810358 (containsKey!2691 (toList!5182 lt!1810084) key!4968))))

(assert (=> d!1464970 (= (contains!14991 lt!1810084 key!4968) lt!1810354)))

(declare-fun b!4645985 () Bool)

(declare-fun e!2898191 () Unit!116275)

(assert (=> b!4645985 (= e!2898192 e!2898191)))

(declare-fun c!794976 () Bool)

(assert (=> b!4645985 (= c!794976 call!324416)))

(declare-fun b!4645986 () Bool)

(declare-fun Unit!116321 () Unit!116275)

(assert (=> b!4645986 (= e!2898191 Unit!116321)))

(declare-fun bm!324411 () Bool)

(assert (=> bm!324411 (= call!324416 (contains!14992 e!2898195 key!4968))))

(declare-fun c!794974 () Bool)

(assert (=> bm!324411 (= c!794974 c!794975)))

(declare-fun b!4645987 () Bool)

(assert (=> b!4645987 false))

(declare-fun lt!1810357 () Unit!116275)

(declare-fun lt!1810355 () Unit!116275)

(assert (=> b!4645987 (= lt!1810357 lt!1810355)))

(assert (=> b!4645987 (containsKey!2691 (toList!5182 lt!1810084) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!733 (List!51974 K!13210) Unit!116275)

(assert (=> b!4645987 (= lt!1810355 (lemmaInGetKeysListThenContainsKey!733 (toList!5182 lt!1810084) key!4968))))

(declare-fun Unit!116322 () Unit!116275)

(assert (=> b!4645987 (= e!2898191 Unit!116322)))

(assert (= (and d!1464970 c!794975) b!4645980))

(assert (= (and d!1464970 (not c!794975)) b!4645985))

(assert (= (and b!4645985 c!794976) b!4645987))

(assert (= (and b!4645985 (not c!794976)) b!4645986))

(assert (= (or b!4645980 b!4645985) bm!324411))

(assert (= (and bm!324411 c!794974) b!4645982))

(assert (= (and bm!324411 (not c!794974)) b!4645981))

(assert (= (and d!1464970 res!1952017) b!4645983))

(assert (= (and d!1464970 (not res!1952016)) b!4645984))

(assert (= (and b!4645984 res!1952015) b!4645979))

(declare-fun m!5511143 () Bool)

(assert (=> b!4645987 m!5511143))

(declare-fun m!5511145 () Bool)

(assert (=> b!4645987 m!5511145))

(declare-fun m!5511147 () Bool)

(assert (=> bm!324411 m!5511147))

(declare-fun m!5511149 () Bool)

(assert (=> b!4645984 m!5511149))

(assert (=> b!4645984 m!5511149))

(declare-fun m!5511151 () Bool)

(assert (=> b!4645984 m!5511151))

(declare-fun m!5511153 () Bool)

(assert (=> b!4645979 m!5511153))

(assert (=> b!4645979 m!5511153))

(declare-fun m!5511155 () Bool)

(assert (=> b!4645979 m!5511155))

(declare-fun m!5511157 () Bool)

(assert (=> b!4645982 m!5511157))

(assert (=> b!4645981 m!5511153))

(assert (=> b!4645983 m!5511153))

(assert (=> b!4645983 m!5511153))

(assert (=> b!4645983 m!5511155))

(assert (=> d!1464970 m!5511143))

(declare-fun m!5511159 () Bool)

(assert (=> b!4645980 m!5511159))

(assert (=> b!4645980 m!5511149))

(assert (=> b!4645980 m!5511149))

(assert (=> b!4645980 m!5511151))

(declare-fun m!5511161 () Bool)

(assert (=> b!4645980 m!5511161))

(assert (=> b!4645806 d!1464970))

(declare-fun bs!1036347 () Bool)

(declare-fun d!1464980 () Bool)

(assert (= bs!1036347 (and d!1464980 d!1464958)))

(declare-fun lambda!197578 () Int)

(assert (=> bs!1036347 (= lambda!197578 lambda!197574)))

(declare-fun lt!1810360 () ListMap!4517)

(assert (=> d!1464980 (invariantList!1284 (toList!5182 lt!1810360))))

(declare-fun e!2898197 () ListMap!4517)

(assert (=> d!1464980 (= lt!1810360 e!2898197)))

(declare-fun c!794977 () Bool)

(assert (=> d!1464980 (= c!794977 ((_ is Cons!51851) (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))))

(assert (=> d!1464980 (forall!10988 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851) lambda!197578)))

(assert (=> d!1464980 (= (extractMap!1680 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)) lt!1810360)))

(declare-fun b!4645988 () Bool)

(assert (=> b!4645988 (= e!2898197 (addToMapMapFromBucket!1081 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))))))

(declare-fun b!4645989 () Bool)

(assert (=> b!4645989 (= e!2898197 (ListMap!4518 Nil!51850))))

(assert (= (and d!1464980 c!794977) b!4645988))

(assert (= (and d!1464980 (not c!794977)) b!4645989))

(declare-fun m!5511163 () Bool)

(assert (=> d!1464980 m!5511163))

(declare-fun m!5511165 () Bool)

(assert (=> d!1464980 m!5511165))

(declare-fun m!5511167 () Bool)

(assert (=> b!4645988 m!5511167))

(assert (=> b!4645988 m!5511167))

(declare-fun m!5511169 () Bool)

(assert (=> b!4645988 m!5511169))

(assert (=> b!4645806 d!1464980))

(declare-fun bs!1036348 () Bool)

(declare-fun b!4645992 () Bool)

(assert (= bs!1036348 (and b!4645992 b!4645912)))

(declare-fun lambda!197579 () Int)

(assert (=> bs!1036348 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197579 lambda!197562))))

(declare-fun bs!1036350 () Bool)

(assert (= bs!1036350 (and b!4645992 d!1464936)))

(assert (=> bs!1036350 (= (= (ListMap!4518 Nil!51850) lt!1810261) (= lambda!197579 lambda!197565))))

(declare-fun bs!1036352 () Bool)

(assert (= bs!1036352 (and b!4645992 b!4645910)))

(assert (=> bs!1036352 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197579 lambda!197563))))

(declare-fun bs!1036355 () Bool)

(assert (= bs!1036355 (and b!4645992 d!1464922)))

(assert (=> bs!1036355 (not (= lambda!197579 lambda!197489))))

(declare-fun bs!1036356 () Bool)

(assert (= bs!1036356 (and b!4645992 d!1464926)))

(assert (=> bs!1036356 (not (= lambda!197579 lambda!197490))))

(assert (=> bs!1036352 (= (= (ListMap!4518 Nil!51850) lt!1810277) (= lambda!197579 lambda!197564))))

(assert (=> b!4645992 true))

(declare-fun bs!1036362 () Bool)

(declare-fun b!4645990 () Bool)

(assert (= bs!1036362 (and b!4645990 b!4645912)))

(declare-fun lambda!197581 () Int)

(assert (=> bs!1036362 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197581 lambda!197562))))

(declare-fun bs!1036365 () Bool)

(assert (= bs!1036365 (and b!4645990 d!1464936)))

(assert (=> bs!1036365 (= (= (ListMap!4518 Nil!51850) lt!1810261) (= lambda!197581 lambda!197565))))

(declare-fun bs!1036367 () Bool)

(assert (= bs!1036367 (and b!4645990 b!4645910)))

(assert (=> bs!1036367 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197581 lambda!197563))))

(declare-fun bs!1036368 () Bool)

(assert (= bs!1036368 (and b!4645990 b!4645992)))

(assert (=> bs!1036368 (= lambda!197581 lambda!197579)))

(declare-fun bs!1036369 () Bool)

(assert (= bs!1036369 (and b!4645990 d!1464922)))

(assert (=> bs!1036369 (not (= lambda!197581 lambda!197489))))

(declare-fun bs!1036370 () Bool)

(assert (= bs!1036370 (and b!4645990 d!1464926)))

(assert (=> bs!1036370 (not (= lambda!197581 lambda!197490))))

(assert (=> bs!1036367 (= (= (ListMap!4518 Nil!51850) lt!1810277) (= lambda!197581 lambda!197564))))

(assert (=> b!4645990 true))

(declare-fun lt!1810377 () ListMap!4517)

(declare-fun lambda!197582 () Int)

(assert (=> bs!1036362 (= (= lt!1810377 lt!1810089) (= lambda!197582 lambda!197562))))

(assert (=> b!4645990 (= (= lt!1810377 (ListMap!4518 Nil!51850)) (= lambda!197582 lambda!197581))))

(assert (=> bs!1036365 (= (= lt!1810377 lt!1810261) (= lambda!197582 lambda!197565))))

(assert (=> bs!1036367 (= (= lt!1810377 lt!1810089) (= lambda!197582 lambda!197563))))

(assert (=> bs!1036368 (= (= lt!1810377 (ListMap!4518 Nil!51850)) (= lambda!197582 lambda!197579))))

(assert (=> bs!1036369 (not (= lambda!197582 lambda!197489))))

(assert (=> bs!1036370 (not (= lambda!197582 lambda!197490))))

(assert (=> bs!1036367 (= (= lt!1810377 lt!1810277) (= lambda!197582 lambda!197564))))

(assert (=> b!4645990 true))

(declare-fun bs!1036371 () Bool)

(declare-fun d!1464982 () Bool)

(assert (= bs!1036371 (and d!1464982 b!4645912)))

(declare-fun lt!1810361 () ListMap!4517)

(declare-fun lambda!197583 () Int)

(assert (=> bs!1036371 (= (= lt!1810361 lt!1810089) (= lambda!197583 lambda!197562))))

(declare-fun bs!1036372 () Bool)

(assert (= bs!1036372 (and d!1464982 b!4645990)))

(assert (=> bs!1036372 (= (= lt!1810361 (ListMap!4518 Nil!51850)) (= lambda!197583 lambda!197581))))

(assert (=> bs!1036372 (= (= lt!1810361 lt!1810377) (= lambda!197583 lambda!197582))))

(declare-fun bs!1036373 () Bool)

(assert (= bs!1036373 (and d!1464982 d!1464936)))

(assert (=> bs!1036373 (= (= lt!1810361 lt!1810261) (= lambda!197583 lambda!197565))))

(declare-fun bs!1036374 () Bool)

(assert (= bs!1036374 (and d!1464982 b!4645910)))

(assert (=> bs!1036374 (= (= lt!1810361 lt!1810089) (= lambda!197583 lambda!197563))))

(declare-fun bs!1036375 () Bool)

(assert (= bs!1036375 (and d!1464982 b!4645992)))

(assert (=> bs!1036375 (= (= lt!1810361 (ListMap!4518 Nil!51850)) (= lambda!197583 lambda!197579))))

(declare-fun bs!1036376 () Bool)

(assert (= bs!1036376 (and d!1464982 d!1464922)))

(assert (=> bs!1036376 (not (= lambda!197583 lambda!197489))))

(declare-fun bs!1036377 () Bool)

(assert (= bs!1036377 (and d!1464982 d!1464926)))

(assert (=> bs!1036377 (not (= lambda!197583 lambda!197490))))

(assert (=> bs!1036374 (= (= lt!1810361 lt!1810277) (= lambda!197583 lambda!197564))))

(assert (=> d!1464982 true))

(declare-fun e!2898200 () ListMap!4517)

(assert (=> b!4645990 (= e!2898200 lt!1810377)))

(declare-fun lt!1810362 () ListMap!4517)

(assert (=> b!4645990 (= lt!1810362 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)))))

(assert (=> b!4645990 (= lt!1810377 (addToMapMapFromBucket!1081 (t!359070 newBucket!224) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))))))

(declare-fun lt!1810364 () Unit!116275)

(declare-fun call!324417 () Unit!116275)

(assert (=> b!4645990 (= lt!1810364 call!324417)))

(assert (=> b!4645990 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197581)))

(declare-fun lt!1810378 () Unit!116275)

(assert (=> b!4645990 (= lt!1810378 lt!1810364)))

(assert (=> b!4645990 (forall!10987 (toList!5182 lt!1810362) lambda!197582)))

(declare-fun lt!1810374 () Unit!116275)

(declare-fun Unit!116325 () Unit!116275)

(assert (=> b!4645990 (= lt!1810374 Unit!116325)))

(declare-fun call!324419 () Bool)

(assert (=> b!4645990 call!324419))

(declare-fun lt!1810373 () Unit!116275)

(declare-fun Unit!116326 () Unit!116275)

(assert (=> b!4645990 (= lt!1810373 Unit!116326)))

(declare-fun lt!1810369 () Unit!116275)

(declare-fun Unit!116327 () Unit!116275)

(assert (=> b!4645990 (= lt!1810369 Unit!116327)))

(declare-fun lt!1810368 () Unit!116275)

(assert (=> b!4645990 (= lt!1810368 (forallContained!3202 (toList!5182 lt!1810362) lambda!197582 (h!57980 newBucket!224)))))

(assert (=> b!4645990 (contains!14991 lt!1810362 (_1!29765 (h!57980 newBucket!224)))))

(declare-fun lt!1810376 () Unit!116275)

(declare-fun Unit!116328 () Unit!116275)

(assert (=> b!4645990 (= lt!1810376 Unit!116328)))

(assert (=> b!4645990 (contains!14991 lt!1810377 (_1!29765 (h!57980 newBucket!224)))))

(declare-fun lt!1810363 () Unit!116275)

(declare-fun Unit!116329 () Unit!116275)

(assert (=> b!4645990 (= lt!1810363 Unit!116329)))

(assert (=> b!4645990 (forall!10987 newBucket!224 lambda!197582)))

(declare-fun lt!1810380 () Unit!116275)

(declare-fun Unit!116330 () Unit!116275)

(assert (=> b!4645990 (= lt!1810380 Unit!116330)))

(declare-fun call!324418 () Bool)

(assert (=> b!4645990 call!324418))

(declare-fun lt!1810375 () Unit!116275)

(declare-fun Unit!116331 () Unit!116275)

(assert (=> b!4645990 (= lt!1810375 Unit!116331)))

(declare-fun lt!1810371 () Unit!116275)

(declare-fun Unit!116332 () Unit!116275)

(assert (=> b!4645990 (= lt!1810371 Unit!116332)))

(declare-fun lt!1810381 () Unit!116275)

(assert (=> b!4645990 (= lt!1810381 (addForallContainsKeyThenBeforeAdding!583 (ListMap!4518 Nil!51850) lt!1810377 (_1!29765 (h!57980 newBucket!224)) (_2!29765 (h!57980 newBucket!224))))))

(assert (=> b!4645990 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197582)))

(declare-fun lt!1810372 () Unit!116275)

(assert (=> b!4645990 (= lt!1810372 lt!1810381)))

(assert (=> b!4645990 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197582)))

(declare-fun lt!1810367 () Unit!116275)

(declare-fun Unit!116333 () Unit!116275)

(assert (=> b!4645990 (= lt!1810367 Unit!116333)))

(declare-fun res!1952019 () Bool)

(assert (=> b!4645990 (= res!1952019 (forall!10987 newBucket!224 lambda!197582))))

(declare-fun e!2898198 () Bool)

(assert (=> b!4645990 (=> (not res!1952019) (not e!2898198))))

(assert (=> b!4645990 e!2898198))

(declare-fun lt!1810379 () Unit!116275)

(declare-fun Unit!116334 () Unit!116275)

(assert (=> b!4645990 (= lt!1810379 Unit!116334)))

(declare-fun e!2898199 () Bool)

(assert (=> d!1464982 e!2898199))

(declare-fun res!1952020 () Bool)

(assert (=> d!1464982 (=> (not res!1952020) (not e!2898199))))

(assert (=> d!1464982 (= res!1952020 (forall!10987 newBucket!224 lambda!197583))))

(assert (=> d!1464982 (= lt!1810361 e!2898200)))

(declare-fun c!794978 () Bool)

(assert (=> d!1464982 (= c!794978 ((_ is Nil!51850) newBucket!224))))

(assert (=> d!1464982 (noDuplicateKeys!1624 newBucket!224)))

(assert (=> d!1464982 (= (addToMapMapFromBucket!1081 newBucket!224 (ListMap!4518 Nil!51850)) lt!1810361)))

(declare-fun b!4645991 () Bool)

(declare-fun res!1952018 () Bool)

(assert (=> b!4645991 (=> (not res!1952018) (not e!2898199))))

(assert (=> b!4645991 (= res!1952018 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197583))))

(declare-fun bm!324412 () Bool)

(assert (=> bm!324412 (= call!324419 (forall!10987 (ite c!794978 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 newBucket!224)) (ite c!794978 lambda!197579 lambda!197582)))))

(assert (=> b!4645992 (= e!2898200 (ListMap!4518 Nil!51850))))

(declare-fun lt!1810366 () Unit!116275)

(assert (=> b!4645992 (= lt!1810366 call!324417)))

(assert (=> b!4645992 call!324418))

(declare-fun lt!1810365 () Unit!116275)

(assert (=> b!4645992 (= lt!1810365 lt!1810366)))

(assert (=> b!4645992 call!324419))

(declare-fun lt!1810370 () Unit!116275)

(declare-fun Unit!116335 () Unit!116275)

(assert (=> b!4645992 (= lt!1810370 Unit!116335)))

(declare-fun bm!324413 () Bool)

(assert (=> bm!324413 (= call!324418 (forall!10987 (ite c!794978 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810362)) (ite c!794978 lambda!197579 lambda!197582)))))

(declare-fun b!4645993 () Bool)

(assert (=> b!4645993 (= e!2898199 (invariantList!1284 (toList!5182 lt!1810361)))))

(declare-fun b!4645994 () Bool)

(assert (=> b!4645994 (= e!2898198 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197582))))

(declare-fun bm!324414 () Bool)

(assert (=> bm!324414 (= call!324417 (lemmaContainsAllItsOwnKeys!584 (ListMap!4518 Nil!51850)))))

(assert (= (and d!1464982 c!794978) b!4645992))

(assert (= (and d!1464982 (not c!794978)) b!4645990))

(assert (= (and b!4645990 res!1952019) b!4645994))

(assert (= (or b!4645992 b!4645990) bm!324414))

(assert (= (or b!4645992 b!4645990) bm!324412))

(assert (= (or b!4645992 b!4645990) bm!324413))

(assert (= (and d!1464982 res!1952020) b!4645991))

(assert (= (and b!4645991 res!1952018) b!4645993))

(declare-fun m!5511207 () Bool)

(assert (=> d!1464982 m!5511207))

(assert (=> d!1464982 m!5510875))

(declare-fun m!5511209 () Bool)

(assert (=> bm!324412 m!5511209))

(declare-fun m!5511211 () Bool)

(assert (=> b!4645994 m!5511211))

(declare-fun m!5511213 () Bool)

(assert (=> bm!324414 m!5511213))

(declare-fun m!5511215 () Bool)

(assert (=> bm!324413 m!5511215))

(declare-fun m!5511217 () Bool)

(assert (=> b!4645993 m!5511217))

(declare-fun m!5511219 () Bool)

(assert (=> b!4645991 m!5511219))

(declare-fun m!5511221 () Bool)

(assert (=> b!4645990 m!5511221))

(assert (=> b!4645990 m!5511211))

(declare-fun m!5511223 () Bool)

(assert (=> b!4645990 m!5511223))

(assert (=> b!4645990 m!5511223))

(declare-fun m!5511225 () Bool)

(assert (=> b!4645990 m!5511225))

(declare-fun m!5511227 () Bool)

(assert (=> b!4645990 m!5511227))

(declare-fun m!5511229 () Bool)

(assert (=> b!4645990 m!5511229))

(declare-fun m!5511231 () Bool)

(assert (=> b!4645990 m!5511231))

(declare-fun m!5511233 () Bool)

(assert (=> b!4645990 m!5511233))

(assert (=> b!4645990 m!5511233))

(declare-fun m!5511235 () Bool)

(assert (=> b!4645990 m!5511235))

(assert (=> b!4645990 m!5511211))

(declare-fun m!5511237 () Bool)

(assert (=> b!4645990 m!5511237))

(assert (=> b!4645804 d!1464982))

(declare-fun bs!1036395 () Bool)

(declare-fun b!4646002 () Bool)

(assert (= bs!1036395 (and b!4646002 b!4645912)))

(declare-fun lambda!197586 () Int)

(assert (=> bs!1036395 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197586 lambda!197562))))

(declare-fun bs!1036397 () Bool)

(assert (= bs!1036397 (and b!4646002 b!4645990)))

(assert (=> bs!1036397 (= lambda!197586 lambda!197581)))

(assert (=> bs!1036397 (= (= (ListMap!4518 Nil!51850) lt!1810377) (= lambda!197586 lambda!197582))))

(declare-fun bs!1036400 () Bool)

(assert (= bs!1036400 (and b!4646002 d!1464936)))

(assert (=> bs!1036400 (= (= (ListMap!4518 Nil!51850) lt!1810261) (= lambda!197586 lambda!197565))))

(declare-fun bs!1036402 () Bool)

(assert (= bs!1036402 (and b!4646002 b!4645910)))

(assert (=> bs!1036402 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197586 lambda!197563))))

(declare-fun bs!1036404 () Bool)

(assert (= bs!1036404 (and b!4646002 b!4645992)))

(assert (=> bs!1036404 (= lambda!197586 lambda!197579)))

(declare-fun bs!1036406 () Bool)

(assert (= bs!1036406 (and b!4646002 d!1464922)))

(assert (=> bs!1036406 (not (= lambda!197586 lambda!197489))))

(declare-fun bs!1036408 () Bool)

(assert (= bs!1036408 (and b!4646002 d!1464982)))

(assert (=> bs!1036408 (= (= (ListMap!4518 Nil!51850) lt!1810361) (= lambda!197586 lambda!197583))))

(declare-fun bs!1036409 () Bool)

(assert (= bs!1036409 (and b!4646002 d!1464926)))

(assert (=> bs!1036409 (not (= lambda!197586 lambda!197490))))

(assert (=> bs!1036402 (= (= (ListMap!4518 Nil!51850) lt!1810277) (= lambda!197586 lambda!197564))))

(assert (=> b!4646002 true))

(declare-fun bs!1036414 () Bool)

(declare-fun b!4646000 () Bool)

(assert (= bs!1036414 (and b!4646000 b!4645912)))

(declare-fun lambda!197587 () Int)

(assert (=> bs!1036414 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197587 lambda!197562))))

(declare-fun bs!1036415 () Bool)

(assert (= bs!1036415 (and b!4646000 b!4645990)))

(assert (=> bs!1036415 (= lambda!197587 lambda!197581)))

(assert (=> bs!1036415 (= (= (ListMap!4518 Nil!51850) lt!1810377) (= lambda!197587 lambda!197582))))

(declare-fun bs!1036416 () Bool)

(assert (= bs!1036416 (and b!4646000 d!1464936)))

(assert (=> bs!1036416 (= (= (ListMap!4518 Nil!51850) lt!1810261) (= lambda!197587 lambda!197565))))

(declare-fun bs!1036417 () Bool)

(assert (= bs!1036417 (and b!4646000 b!4645910)))

(assert (=> bs!1036417 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197587 lambda!197563))))

(declare-fun bs!1036418 () Bool)

(assert (= bs!1036418 (and b!4646000 b!4645992)))

(assert (=> bs!1036418 (= lambda!197587 lambda!197579)))

(declare-fun bs!1036419 () Bool)

(assert (= bs!1036419 (and b!4646000 b!4646002)))

(assert (=> bs!1036419 (= lambda!197587 lambda!197586)))

(declare-fun bs!1036420 () Bool)

(assert (= bs!1036420 (and b!4646000 d!1464922)))

(assert (=> bs!1036420 (not (= lambda!197587 lambda!197489))))

(declare-fun bs!1036421 () Bool)

(assert (= bs!1036421 (and b!4646000 d!1464982)))

(assert (=> bs!1036421 (= (= (ListMap!4518 Nil!51850) lt!1810361) (= lambda!197587 lambda!197583))))

(declare-fun bs!1036422 () Bool)

(assert (= bs!1036422 (and b!4646000 d!1464926)))

(assert (=> bs!1036422 (not (= lambda!197587 lambda!197490))))

(assert (=> bs!1036417 (= (= (ListMap!4518 Nil!51850) lt!1810277) (= lambda!197587 lambda!197564))))

(assert (=> b!4646000 true))

(declare-fun lambda!197589 () Int)

(declare-fun lt!1810419 () ListMap!4517)

(assert (=> bs!1036414 (= (= lt!1810419 lt!1810089) (= lambda!197589 lambda!197562))))

(assert (=> bs!1036415 (= (= lt!1810419 (ListMap!4518 Nil!51850)) (= lambda!197589 lambda!197581))))

(assert (=> bs!1036415 (= (= lt!1810419 lt!1810377) (= lambda!197589 lambda!197582))))

(assert (=> bs!1036416 (= (= lt!1810419 lt!1810261) (= lambda!197589 lambda!197565))))

(assert (=> bs!1036417 (= (= lt!1810419 lt!1810089) (= lambda!197589 lambda!197563))))

(assert (=> bs!1036418 (= (= lt!1810419 (ListMap!4518 Nil!51850)) (= lambda!197589 lambda!197579))))

(assert (=> b!4646000 (= (= lt!1810419 (ListMap!4518 Nil!51850)) (= lambda!197589 lambda!197587))))

(assert (=> bs!1036419 (= (= lt!1810419 (ListMap!4518 Nil!51850)) (= lambda!197589 lambda!197586))))

(assert (=> bs!1036420 (not (= lambda!197589 lambda!197489))))

(assert (=> bs!1036421 (= (= lt!1810419 lt!1810361) (= lambda!197589 lambda!197583))))

(assert (=> bs!1036422 (not (= lambda!197589 lambda!197490))))

(assert (=> bs!1036417 (= (= lt!1810419 lt!1810277) (= lambda!197589 lambda!197564))))

(assert (=> b!4646000 true))

(declare-fun bs!1036428 () Bool)

(declare-fun d!1464988 () Bool)

(assert (= bs!1036428 (and d!1464988 b!4645912)))

(declare-fun lambda!197591 () Int)

(declare-fun lt!1810403 () ListMap!4517)

(assert (=> bs!1036428 (= (= lt!1810403 lt!1810089) (= lambda!197591 lambda!197562))))

(declare-fun bs!1036430 () Bool)

(assert (= bs!1036430 (and d!1464988 b!4645990)))

(assert (=> bs!1036430 (= (= lt!1810403 (ListMap!4518 Nil!51850)) (= lambda!197591 lambda!197581))))

(assert (=> bs!1036430 (= (= lt!1810403 lt!1810377) (= lambda!197591 lambda!197582))))

(declare-fun bs!1036433 () Bool)

(assert (= bs!1036433 (and d!1464988 b!4646000)))

(assert (=> bs!1036433 (= (= lt!1810403 lt!1810419) (= lambda!197591 lambda!197589))))

(declare-fun bs!1036435 () Bool)

(assert (= bs!1036435 (and d!1464988 d!1464936)))

(assert (=> bs!1036435 (= (= lt!1810403 lt!1810261) (= lambda!197591 lambda!197565))))

(declare-fun bs!1036437 () Bool)

(assert (= bs!1036437 (and d!1464988 b!4645910)))

(assert (=> bs!1036437 (= (= lt!1810403 lt!1810089) (= lambda!197591 lambda!197563))))

(declare-fun bs!1036439 () Bool)

(assert (= bs!1036439 (and d!1464988 b!4645992)))

(assert (=> bs!1036439 (= (= lt!1810403 (ListMap!4518 Nil!51850)) (= lambda!197591 lambda!197579))))

(assert (=> bs!1036433 (= (= lt!1810403 (ListMap!4518 Nil!51850)) (= lambda!197591 lambda!197587))))

(declare-fun bs!1036441 () Bool)

(assert (= bs!1036441 (and d!1464988 b!4646002)))

(assert (=> bs!1036441 (= (= lt!1810403 (ListMap!4518 Nil!51850)) (= lambda!197591 lambda!197586))))

(declare-fun bs!1036443 () Bool)

(assert (= bs!1036443 (and d!1464988 d!1464922)))

(assert (=> bs!1036443 (not (= lambda!197591 lambda!197489))))

(declare-fun bs!1036445 () Bool)

(assert (= bs!1036445 (and d!1464988 d!1464982)))

(assert (=> bs!1036445 (= (= lt!1810403 lt!1810361) (= lambda!197591 lambda!197583))))

(declare-fun bs!1036446 () Bool)

(assert (= bs!1036446 (and d!1464988 d!1464926)))

(assert (=> bs!1036446 (not (= lambda!197591 lambda!197490))))

(assert (=> bs!1036437 (= (= lt!1810403 lt!1810277) (= lambda!197591 lambda!197564))))

(assert (=> d!1464988 true))

(declare-fun e!2898206 () ListMap!4517)

(assert (=> b!4646000 (= e!2898206 lt!1810419)))

(declare-fun lt!1810404 () ListMap!4517)

(assert (=> b!4646000 (= lt!1810404 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)))))

(assert (=> b!4646000 (= lt!1810419 (addToMapMapFromBucket!1081 (t!359070 lt!1810088) (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))))))

(declare-fun lt!1810406 () Unit!116275)

(declare-fun call!324423 () Unit!116275)

(assert (=> b!4646000 (= lt!1810406 call!324423)))

(assert (=> b!4646000 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197587)))

(declare-fun lt!1810420 () Unit!116275)

(assert (=> b!4646000 (= lt!1810420 lt!1810406)))

(assert (=> b!4646000 (forall!10987 (toList!5182 lt!1810404) lambda!197589)))

(declare-fun lt!1810416 () Unit!116275)

(declare-fun Unit!116336 () Unit!116275)

(assert (=> b!4646000 (= lt!1810416 Unit!116336)))

(declare-fun call!324425 () Bool)

(assert (=> b!4646000 call!324425))

(declare-fun lt!1810415 () Unit!116275)

(declare-fun Unit!116337 () Unit!116275)

(assert (=> b!4646000 (= lt!1810415 Unit!116337)))

(declare-fun lt!1810411 () Unit!116275)

(declare-fun Unit!116338 () Unit!116275)

(assert (=> b!4646000 (= lt!1810411 Unit!116338)))

(declare-fun lt!1810410 () Unit!116275)

(assert (=> b!4646000 (= lt!1810410 (forallContained!3202 (toList!5182 lt!1810404) lambda!197589 (h!57980 lt!1810088)))))

(assert (=> b!4646000 (contains!14991 lt!1810404 (_1!29765 (h!57980 lt!1810088)))))

(declare-fun lt!1810418 () Unit!116275)

(declare-fun Unit!116339 () Unit!116275)

(assert (=> b!4646000 (= lt!1810418 Unit!116339)))

(assert (=> b!4646000 (contains!14991 lt!1810419 (_1!29765 (h!57980 lt!1810088)))))

(declare-fun lt!1810405 () Unit!116275)

(declare-fun Unit!116340 () Unit!116275)

(assert (=> b!4646000 (= lt!1810405 Unit!116340)))

(assert (=> b!4646000 (forall!10987 lt!1810088 lambda!197589)))

(declare-fun lt!1810422 () Unit!116275)

(declare-fun Unit!116341 () Unit!116275)

(assert (=> b!4646000 (= lt!1810422 Unit!116341)))

(declare-fun call!324424 () Bool)

(assert (=> b!4646000 call!324424))

(declare-fun lt!1810417 () Unit!116275)

(declare-fun Unit!116342 () Unit!116275)

(assert (=> b!4646000 (= lt!1810417 Unit!116342)))

(declare-fun lt!1810413 () Unit!116275)

(declare-fun Unit!116343 () Unit!116275)

(assert (=> b!4646000 (= lt!1810413 Unit!116343)))

(declare-fun lt!1810423 () Unit!116275)

(assert (=> b!4646000 (= lt!1810423 (addForallContainsKeyThenBeforeAdding!583 (ListMap!4518 Nil!51850) lt!1810419 (_1!29765 (h!57980 lt!1810088)) (_2!29765 (h!57980 lt!1810088))))))

(assert (=> b!4646000 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197589)))

(declare-fun lt!1810414 () Unit!116275)

(assert (=> b!4646000 (= lt!1810414 lt!1810423)))

(assert (=> b!4646000 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197589)))

(declare-fun lt!1810409 () Unit!116275)

(declare-fun Unit!116344 () Unit!116275)

(assert (=> b!4646000 (= lt!1810409 Unit!116344)))

(declare-fun res!1952025 () Bool)

(assert (=> b!4646000 (= res!1952025 (forall!10987 lt!1810088 lambda!197589))))

(declare-fun e!2898204 () Bool)

(assert (=> b!4646000 (=> (not res!1952025) (not e!2898204))))

(assert (=> b!4646000 e!2898204))

(declare-fun lt!1810421 () Unit!116275)

(declare-fun Unit!116345 () Unit!116275)

(assert (=> b!4646000 (= lt!1810421 Unit!116345)))

(declare-fun e!2898205 () Bool)

(assert (=> d!1464988 e!2898205))

(declare-fun res!1952026 () Bool)

(assert (=> d!1464988 (=> (not res!1952026) (not e!2898205))))

(assert (=> d!1464988 (= res!1952026 (forall!10987 lt!1810088 lambda!197591))))

(assert (=> d!1464988 (= lt!1810403 e!2898206)))

(declare-fun c!794980 () Bool)

(assert (=> d!1464988 (= c!794980 ((_ is Nil!51850) lt!1810088))))

(assert (=> d!1464988 (noDuplicateKeys!1624 lt!1810088)))

(assert (=> d!1464988 (= (addToMapMapFromBucket!1081 lt!1810088 (ListMap!4518 Nil!51850)) lt!1810403)))

(declare-fun b!4646001 () Bool)

(declare-fun res!1952024 () Bool)

(assert (=> b!4646001 (=> (not res!1952024) (not e!2898205))))

(assert (=> b!4646001 (= res!1952024 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197591))))

(declare-fun bm!324418 () Bool)

(assert (=> bm!324418 (= call!324425 (forall!10987 (ite c!794980 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 lt!1810088)) (ite c!794980 lambda!197586 lambda!197589)))))

(assert (=> b!4646002 (= e!2898206 (ListMap!4518 Nil!51850))))

(declare-fun lt!1810408 () Unit!116275)

(assert (=> b!4646002 (= lt!1810408 call!324423)))

(assert (=> b!4646002 call!324424))

(declare-fun lt!1810407 () Unit!116275)

(assert (=> b!4646002 (= lt!1810407 lt!1810408)))

(assert (=> b!4646002 call!324425))

(declare-fun lt!1810412 () Unit!116275)

(declare-fun Unit!116346 () Unit!116275)

(assert (=> b!4646002 (= lt!1810412 Unit!116346)))

(declare-fun bm!324419 () Bool)

(assert (=> bm!324419 (= call!324424 (forall!10987 (ite c!794980 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810404)) (ite c!794980 lambda!197586 lambda!197589)))))

(declare-fun b!4646003 () Bool)

(assert (=> b!4646003 (= e!2898205 (invariantList!1284 (toList!5182 lt!1810403)))))

(declare-fun b!4646004 () Bool)

(assert (=> b!4646004 (= e!2898204 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197589))))

(declare-fun bm!324420 () Bool)

(assert (=> bm!324420 (= call!324423 (lemmaContainsAllItsOwnKeys!584 (ListMap!4518 Nil!51850)))))

(assert (= (and d!1464988 c!794980) b!4646002))

(assert (= (and d!1464988 (not c!794980)) b!4646000))

(assert (= (and b!4646000 res!1952025) b!4646004))

(assert (= (or b!4646002 b!4646000) bm!324420))

(assert (= (or b!4646002 b!4646000) bm!324418))

(assert (= (or b!4646002 b!4646000) bm!324419))

(assert (= (and d!1464988 res!1952026) b!4646001))

(assert (= (and b!4646001 res!1952024) b!4646003))

(declare-fun m!5511239 () Bool)

(assert (=> d!1464988 m!5511239))

(declare-fun m!5511241 () Bool)

(assert (=> d!1464988 m!5511241))

(declare-fun m!5511245 () Bool)

(assert (=> bm!324418 m!5511245))

(declare-fun m!5511251 () Bool)

(assert (=> b!4646004 m!5511251))

(assert (=> bm!324420 m!5511213))

(declare-fun m!5511259 () Bool)

(assert (=> bm!324419 m!5511259))

(declare-fun m!5511261 () Bool)

(assert (=> b!4646003 m!5511261))

(declare-fun m!5511265 () Bool)

(assert (=> b!4646001 m!5511265))

(declare-fun m!5511269 () Bool)

(assert (=> b!4646000 m!5511269))

(assert (=> b!4646000 m!5511251))

(declare-fun m!5511275 () Bool)

(assert (=> b!4646000 m!5511275))

(assert (=> b!4646000 m!5511275))

(declare-fun m!5511279 () Bool)

(assert (=> b!4646000 m!5511279))

(declare-fun m!5511281 () Bool)

(assert (=> b!4646000 m!5511281))

(declare-fun m!5511285 () Bool)

(assert (=> b!4646000 m!5511285))

(declare-fun m!5511289 () Bool)

(assert (=> b!4646000 m!5511289))

(declare-fun m!5511291 () Bool)

(assert (=> b!4646000 m!5511291))

(assert (=> b!4646000 m!5511291))

(declare-fun m!5511297 () Bool)

(assert (=> b!4646000 m!5511297))

(assert (=> b!4646000 m!5511251))

(declare-fun m!5511303 () Bool)

(assert (=> b!4646000 m!5511303))

(assert (=> b!4645804 d!1464988))

(declare-fun d!1464990 () Bool)

(declare-fun hash!3749 (Hashable!6021 K!13210) (_ BitVec 64))

(assert (=> d!1464990 (= (hash!3747 hashF!1389 key!4968) (hash!3749 hashF!1389 key!4968))))

(declare-fun bs!1036449 () Bool)

(assert (= bs!1036449 d!1464990))

(declare-fun m!5511313 () Bool)

(assert (=> bs!1036449 m!5511313))

(assert (=> b!4645813 d!1464990))

(declare-fun bs!1036452 () Bool)

(declare-fun d!1464998 () Bool)

(assert (= bs!1036452 (and d!1464998 d!1464958)))

(declare-fun lambda!197593 () Int)

(assert (=> bs!1036452 (= lambda!197593 lambda!197574)))

(declare-fun bs!1036454 () Bool)

(assert (= bs!1036454 (and d!1464998 d!1464980)))

(assert (=> bs!1036454 (= lambda!197593 lambda!197578)))

(declare-fun lt!1810424 () ListMap!4517)

(assert (=> d!1464998 (invariantList!1284 (toList!5182 lt!1810424))))

(declare-fun e!2898209 () ListMap!4517)

(assert (=> d!1464998 (= lt!1810424 e!2898209)))

(declare-fun c!794981 () Bool)

(assert (=> d!1464998 (= c!794981 ((_ is Cons!51851) (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))))

(assert (=> d!1464998 (forall!10988 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851) lambda!197593)))

(assert (=> d!1464998 (= (extractMap!1680 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)) lt!1810424)))

(declare-fun b!4646007 () Bool)

(assert (=> b!4646007 (= e!2898209 (addToMapMapFromBucket!1081 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))))))

(declare-fun b!4646008 () Bool)

(assert (=> b!4646008 (= e!2898209 (ListMap!4518 Nil!51850))))

(assert (= (and d!1464998 c!794981) b!4646007))

(assert (= (and d!1464998 (not c!794981)) b!4646008))

(declare-fun m!5511315 () Bool)

(assert (=> d!1464998 m!5511315))

(declare-fun m!5511317 () Bool)

(assert (=> d!1464998 m!5511317))

(declare-fun m!5511319 () Bool)

(assert (=> b!4646007 m!5511319))

(assert (=> b!4646007 m!5511319))

(declare-fun m!5511321 () Bool)

(assert (=> b!4646007 m!5511321))

(assert (=> b!4645814 d!1464998))

(declare-fun bs!1036464 () Bool)

(declare-fun d!1465000 () Bool)

(assert (= bs!1036464 (and d!1465000 d!1464958)))

(declare-fun lambda!197594 () Int)

(assert (=> bs!1036464 (= lambda!197594 lambda!197574)))

(declare-fun bs!1036466 () Bool)

(assert (= bs!1036466 (and d!1465000 d!1464980)))

(assert (=> bs!1036466 (= lambda!197594 lambda!197578)))

(declare-fun bs!1036468 () Bool)

(assert (= bs!1036468 (and d!1465000 d!1464998)))

(assert (=> bs!1036468 (= lambda!197594 lambda!197593)))

(declare-fun lt!1810425 () ListMap!4517)

(assert (=> d!1465000 (invariantList!1284 (toList!5182 lt!1810425))))

(declare-fun e!2898210 () ListMap!4517)

(assert (=> d!1465000 (= lt!1810425 e!2898210)))

(declare-fun c!794982 () Bool)

(assert (=> d!1465000 (= c!794982 ((_ is Cons!51851) lt!1810086))))

(assert (=> d!1465000 (forall!10988 lt!1810086 lambda!197594)))

(assert (=> d!1465000 (= (extractMap!1680 lt!1810086) lt!1810425)))

(declare-fun b!4646009 () Bool)

(assert (=> b!4646009 (= e!2898210 (addToMapMapFromBucket!1081 (_2!29766 (h!57981 lt!1810086)) (extractMap!1680 (t!359071 lt!1810086))))))

(declare-fun b!4646010 () Bool)

(assert (=> b!4646010 (= e!2898210 (ListMap!4518 Nil!51850))))

(assert (= (and d!1465000 c!794982) b!4646009))

(assert (= (and d!1465000 (not c!794982)) b!4646010))

(declare-fun m!5511323 () Bool)

(assert (=> d!1465000 m!5511323))

(declare-fun m!5511325 () Bool)

(assert (=> d!1465000 m!5511325))

(declare-fun m!5511327 () Bool)

(assert (=> b!4646009 m!5511327))

(assert (=> b!4646009 m!5511327))

(declare-fun m!5511331 () Bool)

(assert (=> b!4646009 m!5511331))

(assert (=> b!4645814 d!1465000))

(declare-fun d!1465002 () Bool)

(declare-fun lt!1810428 () List!51974)

(assert (=> d!1465002 (not (containsKey!2690 lt!1810428 key!4968))))

(declare-fun e!2898220 () List!51974)

(assert (=> d!1465002 (= lt!1810428 e!2898220)))

(declare-fun c!794988 () Bool)

(assert (=> d!1465002 (= c!794988 (and ((_ is Cons!51850) oldBucket!40) (= (_1!29765 (h!57980 oldBucket!40)) key!4968)))))

(assert (=> d!1465002 (noDuplicateKeys!1624 oldBucket!40)))

(assert (=> d!1465002 (= (removePairForKey!1247 oldBucket!40 key!4968) lt!1810428)))

(declare-fun b!4646026 () Bool)

(declare-fun e!2898219 () List!51974)

(assert (=> b!4646026 (= e!2898220 e!2898219)))

(declare-fun c!794987 () Bool)

(assert (=> b!4646026 (= c!794987 ((_ is Cons!51850) oldBucket!40))))

(declare-fun b!4646028 () Bool)

(assert (=> b!4646028 (= e!2898219 Nil!51850)))

(declare-fun b!4646025 () Bool)

(assert (=> b!4646025 (= e!2898220 (t!359070 oldBucket!40))))

(declare-fun b!4646027 () Bool)

(assert (=> b!4646027 (= e!2898219 (Cons!51850 (h!57980 oldBucket!40) (removePairForKey!1247 (t!359070 oldBucket!40) key!4968)))))

(assert (= (and d!1465002 c!794988) b!4646025))

(assert (= (and d!1465002 (not c!794988)) b!4646026))

(assert (= (and b!4646026 c!794987) b!4646027))

(assert (= (and b!4646026 (not c!794987)) b!4646028))

(declare-fun m!5511333 () Bool)

(assert (=> d!1465002 m!5511333))

(assert (=> d!1465002 m!5510841))

(declare-fun m!5511335 () Bool)

(assert (=> b!4646027 m!5511335))

(assert (=> b!4645803 d!1465002))

(declare-fun bs!1036472 () Bool)

(declare-fun b!4646031 () Bool)

(assert (= bs!1036472 (and b!4646031 b!4645912)))

(declare-fun lambda!197595 () Int)

(assert (=> bs!1036472 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197595 lambda!197562))))

(declare-fun bs!1036473 () Bool)

(assert (= bs!1036473 (and b!4646031 b!4645990)))

(assert (=> bs!1036473 (= lambda!197595 lambda!197581)))

(assert (=> bs!1036473 (= (= (ListMap!4518 Nil!51850) lt!1810377) (= lambda!197595 lambda!197582))))

(declare-fun bs!1036474 () Bool)

(assert (= bs!1036474 (and b!4646031 b!4646000)))

(assert (=> bs!1036474 (= (= (ListMap!4518 Nil!51850) lt!1810419) (= lambda!197595 lambda!197589))))

(declare-fun bs!1036475 () Bool)

(assert (= bs!1036475 (and b!4646031 d!1464936)))

(assert (=> bs!1036475 (= (= (ListMap!4518 Nil!51850) lt!1810261) (= lambda!197595 lambda!197565))))

(declare-fun bs!1036476 () Bool)

(assert (= bs!1036476 (and b!4646031 b!4645910)))

(assert (=> bs!1036476 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197595 lambda!197563))))

(declare-fun bs!1036477 () Bool)

(assert (= bs!1036477 (and b!4646031 d!1464988)))

(assert (=> bs!1036477 (= (= (ListMap!4518 Nil!51850) lt!1810403) (= lambda!197595 lambda!197591))))

(declare-fun bs!1036478 () Bool)

(assert (= bs!1036478 (and b!4646031 b!4645992)))

(assert (=> bs!1036478 (= lambda!197595 lambda!197579)))

(assert (=> bs!1036474 (= lambda!197595 lambda!197587)))

(declare-fun bs!1036479 () Bool)

(assert (= bs!1036479 (and b!4646031 b!4646002)))

(assert (=> bs!1036479 (= lambda!197595 lambda!197586)))

(declare-fun bs!1036480 () Bool)

(assert (= bs!1036480 (and b!4646031 d!1464922)))

(assert (=> bs!1036480 (not (= lambda!197595 lambda!197489))))

(declare-fun bs!1036481 () Bool)

(assert (= bs!1036481 (and b!4646031 d!1464982)))

(assert (=> bs!1036481 (= (= (ListMap!4518 Nil!51850) lt!1810361) (= lambda!197595 lambda!197583))))

(declare-fun bs!1036482 () Bool)

(assert (= bs!1036482 (and b!4646031 d!1464926)))

(assert (=> bs!1036482 (not (= lambda!197595 lambda!197490))))

(assert (=> bs!1036476 (= (= (ListMap!4518 Nil!51850) lt!1810277) (= lambda!197595 lambda!197564))))

(assert (=> b!4646031 true))

(declare-fun bs!1036483 () Bool)

(declare-fun b!4646029 () Bool)

(assert (= bs!1036483 (and b!4646029 b!4645912)))

(declare-fun lambda!197596 () Int)

(assert (=> bs!1036483 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197596 lambda!197562))))

(declare-fun bs!1036484 () Bool)

(assert (= bs!1036484 (and b!4646029 b!4645990)))

(assert (=> bs!1036484 (= (= (ListMap!4518 Nil!51850) lt!1810377) (= lambda!197596 lambda!197582))))

(declare-fun bs!1036485 () Bool)

(assert (= bs!1036485 (and b!4646029 b!4646000)))

(assert (=> bs!1036485 (= (= (ListMap!4518 Nil!51850) lt!1810419) (= lambda!197596 lambda!197589))))

(declare-fun bs!1036486 () Bool)

(assert (= bs!1036486 (and b!4646029 d!1464936)))

(assert (=> bs!1036486 (= (= (ListMap!4518 Nil!51850) lt!1810261) (= lambda!197596 lambda!197565))))

(declare-fun bs!1036487 () Bool)

(assert (= bs!1036487 (and b!4646029 b!4645910)))

(assert (=> bs!1036487 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197596 lambda!197563))))

(declare-fun bs!1036488 () Bool)

(assert (= bs!1036488 (and b!4646029 d!1464988)))

(assert (=> bs!1036488 (= (= (ListMap!4518 Nil!51850) lt!1810403) (= lambda!197596 lambda!197591))))

(declare-fun bs!1036489 () Bool)

(assert (= bs!1036489 (and b!4646029 b!4645992)))

(assert (=> bs!1036489 (= lambda!197596 lambda!197579)))

(assert (=> bs!1036485 (= lambda!197596 lambda!197587)))

(declare-fun bs!1036490 () Bool)

(assert (= bs!1036490 (and b!4646029 b!4646002)))

(assert (=> bs!1036490 (= lambda!197596 lambda!197586)))

(declare-fun bs!1036491 () Bool)

(assert (= bs!1036491 (and b!4646029 d!1464922)))

(assert (=> bs!1036491 (not (= lambda!197596 lambda!197489))))

(declare-fun bs!1036492 () Bool)

(assert (= bs!1036492 (and b!4646029 d!1464982)))

(assert (=> bs!1036492 (= (= (ListMap!4518 Nil!51850) lt!1810361) (= lambda!197596 lambda!197583))))

(declare-fun bs!1036493 () Bool)

(assert (= bs!1036493 (and b!4646029 d!1464926)))

(assert (=> bs!1036493 (not (= lambda!197596 lambda!197490))))

(assert (=> bs!1036487 (= (= (ListMap!4518 Nil!51850) lt!1810277) (= lambda!197596 lambda!197564))))

(assert (=> bs!1036484 (= lambda!197596 lambda!197581)))

(declare-fun bs!1036494 () Bool)

(assert (= bs!1036494 (and b!4646029 b!4646031)))

(assert (=> bs!1036494 (= lambda!197596 lambda!197595)))

(assert (=> b!4646029 true))

(declare-fun lambda!197597 () Int)

(declare-fun lt!1810445 () ListMap!4517)

(assert (=> bs!1036483 (= (= lt!1810445 lt!1810089) (= lambda!197597 lambda!197562))))

(assert (=> bs!1036484 (= (= lt!1810445 lt!1810377) (= lambda!197597 lambda!197582))))

(assert (=> bs!1036485 (= (= lt!1810445 lt!1810419) (= lambda!197597 lambda!197589))))

(assert (=> bs!1036486 (= (= lt!1810445 lt!1810261) (= lambda!197597 lambda!197565))))

(assert (=> bs!1036487 (= (= lt!1810445 lt!1810089) (= lambda!197597 lambda!197563))))

(assert (=> bs!1036488 (= (= lt!1810445 lt!1810403) (= lambda!197597 lambda!197591))))

(assert (=> bs!1036489 (= (= lt!1810445 (ListMap!4518 Nil!51850)) (= lambda!197597 lambda!197579))))

(assert (=> b!4646029 (= (= lt!1810445 (ListMap!4518 Nil!51850)) (= lambda!197597 lambda!197596))))

(assert (=> bs!1036485 (= (= lt!1810445 (ListMap!4518 Nil!51850)) (= lambda!197597 lambda!197587))))

(assert (=> bs!1036490 (= (= lt!1810445 (ListMap!4518 Nil!51850)) (= lambda!197597 lambda!197586))))

(assert (=> bs!1036491 (not (= lambda!197597 lambda!197489))))

(assert (=> bs!1036492 (= (= lt!1810445 lt!1810361) (= lambda!197597 lambda!197583))))

(assert (=> bs!1036493 (not (= lambda!197597 lambda!197490))))

(assert (=> bs!1036487 (= (= lt!1810445 lt!1810277) (= lambda!197597 lambda!197564))))

(assert (=> bs!1036484 (= (= lt!1810445 (ListMap!4518 Nil!51850)) (= lambda!197597 lambda!197581))))

(assert (=> bs!1036494 (= (= lt!1810445 (ListMap!4518 Nil!51850)) (= lambda!197597 lambda!197595))))

(assert (=> b!4646029 true))

(declare-fun bs!1036495 () Bool)

(declare-fun d!1465004 () Bool)

(assert (= bs!1036495 (and d!1465004 b!4646029)))

(declare-fun lambda!197598 () Int)

(declare-fun lt!1810429 () ListMap!4517)

(assert (=> bs!1036495 (= (= lt!1810429 lt!1810445) (= lambda!197598 lambda!197597))))

(declare-fun bs!1036496 () Bool)

(assert (= bs!1036496 (and d!1465004 b!4645912)))

(assert (=> bs!1036496 (= (= lt!1810429 lt!1810089) (= lambda!197598 lambda!197562))))

(declare-fun bs!1036497 () Bool)

(assert (= bs!1036497 (and d!1465004 b!4645990)))

(assert (=> bs!1036497 (= (= lt!1810429 lt!1810377) (= lambda!197598 lambda!197582))))

(declare-fun bs!1036498 () Bool)

(assert (= bs!1036498 (and d!1465004 b!4646000)))

(assert (=> bs!1036498 (= (= lt!1810429 lt!1810419) (= lambda!197598 lambda!197589))))

(declare-fun bs!1036499 () Bool)

(assert (= bs!1036499 (and d!1465004 d!1464936)))

(assert (=> bs!1036499 (= (= lt!1810429 lt!1810261) (= lambda!197598 lambda!197565))))

(declare-fun bs!1036500 () Bool)

(assert (= bs!1036500 (and d!1465004 b!4645910)))

(assert (=> bs!1036500 (= (= lt!1810429 lt!1810089) (= lambda!197598 lambda!197563))))

(declare-fun bs!1036501 () Bool)

(assert (= bs!1036501 (and d!1465004 d!1464988)))

(assert (=> bs!1036501 (= (= lt!1810429 lt!1810403) (= lambda!197598 lambda!197591))))

(declare-fun bs!1036502 () Bool)

(assert (= bs!1036502 (and d!1465004 b!4645992)))

(assert (=> bs!1036502 (= (= lt!1810429 (ListMap!4518 Nil!51850)) (= lambda!197598 lambda!197579))))

(assert (=> bs!1036495 (= (= lt!1810429 (ListMap!4518 Nil!51850)) (= lambda!197598 lambda!197596))))

(assert (=> bs!1036498 (= (= lt!1810429 (ListMap!4518 Nil!51850)) (= lambda!197598 lambda!197587))))

(declare-fun bs!1036503 () Bool)

(assert (= bs!1036503 (and d!1465004 b!4646002)))

(assert (=> bs!1036503 (= (= lt!1810429 (ListMap!4518 Nil!51850)) (= lambda!197598 lambda!197586))))

(declare-fun bs!1036504 () Bool)

(assert (= bs!1036504 (and d!1465004 d!1464922)))

(assert (=> bs!1036504 (not (= lambda!197598 lambda!197489))))

(declare-fun bs!1036505 () Bool)

(assert (= bs!1036505 (and d!1465004 d!1464982)))

(assert (=> bs!1036505 (= (= lt!1810429 lt!1810361) (= lambda!197598 lambda!197583))))

(declare-fun bs!1036506 () Bool)

(assert (= bs!1036506 (and d!1465004 d!1464926)))

(assert (=> bs!1036506 (not (= lambda!197598 lambda!197490))))

(assert (=> bs!1036500 (= (= lt!1810429 lt!1810277) (= lambda!197598 lambda!197564))))

(assert (=> bs!1036497 (= (= lt!1810429 (ListMap!4518 Nil!51850)) (= lambda!197598 lambda!197581))))

(declare-fun bs!1036507 () Bool)

(assert (= bs!1036507 (and d!1465004 b!4646031)))

(assert (=> bs!1036507 (= (= lt!1810429 (ListMap!4518 Nil!51850)) (= lambda!197598 lambda!197595))))

(assert (=> d!1465004 true))

(declare-fun e!2898223 () ListMap!4517)

(assert (=> b!4646029 (= e!2898223 lt!1810445)))

(declare-fun lt!1810430 () ListMap!4517)

(assert (=> b!4646029 (= lt!1810430 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))

(assert (=> b!4646029 (= lt!1810445 (addToMapMapFromBucket!1081 (t!359070 (Cons!51850 lt!1810091 lt!1810088)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(declare-fun lt!1810432 () Unit!116275)

(declare-fun call!324426 () Unit!116275)

(assert (=> b!4646029 (= lt!1810432 call!324426)))

(assert (=> b!4646029 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197596)))

(declare-fun lt!1810446 () Unit!116275)

(assert (=> b!4646029 (= lt!1810446 lt!1810432)))

(assert (=> b!4646029 (forall!10987 (toList!5182 lt!1810430) lambda!197597)))

(declare-fun lt!1810442 () Unit!116275)

(declare-fun Unit!116358 () Unit!116275)

(assert (=> b!4646029 (= lt!1810442 Unit!116358)))

(declare-fun call!324428 () Bool)

(assert (=> b!4646029 call!324428))

(declare-fun lt!1810441 () Unit!116275)

(declare-fun Unit!116359 () Unit!116275)

(assert (=> b!4646029 (= lt!1810441 Unit!116359)))

(declare-fun lt!1810437 () Unit!116275)

(declare-fun Unit!116360 () Unit!116275)

(assert (=> b!4646029 (= lt!1810437 Unit!116360)))

(declare-fun lt!1810436 () Unit!116275)

(assert (=> b!4646029 (= lt!1810436 (forallContained!3202 (toList!5182 lt!1810430) lambda!197597 (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))

(assert (=> b!4646029 (contains!14991 lt!1810430 (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))

(declare-fun lt!1810444 () Unit!116275)

(declare-fun Unit!116361 () Unit!116275)

(assert (=> b!4646029 (= lt!1810444 Unit!116361)))

(assert (=> b!4646029 (contains!14991 lt!1810445 (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))

(declare-fun lt!1810431 () Unit!116275)

(declare-fun Unit!116362 () Unit!116275)

(assert (=> b!4646029 (= lt!1810431 Unit!116362)))

(assert (=> b!4646029 (forall!10987 (Cons!51850 lt!1810091 lt!1810088) lambda!197597)))

(declare-fun lt!1810448 () Unit!116275)

(declare-fun Unit!116363 () Unit!116275)

(assert (=> b!4646029 (= lt!1810448 Unit!116363)))

(declare-fun call!324427 () Bool)

(assert (=> b!4646029 call!324427))

(declare-fun lt!1810443 () Unit!116275)

(declare-fun Unit!116364 () Unit!116275)

(assert (=> b!4646029 (= lt!1810443 Unit!116364)))

(declare-fun lt!1810439 () Unit!116275)

(declare-fun Unit!116365 () Unit!116275)

(assert (=> b!4646029 (= lt!1810439 Unit!116365)))

(declare-fun lt!1810449 () Unit!116275)

(assert (=> b!4646029 (= lt!1810449 (addForallContainsKeyThenBeforeAdding!583 (ListMap!4518 Nil!51850) lt!1810445 (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (_2!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(assert (=> b!4646029 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197597)))

(declare-fun lt!1810440 () Unit!116275)

(assert (=> b!4646029 (= lt!1810440 lt!1810449)))

(assert (=> b!4646029 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197597)))

(declare-fun lt!1810435 () Unit!116275)

(declare-fun Unit!116366 () Unit!116275)

(assert (=> b!4646029 (= lt!1810435 Unit!116366)))

(declare-fun res!1952030 () Bool)

(assert (=> b!4646029 (= res!1952030 (forall!10987 (Cons!51850 lt!1810091 lt!1810088) lambda!197597))))

(declare-fun e!2898221 () Bool)

(assert (=> b!4646029 (=> (not res!1952030) (not e!2898221))))

(assert (=> b!4646029 e!2898221))

(declare-fun lt!1810447 () Unit!116275)

(declare-fun Unit!116367 () Unit!116275)

(assert (=> b!4646029 (= lt!1810447 Unit!116367)))

(declare-fun e!2898222 () Bool)

(assert (=> d!1465004 e!2898222))

(declare-fun res!1952031 () Bool)

(assert (=> d!1465004 (=> (not res!1952031) (not e!2898222))))

(assert (=> d!1465004 (= res!1952031 (forall!10987 (Cons!51850 lt!1810091 lt!1810088) lambda!197598))))

(assert (=> d!1465004 (= lt!1810429 e!2898223)))

(declare-fun c!794989 () Bool)

(assert (=> d!1465004 (= c!794989 ((_ is Nil!51850) (Cons!51850 lt!1810091 lt!1810088)))))

(assert (=> d!1465004 (noDuplicateKeys!1624 (Cons!51850 lt!1810091 lt!1810088))))

(assert (=> d!1465004 (= (addToMapMapFromBucket!1081 (Cons!51850 lt!1810091 lt!1810088) (ListMap!4518 Nil!51850)) lt!1810429)))

(declare-fun b!4646030 () Bool)

(declare-fun res!1952029 () Bool)

(assert (=> b!4646030 (=> (not res!1952029) (not e!2898222))))

(assert (=> b!4646030 (= res!1952029 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197598))))

(declare-fun bm!324421 () Bool)

(assert (=> bm!324421 (= call!324428 (forall!10987 (ite c!794989 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 (Cons!51850 lt!1810091 lt!1810088))) (ite c!794989 lambda!197595 lambda!197597)))))

(assert (=> b!4646031 (= e!2898223 (ListMap!4518 Nil!51850))))

(declare-fun lt!1810434 () Unit!116275)

(assert (=> b!4646031 (= lt!1810434 call!324426)))

(assert (=> b!4646031 call!324427))

(declare-fun lt!1810433 () Unit!116275)

(assert (=> b!4646031 (= lt!1810433 lt!1810434)))

(assert (=> b!4646031 call!324428))

(declare-fun lt!1810438 () Unit!116275)

(declare-fun Unit!116368 () Unit!116275)

(assert (=> b!4646031 (= lt!1810438 Unit!116368)))

(declare-fun bm!324422 () Bool)

(assert (=> bm!324422 (= call!324427 (forall!10987 (ite c!794989 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810430)) (ite c!794989 lambda!197595 lambda!197597)))))

(declare-fun b!4646032 () Bool)

(assert (=> b!4646032 (= e!2898222 (invariantList!1284 (toList!5182 lt!1810429)))))

(declare-fun b!4646033 () Bool)

(assert (=> b!4646033 (= e!2898221 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197597))))

(declare-fun bm!324423 () Bool)

(assert (=> bm!324423 (= call!324426 (lemmaContainsAllItsOwnKeys!584 (ListMap!4518 Nil!51850)))))

(assert (= (and d!1465004 c!794989) b!4646031))

(assert (= (and d!1465004 (not c!794989)) b!4646029))

(assert (= (and b!4646029 res!1952030) b!4646033))

(assert (= (or b!4646031 b!4646029) bm!324423))

(assert (= (or b!4646031 b!4646029) bm!324421))

(assert (= (or b!4646031 b!4646029) bm!324422))

(assert (= (and d!1465004 res!1952031) b!4646030))

(assert (= (and b!4646030 res!1952029) b!4646032))

(declare-fun m!5511337 () Bool)

(assert (=> d!1465004 m!5511337))

(declare-fun m!5511339 () Bool)

(assert (=> d!1465004 m!5511339))

(declare-fun m!5511341 () Bool)

(assert (=> bm!324421 m!5511341))

(declare-fun m!5511343 () Bool)

(assert (=> b!4646033 m!5511343))

(assert (=> bm!324423 m!5511213))

(declare-fun m!5511345 () Bool)

(assert (=> bm!324422 m!5511345))

(declare-fun m!5511347 () Bool)

(assert (=> b!4646032 m!5511347))

(declare-fun m!5511349 () Bool)

(assert (=> b!4646030 m!5511349))

(declare-fun m!5511351 () Bool)

(assert (=> b!4646029 m!5511351))

(assert (=> b!4646029 m!5511343))

(declare-fun m!5511353 () Bool)

(assert (=> b!4646029 m!5511353))

(assert (=> b!4646029 m!5511353))

(declare-fun m!5511355 () Bool)

(assert (=> b!4646029 m!5511355))

(declare-fun m!5511357 () Bool)

(assert (=> b!4646029 m!5511357))

(declare-fun m!5511359 () Bool)

(assert (=> b!4646029 m!5511359))

(declare-fun m!5511361 () Bool)

(assert (=> b!4646029 m!5511361))

(declare-fun m!5511363 () Bool)

(assert (=> b!4646029 m!5511363))

(assert (=> b!4646029 m!5511363))

(declare-fun m!5511365 () Bool)

(assert (=> b!4646029 m!5511365))

(assert (=> b!4646029 m!5511343))

(declare-fun m!5511367 () Bool)

(assert (=> b!4646029 m!5511367))

(assert (=> b!4645801 d!1465004))

(declare-fun d!1465006 () Bool)

(assert (=> d!1465006 (= (head!9724 oldBucket!40) (h!57980 oldBucket!40))))

(assert (=> b!4645801 d!1465006))

(declare-fun bs!1036508 () Bool)

(declare-fun b!4646036 () Bool)

(assert (= bs!1036508 (and b!4646036 b!4646029)))

(declare-fun lambda!197599 () Int)

(assert (=> bs!1036508 (= (= (ListMap!4518 Nil!51850) lt!1810445) (= lambda!197599 lambda!197597))))

(declare-fun bs!1036509 () Bool)

(assert (= bs!1036509 (and b!4646036 b!4645912)))

(assert (=> bs!1036509 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197599 lambda!197562))))

(declare-fun bs!1036510 () Bool)

(assert (= bs!1036510 (and b!4646036 b!4645990)))

(assert (=> bs!1036510 (= (= (ListMap!4518 Nil!51850) lt!1810377) (= lambda!197599 lambda!197582))))

(declare-fun bs!1036511 () Bool)

(assert (= bs!1036511 (and b!4646036 b!4646000)))

(assert (=> bs!1036511 (= (= (ListMap!4518 Nil!51850) lt!1810419) (= lambda!197599 lambda!197589))))

(declare-fun bs!1036512 () Bool)

(assert (= bs!1036512 (and b!4646036 d!1464936)))

(assert (=> bs!1036512 (= (= (ListMap!4518 Nil!51850) lt!1810261) (= lambda!197599 lambda!197565))))

(declare-fun bs!1036513 () Bool)

(assert (= bs!1036513 (and b!4646036 b!4645910)))

(assert (=> bs!1036513 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197599 lambda!197563))))

(declare-fun bs!1036514 () Bool)

(assert (= bs!1036514 (and b!4646036 d!1464988)))

(assert (=> bs!1036514 (= (= (ListMap!4518 Nil!51850) lt!1810403) (= lambda!197599 lambda!197591))))

(declare-fun bs!1036515 () Bool)

(assert (= bs!1036515 (and b!4646036 b!4645992)))

(assert (=> bs!1036515 (= lambda!197599 lambda!197579)))

(assert (=> bs!1036508 (= lambda!197599 lambda!197596)))

(declare-fun bs!1036516 () Bool)

(assert (= bs!1036516 (and b!4646036 d!1465004)))

(assert (=> bs!1036516 (= (= (ListMap!4518 Nil!51850) lt!1810429) (= lambda!197599 lambda!197598))))

(assert (=> bs!1036511 (= lambda!197599 lambda!197587)))

(declare-fun bs!1036517 () Bool)

(assert (= bs!1036517 (and b!4646036 b!4646002)))

(assert (=> bs!1036517 (= lambda!197599 lambda!197586)))

(declare-fun bs!1036518 () Bool)

(assert (= bs!1036518 (and b!4646036 d!1464922)))

(assert (=> bs!1036518 (not (= lambda!197599 lambda!197489))))

(declare-fun bs!1036519 () Bool)

(assert (= bs!1036519 (and b!4646036 d!1464982)))

(assert (=> bs!1036519 (= (= (ListMap!4518 Nil!51850) lt!1810361) (= lambda!197599 lambda!197583))))

(declare-fun bs!1036520 () Bool)

(assert (= bs!1036520 (and b!4646036 d!1464926)))

(assert (=> bs!1036520 (not (= lambda!197599 lambda!197490))))

(assert (=> bs!1036513 (= (= (ListMap!4518 Nil!51850) lt!1810277) (= lambda!197599 lambda!197564))))

(assert (=> bs!1036510 (= lambda!197599 lambda!197581)))

(declare-fun bs!1036521 () Bool)

(assert (= bs!1036521 (and b!4646036 b!4646031)))

(assert (=> bs!1036521 (= lambda!197599 lambda!197595)))

(assert (=> b!4646036 true))

(declare-fun bs!1036522 () Bool)

(declare-fun b!4646034 () Bool)

(assert (= bs!1036522 (and b!4646034 b!4646029)))

(declare-fun lambda!197600 () Int)

(assert (=> bs!1036522 (= (= (ListMap!4518 Nil!51850) lt!1810445) (= lambda!197600 lambda!197597))))

(declare-fun bs!1036523 () Bool)

(assert (= bs!1036523 (and b!4646034 b!4645912)))

(assert (=> bs!1036523 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197600 lambda!197562))))

(declare-fun bs!1036524 () Bool)

(assert (= bs!1036524 (and b!4646034 b!4645990)))

(assert (=> bs!1036524 (= (= (ListMap!4518 Nil!51850) lt!1810377) (= lambda!197600 lambda!197582))))

(declare-fun bs!1036525 () Bool)

(assert (= bs!1036525 (and b!4646034 b!4646000)))

(assert (=> bs!1036525 (= (= (ListMap!4518 Nil!51850) lt!1810419) (= lambda!197600 lambda!197589))))

(declare-fun bs!1036526 () Bool)

(assert (= bs!1036526 (and b!4646034 d!1464936)))

(assert (=> bs!1036526 (= (= (ListMap!4518 Nil!51850) lt!1810261) (= lambda!197600 lambda!197565))))

(declare-fun bs!1036527 () Bool)

(assert (= bs!1036527 (and b!4646034 b!4645910)))

(assert (=> bs!1036527 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197600 lambda!197563))))

(declare-fun bs!1036528 () Bool)

(assert (= bs!1036528 (and b!4646034 d!1464988)))

(assert (=> bs!1036528 (= (= (ListMap!4518 Nil!51850) lt!1810403) (= lambda!197600 lambda!197591))))

(declare-fun bs!1036529 () Bool)

(assert (= bs!1036529 (and b!4646034 b!4645992)))

(assert (=> bs!1036529 (= lambda!197600 lambda!197579)))

(assert (=> bs!1036522 (= lambda!197600 lambda!197596)))

(declare-fun bs!1036530 () Bool)

(assert (= bs!1036530 (and b!4646034 d!1465004)))

(assert (=> bs!1036530 (= (= (ListMap!4518 Nil!51850) lt!1810429) (= lambda!197600 lambda!197598))))

(assert (=> bs!1036525 (= lambda!197600 lambda!197587)))

(declare-fun bs!1036531 () Bool)

(assert (= bs!1036531 (and b!4646034 b!4646002)))

(assert (=> bs!1036531 (= lambda!197600 lambda!197586)))

(declare-fun bs!1036532 () Bool)

(assert (= bs!1036532 (and b!4646034 d!1464922)))

(assert (=> bs!1036532 (not (= lambda!197600 lambda!197489))))

(declare-fun bs!1036533 () Bool)

(assert (= bs!1036533 (and b!4646034 d!1464982)))

(assert (=> bs!1036533 (= (= (ListMap!4518 Nil!51850) lt!1810361) (= lambda!197600 lambda!197583))))

(declare-fun bs!1036534 () Bool)

(assert (= bs!1036534 (and b!4646034 d!1464926)))

(assert (=> bs!1036534 (not (= lambda!197600 lambda!197490))))

(assert (=> bs!1036524 (= lambda!197600 lambda!197581)))

(declare-fun bs!1036535 () Bool)

(assert (= bs!1036535 (and b!4646034 b!4646031)))

(assert (=> bs!1036535 (= lambda!197600 lambda!197595)))

(assert (=> bs!1036527 (= (= (ListMap!4518 Nil!51850) lt!1810277) (= lambda!197600 lambda!197564))))

(declare-fun bs!1036536 () Bool)

(assert (= bs!1036536 (and b!4646034 b!4646036)))

(assert (=> bs!1036536 (= lambda!197600 lambda!197599)))

(assert (=> b!4646034 true))

(declare-fun lt!1810466 () ListMap!4517)

(declare-fun lambda!197601 () Int)

(assert (=> bs!1036522 (= (= lt!1810466 lt!1810445) (= lambda!197601 lambda!197597))))

(assert (=> bs!1036523 (= (= lt!1810466 lt!1810089) (= lambda!197601 lambda!197562))))

(assert (=> bs!1036524 (= (= lt!1810466 lt!1810377) (= lambda!197601 lambda!197582))))

(assert (=> b!4646034 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197601 lambda!197600))))

(assert (=> bs!1036525 (= (= lt!1810466 lt!1810419) (= lambda!197601 lambda!197589))))

(assert (=> bs!1036526 (= (= lt!1810466 lt!1810261) (= lambda!197601 lambda!197565))))

(assert (=> bs!1036527 (= (= lt!1810466 lt!1810089) (= lambda!197601 lambda!197563))))

(assert (=> bs!1036528 (= (= lt!1810466 lt!1810403) (= lambda!197601 lambda!197591))))

(assert (=> bs!1036529 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197601 lambda!197579))))

(assert (=> bs!1036522 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197601 lambda!197596))))

(assert (=> bs!1036530 (= (= lt!1810466 lt!1810429) (= lambda!197601 lambda!197598))))

(assert (=> bs!1036525 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197601 lambda!197587))))

(assert (=> bs!1036531 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197601 lambda!197586))))

(assert (=> bs!1036532 (not (= lambda!197601 lambda!197489))))

(assert (=> bs!1036533 (= (= lt!1810466 lt!1810361) (= lambda!197601 lambda!197583))))

(assert (=> bs!1036534 (not (= lambda!197601 lambda!197490))))

(assert (=> bs!1036524 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197601 lambda!197581))))

(assert (=> bs!1036535 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197601 lambda!197595))))

(assert (=> bs!1036527 (= (= lt!1810466 lt!1810277) (= lambda!197601 lambda!197564))))

(assert (=> bs!1036536 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197601 lambda!197599))))

(assert (=> b!4646034 true))

(declare-fun bs!1036537 () Bool)

(declare-fun d!1465008 () Bool)

(assert (= bs!1036537 (and d!1465008 b!4646029)))

(declare-fun lambda!197602 () Int)

(declare-fun lt!1810450 () ListMap!4517)

(assert (=> bs!1036537 (= (= lt!1810450 lt!1810445) (= lambda!197602 lambda!197597))))

(declare-fun bs!1036538 () Bool)

(assert (= bs!1036538 (and d!1465008 b!4645912)))

(assert (=> bs!1036538 (= (= lt!1810450 lt!1810089) (= lambda!197602 lambda!197562))))

(declare-fun bs!1036539 () Bool)

(assert (= bs!1036539 (and d!1465008 b!4645990)))

(assert (=> bs!1036539 (= (= lt!1810450 lt!1810377) (= lambda!197602 lambda!197582))))

(declare-fun bs!1036540 () Bool)

(assert (= bs!1036540 (and d!1465008 b!4646034)))

(assert (=> bs!1036540 (= (= lt!1810450 (ListMap!4518 Nil!51850)) (= lambda!197602 lambda!197600))))

(declare-fun bs!1036541 () Bool)

(assert (= bs!1036541 (and d!1465008 b!4646000)))

(assert (=> bs!1036541 (= (= lt!1810450 lt!1810419) (= lambda!197602 lambda!197589))))

(assert (=> bs!1036540 (= (= lt!1810450 lt!1810466) (= lambda!197602 lambda!197601))))

(declare-fun bs!1036542 () Bool)

(assert (= bs!1036542 (and d!1465008 d!1464936)))

(assert (=> bs!1036542 (= (= lt!1810450 lt!1810261) (= lambda!197602 lambda!197565))))

(declare-fun bs!1036543 () Bool)

(assert (= bs!1036543 (and d!1465008 b!4645910)))

(assert (=> bs!1036543 (= (= lt!1810450 lt!1810089) (= lambda!197602 lambda!197563))))

(declare-fun bs!1036544 () Bool)

(assert (= bs!1036544 (and d!1465008 d!1464988)))

(assert (=> bs!1036544 (= (= lt!1810450 lt!1810403) (= lambda!197602 lambda!197591))))

(declare-fun bs!1036545 () Bool)

(assert (= bs!1036545 (and d!1465008 b!4645992)))

(assert (=> bs!1036545 (= (= lt!1810450 (ListMap!4518 Nil!51850)) (= lambda!197602 lambda!197579))))

(assert (=> bs!1036537 (= (= lt!1810450 (ListMap!4518 Nil!51850)) (= lambda!197602 lambda!197596))))

(declare-fun bs!1036546 () Bool)

(assert (= bs!1036546 (and d!1465008 d!1465004)))

(assert (=> bs!1036546 (= (= lt!1810450 lt!1810429) (= lambda!197602 lambda!197598))))

(assert (=> bs!1036541 (= (= lt!1810450 (ListMap!4518 Nil!51850)) (= lambda!197602 lambda!197587))))

(declare-fun bs!1036547 () Bool)

(assert (= bs!1036547 (and d!1465008 b!4646002)))

(assert (=> bs!1036547 (= (= lt!1810450 (ListMap!4518 Nil!51850)) (= lambda!197602 lambda!197586))))

(declare-fun bs!1036548 () Bool)

(assert (= bs!1036548 (and d!1465008 d!1464922)))

(assert (=> bs!1036548 (not (= lambda!197602 lambda!197489))))

(declare-fun bs!1036549 () Bool)

(assert (= bs!1036549 (and d!1465008 d!1464982)))

(assert (=> bs!1036549 (= (= lt!1810450 lt!1810361) (= lambda!197602 lambda!197583))))

(declare-fun bs!1036550 () Bool)

(assert (= bs!1036550 (and d!1465008 d!1464926)))

(assert (=> bs!1036550 (not (= lambda!197602 lambda!197490))))

(assert (=> bs!1036539 (= (= lt!1810450 (ListMap!4518 Nil!51850)) (= lambda!197602 lambda!197581))))

(declare-fun bs!1036551 () Bool)

(assert (= bs!1036551 (and d!1465008 b!4646031)))

(assert (=> bs!1036551 (= (= lt!1810450 (ListMap!4518 Nil!51850)) (= lambda!197602 lambda!197595))))

(assert (=> bs!1036543 (= (= lt!1810450 lt!1810277) (= lambda!197602 lambda!197564))))

(declare-fun bs!1036552 () Bool)

(assert (= bs!1036552 (and d!1465008 b!4646036)))

(assert (=> bs!1036552 (= (= lt!1810450 (ListMap!4518 Nil!51850)) (= lambda!197602 lambda!197599))))

(assert (=> d!1465008 true))

(declare-fun e!2898226 () ListMap!4517)

(assert (=> b!4646034 (= e!2898226 lt!1810466)))

(declare-fun lt!1810451 () ListMap!4517)

(assert (=> b!4646034 (= lt!1810451 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)))))

(assert (=> b!4646034 (= lt!1810466 (addToMapMapFromBucket!1081 (t!359070 oldBucket!40) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))))))

(declare-fun lt!1810453 () Unit!116275)

(declare-fun call!324429 () Unit!116275)

(assert (=> b!4646034 (= lt!1810453 call!324429)))

(assert (=> b!4646034 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197600)))

(declare-fun lt!1810467 () Unit!116275)

(assert (=> b!4646034 (= lt!1810467 lt!1810453)))

(assert (=> b!4646034 (forall!10987 (toList!5182 lt!1810451) lambda!197601)))

(declare-fun lt!1810463 () Unit!116275)

(declare-fun Unit!116380 () Unit!116275)

(assert (=> b!4646034 (= lt!1810463 Unit!116380)))

(declare-fun call!324431 () Bool)

(assert (=> b!4646034 call!324431))

(declare-fun lt!1810462 () Unit!116275)

(declare-fun Unit!116381 () Unit!116275)

(assert (=> b!4646034 (= lt!1810462 Unit!116381)))

(declare-fun lt!1810458 () Unit!116275)

(declare-fun Unit!116382 () Unit!116275)

(assert (=> b!4646034 (= lt!1810458 Unit!116382)))

(declare-fun lt!1810457 () Unit!116275)

(assert (=> b!4646034 (= lt!1810457 (forallContained!3202 (toList!5182 lt!1810451) lambda!197601 (h!57980 oldBucket!40)))))

(assert (=> b!4646034 (contains!14991 lt!1810451 (_1!29765 (h!57980 oldBucket!40)))))

(declare-fun lt!1810465 () Unit!116275)

(declare-fun Unit!116383 () Unit!116275)

(assert (=> b!4646034 (= lt!1810465 Unit!116383)))

(assert (=> b!4646034 (contains!14991 lt!1810466 (_1!29765 (h!57980 oldBucket!40)))))

(declare-fun lt!1810452 () Unit!116275)

(declare-fun Unit!116384 () Unit!116275)

(assert (=> b!4646034 (= lt!1810452 Unit!116384)))

(assert (=> b!4646034 (forall!10987 oldBucket!40 lambda!197601)))

(declare-fun lt!1810469 () Unit!116275)

(declare-fun Unit!116385 () Unit!116275)

(assert (=> b!4646034 (= lt!1810469 Unit!116385)))

(declare-fun call!324430 () Bool)

(assert (=> b!4646034 call!324430))

(declare-fun lt!1810464 () Unit!116275)

(declare-fun Unit!116386 () Unit!116275)

(assert (=> b!4646034 (= lt!1810464 Unit!116386)))

(declare-fun lt!1810460 () Unit!116275)

(declare-fun Unit!116387 () Unit!116275)

(assert (=> b!4646034 (= lt!1810460 Unit!116387)))

(declare-fun lt!1810470 () Unit!116275)

(assert (=> b!4646034 (= lt!1810470 (addForallContainsKeyThenBeforeAdding!583 (ListMap!4518 Nil!51850) lt!1810466 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))))))

(assert (=> b!4646034 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197601)))

(declare-fun lt!1810461 () Unit!116275)

(assert (=> b!4646034 (= lt!1810461 lt!1810470)))

(assert (=> b!4646034 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197601)))

(declare-fun lt!1810456 () Unit!116275)

(declare-fun Unit!116388 () Unit!116275)

(assert (=> b!4646034 (= lt!1810456 Unit!116388)))

(declare-fun res!1952033 () Bool)

(assert (=> b!4646034 (= res!1952033 (forall!10987 oldBucket!40 lambda!197601))))

(declare-fun e!2898224 () Bool)

(assert (=> b!4646034 (=> (not res!1952033) (not e!2898224))))

(assert (=> b!4646034 e!2898224))

(declare-fun lt!1810468 () Unit!116275)

(declare-fun Unit!116389 () Unit!116275)

(assert (=> b!4646034 (= lt!1810468 Unit!116389)))

(declare-fun e!2898225 () Bool)

(assert (=> d!1465008 e!2898225))

(declare-fun res!1952034 () Bool)

(assert (=> d!1465008 (=> (not res!1952034) (not e!2898225))))

(assert (=> d!1465008 (= res!1952034 (forall!10987 oldBucket!40 lambda!197602))))

(assert (=> d!1465008 (= lt!1810450 e!2898226)))

(declare-fun c!794990 () Bool)

(assert (=> d!1465008 (= c!794990 ((_ is Nil!51850) oldBucket!40))))

(assert (=> d!1465008 (noDuplicateKeys!1624 oldBucket!40)))

(assert (=> d!1465008 (= (addToMapMapFromBucket!1081 oldBucket!40 (ListMap!4518 Nil!51850)) lt!1810450)))

(declare-fun b!4646035 () Bool)

(declare-fun res!1952032 () Bool)

(assert (=> b!4646035 (=> (not res!1952032) (not e!2898225))))

(assert (=> b!4646035 (= res!1952032 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197602))))

(declare-fun bm!324424 () Bool)

(assert (=> bm!324424 (= call!324431 (forall!10987 (ite c!794990 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 oldBucket!40)) (ite c!794990 lambda!197599 lambda!197601)))))

(assert (=> b!4646036 (= e!2898226 (ListMap!4518 Nil!51850))))

(declare-fun lt!1810455 () Unit!116275)

(assert (=> b!4646036 (= lt!1810455 call!324429)))

(assert (=> b!4646036 call!324430))

(declare-fun lt!1810454 () Unit!116275)

(assert (=> b!4646036 (= lt!1810454 lt!1810455)))

(assert (=> b!4646036 call!324431))

(declare-fun lt!1810459 () Unit!116275)

(declare-fun Unit!116390 () Unit!116275)

(assert (=> b!4646036 (= lt!1810459 Unit!116390)))

(declare-fun bm!324425 () Bool)

(assert (=> bm!324425 (= call!324430 (forall!10987 (ite c!794990 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810451)) (ite c!794990 lambda!197599 lambda!197601)))))

(declare-fun b!4646037 () Bool)

(assert (=> b!4646037 (= e!2898225 (invariantList!1284 (toList!5182 lt!1810450)))))

(declare-fun b!4646038 () Bool)

(assert (=> b!4646038 (= e!2898224 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197601))))

(declare-fun bm!324426 () Bool)

(assert (=> bm!324426 (= call!324429 (lemmaContainsAllItsOwnKeys!584 (ListMap!4518 Nil!51850)))))

(assert (= (and d!1465008 c!794990) b!4646036))

(assert (= (and d!1465008 (not c!794990)) b!4646034))

(assert (= (and b!4646034 res!1952033) b!4646038))

(assert (= (or b!4646036 b!4646034) bm!324426))

(assert (= (or b!4646036 b!4646034) bm!324424))

(assert (= (or b!4646036 b!4646034) bm!324425))

(assert (= (and d!1465008 res!1952034) b!4646035))

(assert (= (and b!4646035 res!1952032) b!4646037))

(declare-fun m!5511369 () Bool)

(assert (=> d!1465008 m!5511369))

(assert (=> d!1465008 m!5510841))

(declare-fun m!5511371 () Bool)

(assert (=> bm!324424 m!5511371))

(declare-fun m!5511373 () Bool)

(assert (=> b!4646038 m!5511373))

(assert (=> bm!324426 m!5511213))

(declare-fun m!5511375 () Bool)

(assert (=> bm!324425 m!5511375))

(declare-fun m!5511377 () Bool)

(assert (=> b!4646037 m!5511377))

(declare-fun m!5511379 () Bool)

(assert (=> b!4646035 m!5511379))

(declare-fun m!5511381 () Bool)

(assert (=> b!4646034 m!5511381))

(assert (=> b!4646034 m!5511373))

(declare-fun m!5511383 () Bool)

(assert (=> b!4646034 m!5511383))

(assert (=> b!4646034 m!5511383))

(declare-fun m!5511385 () Bool)

(assert (=> b!4646034 m!5511385))

(declare-fun m!5511387 () Bool)

(assert (=> b!4646034 m!5511387))

(declare-fun m!5511389 () Bool)

(assert (=> b!4646034 m!5511389))

(declare-fun m!5511391 () Bool)

(assert (=> b!4646034 m!5511391))

(declare-fun m!5511393 () Bool)

(assert (=> b!4646034 m!5511393))

(assert (=> b!4646034 m!5511393))

(declare-fun m!5511395 () Bool)

(assert (=> b!4646034 m!5511395))

(assert (=> b!4646034 m!5511373))

(declare-fun m!5511397 () Bool)

(assert (=> b!4646034 m!5511397))

(assert (=> b!4645801 d!1465008))

(declare-fun d!1465010 () Bool)

(declare-fun e!2898229 () Bool)

(assert (=> d!1465010 e!2898229))

(declare-fun res!1952040 () Bool)

(assert (=> d!1465010 (=> (not res!1952040) (not e!2898229))))

(declare-fun lt!1810481 () ListMap!4517)

(assert (=> d!1465010 (= res!1952040 (contains!14991 lt!1810481 (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun lt!1810480 () List!51974)

(assert (=> d!1465010 (= lt!1810481 (ListMap!4518 lt!1810480))))

(declare-fun lt!1810479 () Unit!116275)

(declare-fun lt!1810482 () Unit!116275)

(assert (=> d!1465010 (= lt!1810479 lt!1810482)))

(assert (=> d!1465010 (= (getValueByKey!1591 lt!1810480 (_1!29765 (h!57980 oldBucket!40))) (Some!11802 (_2!29765 (h!57980 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!912 (List!51974 K!13210 V!13456) Unit!116275)

(assert (=> d!1465010 (= lt!1810482 (lemmaContainsTupThenGetReturnValue!912 lt!1810480 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!420 (List!51974 K!13210 V!13456) List!51974)

(assert (=> d!1465010 (= lt!1810480 (insertNoDuplicatedKeys!420 (toList!5182 lt!1810085) (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))))))

(assert (=> d!1465010 (= (+!1968 lt!1810085 (h!57980 oldBucket!40)) lt!1810481)))

(declare-fun b!4646043 () Bool)

(declare-fun res!1952039 () Bool)

(assert (=> b!4646043 (=> (not res!1952039) (not e!2898229))))

(assert (=> b!4646043 (= res!1952039 (= (getValueByKey!1591 (toList!5182 lt!1810481) (_1!29765 (h!57980 oldBucket!40))) (Some!11802 (_2!29765 (h!57980 oldBucket!40)))))))

(declare-fun b!4646044 () Bool)

(declare-fun contains!14995 (List!51974 tuple2!52942) Bool)

(assert (=> b!4646044 (= e!2898229 (contains!14995 (toList!5182 lt!1810481) (h!57980 oldBucket!40)))))

(assert (= (and d!1465010 res!1952040) b!4646043))

(assert (= (and b!4646043 res!1952039) b!4646044))

(declare-fun m!5511399 () Bool)

(assert (=> d!1465010 m!5511399))

(declare-fun m!5511401 () Bool)

(assert (=> d!1465010 m!5511401))

(declare-fun m!5511403 () Bool)

(assert (=> d!1465010 m!5511403))

(declare-fun m!5511405 () Bool)

(assert (=> d!1465010 m!5511405))

(declare-fun m!5511407 () Bool)

(assert (=> b!4646043 m!5511407))

(declare-fun m!5511409 () Bool)

(assert (=> b!4646044 m!5511409))

(assert (=> b!4645801 d!1465010))

(declare-fun d!1465012 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8975 (List!51974) (InoxSet tuple2!52942))

(assert (=> d!1465012 (= (eq!903 (addToMapMapFromBucket!1081 (Cons!51850 lt!1810091 lt!1810088) (ListMap!4518 Nil!51850)) (+!1968 lt!1810085 lt!1810091)) (= (content!8975 (toList!5182 (addToMapMapFromBucket!1081 (Cons!51850 lt!1810091 lt!1810088) (ListMap!4518 Nil!51850)))) (content!8975 (toList!5182 (+!1968 lt!1810085 lt!1810091)))))))

(declare-fun bs!1036553 () Bool)

(assert (= bs!1036553 d!1465012))

(declare-fun m!5511411 () Bool)

(assert (=> bs!1036553 m!5511411))

(declare-fun m!5511413 () Bool)

(assert (=> bs!1036553 m!5511413))

(assert (=> b!4645801 d!1465012))

(declare-fun d!1465014 () Bool)

(assert (=> d!1465014 (= (eq!903 (+!1968 lt!1810085 (h!57980 oldBucket!40)) (addToMapMapFromBucket!1081 oldBucket!40 (ListMap!4518 Nil!51850))) (= (content!8975 (toList!5182 (+!1968 lt!1810085 (h!57980 oldBucket!40)))) (content!8975 (toList!5182 (addToMapMapFromBucket!1081 oldBucket!40 (ListMap!4518 Nil!51850))))))))

(declare-fun bs!1036554 () Bool)

(assert (= bs!1036554 d!1465014))

(declare-fun m!5511415 () Bool)

(assert (=> bs!1036554 m!5511415))

(declare-fun m!5511417 () Bool)

(assert (=> bs!1036554 m!5511417))

(assert (=> b!4645801 d!1465014))

(declare-fun d!1465016 () Bool)

(declare-fun e!2898230 () Bool)

(assert (=> d!1465016 e!2898230))

(declare-fun res!1952042 () Bool)

(assert (=> d!1465016 (=> (not res!1952042) (not e!2898230))))

(declare-fun lt!1810485 () ListMap!4517)

(assert (=> d!1465016 (= res!1952042 (contains!14991 lt!1810485 (_1!29765 lt!1810091)))))

(declare-fun lt!1810484 () List!51974)

(assert (=> d!1465016 (= lt!1810485 (ListMap!4518 lt!1810484))))

(declare-fun lt!1810483 () Unit!116275)

(declare-fun lt!1810486 () Unit!116275)

(assert (=> d!1465016 (= lt!1810483 lt!1810486)))

(assert (=> d!1465016 (= (getValueByKey!1591 lt!1810484 (_1!29765 lt!1810091)) (Some!11802 (_2!29765 lt!1810091)))))

(assert (=> d!1465016 (= lt!1810486 (lemmaContainsTupThenGetReturnValue!912 lt!1810484 (_1!29765 lt!1810091) (_2!29765 lt!1810091)))))

(assert (=> d!1465016 (= lt!1810484 (insertNoDuplicatedKeys!420 (toList!5182 lt!1810085) (_1!29765 lt!1810091) (_2!29765 lt!1810091)))))

(assert (=> d!1465016 (= (+!1968 lt!1810085 lt!1810091) lt!1810485)))

(declare-fun b!4646045 () Bool)

(declare-fun res!1952041 () Bool)

(assert (=> b!4646045 (=> (not res!1952041) (not e!2898230))))

(assert (=> b!4646045 (= res!1952041 (= (getValueByKey!1591 (toList!5182 lt!1810485) (_1!29765 lt!1810091)) (Some!11802 (_2!29765 lt!1810091))))))

(declare-fun b!4646046 () Bool)

(assert (=> b!4646046 (= e!2898230 (contains!14995 (toList!5182 lt!1810485) lt!1810091))))

(assert (= (and d!1465016 res!1952042) b!4646045))

(assert (= (and b!4646045 res!1952041) b!4646046))

(declare-fun m!5511419 () Bool)

(assert (=> d!1465016 m!5511419))

(declare-fun m!5511421 () Bool)

(assert (=> d!1465016 m!5511421))

(declare-fun m!5511423 () Bool)

(assert (=> d!1465016 m!5511423))

(declare-fun m!5511425 () Bool)

(assert (=> d!1465016 m!5511425))

(declare-fun m!5511427 () Bool)

(assert (=> b!4646045 m!5511427))

(declare-fun m!5511429 () Bool)

(assert (=> b!4646046 m!5511429))

(assert (=> b!4645801 d!1465016))

(declare-fun d!1465018 () Bool)

(assert (=> d!1465018 (eq!903 (addToMapMapFromBucket!1081 (Cons!51850 lt!1810091 lt!1810088) (ListMap!4518 Nil!51850)) (+!1968 (addToMapMapFromBucket!1081 lt!1810088 (ListMap!4518 Nil!51850)) lt!1810091))))

(declare-fun lt!1810489 () Unit!116275)

(declare-fun choose!31900 (tuple2!52942 List!51974 ListMap!4517) Unit!116275)

(assert (=> d!1465018 (= lt!1810489 (choose!31900 lt!1810091 lt!1810088 (ListMap!4518 Nil!51850)))))

(assert (=> d!1465018 (noDuplicateKeys!1624 lt!1810088)))

(assert (=> d!1465018 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!154 lt!1810091 lt!1810088 (ListMap!4518 Nil!51850)) lt!1810489)))

(declare-fun bs!1036555 () Bool)

(assert (= bs!1036555 d!1465018))

(declare-fun m!5511431 () Bool)

(assert (=> bs!1036555 m!5511431))

(assert (=> bs!1036555 m!5510849))

(assert (=> bs!1036555 m!5510853))

(assert (=> bs!1036555 m!5510853))

(declare-fun m!5511433 () Bool)

(assert (=> bs!1036555 m!5511433))

(declare-fun m!5511435 () Bool)

(assert (=> bs!1036555 m!5511435))

(assert (=> bs!1036555 m!5511241))

(assert (=> bs!1036555 m!5510849))

(assert (=> bs!1036555 m!5511433))

(assert (=> b!4645801 d!1465018))

(declare-fun d!1465020 () Bool)

(declare-fun res!1952043 () Bool)

(declare-fun e!2898231 () Bool)

(assert (=> d!1465020 (=> res!1952043 e!2898231)))

(assert (=> d!1465020 (= res!1952043 (not ((_ is Cons!51850) newBucket!224)))))

(assert (=> d!1465020 (= (noDuplicateKeys!1624 newBucket!224) e!2898231)))

(declare-fun b!4646047 () Bool)

(declare-fun e!2898232 () Bool)

(assert (=> b!4646047 (= e!2898231 e!2898232)))

(declare-fun res!1952044 () Bool)

(assert (=> b!4646047 (=> (not res!1952044) (not e!2898232))))

(assert (=> b!4646047 (= res!1952044 (not (containsKey!2690 (t!359070 newBucket!224) (_1!29765 (h!57980 newBucket!224)))))))

(declare-fun b!4646048 () Bool)

(assert (=> b!4646048 (= e!2898232 (noDuplicateKeys!1624 (t!359070 newBucket!224)))))

(assert (= (and d!1465020 (not res!1952043)) b!4646047))

(assert (= (and b!4646047 res!1952044) b!4646048))

(declare-fun m!5511437 () Bool)

(assert (=> b!4646047 m!5511437))

(declare-fun m!5511439 () Bool)

(assert (=> b!4646048 m!5511439))

(assert (=> b!4645802 d!1465020))

(declare-fun b!4646053 () Bool)

(declare-fun tp!1343142 () Bool)

(declare-fun e!2898235 () Bool)

(assert (=> b!4646053 (= e!2898235 (and tp_is_empty!29789 tp_is_empty!29791 tp!1343142))))

(assert (=> b!4645811 (= tp!1343135 e!2898235)))

(assert (= (and b!4645811 ((_ is Cons!51850) (t!359070 newBucket!224))) b!4646053))

(declare-fun b!4646054 () Bool)

(declare-fun e!2898236 () Bool)

(declare-fun tp!1343143 () Bool)

(assert (=> b!4646054 (= e!2898236 (and tp_is_empty!29789 tp_is_empty!29791 tp!1343143))))

(assert (=> b!4645799 (= tp!1343134 e!2898236)))

(assert (= (and b!4645799 ((_ is Cons!51850) (t!359070 oldBucket!40))) b!4646054))

(check-sat (not b!4646009) (not b!4646001) (not b!4645913) (not d!1465002) (not bm!324414) (not bm!324402) (not b!4645981) (not b!4646035) (not bm!324420) (not d!1464982) (not bm!324411) (not b!4645983) (not b!4646029) (not bm!324412) (not b!4645946) (not b!4646054) (not d!1464988) (not d!1464990) (not b!4646037) (not b!4645979) (not b!4646000) (not b!4645993) (not b!4646030) (not b!4646007) (not bm!324403) (not bm!324418) (not b!4645984) (not b!4646038) (not b!4645994) (not b!4646045) (not d!1465012) tp_is_empty!29791 (not b!4645828) (not b!4646047) (not b!4645982) (not b!4645990) (not d!1465010) (not b!4645914) (not b!4646053) (not bm!324425) (not bm!324419) (not b!4645827) (not b!4645991) (not bm!324423) (not b!4645834) (not b!4646034) (not d!1465008) (not b!4646027) (not d!1464970) (not b!4646043) (not bm!324404) (not b!4646048) (not b!4645988) (not bm!324426) (not d!1464980) (not b!4646046) (not d!1465016) (not d!1464998) (not b!4646044) (not d!1464926) (not b!4645980) (not d!1465014) (not b!4646033) (not d!1464958) (not bm!324424) (not bm!324422) (not d!1465000) (not d!1465018) (not d!1464934) (not d!1465004) (not b!4646003) (not b!4645987) tp_is_empty!29789 (not bm!324413) (not b!4645911) (not b!4646004) (not bm!324421) (not d!1464922) (not b!4646032) (not d!1464936) (not b!4645910))
(check-sat)
(get-model)

(declare-fun d!1465022 () Bool)

(declare-fun res!1952045 () Bool)

(declare-fun e!2898237 () Bool)

(assert (=> d!1465022 (=> res!1952045 e!2898237)))

(assert (=> d!1465022 (= res!1952045 (and ((_ is Cons!51850) (t!359070 lt!1810088)) (= (_1!29765 (h!57980 (t!359070 lt!1810088))) key!4968)))))

(assert (=> d!1465022 (= (containsKey!2690 (t!359070 lt!1810088) key!4968) e!2898237)))

(declare-fun b!4646055 () Bool)

(declare-fun e!2898238 () Bool)

(assert (=> b!4646055 (= e!2898237 e!2898238)))

(declare-fun res!1952046 () Bool)

(assert (=> b!4646055 (=> (not res!1952046) (not e!2898238))))

(assert (=> b!4646055 (= res!1952046 ((_ is Cons!51850) (t!359070 lt!1810088)))))

(declare-fun b!4646056 () Bool)

(assert (=> b!4646056 (= e!2898238 (containsKey!2690 (t!359070 (t!359070 lt!1810088)) key!4968))))

(assert (= (and d!1465022 (not res!1952045)) b!4646055))

(assert (= (and b!4646055 res!1952046) b!4646056))

(declare-fun m!5511441 () Bool)

(assert (=> b!4646056 m!5511441))

(assert (=> b!4645834 d!1465022))

(declare-fun d!1465024 () Bool)

(declare-fun res!1952051 () Bool)

(declare-fun e!2898243 () Bool)

(assert (=> d!1465024 (=> res!1952051 e!2898243)))

(assert (=> d!1465024 (= res!1952051 ((_ is Nil!51850) (toList!5182 (ListMap!4518 Nil!51850))))))

(assert (=> d!1465024 (= (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197582) e!2898243)))

(declare-fun b!4646061 () Bool)

(declare-fun e!2898244 () Bool)

(assert (=> b!4646061 (= e!2898243 e!2898244)))

(declare-fun res!1952052 () Bool)

(assert (=> b!4646061 (=> (not res!1952052) (not e!2898244))))

(declare-fun dynLambda!21559 (Int tuple2!52942) Bool)

(assert (=> b!4646061 (= res!1952052 (dynLambda!21559 lambda!197582 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))))))

(declare-fun b!4646062 () Bool)

(assert (=> b!4646062 (= e!2898244 (forall!10987 (t!359070 (toList!5182 (ListMap!4518 Nil!51850))) lambda!197582))))

(assert (= (and d!1465024 (not res!1952051)) b!4646061))

(assert (= (and b!4646061 res!1952052) b!4646062))

(declare-fun b_lambda!171117 () Bool)

(assert (=> (not b_lambda!171117) (not b!4646061)))

(declare-fun m!5511443 () Bool)

(assert (=> b!4646061 m!5511443))

(declare-fun m!5511445 () Bool)

(assert (=> b!4646062 m!5511445))

(assert (=> b!4645994 d!1465024))

(declare-fun d!1465026 () Bool)

(declare-fun e!2898245 () Bool)

(assert (=> d!1465026 e!2898245))

(declare-fun res!1952054 () Bool)

(assert (=> d!1465026 (=> (not res!1952054) (not e!2898245))))

(declare-fun lt!1810492 () ListMap!4517)

(assert (=> d!1465026 (= res!1952054 (contains!14991 lt!1810492 (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun lt!1810491 () List!51974)

(assert (=> d!1465026 (= lt!1810492 (ListMap!4518 lt!1810491))))

(declare-fun lt!1810490 () Unit!116275)

(declare-fun lt!1810493 () Unit!116275)

(assert (=> d!1465026 (= lt!1810490 lt!1810493)))

(assert (=> d!1465026 (= (getValueByKey!1591 lt!1810491 (_1!29765 (h!57980 oldBucket!40))) (Some!11802 (_2!29765 (h!57980 oldBucket!40))))))

(assert (=> d!1465026 (= lt!1810493 (lemmaContainsTupThenGetReturnValue!912 lt!1810491 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))))))

(assert (=> d!1465026 (= lt!1810491 (insertNoDuplicatedKeys!420 (toList!5182 (ListMap!4518 Nil!51850)) (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))))))

(assert (=> d!1465026 (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810492)))

(declare-fun b!4646063 () Bool)

(declare-fun res!1952053 () Bool)

(assert (=> b!4646063 (=> (not res!1952053) (not e!2898245))))

(assert (=> b!4646063 (= res!1952053 (= (getValueByKey!1591 (toList!5182 lt!1810492) (_1!29765 (h!57980 oldBucket!40))) (Some!11802 (_2!29765 (h!57980 oldBucket!40)))))))

(declare-fun b!4646064 () Bool)

(assert (=> b!4646064 (= e!2898245 (contains!14995 (toList!5182 lt!1810492) (h!57980 oldBucket!40)))))

(assert (= (and d!1465026 res!1952054) b!4646063))

(assert (= (and b!4646063 res!1952053) b!4646064))

(declare-fun m!5511447 () Bool)

(assert (=> d!1465026 m!5511447))

(declare-fun m!5511449 () Bool)

(assert (=> d!1465026 m!5511449))

(declare-fun m!5511451 () Bool)

(assert (=> d!1465026 m!5511451))

(declare-fun m!5511453 () Bool)

(assert (=> d!1465026 m!5511453))

(declare-fun m!5511455 () Bool)

(assert (=> b!4646063 m!5511455))

(declare-fun m!5511457 () Bool)

(assert (=> b!4646064 m!5511457))

(assert (=> b!4646034 d!1465026))

(declare-fun d!1465028 () Bool)

(declare-fun res!1952055 () Bool)

(declare-fun e!2898246 () Bool)

(assert (=> d!1465028 (=> res!1952055 e!2898246)))

(assert (=> d!1465028 (= res!1952055 ((_ is Nil!51850) (toList!5182 (ListMap!4518 Nil!51850))))))

(assert (=> d!1465028 (= (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197601) e!2898246)))

(declare-fun b!4646065 () Bool)

(declare-fun e!2898247 () Bool)

(assert (=> b!4646065 (= e!2898246 e!2898247)))

(declare-fun res!1952056 () Bool)

(assert (=> b!4646065 (=> (not res!1952056) (not e!2898247))))

(assert (=> b!4646065 (= res!1952056 (dynLambda!21559 lambda!197601 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))))))

(declare-fun b!4646066 () Bool)

(assert (=> b!4646066 (= e!2898247 (forall!10987 (t!359070 (toList!5182 (ListMap!4518 Nil!51850))) lambda!197601))))

(assert (= (and d!1465028 (not res!1952055)) b!4646065))

(assert (= (and b!4646065 res!1952056) b!4646066))

(declare-fun b_lambda!171119 () Bool)

(assert (=> (not b_lambda!171119) (not b!4646065)))

(declare-fun m!5511459 () Bool)

(assert (=> b!4646065 m!5511459))

(declare-fun m!5511461 () Bool)

(assert (=> b!4646066 m!5511461))

(assert (=> b!4646034 d!1465028))

(declare-fun d!1465030 () Bool)

(declare-fun res!1952057 () Bool)

(declare-fun e!2898248 () Bool)

(assert (=> d!1465030 (=> res!1952057 e!2898248)))

(assert (=> d!1465030 (= res!1952057 ((_ is Nil!51850) (toList!5182 lt!1810451)))))

(assert (=> d!1465030 (= (forall!10987 (toList!5182 lt!1810451) lambda!197601) e!2898248)))

(declare-fun b!4646067 () Bool)

(declare-fun e!2898249 () Bool)

(assert (=> b!4646067 (= e!2898248 e!2898249)))

(declare-fun res!1952058 () Bool)

(assert (=> b!4646067 (=> (not res!1952058) (not e!2898249))))

(assert (=> b!4646067 (= res!1952058 (dynLambda!21559 lambda!197601 (h!57980 (toList!5182 lt!1810451))))))

(declare-fun b!4646068 () Bool)

(assert (=> b!4646068 (= e!2898249 (forall!10987 (t!359070 (toList!5182 lt!1810451)) lambda!197601))))

(assert (= (and d!1465030 (not res!1952057)) b!4646067))

(assert (= (and b!4646067 res!1952058) b!4646068))

(declare-fun b_lambda!171121 () Bool)

(assert (=> (not b_lambda!171121) (not b!4646067)))

(declare-fun m!5511463 () Bool)

(assert (=> b!4646067 m!5511463))

(declare-fun m!5511465 () Bool)

(assert (=> b!4646068 m!5511465))

(assert (=> b!4646034 d!1465030))

(declare-fun d!1465032 () Bool)

(declare-fun res!1952059 () Bool)

(declare-fun e!2898250 () Bool)

(assert (=> d!1465032 (=> res!1952059 e!2898250)))

(assert (=> d!1465032 (= res!1952059 ((_ is Nil!51850) oldBucket!40))))

(assert (=> d!1465032 (= (forall!10987 oldBucket!40 lambda!197601) e!2898250)))

(declare-fun b!4646069 () Bool)

(declare-fun e!2898251 () Bool)

(assert (=> b!4646069 (= e!2898250 e!2898251)))

(declare-fun res!1952060 () Bool)

(assert (=> b!4646069 (=> (not res!1952060) (not e!2898251))))

(assert (=> b!4646069 (= res!1952060 (dynLambda!21559 lambda!197601 (h!57980 oldBucket!40)))))

(declare-fun b!4646070 () Bool)

(assert (=> b!4646070 (= e!2898251 (forall!10987 (t!359070 oldBucket!40) lambda!197601))))

(assert (= (and d!1465032 (not res!1952059)) b!4646069))

(assert (= (and b!4646069 res!1952060) b!4646070))

(declare-fun b_lambda!171123 () Bool)

(assert (=> (not b_lambda!171123) (not b!4646069)))

(declare-fun m!5511467 () Bool)

(assert (=> b!4646069 m!5511467))

(declare-fun m!5511469 () Bool)

(assert (=> b!4646070 m!5511469))

(assert (=> b!4646034 d!1465032))

(declare-fun d!1465034 () Bool)

(assert (=> d!1465034 (dynLambda!21559 lambda!197601 (h!57980 oldBucket!40))))

(declare-fun lt!1810496 () Unit!116275)

(declare-fun choose!31901 (List!51974 Int tuple2!52942) Unit!116275)

(assert (=> d!1465034 (= lt!1810496 (choose!31901 (toList!5182 lt!1810451) lambda!197601 (h!57980 oldBucket!40)))))

(declare-fun e!2898254 () Bool)

(assert (=> d!1465034 e!2898254))

(declare-fun res!1952063 () Bool)

(assert (=> d!1465034 (=> (not res!1952063) (not e!2898254))))

(assert (=> d!1465034 (= res!1952063 (forall!10987 (toList!5182 lt!1810451) lambda!197601))))

(assert (=> d!1465034 (= (forallContained!3202 (toList!5182 lt!1810451) lambda!197601 (h!57980 oldBucket!40)) lt!1810496)))

(declare-fun b!4646073 () Bool)

(assert (=> b!4646073 (= e!2898254 (contains!14995 (toList!5182 lt!1810451) (h!57980 oldBucket!40)))))

(assert (= (and d!1465034 res!1952063) b!4646073))

(declare-fun b_lambda!171125 () Bool)

(assert (=> (not b_lambda!171125) (not d!1465034)))

(assert (=> d!1465034 m!5511467))

(declare-fun m!5511471 () Bool)

(assert (=> d!1465034 m!5511471))

(assert (=> d!1465034 m!5511391))

(declare-fun m!5511473 () Bool)

(assert (=> b!4646073 m!5511473))

(assert (=> b!4646034 d!1465034))

(declare-fun d!1465036 () Bool)

(declare-fun res!1952064 () Bool)

(declare-fun e!2898255 () Bool)

(assert (=> d!1465036 (=> res!1952064 e!2898255)))

(assert (=> d!1465036 (= res!1952064 ((_ is Nil!51850) (toList!5182 (ListMap!4518 Nil!51850))))))

(assert (=> d!1465036 (= (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197600) e!2898255)))

(declare-fun b!4646074 () Bool)

(declare-fun e!2898256 () Bool)

(assert (=> b!4646074 (= e!2898255 e!2898256)))

(declare-fun res!1952065 () Bool)

(assert (=> b!4646074 (=> (not res!1952065) (not e!2898256))))

(assert (=> b!4646074 (= res!1952065 (dynLambda!21559 lambda!197600 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))))))

(declare-fun b!4646075 () Bool)

(assert (=> b!4646075 (= e!2898256 (forall!10987 (t!359070 (toList!5182 (ListMap!4518 Nil!51850))) lambda!197600))))

(assert (= (and d!1465036 (not res!1952064)) b!4646074))

(assert (= (and b!4646074 res!1952065) b!4646075))

(declare-fun b_lambda!171127 () Bool)

(assert (=> (not b_lambda!171127) (not b!4646074)))

(declare-fun m!5511475 () Bool)

(assert (=> b!4646074 m!5511475))

(declare-fun m!5511477 () Bool)

(assert (=> b!4646075 m!5511477))

(assert (=> b!4646034 d!1465036))

(declare-fun bs!1036556 () Bool)

(declare-fun d!1465038 () Bool)

(assert (= bs!1036556 (and d!1465038 b!4646029)))

(declare-fun lambda!197607 () Int)

(assert (=> bs!1036556 (= (= lt!1810466 lt!1810445) (= lambda!197607 lambda!197597))))

(declare-fun bs!1036557 () Bool)

(assert (= bs!1036557 (and d!1465038 b!4645912)))

(assert (=> bs!1036557 (= (= lt!1810466 lt!1810089) (= lambda!197607 lambda!197562))))

(declare-fun bs!1036558 () Bool)

(assert (= bs!1036558 (and d!1465038 b!4645990)))

(assert (=> bs!1036558 (= (= lt!1810466 lt!1810377) (= lambda!197607 lambda!197582))))

(declare-fun bs!1036559 () Bool)

(assert (= bs!1036559 (and d!1465038 b!4646034)))

(assert (=> bs!1036559 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197607 lambda!197600))))

(declare-fun bs!1036560 () Bool)

(assert (= bs!1036560 (and d!1465038 b!4646000)))

(assert (=> bs!1036560 (= (= lt!1810466 lt!1810419) (= lambda!197607 lambda!197589))))

(assert (=> bs!1036559 (= lambda!197607 lambda!197601)))

(declare-fun bs!1036561 () Bool)

(assert (= bs!1036561 (and d!1465038 d!1464936)))

(assert (=> bs!1036561 (= (= lt!1810466 lt!1810261) (= lambda!197607 lambda!197565))))

(declare-fun bs!1036562 () Bool)

(assert (= bs!1036562 (and d!1465038 b!4645910)))

(assert (=> bs!1036562 (= (= lt!1810466 lt!1810089) (= lambda!197607 lambda!197563))))

(declare-fun bs!1036563 () Bool)

(assert (= bs!1036563 (and d!1465038 d!1464988)))

(assert (=> bs!1036563 (= (= lt!1810466 lt!1810403) (= lambda!197607 lambda!197591))))

(declare-fun bs!1036564 () Bool)

(assert (= bs!1036564 (and d!1465038 b!4645992)))

(assert (=> bs!1036564 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197607 lambda!197579))))

(assert (=> bs!1036556 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197607 lambda!197596))))

(declare-fun bs!1036565 () Bool)

(assert (= bs!1036565 (and d!1465038 d!1465004)))

(assert (=> bs!1036565 (= (= lt!1810466 lt!1810429) (= lambda!197607 lambda!197598))))

(assert (=> bs!1036560 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197607 lambda!197587))))

(declare-fun bs!1036566 () Bool)

(assert (= bs!1036566 (and d!1465038 b!4646002)))

(assert (=> bs!1036566 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197607 lambda!197586))))

(declare-fun bs!1036567 () Bool)

(assert (= bs!1036567 (and d!1465038 d!1464922)))

(assert (=> bs!1036567 (not (= lambda!197607 lambda!197489))))

(declare-fun bs!1036568 () Bool)

(assert (= bs!1036568 (and d!1465038 d!1464982)))

(assert (=> bs!1036568 (= (= lt!1810466 lt!1810361) (= lambda!197607 lambda!197583))))

(declare-fun bs!1036569 () Bool)

(assert (= bs!1036569 (and d!1465038 d!1464926)))

(assert (=> bs!1036569 (not (= lambda!197607 lambda!197490))))

(declare-fun bs!1036570 () Bool)

(assert (= bs!1036570 (and d!1465038 d!1465008)))

(assert (=> bs!1036570 (= (= lt!1810466 lt!1810450) (= lambda!197607 lambda!197602))))

(assert (=> bs!1036558 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197607 lambda!197581))))

(declare-fun bs!1036571 () Bool)

(assert (= bs!1036571 (and d!1465038 b!4646031)))

(assert (=> bs!1036571 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197607 lambda!197595))))

(assert (=> bs!1036562 (= (= lt!1810466 lt!1810277) (= lambda!197607 lambda!197564))))

(declare-fun bs!1036572 () Bool)

(assert (= bs!1036572 (and d!1465038 b!4646036)))

(assert (=> bs!1036572 (= (= lt!1810466 (ListMap!4518 Nil!51850)) (= lambda!197607 lambda!197599))))

(assert (=> d!1465038 true))

(assert (=> d!1465038 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197607)))

(declare-fun lt!1810499 () Unit!116275)

(declare-fun choose!31902 (ListMap!4517 ListMap!4517 K!13210 V!13456) Unit!116275)

(assert (=> d!1465038 (= lt!1810499 (choose!31902 (ListMap!4518 Nil!51850) lt!1810466 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))))))

(assert (=> d!1465038 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (tuple2!52943 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))))) lambda!197607)))

(assert (=> d!1465038 (= (addForallContainsKeyThenBeforeAdding!583 (ListMap!4518 Nil!51850) lt!1810466 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))) lt!1810499)))

(declare-fun bs!1036573 () Bool)

(assert (= bs!1036573 d!1465038))

(declare-fun m!5511479 () Bool)

(assert (=> bs!1036573 m!5511479))

(declare-fun m!5511481 () Bool)

(assert (=> bs!1036573 m!5511481))

(declare-fun m!5511483 () Bool)

(assert (=> bs!1036573 m!5511483))

(declare-fun m!5511485 () Bool)

(assert (=> bs!1036573 m!5511485))

(assert (=> b!4646034 d!1465038))

(declare-fun b!4646078 () Bool)

(declare-fun e!2898258 () Unit!116275)

(declare-fun lt!1810507 () Unit!116275)

(assert (=> b!4646078 (= e!2898258 lt!1810507)))

(declare-fun lt!1810501 () Unit!116275)

(assert (=> b!4646078 (= lt!1810501 (lemmaContainsKeyImpliesGetValueByKeyDefined!1493 (toList!5182 lt!1810466) (_1!29765 (h!57980 oldBucket!40))))))

(assert (=> b!4646078 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810466) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun lt!1810500 () Unit!116275)

(assert (=> b!4646078 (= lt!1810500 lt!1810501)))

(assert (=> b!4646078 (= lt!1810507 (lemmaInListThenGetKeysListContains!729 (toList!5182 lt!1810466) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun call!324432 () Bool)

(assert (=> b!4646078 call!324432))

(declare-fun b!4646079 () Bool)

(declare-fun e!2898261 () List!51976)

(assert (=> b!4646079 (= e!2898261 (keys!18351 lt!1810466))))

(declare-fun b!4646080 () Bool)

(assert (=> b!4646080 (= e!2898261 (getKeysList!734 (toList!5182 lt!1810466)))))

(declare-fun b!4646081 () Bool)

(declare-fun e!2898260 () Bool)

(assert (=> b!4646081 (= e!2898260 (not (contains!14992 (keys!18351 lt!1810466) (_1!29765 (h!57980 oldBucket!40)))))))

(declare-fun b!4646082 () Bool)

(declare-fun e!2898262 () Bool)

(declare-fun e!2898259 () Bool)

(assert (=> b!4646082 (= e!2898262 e!2898259)))

(declare-fun res!1952066 () Bool)

(assert (=> b!4646082 (=> (not res!1952066) (not e!2898259))))

(assert (=> b!4646082 (= res!1952066 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810466) (_1!29765 (h!57980 oldBucket!40)))))))

(declare-fun b!4646077 () Bool)

(assert (=> b!4646077 (= e!2898259 (contains!14992 (keys!18351 lt!1810466) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun d!1465040 () Bool)

(assert (=> d!1465040 e!2898262))

(declare-fun res!1952067 () Bool)

(assert (=> d!1465040 (=> res!1952067 e!2898262)))

(assert (=> d!1465040 (= res!1952067 e!2898260)))

(declare-fun res!1952068 () Bool)

(assert (=> d!1465040 (=> (not res!1952068) (not e!2898260))))

(declare-fun lt!1810502 () Bool)

(assert (=> d!1465040 (= res!1952068 (not lt!1810502))))

(declare-fun lt!1810506 () Bool)

(assert (=> d!1465040 (= lt!1810502 lt!1810506)))

(declare-fun lt!1810504 () Unit!116275)

(assert (=> d!1465040 (= lt!1810504 e!2898258)))

(declare-fun c!794992 () Bool)

(assert (=> d!1465040 (= c!794992 lt!1810506)))

(assert (=> d!1465040 (= lt!1810506 (containsKey!2691 (toList!5182 lt!1810466) (_1!29765 (h!57980 oldBucket!40))))))

(assert (=> d!1465040 (= (contains!14991 lt!1810466 (_1!29765 (h!57980 oldBucket!40))) lt!1810502)))

(declare-fun b!4646083 () Bool)

(declare-fun e!2898257 () Unit!116275)

(assert (=> b!4646083 (= e!2898258 e!2898257)))

(declare-fun c!794993 () Bool)

(assert (=> b!4646083 (= c!794993 call!324432)))

(declare-fun b!4646084 () Bool)

(declare-fun Unit!116391 () Unit!116275)

(assert (=> b!4646084 (= e!2898257 Unit!116391)))

(declare-fun bm!324427 () Bool)

(assert (=> bm!324427 (= call!324432 (contains!14992 e!2898261 (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun c!794991 () Bool)

(assert (=> bm!324427 (= c!794991 c!794992)))

(declare-fun b!4646085 () Bool)

(assert (=> b!4646085 false))

(declare-fun lt!1810505 () Unit!116275)

(declare-fun lt!1810503 () Unit!116275)

(assert (=> b!4646085 (= lt!1810505 lt!1810503)))

(assert (=> b!4646085 (containsKey!2691 (toList!5182 lt!1810466) (_1!29765 (h!57980 oldBucket!40)))))

(assert (=> b!4646085 (= lt!1810503 (lemmaInGetKeysListThenContainsKey!733 (toList!5182 lt!1810466) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun Unit!116392 () Unit!116275)

(assert (=> b!4646085 (= e!2898257 Unit!116392)))

(assert (= (and d!1465040 c!794992) b!4646078))

(assert (= (and d!1465040 (not c!794992)) b!4646083))

(assert (= (and b!4646083 c!794993) b!4646085))

(assert (= (and b!4646083 (not c!794993)) b!4646084))

(assert (= (or b!4646078 b!4646083) bm!324427))

(assert (= (and bm!324427 c!794991) b!4646080))

(assert (= (and bm!324427 (not c!794991)) b!4646079))

(assert (= (and d!1465040 res!1952068) b!4646081))

(assert (= (and d!1465040 (not res!1952067)) b!4646082))

(assert (= (and b!4646082 res!1952066) b!4646077))

(declare-fun m!5511487 () Bool)

(assert (=> b!4646085 m!5511487))

(declare-fun m!5511489 () Bool)

(assert (=> b!4646085 m!5511489))

(declare-fun m!5511491 () Bool)

(assert (=> bm!324427 m!5511491))

(declare-fun m!5511493 () Bool)

(assert (=> b!4646082 m!5511493))

(assert (=> b!4646082 m!5511493))

(declare-fun m!5511495 () Bool)

(assert (=> b!4646082 m!5511495))

(declare-fun m!5511497 () Bool)

(assert (=> b!4646077 m!5511497))

(assert (=> b!4646077 m!5511497))

(declare-fun m!5511499 () Bool)

(assert (=> b!4646077 m!5511499))

(declare-fun m!5511501 () Bool)

(assert (=> b!4646080 m!5511501))

(assert (=> b!4646079 m!5511497))

(assert (=> b!4646081 m!5511497))

(assert (=> b!4646081 m!5511497))

(assert (=> b!4646081 m!5511499))

(assert (=> d!1465040 m!5511487))

(declare-fun m!5511503 () Bool)

(assert (=> b!4646078 m!5511503))

(assert (=> b!4646078 m!5511493))

(assert (=> b!4646078 m!5511493))

(assert (=> b!4646078 m!5511495))

(declare-fun m!5511505 () Bool)

(assert (=> b!4646078 m!5511505))

(assert (=> b!4646034 d!1465040))

(declare-fun b!4646087 () Bool)

(declare-fun e!2898264 () Unit!116275)

(declare-fun lt!1810515 () Unit!116275)

(assert (=> b!4646087 (= e!2898264 lt!1810515)))

(declare-fun lt!1810509 () Unit!116275)

(assert (=> b!4646087 (= lt!1810509 (lemmaContainsKeyImpliesGetValueByKeyDefined!1493 (toList!5182 lt!1810451) (_1!29765 (h!57980 oldBucket!40))))))

(assert (=> b!4646087 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810451) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun lt!1810508 () Unit!116275)

(assert (=> b!4646087 (= lt!1810508 lt!1810509)))

(assert (=> b!4646087 (= lt!1810515 (lemmaInListThenGetKeysListContains!729 (toList!5182 lt!1810451) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun call!324433 () Bool)

(assert (=> b!4646087 call!324433))

(declare-fun b!4646088 () Bool)

(declare-fun e!2898267 () List!51976)

(assert (=> b!4646088 (= e!2898267 (keys!18351 lt!1810451))))

(declare-fun b!4646089 () Bool)

(assert (=> b!4646089 (= e!2898267 (getKeysList!734 (toList!5182 lt!1810451)))))

(declare-fun b!4646090 () Bool)

(declare-fun e!2898266 () Bool)

(assert (=> b!4646090 (= e!2898266 (not (contains!14992 (keys!18351 lt!1810451) (_1!29765 (h!57980 oldBucket!40)))))))

(declare-fun b!4646091 () Bool)

(declare-fun e!2898268 () Bool)

(declare-fun e!2898265 () Bool)

(assert (=> b!4646091 (= e!2898268 e!2898265)))

(declare-fun res!1952069 () Bool)

(assert (=> b!4646091 (=> (not res!1952069) (not e!2898265))))

(assert (=> b!4646091 (= res!1952069 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810451) (_1!29765 (h!57980 oldBucket!40)))))))

(declare-fun b!4646086 () Bool)

(assert (=> b!4646086 (= e!2898265 (contains!14992 (keys!18351 lt!1810451) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun d!1465042 () Bool)

(assert (=> d!1465042 e!2898268))

(declare-fun res!1952070 () Bool)

(assert (=> d!1465042 (=> res!1952070 e!2898268)))

(assert (=> d!1465042 (= res!1952070 e!2898266)))

(declare-fun res!1952071 () Bool)

(assert (=> d!1465042 (=> (not res!1952071) (not e!2898266))))

(declare-fun lt!1810510 () Bool)

(assert (=> d!1465042 (= res!1952071 (not lt!1810510))))

(declare-fun lt!1810514 () Bool)

(assert (=> d!1465042 (= lt!1810510 lt!1810514)))

(declare-fun lt!1810512 () Unit!116275)

(assert (=> d!1465042 (= lt!1810512 e!2898264)))

(declare-fun c!794995 () Bool)

(assert (=> d!1465042 (= c!794995 lt!1810514)))

(assert (=> d!1465042 (= lt!1810514 (containsKey!2691 (toList!5182 lt!1810451) (_1!29765 (h!57980 oldBucket!40))))))

(assert (=> d!1465042 (= (contains!14991 lt!1810451 (_1!29765 (h!57980 oldBucket!40))) lt!1810510)))

(declare-fun b!4646092 () Bool)

(declare-fun e!2898263 () Unit!116275)

(assert (=> b!4646092 (= e!2898264 e!2898263)))

(declare-fun c!794996 () Bool)

(assert (=> b!4646092 (= c!794996 call!324433)))

(declare-fun b!4646093 () Bool)

(declare-fun Unit!116393 () Unit!116275)

(assert (=> b!4646093 (= e!2898263 Unit!116393)))

(declare-fun bm!324428 () Bool)

(assert (=> bm!324428 (= call!324433 (contains!14992 e!2898267 (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun c!794994 () Bool)

(assert (=> bm!324428 (= c!794994 c!794995)))

(declare-fun b!4646094 () Bool)

(assert (=> b!4646094 false))

(declare-fun lt!1810513 () Unit!116275)

(declare-fun lt!1810511 () Unit!116275)

(assert (=> b!4646094 (= lt!1810513 lt!1810511)))

(assert (=> b!4646094 (containsKey!2691 (toList!5182 lt!1810451) (_1!29765 (h!57980 oldBucket!40)))))

(assert (=> b!4646094 (= lt!1810511 (lemmaInGetKeysListThenContainsKey!733 (toList!5182 lt!1810451) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun Unit!116394 () Unit!116275)

(assert (=> b!4646094 (= e!2898263 Unit!116394)))

(assert (= (and d!1465042 c!794995) b!4646087))

(assert (= (and d!1465042 (not c!794995)) b!4646092))

(assert (= (and b!4646092 c!794996) b!4646094))

(assert (= (and b!4646092 (not c!794996)) b!4646093))

(assert (= (or b!4646087 b!4646092) bm!324428))

(assert (= (and bm!324428 c!794994) b!4646089))

(assert (= (and bm!324428 (not c!794994)) b!4646088))

(assert (= (and d!1465042 res!1952071) b!4646090))

(assert (= (and d!1465042 (not res!1952070)) b!4646091))

(assert (= (and b!4646091 res!1952069) b!4646086))

(declare-fun m!5511507 () Bool)

(assert (=> b!4646094 m!5511507))

(declare-fun m!5511509 () Bool)

(assert (=> b!4646094 m!5511509))

(declare-fun m!5511511 () Bool)

(assert (=> bm!324428 m!5511511))

(declare-fun m!5511513 () Bool)

(assert (=> b!4646091 m!5511513))

(assert (=> b!4646091 m!5511513))

(declare-fun m!5511515 () Bool)

(assert (=> b!4646091 m!5511515))

(declare-fun m!5511517 () Bool)

(assert (=> b!4646086 m!5511517))

(assert (=> b!4646086 m!5511517))

(declare-fun m!5511519 () Bool)

(assert (=> b!4646086 m!5511519))

(declare-fun m!5511521 () Bool)

(assert (=> b!4646089 m!5511521))

(assert (=> b!4646088 m!5511517))

(assert (=> b!4646090 m!5511517))

(assert (=> b!4646090 m!5511517))

(assert (=> b!4646090 m!5511519))

(assert (=> d!1465042 m!5511507))

(declare-fun m!5511523 () Bool)

(assert (=> b!4646087 m!5511523))

(assert (=> b!4646087 m!5511513))

(assert (=> b!4646087 m!5511513))

(assert (=> b!4646087 m!5511515))

(declare-fun m!5511525 () Bool)

(assert (=> b!4646087 m!5511525))

(assert (=> b!4646034 d!1465042))

(declare-fun bs!1036574 () Bool)

(declare-fun b!4646097 () Bool)

(assert (= bs!1036574 (and b!4646097 b!4646029)))

(declare-fun lambda!197608 () Int)

(assert (=> bs!1036574 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810445) (= lambda!197608 lambda!197597))))

(declare-fun bs!1036575 () Bool)

(assert (= bs!1036575 (and b!4646097 b!4645912)))

(assert (=> bs!1036575 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810089) (= lambda!197608 lambda!197562))))

(declare-fun bs!1036576 () Bool)

(assert (= bs!1036576 (and b!4646097 b!4645990)))

(assert (=> bs!1036576 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810377) (= lambda!197608 lambda!197582))))

(declare-fun bs!1036577 () Bool)

(assert (= bs!1036577 (and b!4646097 b!4646034)))

(assert (=> bs!1036577 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197608 lambda!197600))))

(declare-fun bs!1036578 () Bool)

(assert (= bs!1036578 (and b!4646097 b!4646000)))

(assert (=> bs!1036578 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810419) (= lambda!197608 lambda!197589))))

(assert (=> bs!1036577 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810466) (= lambda!197608 lambda!197601))))

(declare-fun bs!1036579 () Bool)

(assert (= bs!1036579 (and b!4646097 d!1464936)))

(assert (=> bs!1036579 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810261) (= lambda!197608 lambda!197565))))

(declare-fun bs!1036580 () Bool)

(assert (= bs!1036580 (and b!4646097 b!4645910)))

(assert (=> bs!1036580 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810089) (= lambda!197608 lambda!197563))))

(declare-fun bs!1036581 () Bool)

(assert (= bs!1036581 (and b!4646097 d!1464988)))

(assert (=> bs!1036581 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810403) (= lambda!197608 lambda!197591))))

(declare-fun bs!1036582 () Bool)

(assert (= bs!1036582 (and b!4646097 b!4645992)))

(assert (=> bs!1036582 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197608 lambda!197579))))

(assert (=> bs!1036574 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197608 lambda!197596))))

(declare-fun bs!1036583 () Bool)

(assert (= bs!1036583 (and b!4646097 d!1465038)))

(assert (=> bs!1036583 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810466) (= lambda!197608 lambda!197607))))

(declare-fun bs!1036584 () Bool)

(assert (= bs!1036584 (and b!4646097 d!1465004)))

(assert (=> bs!1036584 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810429) (= lambda!197608 lambda!197598))))

(assert (=> bs!1036578 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197608 lambda!197587))))

(declare-fun bs!1036585 () Bool)

(assert (= bs!1036585 (and b!4646097 b!4646002)))

(assert (=> bs!1036585 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197608 lambda!197586))))

(declare-fun bs!1036586 () Bool)

(assert (= bs!1036586 (and b!4646097 d!1464922)))

(assert (=> bs!1036586 (not (= lambda!197608 lambda!197489))))

(declare-fun bs!1036587 () Bool)

(assert (= bs!1036587 (and b!4646097 d!1464982)))

(assert (=> bs!1036587 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810361) (= lambda!197608 lambda!197583))))

(declare-fun bs!1036588 () Bool)

(assert (= bs!1036588 (and b!4646097 d!1464926)))

(assert (=> bs!1036588 (not (= lambda!197608 lambda!197490))))

(declare-fun bs!1036589 () Bool)

(assert (= bs!1036589 (and b!4646097 d!1465008)))

(assert (=> bs!1036589 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810450) (= lambda!197608 lambda!197602))))

(assert (=> bs!1036576 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197608 lambda!197581))))

(declare-fun bs!1036590 () Bool)

(assert (= bs!1036590 (and b!4646097 b!4646031)))

(assert (=> bs!1036590 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197608 lambda!197595))))

(assert (=> bs!1036580 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810277) (= lambda!197608 lambda!197564))))

(declare-fun bs!1036591 () Bool)

(assert (= bs!1036591 (and b!4646097 b!4646036)))

(assert (=> bs!1036591 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197608 lambda!197599))))

(assert (=> b!4646097 true))

(declare-fun bs!1036592 () Bool)

(declare-fun b!4646095 () Bool)

(assert (= bs!1036592 (and b!4646095 b!4646029)))

(declare-fun lambda!197609 () Int)

(assert (=> bs!1036592 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810445) (= lambda!197609 lambda!197597))))

(declare-fun bs!1036593 () Bool)

(assert (= bs!1036593 (and b!4646095 b!4645912)))

(assert (=> bs!1036593 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810089) (= lambda!197609 lambda!197562))))

(declare-fun bs!1036594 () Bool)

(assert (= bs!1036594 (and b!4646095 b!4645990)))

(assert (=> bs!1036594 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810377) (= lambda!197609 lambda!197582))))

(declare-fun bs!1036595 () Bool)

(assert (= bs!1036595 (and b!4646095 b!4646034)))

(assert (=> bs!1036595 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197609 lambda!197600))))

(declare-fun bs!1036596 () Bool)

(assert (= bs!1036596 (and b!4646095 b!4646000)))

(assert (=> bs!1036596 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810419) (= lambda!197609 lambda!197589))))

(assert (=> bs!1036595 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810466) (= lambda!197609 lambda!197601))))

(declare-fun bs!1036597 () Bool)

(assert (= bs!1036597 (and b!4646095 d!1464936)))

(assert (=> bs!1036597 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810261) (= lambda!197609 lambda!197565))))

(declare-fun bs!1036598 () Bool)

(assert (= bs!1036598 (and b!4646095 b!4645910)))

(assert (=> bs!1036598 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810089) (= lambda!197609 lambda!197563))))

(declare-fun bs!1036599 () Bool)

(assert (= bs!1036599 (and b!4646095 d!1464988)))

(assert (=> bs!1036599 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810403) (= lambda!197609 lambda!197591))))

(declare-fun bs!1036600 () Bool)

(assert (= bs!1036600 (and b!4646095 b!4645992)))

(assert (=> bs!1036600 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197609 lambda!197579))))

(assert (=> bs!1036592 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197609 lambda!197596))))

(declare-fun bs!1036601 () Bool)

(assert (= bs!1036601 (and b!4646095 d!1465038)))

(assert (=> bs!1036601 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810466) (= lambda!197609 lambda!197607))))

(declare-fun bs!1036602 () Bool)

(assert (= bs!1036602 (and b!4646095 d!1465004)))

(assert (=> bs!1036602 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810429) (= lambda!197609 lambda!197598))))

(assert (=> bs!1036596 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197609 lambda!197587))))

(declare-fun bs!1036603 () Bool)

(assert (= bs!1036603 (and b!4646095 b!4646002)))

(assert (=> bs!1036603 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197609 lambda!197586))))

(declare-fun bs!1036604 () Bool)

(assert (= bs!1036604 (and b!4646095 d!1464922)))

(assert (=> bs!1036604 (not (= lambda!197609 lambda!197489))))

(declare-fun bs!1036605 () Bool)

(assert (= bs!1036605 (and b!4646095 d!1464982)))

(assert (=> bs!1036605 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810361) (= lambda!197609 lambda!197583))))

(declare-fun bs!1036606 () Bool)

(assert (= bs!1036606 (and b!4646095 d!1465008)))

(assert (=> bs!1036606 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810450) (= lambda!197609 lambda!197602))))

(assert (=> bs!1036594 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197609 lambda!197581))))

(declare-fun bs!1036607 () Bool)

(assert (= bs!1036607 (and b!4646095 b!4646031)))

(assert (=> bs!1036607 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197609 lambda!197595))))

(declare-fun bs!1036608 () Bool)

(assert (= bs!1036608 (and b!4646095 b!4646097)))

(assert (=> bs!1036608 (= lambda!197609 lambda!197608)))

(declare-fun bs!1036609 () Bool)

(assert (= bs!1036609 (and b!4646095 d!1464926)))

(assert (=> bs!1036609 (not (= lambda!197609 lambda!197490))))

(assert (=> bs!1036598 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810277) (= lambda!197609 lambda!197564))))

(declare-fun bs!1036610 () Bool)

(assert (= bs!1036610 (and b!4646095 b!4646036)))

(assert (=> bs!1036610 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197609 lambda!197599))))

(assert (=> b!4646095 true))

(declare-fun lt!1810532 () ListMap!4517)

(declare-fun lambda!197610 () Int)

(assert (=> bs!1036592 (= (= lt!1810532 lt!1810445) (= lambda!197610 lambda!197597))))

(assert (=> bs!1036593 (= (= lt!1810532 lt!1810089) (= lambda!197610 lambda!197562))))

(assert (=> bs!1036594 (= (= lt!1810532 lt!1810377) (= lambda!197610 lambda!197582))))

(assert (=> bs!1036595 (= (= lt!1810532 (ListMap!4518 Nil!51850)) (= lambda!197610 lambda!197600))))

(assert (=> bs!1036596 (= (= lt!1810532 lt!1810419) (= lambda!197610 lambda!197589))))

(assert (=> bs!1036595 (= (= lt!1810532 lt!1810466) (= lambda!197610 lambda!197601))))

(assert (=> bs!1036597 (= (= lt!1810532 lt!1810261) (= lambda!197610 lambda!197565))))

(assert (=> bs!1036598 (= (= lt!1810532 lt!1810089) (= lambda!197610 lambda!197563))))

(assert (=> bs!1036599 (= (= lt!1810532 lt!1810403) (= lambda!197610 lambda!197591))))

(assert (=> bs!1036600 (= (= lt!1810532 (ListMap!4518 Nil!51850)) (= lambda!197610 lambda!197579))))

(assert (=> bs!1036592 (= (= lt!1810532 (ListMap!4518 Nil!51850)) (= lambda!197610 lambda!197596))))

(assert (=> bs!1036601 (= (= lt!1810532 lt!1810466) (= lambda!197610 lambda!197607))))

(assert (=> bs!1036602 (= (= lt!1810532 lt!1810429) (= lambda!197610 lambda!197598))))

(assert (=> bs!1036596 (= (= lt!1810532 (ListMap!4518 Nil!51850)) (= lambda!197610 lambda!197587))))

(assert (=> bs!1036603 (= (= lt!1810532 (ListMap!4518 Nil!51850)) (= lambda!197610 lambda!197586))))

(assert (=> bs!1036604 (not (= lambda!197610 lambda!197489))))

(assert (=> bs!1036605 (= (= lt!1810532 lt!1810361) (= lambda!197610 lambda!197583))))

(assert (=> b!4646095 (= (= lt!1810532 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197610 lambda!197609))))

(assert (=> bs!1036606 (= (= lt!1810532 lt!1810450) (= lambda!197610 lambda!197602))))

(assert (=> bs!1036594 (= (= lt!1810532 (ListMap!4518 Nil!51850)) (= lambda!197610 lambda!197581))))

(assert (=> bs!1036607 (= (= lt!1810532 (ListMap!4518 Nil!51850)) (= lambda!197610 lambda!197595))))

(assert (=> bs!1036608 (= (= lt!1810532 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197610 lambda!197608))))

(assert (=> bs!1036609 (not (= lambda!197610 lambda!197490))))

(assert (=> bs!1036598 (= (= lt!1810532 lt!1810277) (= lambda!197610 lambda!197564))))

(assert (=> bs!1036610 (= (= lt!1810532 (ListMap!4518 Nil!51850)) (= lambda!197610 lambda!197599))))

(assert (=> b!4646095 true))

(declare-fun bs!1036611 () Bool)

(declare-fun d!1465044 () Bool)

(assert (= bs!1036611 (and d!1465044 b!4646029)))

(declare-fun lt!1810516 () ListMap!4517)

(declare-fun lambda!197611 () Int)

(assert (=> bs!1036611 (= (= lt!1810516 lt!1810445) (= lambda!197611 lambda!197597))))

(declare-fun bs!1036612 () Bool)

(assert (= bs!1036612 (and d!1465044 b!4645912)))

(assert (=> bs!1036612 (= (= lt!1810516 lt!1810089) (= lambda!197611 lambda!197562))))

(declare-fun bs!1036613 () Bool)

(assert (= bs!1036613 (and d!1465044 b!4645990)))

(assert (=> bs!1036613 (= (= lt!1810516 lt!1810377) (= lambda!197611 lambda!197582))))

(declare-fun bs!1036614 () Bool)

(assert (= bs!1036614 (and d!1465044 b!4646034)))

(assert (=> bs!1036614 (= (= lt!1810516 (ListMap!4518 Nil!51850)) (= lambda!197611 lambda!197600))))

(declare-fun bs!1036615 () Bool)

(assert (= bs!1036615 (and d!1465044 b!4646000)))

(assert (=> bs!1036615 (= (= lt!1810516 lt!1810419) (= lambda!197611 lambda!197589))))

(assert (=> bs!1036614 (= (= lt!1810516 lt!1810466) (= lambda!197611 lambda!197601))))

(declare-fun bs!1036616 () Bool)

(assert (= bs!1036616 (and d!1465044 d!1464936)))

(assert (=> bs!1036616 (= (= lt!1810516 lt!1810261) (= lambda!197611 lambda!197565))))

(declare-fun bs!1036617 () Bool)

(assert (= bs!1036617 (and d!1465044 b!4645910)))

(assert (=> bs!1036617 (= (= lt!1810516 lt!1810089) (= lambda!197611 lambda!197563))))

(declare-fun bs!1036618 () Bool)

(assert (= bs!1036618 (and d!1465044 d!1464988)))

(assert (=> bs!1036618 (= (= lt!1810516 lt!1810403) (= lambda!197611 lambda!197591))))

(declare-fun bs!1036619 () Bool)

(assert (= bs!1036619 (and d!1465044 b!4645992)))

(assert (=> bs!1036619 (= (= lt!1810516 (ListMap!4518 Nil!51850)) (= lambda!197611 lambda!197579))))

(declare-fun bs!1036620 () Bool)

(assert (= bs!1036620 (and d!1465044 d!1465038)))

(assert (=> bs!1036620 (= (= lt!1810516 lt!1810466) (= lambda!197611 lambda!197607))))

(declare-fun bs!1036621 () Bool)

(assert (= bs!1036621 (and d!1465044 d!1465004)))

(assert (=> bs!1036621 (= (= lt!1810516 lt!1810429) (= lambda!197611 lambda!197598))))

(assert (=> bs!1036615 (= (= lt!1810516 (ListMap!4518 Nil!51850)) (= lambda!197611 lambda!197587))))

(declare-fun bs!1036622 () Bool)

(assert (= bs!1036622 (and d!1465044 b!4646002)))

(assert (=> bs!1036622 (= (= lt!1810516 (ListMap!4518 Nil!51850)) (= lambda!197611 lambda!197586))))

(declare-fun bs!1036623 () Bool)

(assert (= bs!1036623 (and d!1465044 d!1464922)))

(assert (=> bs!1036623 (not (= lambda!197611 lambda!197489))))

(declare-fun bs!1036624 () Bool)

(assert (= bs!1036624 (and d!1465044 d!1464982)))

(assert (=> bs!1036624 (= (= lt!1810516 lt!1810361) (= lambda!197611 lambda!197583))))

(declare-fun bs!1036625 () Bool)

(assert (= bs!1036625 (and d!1465044 b!4646095)))

(assert (=> bs!1036625 (= (= lt!1810516 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197611 lambda!197609))))

(declare-fun bs!1036626 () Bool)

(assert (= bs!1036626 (and d!1465044 d!1465008)))

(assert (=> bs!1036626 (= (= lt!1810516 lt!1810450) (= lambda!197611 lambda!197602))))

(assert (=> bs!1036613 (= (= lt!1810516 (ListMap!4518 Nil!51850)) (= lambda!197611 lambda!197581))))

(declare-fun bs!1036627 () Bool)

(assert (= bs!1036627 (and d!1465044 b!4646031)))

(assert (=> bs!1036627 (= (= lt!1810516 (ListMap!4518 Nil!51850)) (= lambda!197611 lambda!197595))))

(assert (=> bs!1036611 (= (= lt!1810516 (ListMap!4518 Nil!51850)) (= lambda!197611 lambda!197596))))

(assert (=> bs!1036625 (= (= lt!1810516 lt!1810532) (= lambda!197611 lambda!197610))))

(declare-fun bs!1036628 () Bool)

(assert (= bs!1036628 (and d!1465044 b!4646097)))

(assert (=> bs!1036628 (= (= lt!1810516 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197611 lambda!197608))))

(declare-fun bs!1036629 () Bool)

(assert (= bs!1036629 (and d!1465044 d!1464926)))

(assert (=> bs!1036629 (not (= lambda!197611 lambda!197490))))

(assert (=> bs!1036617 (= (= lt!1810516 lt!1810277) (= lambda!197611 lambda!197564))))

(declare-fun bs!1036630 () Bool)

(assert (= bs!1036630 (and d!1465044 b!4646036)))

(assert (=> bs!1036630 (= (= lt!1810516 (ListMap!4518 Nil!51850)) (= lambda!197611 lambda!197599))))

(assert (=> d!1465044 true))

(declare-fun e!2898271 () ListMap!4517)

(assert (=> b!4646095 (= e!2898271 lt!1810532)))

(declare-fun lt!1810517 () ListMap!4517)

(assert (=> b!4646095 (= lt!1810517 (+!1968 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (h!57980 (t!359070 oldBucket!40))))))

(assert (=> b!4646095 (= lt!1810532 (addToMapMapFromBucket!1081 (t!359070 (t!359070 oldBucket!40)) (+!1968 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) (h!57980 (t!359070 oldBucket!40)))))))

(declare-fun lt!1810519 () Unit!116275)

(declare-fun call!324434 () Unit!116275)

(assert (=> b!4646095 (= lt!1810519 call!324434)))

(assert (=> b!4646095 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) lambda!197609)))

(declare-fun lt!1810533 () Unit!116275)

(assert (=> b!4646095 (= lt!1810533 lt!1810519)))

(assert (=> b!4646095 (forall!10987 (toList!5182 lt!1810517) lambda!197610)))

(declare-fun lt!1810529 () Unit!116275)

(declare-fun Unit!116395 () Unit!116275)

(assert (=> b!4646095 (= lt!1810529 Unit!116395)))

(declare-fun call!324436 () Bool)

(assert (=> b!4646095 call!324436))

(declare-fun lt!1810528 () Unit!116275)

(declare-fun Unit!116396 () Unit!116275)

(assert (=> b!4646095 (= lt!1810528 Unit!116396)))

(declare-fun lt!1810524 () Unit!116275)

(declare-fun Unit!116397 () Unit!116275)

(assert (=> b!4646095 (= lt!1810524 Unit!116397)))

(declare-fun lt!1810523 () Unit!116275)

(assert (=> b!4646095 (= lt!1810523 (forallContained!3202 (toList!5182 lt!1810517) lambda!197610 (h!57980 (t!359070 oldBucket!40))))))

(assert (=> b!4646095 (contains!14991 lt!1810517 (_1!29765 (h!57980 (t!359070 oldBucket!40))))))

(declare-fun lt!1810531 () Unit!116275)

(declare-fun Unit!116398 () Unit!116275)

(assert (=> b!4646095 (= lt!1810531 Unit!116398)))

(assert (=> b!4646095 (contains!14991 lt!1810532 (_1!29765 (h!57980 (t!359070 oldBucket!40))))))

(declare-fun lt!1810518 () Unit!116275)

(declare-fun Unit!116399 () Unit!116275)

(assert (=> b!4646095 (= lt!1810518 Unit!116399)))

(assert (=> b!4646095 (forall!10987 (t!359070 oldBucket!40) lambda!197610)))

(declare-fun lt!1810535 () Unit!116275)

(declare-fun Unit!116400 () Unit!116275)

(assert (=> b!4646095 (= lt!1810535 Unit!116400)))

(declare-fun call!324435 () Bool)

(assert (=> b!4646095 call!324435))

(declare-fun lt!1810530 () Unit!116275)

(declare-fun Unit!116401 () Unit!116275)

(assert (=> b!4646095 (= lt!1810530 Unit!116401)))

(declare-fun lt!1810526 () Unit!116275)

(declare-fun Unit!116402 () Unit!116275)

(assert (=> b!4646095 (= lt!1810526 Unit!116402)))

(declare-fun lt!1810536 () Unit!116275)

(assert (=> b!4646095 (= lt!1810536 (addForallContainsKeyThenBeforeAdding!583 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)) lt!1810532 (_1!29765 (h!57980 (t!359070 oldBucket!40))) (_2!29765 (h!57980 (t!359070 oldBucket!40)))))))

(assert (=> b!4646095 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) lambda!197610)))

(declare-fun lt!1810527 () Unit!116275)

(assert (=> b!4646095 (= lt!1810527 lt!1810536)))

(assert (=> b!4646095 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) lambda!197610)))

(declare-fun lt!1810522 () Unit!116275)

(declare-fun Unit!116403 () Unit!116275)

(assert (=> b!4646095 (= lt!1810522 Unit!116403)))

(declare-fun res!1952073 () Bool)

(assert (=> b!4646095 (= res!1952073 (forall!10987 (t!359070 oldBucket!40) lambda!197610))))

(declare-fun e!2898269 () Bool)

(assert (=> b!4646095 (=> (not res!1952073) (not e!2898269))))

(assert (=> b!4646095 e!2898269))

(declare-fun lt!1810534 () Unit!116275)

(declare-fun Unit!116404 () Unit!116275)

(assert (=> b!4646095 (= lt!1810534 Unit!116404)))

(declare-fun e!2898270 () Bool)

(assert (=> d!1465044 e!2898270))

(declare-fun res!1952074 () Bool)

(assert (=> d!1465044 (=> (not res!1952074) (not e!2898270))))

(assert (=> d!1465044 (= res!1952074 (forall!10987 (t!359070 oldBucket!40) lambda!197611))))

(assert (=> d!1465044 (= lt!1810516 e!2898271)))

(declare-fun c!794997 () Bool)

(assert (=> d!1465044 (= c!794997 ((_ is Nil!51850) (t!359070 oldBucket!40)))))

(assert (=> d!1465044 (noDuplicateKeys!1624 (t!359070 oldBucket!40))))

(assert (=> d!1465044 (= (addToMapMapFromBucket!1081 (t!359070 oldBucket!40) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) lt!1810516)))

(declare-fun b!4646096 () Bool)

(declare-fun res!1952072 () Bool)

(assert (=> b!4646096 (=> (not res!1952072) (not e!2898270))))

(assert (=> b!4646096 (= res!1952072 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) lambda!197611))))

(declare-fun bm!324429 () Bool)

(assert (=> bm!324429 (= call!324436 (forall!10987 (ite c!794997 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (t!359070 (t!359070 oldBucket!40))) (ite c!794997 lambda!197608 lambda!197610)))))

(assert (=> b!4646097 (= e!2898271 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40)))))

(declare-fun lt!1810521 () Unit!116275)

(assert (=> b!4646097 (= lt!1810521 call!324434)))

(assert (=> b!4646097 call!324435))

(declare-fun lt!1810520 () Unit!116275)

(assert (=> b!4646097 (= lt!1810520 lt!1810521)))

(assert (=> b!4646097 call!324436))

(declare-fun lt!1810525 () Unit!116275)

(declare-fun Unit!116405 () Unit!116275)

(assert (=> b!4646097 (= lt!1810525 Unit!116405)))

(declare-fun bm!324430 () Bool)

(assert (=> bm!324430 (= call!324435 (forall!10987 (ite c!794997 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (toList!5182 lt!1810517)) (ite c!794997 lambda!197608 lambda!197610)))))

(declare-fun b!4646098 () Bool)

(assert (=> b!4646098 (= e!2898270 (invariantList!1284 (toList!5182 lt!1810516)))))

(declare-fun b!4646099 () Bool)

(assert (=> b!4646099 (= e!2898269 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) lambda!197610))))

(declare-fun bm!324431 () Bool)

(assert (=> bm!324431 (= call!324434 (lemmaContainsAllItsOwnKeys!584 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))))))

(assert (= (and d!1465044 c!794997) b!4646097))

(assert (= (and d!1465044 (not c!794997)) b!4646095))

(assert (= (and b!4646095 res!1952073) b!4646099))

(assert (= (or b!4646097 b!4646095) bm!324431))

(assert (= (or b!4646097 b!4646095) bm!324429))

(assert (= (or b!4646097 b!4646095) bm!324430))

(assert (= (and d!1465044 res!1952074) b!4646096))

(assert (= (and b!4646096 res!1952072) b!4646098))

(declare-fun m!5511527 () Bool)

(assert (=> d!1465044 m!5511527))

(assert (=> d!1465044 m!5510897))

(declare-fun m!5511529 () Bool)

(assert (=> bm!324429 m!5511529))

(declare-fun m!5511531 () Bool)

(assert (=> b!4646099 m!5511531))

(assert (=> bm!324431 m!5511393))

(declare-fun m!5511533 () Bool)

(assert (=> bm!324431 m!5511533))

(declare-fun m!5511535 () Bool)

(assert (=> bm!324430 m!5511535))

(declare-fun m!5511537 () Bool)

(assert (=> b!4646098 m!5511537))

(declare-fun m!5511539 () Bool)

(assert (=> b!4646096 m!5511539))

(assert (=> b!4646095 m!5511393))

(declare-fun m!5511541 () Bool)

(assert (=> b!4646095 m!5511541))

(assert (=> b!4646095 m!5511531))

(declare-fun m!5511543 () Bool)

(assert (=> b!4646095 m!5511543))

(assert (=> b!4646095 m!5511543))

(declare-fun m!5511545 () Bool)

(assert (=> b!4646095 m!5511545))

(declare-fun m!5511547 () Bool)

(assert (=> b!4646095 m!5511547))

(declare-fun m!5511549 () Bool)

(assert (=> b!4646095 m!5511549))

(declare-fun m!5511551 () Bool)

(assert (=> b!4646095 m!5511551))

(assert (=> b!4646095 m!5511393))

(declare-fun m!5511553 () Bool)

(assert (=> b!4646095 m!5511553))

(assert (=> b!4646095 m!5511553))

(declare-fun m!5511555 () Bool)

(assert (=> b!4646095 m!5511555))

(assert (=> b!4646095 m!5511531))

(declare-fun m!5511557 () Bool)

(assert (=> b!4646095 m!5511557))

(assert (=> b!4646034 d!1465044))

(declare-fun d!1465046 () Bool)

(declare-fun lt!1810539 () Bool)

(assert (=> d!1465046 (= lt!1810539 (select (content!8975 (toList!5182 lt!1810481)) (h!57980 oldBucket!40)))))

(declare-fun e!2898277 () Bool)

(assert (=> d!1465046 (= lt!1810539 e!2898277)))

(declare-fun res!1952079 () Bool)

(assert (=> d!1465046 (=> (not res!1952079) (not e!2898277))))

(assert (=> d!1465046 (= res!1952079 ((_ is Cons!51850) (toList!5182 lt!1810481)))))

(assert (=> d!1465046 (= (contains!14995 (toList!5182 lt!1810481) (h!57980 oldBucket!40)) lt!1810539)))

(declare-fun b!4646104 () Bool)

(declare-fun e!2898276 () Bool)

(assert (=> b!4646104 (= e!2898277 e!2898276)))

(declare-fun res!1952080 () Bool)

(assert (=> b!4646104 (=> res!1952080 e!2898276)))

(assert (=> b!4646104 (= res!1952080 (= (h!57980 (toList!5182 lt!1810481)) (h!57980 oldBucket!40)))))

(declare-fun b!4646105 () Bool)

(assert (=> b!4646105 (= e!2898276 (contains!14995 (t!359070 (toList!5182 lt!1810481)) (h!57980 oldBucket!40)))))

(assert (= (and d!1465046 res!1952079) b!4646104))

(assert (= (and b!4646104 (not res!1952080)) b!4646105))

(declare-fun m!5511559 () Bool)

(assert (=> d!1465046 m!5511559))

(declare-fun m!5511561 () Bool)

(assert (=> d!1465046 m!5511561))

(declare-fun m!5511563 () Bool)

(assert (=> b!4646105 m!5511563))

(assert (=> b!4646044 d!1465046))

(declare-fun d!1465048 () Bool)

(declare-fun res!1952081 () Bool)

(declare-fun e!2898278 () Bool)

(assert (=> d!1465048 (=> res!1952081 e!2898278)))

(assert (=> d!1465048 (= res!1952081 ((_ is Nil!51850) (ite c!794990 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 oldBucket!40))))))

(assert (=> d!1465048 (= (forall!10987 (ite c!794990 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 oldBucket!40)) (ite c!794990 lambda!197599 lambda!197601)) e!2898278)))

(declare-fun b!4646106 () Bool)

(declare-fun e!2898279 () Bool)

(assert (=> b!4646106 (= e!2898278 e!2898279)))

(declare-fun res!1952082 () Bool)

(assert (=> b!4646106 (=> (not res!1952082) (not e!2898279))))

(assert (=> b!4646106 (= res!1952082 (dynLambda!21559 (ite c!794990 lambda!197599 lambda!197601) (h!57980 (ite c!794990 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 oldBucket!40)))))))

(declare-fun b!4646107 () Bool)

(assert (=> b!4646107 (= e!2898279 (forall!10987 (t!359070 (ite c!794990 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 oldBucket!40))) (ite c!794990 lambda!197599 lambda!197601)))))

(assert (= (and d!1465048 (not res!1952081)) b!4646106))

(assert (= (and b!4646106 res!1952082) b!4646107))

(declare-fun b_lambda!171129 () Bool)

(assert (=> (not b_lambda!171129) (not b!4646106)))

(declare-fun m!5511565 () Bool)

(assert (=> b!4646106 m!5511565))

(declare-fun m!5511567 () Bool)

(assert (=> b!4646107 m!5511567))

(assert (=> bm!324424 d!1465048))

(declare-fun d!1465050 () Bool)

(declare-fun res!1952083 () Bool)

(declare-fun e!2898280 () Bool)

(assert (=> d!1465050 (=> res!1952083 e!2898280)))

(assert (=> d!1465050 (= res!1952083 ((_ is Nil!51850) (ite c!794978 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810362))))))

(assert (=> d!1465050 (= (forall!10987 (ite c!794978 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810362)) (ite c!794978 lambda!197579 lambda!197582)) e!2898280)))

(declare-fun b!4646108 () Bool)

(declare-fun e!2898281 () Bool)

(assert (=> b!4646108 (= e!2898280 e!2898281)))

(declare-fun res!1952084 () Bool)

(assert (=> b!4646108 (=> (not res!1952084) (not e!2898281))))

(assert (=> b!4646108 (= res!1952084 (dynLambda!21559 (ite c!794978 lambda!197579 lambda!197582) (h!57980 (ite c!794978 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810362)))))))

(declare-fun b!4646109 () Bool)

(assert (=> b!4646109 (= e!2898281 (forall!10987 (t!359070 (ite c!794978 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810362))) (ite c!794978 lambda!197579 lambda!197582)))))

(assert (= (and d!1465050 (not res!1952083)) b!4646108))

(assert (= (and b!4646108 res!1952084) b!4646109))

(declare-fun b_lambda!171131 () Bool)

(assert (=> (not b_lambda!171131) (not b!4646108)))

(declare-fun m!5511569 () Bool)

(assert (=> b!4646108 m!5511569))

(declare-fun m!5511571 () Bool)

(assert (=> b!4646109 m!5511571))

(assert (=> bm!324413 d!1465050))

(declare-fun d!1465052 () Bool)

(assert (not d!1465052))

(assert (=> b!4645946 d!1465052))

(declare-fun d!1465054 () Bool)

(assert (not d!1465054))

(assert (=> b!4645946 d!1465054))

(declare-fun d!1465056 () Bool)

(declare-fun res!1952085 () Bool)

(declare-fun e!2898282 () Bool)

(assert (=> d!1465056 (=> res!1952085 e!2898282)))

(assert (=> d!1465056 (= res!1952085 ((_ is Nil!51850) (toList!5182 lt!1810089)))))

(assert (=> d!1465056 (= (forall!10987 (toList!5182 lt!1810089) lambda!197565) e!2898282)))

(declare-fun b!4646110 () Bool)

(declare-fun e!2898283 () Bool)

(assert (=> b!4646110 (= e!2898282 e!2898283)))

(declare-fun res!1952086 () Bool)

(assert (=> b!4646110 (=> (not res!1952086) (not e!2898283))))

(assert (=> b!4646110 (= res!1952086 (dynLambda!21559 lambda!197565 (h!57980 (toList!5182 lt!1810089))))))

(declare-fun b!4646111 () Bool)

(assert (=> b!4646111 (= e!2898283 (forall!10987 (t!359070 (toList!5182 lt!1810089)) lambda!197565))))

(assert (= (and d!1465056 (not res!1952085)) b!4646110))

(assert (= (and b!4646110 res!1952086) b!4646111))

(declare-fun b_lambda!171133 () Bool)

(assert (=> (not b_lambda!171133) (not b!4646110)))

(declare-fun m!5511573 () Bool)

(assert (=> b!4646110 m!5511573))

(declare-fun m!5511575 () Bool)

(assert (=> b!4646111 m!5511575))

(assert (=> b!4645911 d!1465056))

(declare-fun d!1465058 () Bool)

(declare-fun res!1952091 () Bool)

(declare-fun e!2898288 () Bool)

(assert (=> d!1465058 (=> res!1952091 e!2898288)))

(assert (=> d!1465058 (= res!1952091 (and ((_ is Cons!51850) (toList!5182 lt!1810084)) (= (_1!29765 (h!57980 (toList!5182 lt!1810084))) key!4968)))))

(assert (=> d!1465058 (= (containsKey!2691 (toList!5182 lt!1810084) key!4968) e!2898288)))

(declare-fun b!4646116 () Bool)

(declare-fun e!2898289 () Bool)

(assert (=> b!4646116 (= e!2898288 e!2898289)))

(declare-fun res!1952092 () Bool)

(assert (=> b!4646116 (=> (not res!1952092) (not e!2898289))))

(assert (=> b!4646116 (= res!1952092 ((_ is Cons!51850) (toList!5182 lt!1810084)))))

(declare-fun b!4646117 () Bool)

(assert (=> b!4646117 (= e!2898289 (containsKey!2691 (t!359070 (toList!5182 lt!1810084)) key!4968))))

(assert (= (and d!1465058 (not res!1952091)) b!4646116))

(assert (= (and b!4646116 res!1952092) b!4646117))

(declare-fun m!5511577 () Bool)

(assert (=> b!4646117 m!5511577))

(assert (=> b!4645987 d!1465058))

(declare-fun d!1465060 () Bool)

(assert (=> d!1465060 (containsKey!2691 (toList!5182 lt!1810084) key!4968)))

(declare-fun lt!1810542 () Unit!116275)

(declare-fun choose!31904 (List!51974 K!13210) Unit!116275)

(assert (=> d!1465060 (= lt!1810542 (choose!31904 (toList!5182 lt!1810084) key!4968))))

(assert (=> d!1465060 (invariantList!1284 (toList!5182 lt!1810084))))

(assert (=> d!1465060 (= (lemmaInGetKeysListThenContainsKey!733 (toList!5182 lt!1810084) key!4968) lt!1810542)))

(declare-fun bs!1036631 () Bool)

(assert (= bs!1036631 d!1465060))

(assert (=> bs!1036631 m!5511143))

(declare-fun m!5511579 () Bool)

(assert (=> bs!1036631 m!5511579))

(declare-fun m!5511581 () Bool)

(assert (=> bs!1036631 m!5511581))

(assert (=> b!4645987 d!1465060))

(declare-fun b!4646128 () Bool)

(declare-fun e!2898295 () Option!11803)

(assert (=> b!4646128 (= e!2898295 (getValueByKey!1591 (t!359070 (toList!5182 lt!1810485)) (_1!29765 lt!1810091)))))

(declare-fun b!4646127 () Bool)

(declare-fun e!2898294 () Option!11803)

(assert (=> b!4646127 (= e!2898294 e!2898295)))

(declare-fun c!795003 () Bool)

(assert (=> b!4646127 (= c!795003 (and ((_ is Cons!51850) (toList!5182 lt!1810485)) (not (= (_1!29765 (h!57980 (toList!5182 lt!1810485))) (_1!29765 lt!1810091)))))))

(declare-fun b!4646129 () Bool)

(assert (=> b!4646129 (= e!2898295 None!11802)))

(declare-fun b!4646126 () Bool)

(assert (=> b!4646126 (= e!2898294 (Some!11802 (_2!29765 (h!57980 (toList!5182 lt!1810485)))))))

(declare-fun d!1465062 () Bool)

(declare-fun c!795002 () Bool)

(assert (=> d!1465062 (= c!795002 (and ((_ is Cons!51850) (toList!5182 lt!1810485)) (= (_1!29765 (h!57980 (toList!5182 lt!1810485))) (_1!29765 lt!1810091))))))

(assert (=> d!1465062 (= (getValueByKey!1591 (toList!5182 lt!1810485) (_1!29765 lt!1810091)) e!2898294)))

(assert (= (and d!1465062 c!795002) b!4646126))

(assert (= (and d!1465062 (not c!795002)) b!4646127))

(assert (= (and b!4646127 c!795003) b!4646128))

(assert (= (and b!4646127 (not c!795003)) b!4646129))

(declare-fun m!5511583 () Bool)

(assert (=> b!4646128 m!5511583))

(assert (=> b!4646045 d!1465062))

(declare-fun d!1465064 () Bool)

(declare-fun choose!31905 (Hashable!6021 K!13210) (_ BitVec 64))

(assert (=> d!1465064 (= (hash!3749 hashF!1389 key!4968) (choose!31905 hashF!1389 key!4968))))

(declare-fun bs!1036632 () Bool)

(assert (= bs!1036632 d!1465064))

(declare-fun m!5511585 () Bool)

(assert (=> bs!1036632 m!5511585))

(assert (=> d!1464990 d!1465064))

(declare-fun d!1465066 () Bool)

(declare-fun isEmpty!28991 (Option!11803) Bool)

(assert (=> d!1465066 (= (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810084) key!4968)) (not (isEmpty!28991 (getValueByKey!1591 (toList!5182 lt!1810084) key!4968))))))

(declare-fun bs!1036633 () Bool)

(assert (= bs!1036633 d!1465066))

(assert (=> bs!1036633 m!5511149))

(declare-fun m!5511587 () Bool)

(assert (=> bs!1036633 m!5511587))

(assert (=> b!4645984 d!1465066))

(declare-fun b!4646132 () Bool)

(declare-fun e!2898297 () Option!11803)

(assert (=> b!4646132 (= e!2898297 (getValueByKey!1591 (t!359070 (toList!5182 lt!1810084)) key!4968))))

(declare-fun b!4646131 () Bool)

(declare-fun e!2898296 () Option!11803)

(assert (=> b!4646131 (= e!2898296 e!2898297)))

(declare-fun c!795005 () Bool)

(assert (=> b!4646131 (= c!795005 (and ((_ is Cons!51850) (toList!5182 lt!1810084)) (not (= (_1!29765 (h!57980 (toList!5182 lt!1810084))) key!4968))))))

(declare-fun b!4646133 () Bool)

(assert (=> b!4646133 (= e!2898297 None!11802)))

(declare-fun b!4646130 () Bool)

(assert (=> b!4646130 (= e!2898296 (Some!11802 (_2!29765 (h!57980 (toList!5182 lt!1810084)))))))

(declare-fun d!1465068 () Bool)

(declare-fun c!795004 () Bool)

(assert (=> d!1465068 (= c!795004 (and ((_ is Cons!51850) (toList!5182 lt!1810084)) (= (_1!29765 (h!57980 (toList!5182 lt!1810084))) key!4968)))))

(assert (=> d!1465068 (= (getValueByKey!1591 (toList!5182 lt!1810084) key!4968) e!2898296)))

(assert (= (and d!1465068 c!795004) b!4646130))

(assert (= (and d!1465068 (not c!795004)) b!4646131))

(assert (= (and b!4646131 c!795005) b!4646132))

(assert (= (and b!4646131 (not c!795005)) b!4646133))

(declare-fun m!5511589 () Bool)

(assert (=> b!4646132 m!5511589))

(assert (=> b!4645984 d!1465068))

(declare-fun d!1465070 () Bool)

(declare-fun res!1952093 () Bool)

(declare-fun e!2898298 () Bool)

(assert (=> d!1465070 (=> res!1952093 e!2898298)))

(assert (=> d!1465070 (= res!1952093 ((_ is Nil!51850) (toList!5182 (ListMap!4518 Nil!51850))))))

(assert (=> d!1465070 (= (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197589) e!2898298)))

(declare-fun b!4646134 () Bool)

(declare-fun e!2898299 () Bool)

(assert (=> b!4646134 (= e!2898298 e!2898299)))

(declare-fun res!1952094 () Bool)

(assert (=> b!4646134 (=> (not res!1952094) (not e!2898299))))

(assert (=> b!4646134 (= res!1952094 (dynLambda!21559 lambda!197589 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))))))

(declare-fun b!4646135 () Bool)

(assert (=> b!4646135 (= e!2898299 (forall!10987 (t!359070 (toList!5182 (ListMap!4518 Nil!51850))) lambda!197589))))

(assert (= (and d!1465070 (not res!1952093)) b!4646134))

(assert (= (and b!4646134 res!1952094) b!4646135))

(declare-fun b_lambda!171135 () Bool)

(assert (=> (not b_lambda!171135) (not b!4646134)))

(declare-fun m!5511591 () Bool)

(assert (=> b!4646134 m!5511591))

(declare-fun m!5511593 () Bool)

(assert (=> b!4646135 m!5511593))

(assert (=> b!4646004 d!1465070))

(declare-fun d!1465072 () Bool)

(declare-fun res!1952095 () Bool)

(declare-fun e!2898300 () Bool)

(assert (=> d!1465072 (=> res!1952095 e!2898300)))

(assert (=> d!1465072 (= res!1952095 (not ((_ is Cons!51850) (t!359070 newBucket!224))))))

(assert (=> d!1465072 (= (noDuplicateKeys!1624 (t!359070 newBucket!224)) e!2898300)))

(declare-fun b!4646136 () Bool)

(declare-fun e!2898301 () Bool)

(assert (=> b!4646136 (= e!2898300 e!2898301)))

(declare-fun res!1952096 () Bool)

(assert (=> b!4646136 (=> (not res!1952096) (not e!2898301))))

(assert (=> b!4646136 (= res!1952096 (not (containsKey!2690 (t!359070 (t!359070 newBucket!224)) (_1!29765 (h!57980 (t!359070 newBucket!224))))))))

(declare-fun b!4646137 () Bool)

(assert (=> b!4646137 (= e!2898301 (noDuplicateKeys!1624 (t!359070 (t!359070 newBucket!224))))))

(assert (= (and d!1465072 (not res!1952095)) b!4646136))

(assert (= (and b!4646136 res!1952096) b!4646137))

(declare-fun m!5511595 () Bool)

(assert (=> b!4646136 m!5511595))

(declare-fun m!5511597 () Bool)

(assert (=> b!4646137 m!5511597))

(assert (=> b!4646048 d!1465072))

(declare-fun d!1465074 () Bool)

(declare-fun res!1952097 () Bool)

(declare-fun e!2898302 () Bool)

(assert (=> d!1465074 (=> res!1952097 e!2898302)))

(assert (=> d!1465074 (= res!1952097 ((_ is Nil!51850) (ite c!794978 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 newBucket!224))))))

(assert (=> d!1465074 (= (forall!10987 (ite c!794978 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 newBucket!224)) (ite c!794978 lambda!197579 lambda!197582)) e!2898302)))

(declare-fun b!4646138 () Bool)

(declare-fun e!2898303 () Bool)

(assert (=> b!4646138 (= e!2898302 e!2898303)))

(declare-fun res!1952098 () Bool)

(assert (=> b!4646138 (=> (not res!1952098) (not e!2898303))))

(assert (=> b!4646138 (= res!1952098 (dynLambda!21559 (ite c!794978 lambda!197579 lambda!197582) (h!57980 (ite c!794978 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 newBucket!224)))))))

(declare-fun b!4646139 () Bool)

(assert (=> b!4646139 (= e!2898303 (forall!10987 (t!359070 (ite c!794978 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 newBucket!224))) (ite c!794978 lambda!197579 lambda!197582)))))

(assert (= (and d!1465074 (not res!1952097)) b!4646138))

(assert (= (and b!4646138 res!1952098) b!4646139))

(declare-fun b_lambda!171137 () Bool)

(assert (=> (not b_lambda!171137) (not b!4646138)))

(declare-fun m!5511599 () Bool)

(assert (=> b!4646138 m!5511599))

(declare-fun m!5511601 () Bool)

(assert (=> b!4646139 m!5511601))

(assert (=> bm!324412 d!1465074))

(declare-fun d!1465076 () Bool)

(declare-fun e!2898304 () Bool)

(assert (=> d!1465076 e!2898304))

(declare-fun res!1952100 () Bool)

(assert (=> d!1465076 (=> (not res!1952100) (not e!2898304))))

(declare-fun lt!1810545 () ListMap!4517)

(assert (=> d!1465076 (= res!1952100 (contains!14991 lt!1810545 (_1!29765 lt!1810091)))))

(declare-fun lt!1810544 () List!51974)

(assert (=> d!1465076 (= lt!1810545 (ListMap!4518 lt!1810544))))

(declare-fun lt!1810543 () Unit!116275)

(declare-fun lt!1810546 () Unit!116275)

(assert (=> d!1465076 (= lt!1810543 lt!1810546)))

(assert (=> d!1465076 (= (getValueByKey!1591 lt!1810544 (_1!29765 lt!1810091)) (Some!11802 (_2!29765 lt!1810091)))))

(assert (=> d!1465076 (= lt!1810546 (lemmaContainsTupThenGetReturnValue!912 lt!1810544 (_1!29765 lt!1810091) (_2!29765 lt!1810091)))))

(assert (=> d!1465076 (= lt!1810544 (insertNoDuplicatedKeys!420 (toList!5182 (addToMapMapFromBucket!1081 lt!1810088 (ListMap!4518 Nil!51850))) (_1!29765 lt!1810091) (_2!29765 lt!1810091)))))

(assert (=> d!1465076 (= (+!1968 (addToMapMapFromBucket!1081 lt!1810088 (ListMap!4518 Nil!51850)) lt!1810091) lt!1810545)))

(declare-fun b!4646140 () Bool)

(declare-fun res!1952099 () Bool)

(assert (=> b!4646140 (=> (not res!1952099) (not e!2898304))))

(assert (=> b!4646140 (= res!1952099 (= (getValueByKey!1591 (toList!5182 lt!1810545) (_1!29765 lt!1810091)) (Some!11802 (_2!29765 lt!1810091))))))

(declare-fun b!4646141 () Bool)

(assert (=> b!4646141 (= e!2898304 (contains!14995 (toList!5182 lt!1810545) lt!1810091))))

(assert (= (and d!1465076 res!1952100) b!4646140))

(assert (= (and b!4646140 res!1952099) b!4646141))

(declare-fun m!5511603 () Bool)

(assert (=> d!1465076 m!5511603))

(declare-fun m!5511605 () Bool)

(assert (=> d!1465076 m!5511605))

(declare-fun m!5511607 () Bool)

(assert (=> d!1465076 m!5511607))

(declare-fun m!5511609 () Bool)

(assert (=> d!1465076 m!5511609))

(declare-fun m!5511611 () Bool)

(assert (=> b!4646140 m!5511611))

(declare-fun m!5511613 () Bool)

(assert (=> b!4646141 m!5511613))

(assert (=> d!1465018 d!1465076))

(assert (=> d!1465018 d!1465004))

(assert (=> d!1465018 d!1464988))

(declare-fun d!1465078 () Bool)

(assert (=> d!1465078 (eq!903 (addToMapMapFromBucket!1081 (Cons!51850 lt!1810091 lt!1810088) (ListMap!4518 Nil!51850)) (+!1968 (addToMapMapFromBucket!1081 lt!1810088 (ListMap!4518 Nil!51850)) lt!1810091))))

(assert (=> d!1465078 true))

(declare-fun _$30!128 () Unit!116275)

(assert (=> d!1465078 (= (choose!31900 lt!1810091 lt!1810088 (ListMap!4518 Nil!51850)) _$30!128)))

(declare-fun bs!1036634 () Bool)

(assert (= bs!1036634 d!1465078))

(assert (=> bs!1036634 m!5510853))

(assert (=> bs!1036634 m!5510849))

(assert (=> bs!1036634 m!5510849))

(assert (=> bs!1036634 m!5511433))

(assert (=> bs!1036634 m!5510853))

(assert (=> bs!1036634 m!5511433))

(assert (=> bs!1036634 m!5511435))

(assert (=> d!1465018 d!1465078))

(declare-fun d!1465086 () Bool)

(declare-fun res!1952101 () Bool)

(declare-fun e!2898309 () Bool)

(assert (=> d!1465086 (=> res!1952101 e!2898309)))

(assert (=> d!1465086 (= res!1952101 (not ((_ is Cons!51850) lt!1810088)))))

(assert (=> d!1465086 (= (noDuplicateKeys!1624 lt!1810088) e!2898309)))

(declare-fun b!4646150 () Bool)

(declare-fun e!2898310 () Bool)

(assert (=> b!4646150 (= e!2898309 e!2898310)))

(declare-fun res!1952102 () Bool)

(assert (=> b!4646150 (=> (not res!1952102) (not e!2898310))))

(assert (=> b!4646150 (= res!1952102 (not (containsKey!2690 (t!359070 lt!1810088) (_1!29765 (h!57980 lt!1810088)))))))

(declare-fun b!4646151 () Bool)

(assert (=> b!4646151 (= e!2898310 (noDuplicateKeys!1624 (t!359070 lt!1810088)))))

(assert (= (and d!1465086 (not res!1952101)) b!4646150))

(assert (= (and b!4646150 res!1952102) b!4646151))

(declare-fun m!5511623 () Bool)

(assert (=> b!4646150 m!5511623))

(declare-fun m!5511625 () Bool)

(assert (=> b!4646151 m!5511625))

(assert (=> d!1465018 d!1465086))

(declare-fun d!1465088 () Bool)

(assert (=> d!1465088 (= (eq!903 (addToMapMapFromBucket!1081 (Cons!51850 lt!1810091 lt!1810088) (ListMap!4518 Nil!51850)) (+!1968 (addToMapMapFromBucket!1081 lt!1810088 (ListMap!4518 Nil!51850)) lt!1810091)) (= (content!8975 (toList!5182 (addToMapMapFromBucket!1081 (Cons!51850 lt!1810091 lt!1810088) (ListMap!4518 Nil!51850)))) (content!8975 (toList!5182 (+!1968 (addToMapMapFromBucket!1081 lt!1810088 (ListMap!4518 Nil!51850)) lt!1810091)))))))

(declare-fun bs!1036635 () Bool)

(assert (= bs!1036635 d!1465088))

(assert (=> bs!1036635 m!5511411))

(declare-fun m!5511627 () Bool)

(assert (=> bs!1036635 m!5511627))

(assert (=> d!1465018 d!1465088))

(declare-fun d!1465090 () Bool)

(declare-fun res!1952103 () Bool)

(declare-fun e!2898311 () Bool)

(assert (=> d!1465090 (=> res!1952103 e!2898311)))

(assert (=> d!1465090 (= res!1952103 ((_ is Nil!51850) (ite c!794980 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810404))))))

(assert (=> d!1465090 (= (forall!10987 (ite c!794980 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810404)) (ite c!794980 lambda!197586 lambda!197589)) e!2898311)))

(declare-fun b!4646152 () Bool)

(declare-fun e!2898312 () Bool)

(assert (=> b!4646152 (= e!2898311 e!2898312)))

(declare-fun res!1952104 () Bool)

(assert (=> b!4646152 (=> (not res!1952104) (not e!2898312))))

(assert (=> b!4646152 (= res!1952104 (dynLambda!21559 (ite c!794980 lambda!197586 lambda!197589) (h!57980 (ite c!794980 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810404)))))))

(declare-fun b!4646153 () Bool)

(assert (=> b!4646153 (= e!2898312 (forall!10987 (t!359070 (ite c!794980 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810404))) (ite c!794980 lambda!197586 lambda!197589)))))

(assert (= (and d!1465090 (not res!1952103)) b!4646152))

(assert (= (and b!4646152 res!1952104) b!4646153))

(declare-fun b_lambda!171139 () Bool)

(assert (=> (not b_lambda!171139) (not b!4646152)))

(declare-fun m!5511629 () Bool)

(assert (=> b!4646152 m!5511629))

(declare-fun m!5511631 () Bool)

(assert (=> b!4646153 m!5511631))

(assert (=> bm!324419 d!1465090))

(declare-fun d!1465092 () Bool)

(declare-fun res!1952109 () Bool)

(declare-fun e!2898317 () Bool)

(assert (=> d!1465092 (=> res!1952109 e!2898317)))

(assert (=> d!1465092 (= res!1952109 (and ((_ is Cons!51850) (t!359070 oldBucket!40)) (= (_1!29765 (h!57980 (t!359070 oldBucket!40))) (_1!29765 (h!57980 oldBucket!40)))))))

(assert (=> d!1465092 (= (containsKey!2690 (t!359070 oldBucket!40) (_1!29765 (h!57980 oldBucket!40))) e!2898317)))

(declare-fun b!4646158 () Bool)

(declare-fun e!2898318 () Bool)

(assert (=> b!4646158 (= e!2898317 e!2898318)))

(declare-fun res!1952110 () Bool)

(assert (=> b!4646158 (=> (not res!1952110) (not e!2898318))))

(assert (=> b!4646158 (= res!1952110 ((_ is Cons!51850) (t!359070 oldBucket!40)))))

(declare-fun b!4646159 () Bool)

(assert (=> b!4646159 (= e!2898318 (containsKey!2690 (t!359070 (t!359070 oldBucket!40)) (_1!29765 (h!57980 oldBucket!40))))))

(assert (= (and d!1465092 (not res!1952109)) b!4646158))

(assert (= (and b!4646158 res!1952110) b!4646159))

(declare-fun m!5511633 () Bool)

(assert (=> b!4646159 m!5511633))

(assert (=> b!4645827 d!1465092))

(declare-fun d!1465094 () Bool)

(declare-fun res!1952111 () Bool)

(declare-fun e!2898319 () Bool)

(assert (=> d!1465094 (=> res!1952111 e!2898319)))

(assert (=> d!1465094 (= res!1952111 ((_ is Nil!51850) newBucket!224))))

(assert (=> d!1465094 (= (forall!10987 newBucket!224 lambda!197582) e!2898319)))

(declare-fun b!4646160 () Bool)

(declare-fun e!2898320 () Bool)

(assert (=> b!4646160 (= e!2898319 e!2898320)))

(declare-fun res!1952112 () Bool)

(assert (=> b!4646160 (=> (not res!1952112) (not e!2898320))))

(assert (=> b!4646160 (= res!1952112 (dynLambda!21559 lambda!197582 (h!57980 newBucket!224)))))

(declare-fun b!4646161 () Bool)

(assert (=> b!4646161 (= e!2898320 (forall!10987 (t!359070 newBucket!224) lambda!197582))))

(assert (= (and d!1465094 (not res!1952111)) b!4646160))

(assert (= (and b!4646160 res!1952112) b!4646161))

(declare-fun b_lambda!171141 () Bool)

(assert (=> (not b_lambda!171141) (not b!4646160)))

(declare-fun m!5511635 () Bool)

(assert (=> b!4646160 m!5511635))

(declare-fun m!5511637 () Bool)

(assert (=> b!4646161 m!5511637))

(assert (=> b!4645990 d!1465094))

(assert (=> b!4645990 d!1465024))

(declare-fun b!4646163 () Bool)

(declare-fun e!2898322 () Unit!116275)

(declare-fun lt!1810554 () Unit!116275)

(assert (=> b!4646163 (= e!2898322 lt!1810554)))

(declare-fun lt!1810548 () Unit!116275)

(assert (=> b!4646163 (= lt!1810548 (lemmaContainsKeyImpliesGetValueByKeyDefined!1493 (toList!5182 lt!1810362) (_1!29765 (h!57980 newBucket!224))))))

(assert (=> b!4646163 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810362) (_1!29765 (h!57980 newBucket!224))))))

(declare-fun lt!1810547 () Unit!116275)

(assert (=> b!4646163 (= lt!1810547 lt!1810548)))

(assert (=> b!4646163 (= lt!1810554 (lemmaInListThenGetKeysListContains!729 (toList!5182 lt!1810362) (_1!29765 (h!57980 newBucket!224))))))

(declare-fun call!324437 () Bool)

(assert (=> b!4646163 call!324437))

(declare-fun b!4646164 () Bool)

(declare-fun e!2898325 () List!51976)

(assert (=> b!4646164 (= e!2898325 (keys!18351 lt!1810362))))

(declare-fun b!4646165 () Bool)

(assert (=> b!4646165 (= e!2898325 (getKeysList!734 (toList!5182 lt!1810362)))))

(declare-fun b!4646166 () Bool)

(declare-fun e!2898324 () Bool)

(assert (=> b!4646166 (= e!2898324 (not (contains!14992 (keys!18351 lt!1810362) (_1!29765 (h!57980 newBucket!224)))))))

(declare-fun b!4646167 () Bool)

(declare-fun e!2898326 () Bool)

(declare-fun e!2898323 () Bool)

(assert (=> b!4646167 (= e!2898326 e!2898323)))

(declare-fun res!1952113 () Bool)

(assert (=> b!4646167 (=> (not res!1952113) (not e!2898323))))

(assert (=> b!4646167 (= res!1952113 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810362) (_1!29765 (h!57980 newBucket!224)))))))

(declare-fun b!4646162 () Bool)

(assert (=> b!4646162 (= e!2898323 (contains!14992 (keys!18351 lt!1810362) (_1!29765 (h!57980 newBucket!224))))))

(declare-fun d!1465096 () Bool)

(assert (=> d!1465096 e!2898326))

(declare-fun res!1952114 () Bool)

(assert (=> d!1465096 (=> res!1952114 e!2898326)))

(assert (=> d!1465096 (= res!1952114 e!2898324)))

(declare-fun res!1952115 () Bool)

(assert (=> d!1465096 (=> (not res!1952115) (not e!2898324))))

(declare-fun lt!1810549 () Bool)

(assert (=> d!1465096 (= res!1952115 (not lt!1810549))))

(declare-fun lt!1810553 () Bool)

(assert (=> d!1465096 (= lt!1810549 lt!1810553)))

(declare-fun lt!1810551 () Unit!116275)

(assert (=> d!1465096 (= lt!1810551 e!2898322)))

(declare-fun c!795011 () Bool)

(assert (=> d!1465096 (= c!795011 lt!1810553)))

(assert (=> d!1465096 (= lt!1810553 (containsKey!2691 (toList!5182 lt!1810362) (_1!29765 (h!57980 newBucket!224))))))

(assert (=> d!1465096 (= (contains!14991 lt!1810362 (_1!29765 (h!57980 newBucket!224))) lt!1810549)))

(declare-fun b!4646168 () Bool)

(declare-fun e!2898321 () Unit!116275)

(assert (=> b!4646168 (= e!2898322 e!2898321)))

(declare-fun c!795012 () Bool)

(assert (=> b!4646168 (= c!795012 call!324437)))

(declare-fun b!4646169 () Bool)

(declare-fun Unit!116408 () Unit!116275)

(assert (=> b!4646169 (= e!2898321 Unit!116408)))

(declare-fun bm!324432 () Bool)

(assert (=> bm!324432 (= call!324437 (contains!14992 e!2898325 (_1!29765 (h!57980 newBucket!224))))))

(declare-fun c!795010 () Bool)

(assert (=> bm!324432 (= c!795010 c!795011)))

(declare-fun b!4646170 () Bool)

(assert (=> b!4646170 false))

(declare-fun lt!1810552 () Unit!116275)

(declare-fun lt!1810550 () Unit!116275)

(assert (=> b!4646170 (= lt!1810552 lt!1810550)))

(assert (=> b!4646170 (containsKey!2691 (toList!5182 lt!1810362) (_1!29765 (h!57980 newBucket!224)))))

(assert (=> b!4646170 (= lt!1810550 (lemmaInGetKeysListThenContainsKey!733 (toList!5182 lt!1810362) (_1!29765 (h!57980 newBucket!224))))))

(declare-fun Unit!116410 () Unit!116275)

(assert (=> b!4646170 (= e!2898321 Unit!116410)))

(assert (= (and d!1465096 c!795011) b!4646163))

(assert (= (and d!1465096 (not c!795011)) b!4646168))

(assert (= (and b!4646168 c!795012) b!4646170))

(assert (= (and b!4646168 (not c!795012)) b!4646169))

(assert (= (or b!4646163 b!4646168) bm!324432))

(assert (= (and bm!324432 c!795010) b!4646165))

(assert (= (and bm!324432 (not c!795010)) b!4646164))

(assert (= (and d!1465096 res!1952115) b!4646166))

(assert (= (and d!1465096 (not res!1952114)) b!4646167))

(assert (= (and b!4646167 res!1952113) b!4646162))

(declare-fun m!5511641 () Bool)

(assert (=> b!4646170 m!5511641))

(declare-fun m!5511643 () Bool)

(assert (=> b!4646170 m!5511643))

(declare-fun m!5511645 () Bool)

(assert (=> bm!324432 m!5511645))

(declare-fun m!5511647 () Bool)

(assert (=> b!4646167 m!5511647))

(assert (=> b!4646167 m!5511647))

(declare-fun m!5511649 () Bool)

(assert (=> b!4646167 m!5511649))

(declare-fun m!5511651 () Bool)

(assert (=> b!4646162 m!5511651))

(assert (=> b!4646162 m!5511651))

(declare-fun m!5511653 () Bool)

(assert (=> b!4646162 m!5511653))

(declare-fun m!5511655 () Bool)

(assert (=> b!4646165 m!5511655))

(assert (=> b!4646164 m!5511651))

(assert (=> b!4646166 m!5511651))

(assert (=> b!4646166 m!5511651))

(assert (=> b!4646166 m!5511653))

(assert (=> d!1465096 m!5511641))

(declare-fun m!5511657 () Bool)

(assert (=> b!4646163 m!5511657))

(assert (=> b!4646163 m!5511647))

(assert (=> b!4646163 m!5511647))

(assert (=> b!4646163 m!5511649))

(declare-fun m!5511659 () Bool)

(assert (=> b!4646163 m!5511659))

(assert (=> b!4645990 d!1465096))

(declare-fun d!1465100 () Bool)

(declare-fun res!1952118 () Bool)

(declare-fun e!2898329 () Bool)

(assert (=> d!1465100 (=> res!1952118 e!2898329)))

(assert (=> d!1465100 (= res!1952118 ((_ is Nil!51850) (toList!5182 lt!1810362)))))

(assert (=> d!1465100 (= (forall!10987 (toList!5182 lt!1810362) lambda!197582) e!2898329)))

(declare-fun b!4646173 () Bool)

(declare-fun e!2898330 () Bool)

(assert (=> b!4646173 (= e!2898329 e!2898330)))

(declare-fun res!1952119 () Bool)

(assert (=> b!4646173 (=> (not res!1952119) (not e!2898330))))

(assert (=> b!4646173 (= res!1952119 (dynLambda!21559 lambda!197582 (h!57980 (toList!5182 lt!1810362))))))

(declare-fun b!4646174 () Bool)

(assert (=> b!4646174 (= e!2898330 (forall!10987 (t!359070 (toList!5182 lt!1810362)) lambda!197582))))

(assert (= (and d!1465100 (not res!1952118)) b!4646173))

(assert (= (and b!4646173 res!1952119) b!4646174))

(declare-fun b_lambda!171143 () Bool)

(assert (=> (not b_lambda!171143) (not b!4646173)))

(declare-fun m!5511661 () Bool)

(assert (=> b!4646173 m!5511661))

(declare-fun m!5511663 () Bool)

(assert (=> b!4646174 m!5511663))

(assert (=> b!4645990 d!1465100))

(declare-fun d!1465102 () Bool)

(assert (=> d!1465102 (dynLambda!21559 lambda!197582 (h!57980 newBucket!224))))

(declare-fun lt!1810555 () Unit!116275)

(assert (=> d!1465102 (= lt!1810555 (choose!31901 (toList!5182 lt!1810362) lambda!197582 (h!57980 newBucket!224)))))

(declare-fun e!2898331 () Bool)

(assert (=> d!1465102 e!2898331))

(declare-fun res!1952120 () Bool)

(assert (=> d!1465102 (=> (not res!1952120) (not e!2898331))))

(assert (=> d!1465102 (= res!1952120 (forall!10987 (toList!5182 lt!1810362) lambda!197582))))

(assert (=> d!1465102 (= (forallContained!3202 (toList!5182 lt!1810362) lambda!197582 (h!57980 newBucket!224)) lt!1810555)))

(declare-fun b!4646175 () Bool)

(assert (=> b!4646175 (= e!2898331 (contains!14995 (toList!5182 lt!1810362) (h!57980 newBucket!224)))))

(assert (= (and d!1465102 res!1952120) b!4646175))

(declare-fun b_lambda!171145 () Bool)

(assert (=> (not b_lambda!171145) (not d!1465102)))

(assert (=> d!1465102 m!5511635))

(declare-fun m!5511665 () Bool)

(assert (=> d!1465102 m!5511665))

(assert (=> d!1465102 m!5511231))

(declare-fun m!5511667 () Bool)

(assert (=> b!4646175 m!5511667))

(assert (=> b!4645990 d!1465102))

(declare-fun b!4646177 () Bool)

(declare-fun e!2898333 () Unit!116275)

(declare-fun lt!1810563 () Unit!116275)

(assert (=> b!4646177 (= e!2898333 lt!1810563)))

(declare-fun lt!1810557 () Unit!116275)

(assert (=> b!4646177 (= lt!1810557 (lemmaContainsKeyImpliesGetValueByKeyDefined!1493 (toList!5182 lt!1810377) (_1!29765 (h!57980 newBucket!224))))))

(assert (=> b!4646177 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810377) (_1!29765 (h!57980 newBucket!224))))))

(declare-fun lt!1810556 () Unit!116275)

(assert (=> b!4646177 (= lt!1810556 lt!1810557)))

(assert (=> b!4646177 (= lt!1810563 (lemmaInListThenGetKeysListContains!729 (toList!5182 lt!1810377) (_1!29765 (h!57980 newBucket!224))))))

(declare-fun call!324438 () Bool)

(assert (=> b!4646177 call!324438))

(declare-fun b!4646178 () Bool)

(declare-fun e!2898336 () List!51976)

(assert (=> b!4646178 (= e!2898336 (keys!18351 lt!1810377))))

(declare-fun b!4646179 () Bool)

(assert (=> b!4646179 (= e!2898336 (getKeysList!734 (toList!5182 lt!1810377)))))

(declare-fun b!4646180 () Bool)

(declare-fun e!2898335 () Bool)

(assert (=> b!4646180 (= e!2898335 (not (contains!14992 (keys!18351 lt!1810377) (_1!29765 (h!57980 newBucket!224)))))))

(declare-fun b!4646181 () Bool)

(declare-fun e!2898337 () Bool)

(declare-fun e!2898334 () Bool)

(assert (=> b!4646181 (= e!2898337 e!2898334)))

(declare-fun res!1952121 () Bool)

(assert (=> b!4646181 (=> (not res!1952121) (not e!2898334))))

(assert (=> b!4646181 (= res!1952121 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810377) (_1!29765 (h!57980 newBucket!224)))))))

(declare-fun b!4646176 () Bool)

(assert (=> b!4646176 (= e!2898334 (contains!14992 (keys!18351 lt!1810377) (_1!29765 (h!57980 newBucket!224))))))

(declare-fun d!1465104 () Bool)

(assert (=> d!1465104 e!2898337))

(declare-fun res!1952122 () Bool)

(assert (=> d!1465104 (=> res!1952122 e!2898337)))

(assert (=> d!1465104 (= res!1952122 e!2898335)))

(declare-fun res!1952123 () Bool)

(assert (=> d!1465104 (=> (not res!1952123) (not e!2898335))))

(declare-fun lt!1810558 () Bool)

(assert (=> d!1465104 (= res!1952123 (not lt!1810558))))

(declare-fun lt!1810562 () Bool)

(assert (=> d!1465104 (= lt!1810558 lt!1810562)))

(declare-fun lt!1810560 () Unit!116275)

(assert (=> d!1465104 (= lt!1810560 e!2898333)))

(declare-fun c!795014 () Bool)

(assert (=> d!1465104 (= c!795014 lt!1810562)))

(assert (=> d!1465104 (= lt!1810562 (containsKey!2691 (toList!5182 lt!1810377) (_1!29765 (h!57980 newBucket!224))))))

(assert (=> d!1465104 (= (contains!14991 lt!1810377 (_1!29765 (h!57980 newBucket!224))) lt!1810558)))

(declare-fun b!4646182 () Bool)

(declare-fun e!2898332 () Unit!116275)

(assert (=> b!4646182 (= e!2898333 e!2898332)))

(declare-fun c!795015 () Bool)

(assert (=> b!4646182 (= c!795015 call!324438)))

(declare-fun b!4646183 () Bool)

(declare-fun Unit!116412 () Unit!116275)

(assert (=> b!4646183 (= e!2898332 Unit!116412)))

(declare-fun bm!324433 () Bool)

(assert (=> bm!324433 (= call!324438 (contains!14992 e!2898336 (_1!29765 (h!57980 newBucket!224))))))

(declare-fun c!795013 () Bool)

(assert (=> bm!324433 (= c!795013 c!795014)))

(declare-fun b!4646184 () Bool)

(assert (=> b!4646184 false))

(declare-fun lt!1810561 () Unit!116275)

(declare-fun lt!1810559 () Unit!116275)

(assert (=> b!4646184 (= lt!1810561 lt!1810559)))

(assert (=> b!4646184 (containsKey!2691 (toList!5182 lt!1810377) (_1!29765 (h!57980 newBucket!224)))))

(assert (=> b!4646184 (= lt!1810559 (lemmaInGetKeysListThenContainsKey!733 (toList!5182 lt!1810377) (_1!29765 (h!57980 newBucket!224))))))

(declare-fun Unit!116413 () Unit!116275)

(assert (=> b!4646184 (= e!2898332 Unit!116413)))

(assert (= (and d!1465104 c!795014) b!4646177))

(assert (= (and d!1465104 (not c!795014)) b!4646182))

(assert (= (and b!4646182 c!795015) b!4646184))

(assert (= (and b!4646182 (not c!795015)) b!4646183))

(assert (= (or b!4646177 b!4646182) bm!324433))

(assert (= (and bm!324433 c!795013) b!4646179))

(assert (= (and bm!324433 (not c!795013)) b!4646178))

(assert (= (and d!1465104 res!1952123) b!4646180))

(assert (= (and d!1465104 (not res!1952122)) b!4646181))

(assert (= (and b!4646181 res!1952121) b!4646176))

(declare-fun m!5511669 () Bool)

(assert (=> b!4646184 m!5511669))

(declare-fun m!5511671 () Bool)

(assert (=> b!4646184 m!5511671))

(declare-fun m!5511673 () Bool)

(assert (=> bm!324433 m!5511673))

(declare-fun m!5511675 () Bool)

(assert (=> b!4646181 m!5511675))

(assert (=> b!4646181 m!5511675))

(declare-fun m!5511677 () Bool)

(assert (=> b!4646181 m!5511677))

(declare-fun m!5511679 () Bool)

(assert (=> b!4646176 m!5511679))

(assert (=> b!4646176 m!5511679))

(declare-fun m!5511681 () Bool)

(assert (=> b!4646176 m!5511681))

(declare-fun m!5511683 () Bool)

(assert (=> b!4646179 m!5511683))

(assert (=> b!4646178 m!5511679))

(assert (=> b!4646180 m!5511679))

(assert (=> b!4646180 m!5511679))

(assert (=> b!4646180 m!5511681))

(assert (=> d!1465104 m!5511669))

(declare-fun m!5511685 () Bool)

(assert (=> b!4646177 m!5511685))

(assert (=> b!4646177 m!5511675))

(assert (=> b!4646177 m!5511675))

(assert (=> b!4646177 m!5511677))

(declare-fun m!5511687 () Bool)

(assert (=> b!4646177 m!5511687))

(assert (=> b!4645990 d!1465104))

(declare-fun bs!1036636 () Bool)

(declare-fun d!1465106 () Bool)

(assert (= bs!1036636 (and d!1465106 b!4646029)))

(declare-fun lambda!197612 () Int)

(assert (=> bs!1036636 (= (= lt!1810377 lt!1810445) (= lambda!197612 lambda!197597))))

(declare-fun bs!1036637 () Bool)

(assert (= bs!1036637 (and d!1465106 b!4645912)))

(assert (=> bs!1036637 (= (= lt!1810377 lt!1810089) (= lambda!197612 lambda!197562))))

(declare-fun bs!1036638 () Bool)

(assert (= bs!1036638 (and d!1465106 b!4645990)))

(assert (=> bs!1036638 (= lambda!197612 lambda!197582)))

(declare-fun bs!1036639 () Bool)

(assert (= bs!1036639 (and d!1465106 b!4646034)))

(assert (=> bs!1036639 (= (= lt!1810377 (ListMap!4518 Nil!51850)) (= lambda!197612 lambda!197600))))

(declare-fun bs!1036640 () Bool)

(assert (= bs!1036640 (and d!1465106 b!4646000)))

(assert (=> bs!1036640 (= (= lt!1810377 lt!1810419) (= lambda!197612 lambda!197589))))

(assert (=> bs!1036639 (= (= lt!1810377 lt!1810466) (= lambda!197612 lambda!197601))))

(declare-fun bs!1036641 () Bool)

(assert (= bs!1036641 (and d!1465106 d!1464936)))

(assert (=> bs!1036641 (= (= lt!1810377 lt!1810261) (= lambda!197612 lambda!197565))))

(declare-fun bs!1036643 () Bool)

(assert (= bs!1036643 (and d!1465106 b!4645910)))

(assert (=> bs!1036643 (= (= lt!1810377 lt!1810089) (= lambda!197612 lambda!197563))))

(declare-fun bs!1036644 () Bool)

(assert (= bs!1036644 (and d!1465106 d!1464988)))

(assert (=> bs!1036644 (= (= lt!1810377 lt!1810403) (= lambda!197612 lambda!197591))))

(declare-fun bs!1036645 () Bool)

(assert (= bs!1036645 (and d!1465106 b!4645992)))

(assert (=> bs!1036645 (= (= lt!1810377 (ListMap!4518 Nil!51850)) (= lambda!197612 lambda!197579))))

(declare-fun bs!1036646 () Bool)

(assert (= bs!1036646 (and d!1465106 d!1465038)))

(assert (=> bs!1036646 (= (= lt!1810377 lt!1810466) (= lambda!197612 lambda!197607))))

(declare-fun bs!1036647 () Bool)

(assert (= bs!1036647 (and d!1465106 d!1465004)))

(assert (=> bs!1036647 (= (= lt!1810377 lt!1810429) (= lambda!197612 lambda!197598))))

(assert (=> bs!1036640 (= (= lt!1810377 (ListMap!4518 Nil!51850)) (= lambda!197612 lambda!197587))))

(declare-fun bs!1036648 () Bool)

(assert (= bs!1036648 (and d!1465106 b!4646002)))

(assert (=> bs!1036648 (= (= lt!1810377 (ListMap!4518 Nil!51850)) (= lambda!197612 lambda!197586))))

(declare-fun bs!1036649 () Bool)

(assert (= bs!1036649 (and d!1465106 d!1464922)))

(assert (=> bs!1036649 (not (= lambda!197612 lambda!197489))))

(declare-fun bs!1036650 () Bool)

(assert (= bs!1036650 (and d!1465106 d!1464982)))

(assert (=> bs!1036650 (= (= lt!1810377 lt!1810361) (= lambda!197612 lambda!197583))))

(declare-fun bs!1036651 () Bool)

(assert (= bs!1036651 (and d!1465106 b!4646095)))

(assert (=> bs!1036651 (= (= lt!1810377 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197612 lambda!197609))))

(declare-fun bs!1036652 () Bool)

(assert (= bs!1036652 (and d!1465106 d!1465008)))

(assert (=> bs!1036652 (= (= lt!1810377 lt!1810450) (= lambda!197612 lambda!197602))))

(assert (=> bs!1036638 (= (= lt!1810377 (ListMap!4518 Nil!51850)) (= lambda!197612 lambda!197581))))

(declare-fun bs!1036653 () Bool)

(assert (= bs!1036653 (and d!1465106 b!4646031)))

(assert (=> bs!1036653 (= (= lt!1810377 (ListMap!4518 Nil!51850)) (= lambda!197612 lambda!197595))))

(declare-fun bs!1036654 () Bool)

(assert (= bs!1036654 (and d!1465106 d!1465044)))

(assert (=> bs!1036654 (= (= lt!1810377 lt!1810516) (= lambda!197612 lambda!197611))))

(assert (=> bs!1036636 (= (= lt!1810377 (ListMap!4518 Nil!51850)) (= lambda!197612 lambda!197596))))

(assert (=> bs!1036651 (= (= lt!1810377 lt!1810532) (= lambda!197612 lambda!197610))))

(declare-fun bs!1036655 () Bool)

(assert (= bs!1036655 (and d!1465106 b!4646097)))

(assert (=> bs!1036655 (= (= lt!1810377 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197612 lambda!197608))))

(declare-fun bs!1036656 () Bool)

(assert (= bs!1036656 (and d!1465106 d!1464926)))

(assert (=> bs!1036656 (not (= lambda!197612 lambda!197490))))

(assert (=> bs!1036643 (= (= lt!1810377 lt!1810277) (= lambda!197612 lambda!197564))))

(declare-fun bs!1036657 () Bool)

(assert (= bs!1036657 (and d!1465106 b!4646036)))

(assert (=> bs!1036657 (= (= lt!1810377 (ListMap!4518 Nil!51850)) (= lambda!197612 lambda!197599))))

(assert (=> d!1465106 true))

(assert (=> d!1465106 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197612)))

(declare-fun lt!1810566 () Unit!116275)

(assert (=> d!1465106 (= lt!1810566 (choose!31902 (ListMap!4518 Nil!51850) lt!1810377 (_1!29765 (h!57980 newBucket!224)) (_2!29765 (h!57980 newBucket!224))))))

(assert (=> d!1465106 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (tuple2!52943 (_1!29765 (h!57980 newBucket!224)) (_2!29765 (h!57980 newBucket!224))))) lambda!197612)))

(assert (=> d!1465106 (= (addForallContainsKeyThenBeforeAdding!583 (ListMap!4518 Nil!51850) lt!1810377 (_1!29765 (h!57980 newBucket!224)) (_2!29765 (h!57980 newBucket!224))) lt!1810566)))

(declare-fun bs!1036658 () Bool)

(assert (= bs!1036658 d!1465106))

(declare-fun m!5511693 () Bool)

(assert (=> bs!1036658 m!5511693))

(declare-fun m!5511695 () Bool)

(assert (=> bs!1036658 m!5511695))

(declare-fun m!5511697 () Bool)

(assert (=> bs!1036658 m!5511697))

(declare-fun m!5511699 () Bool)

(assert (=> bs!1036658 m!5511699))

(assert (=> b!4645990 d!1465106))

(declare-fun d!1465110 () Bool)

(declare-fun res!1952128 () Bool)

(declare-fun e!2898342 () Bool)

(assert (=> d!1465110 (=> res!1952128 e!2898342)))

(assert (=> d!1465110 (= res!1952128 ((_ is Nil!51850) (toList!5182 (ListMap!4518 Nil!51850))))))

(assert (=> d!1465110 (= (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197581) e!2898342)))

(declare-fun b!4646189 () Bool)

(declare-fun e!2898343 () Bool)

(assert (=> b!4646189 (= e!2898342 e!2898343)))

(declare-fun res!1952129 () Bool)

(assert (=> b!4646189 (=> (not res!1952129) (not e!2898343))))

(assert (=> b!4646189 (= res!1952129 (dynLambda!21559 lambda!197581 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))))))

(declare-fun b!4646190 () Bool)

(assert (=> b!4646190 (= e!2898343 (forall!10987 (t!359070 (toList!5182 (ListMap!4518 Nil!51850))) lambda!197581))))

(assert (= (and d!1465110 (not res!1952128)) b!4646189))

(assert (= (and b!4646189 res!1952129) b!4646190))

(declare-fun b_lambda!171147 () Bool)

(assert (=> (not b_lambda!171147) (not b!4646189)))

(declare-fun m!5511701 () Bool)

(assert (=> b!4646189 m!5511701))

(declare-fun m!5511703 () Bool)

(assert (=> b!4646190 m!5511703))

(assert (=> b!4645990 d!1465110))

(declare-fun bs!1036659 () Bool)

(declare-fun b!4646193 () Bool)

(assert (= bs!1036659 (and b!4646193 b!4646029)))

(declare-fun lambda!197613 () Int)

(assert (=> bs!1036659 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810445) (= lambda!197613 lambda!197597))))

(declare-fun bs!1036660 () Bool)

(assert (= bs!1036660 (and b!4646193 b!4645912)))

(assert (=> bs!1036660 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810089) (= lambda!197613 lambda!197562))))

(declare-fun bs!1036661 () Bool)

(assert (= bs!1036661 (and b!4646193 b!4645990)))

(assert (=> bs!1036661 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810377) (= lambda!197613 lambda!197582))))

(declare-fun bs!1036662 () Bool)

(assert (= bs!1036662 (and b!4646193 b!4646034)))

(assert (=> bs!1036662 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197613 lambda!197600))))

(declare-fun bs!1036663 () Bool)

(assert (= bs!1036663 (and b!4646193 b!4646000)))

(assert (=> bs!1036663 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810419) (= lambda!197613 lambda!197589))))

(assert (=> bs!1036662 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810466) (= lambda!197613 lambda!197601))))

(declare-fun bs!1036664 () Bool)

(assert (= bs!1036664 (and b!4646193 d!1464936)))

(assert (=> bs!1036664 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810261) (= lambda!197613 lambda!197565))))

(declare-fun bs!1036665 () Bool)

(assert (= bs!1036665 (and b!4646193 b!4645910)))

(assert (=> bs!1036665 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810089) (= lambda!197613 lambda!197563))))

(declare-fun bs!1036666 () Bool)

(assert (= bs!1036666 (and b!4646193 d!1464988)))

(assert (=> bs!1036666 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810403) (= lambda!197613 lambda!197591))))

(declare-fun bs!1036667 () Bool)

(assert (= bs!1036667 (and b!4646193 b!4645992)))

(assert (=> bs!1036667 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197613 lambda!197579))))

(declare-fun bs!1036668 () Bool)

(assert (= bs!1036668 (and b!4646193 d!1465038)))

(assert (=> bs!1036668 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810466) (= lambda!197613 lambda!197607))))

(declare-fun bs!1036669 () Bool)

(assert (= bs!1036669 (and b!4646193 d!1465004)))

(assert (=> bs!1036669 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810429) (= lambda!197613 lambda!197598))))

(assert (=> bs!1036663 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197613 lambda!197587))))

(declare-fun bs!1036670 () Bool)

(assert (= bs!1036670 (and b!4646193 b!4646002)))

(assert (=> bs!1036670 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197613 lambda!197586))))

(declare-fun bs!1036671 () Bool)

(assert (= bs!1036671 (and b!4646193 d!1464922)))

(assert (=> bs!1036671 (not (= lambda!197613 lambda!197489))))

(declare-fun bs!1036672 () Bool)

(assert (= bs!1036672 (and b!4646193 d!1464982)))

(assert (=> bs!1036672 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810361) (= lambda!197613 lambda!197583))))

(declare-fun bs!1036673 () Bool)

(assert (= bs!1036673 (and b!4646193 b!4646095)))

(assert (=> bs!1036673 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197613 lambda!197609))))

(declare-fun bs!1036674 () Bool)

(assert (= bs!1036674 (and b!4646193 d!1465008)))

(assert (=> bs!1036674 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810450) (= lambda!197613 lambda!197602))))

(assert (=> bs!1036661 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197613 lambda!197581))))

(declare-fun bs!1036675 () Bool)

(assert (= bs!1036675 (and b!4646193 b!4646031)))

(assert (=> bs!1036675 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197613 lambda!197595))))

(declare-fun bs!1036676 () Bool)

(assert (= bs!1036676 (and b!4646193 d!1465106)))

(assert (=> bs!1036676 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810377) (= lambda!197613 lambda!197612))))

(declare-fun bs!1036677 () Bool)

(assert (= bs!1036677 (and b!4646193 d!1465044)))

(assert (=> bs!1036677 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810516) (= lambda!197613 lambda!197611))))

(assert (=> bs!1036659 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197613 lambda!197596))))

(assert (=> bs!1036673 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810532) (= lambda!197613 lambda!197610))))

(declare-fun bs!1036679 () Bool)

(assert (= bs!1036679 (and b!4646193 b!4646097)))

(assert (=> bs!1036679 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197613 lambda!197608))))

(declare-fun bs!1036680 () Bool)

(assert (= bs!1036680 (and b!4646193 d!1464926)))

(assert (=> bs!1036680 (not (= lambda!197613 lambda!197490))))

(assert (=> bs!1036665 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810277) (= lambda!197613 lambda!197564))))

(declare-fun bs!1036681 () Bool)

(assert (= bs!1036681 (and b!4646193 b!4646036)))

(assert (=> bs!1036681 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197613 lambda!197599))))

(assert (=> b!4646193 true))

(declare-fun bs!1036682 () Bool)

(declare-fun b!4646191 () Bool)

(assert (= bs!1036682 (and b!4646191 b!4646029)))

(declare-fun lambda!197614 () Int)

(assert (=> bs!1036682 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810445) (= lambda!197614 lambda!197597))))

(declare-fun bs!1036683 () Bool)

(assert (= bs!1036683 (and b!4646191 b!4645912)))

(assert (=> bs!1036683 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810089) (= lambda!197614 lambda!197562))))

(declare-fun bs!1036684 () Bool)

(assert (= bs!1036684 (and b!4646191 b!4645990)))

(assert (=> bs!1036684 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810377) (= lambda!197614 lambda!197582))))

(declare-fun bs!1036685 () Bool)

(assert (= bs!1036685 (and b!4646191 b!4646034)))

(assert (=> bs!1036685 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197614 lambda!197600))))

(declare-fun bs!1036686 () Bool)

(assert (= bs!1036686 (and b!4646191 b!4646000)))

(assert (=> bs!1036686 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810419) (= lambda!197614 lambda!197589))))

(assert (=> bs!1036685 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810466) (= lambda!197614 lambda!197601))))

(declare-fun bs!1036687 () Bool)

(assert (= bs!1036687 (and b!4646191 d!1464936)))

(assert (=> bs!1036687 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810261) (= lambda!197614 lambda!197565))))

(declare-fun bs!1036688 () Bool)

(assert (= bs!1036688 (and b!4646191 b!4645910)))

(assert (=> bs!1036688 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810089) (= lambda!197614 lambda!197563))))

(declare-fun bs!1036689 () Bool)

(assert (= bs!1036689 (and b!4646191 d!1464988)))

(assert (=> bs!1036689 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810403) (= lambda!197614 lambda!197591))))

(declare-fun bs!1036690 () Bool)

(assert (= bs!1036690 (and b!4646191 b!4645992)))

(assert (=> bs!1036690 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197614 lambda!197579))))

(declare-fun bs!1036691 () Bool)

(assert (= bs!1036691 (and b!4646191 d!1465038)))

(assert (=> bs!1036691 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810466) (= lambda!197614 lambda!197607))))

(declare-fun bs!1036692 () Bool)

(assert (= bs!1036692 (and b!4646191 d!1465004)))

(assert (=> bs!1036692 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810429) (= lambda!197614 lambda!197598))))

(assert (=> bs!1036686 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197614 lambda!197587))))

(declare-fun bs!1036693 () Bool)

(assert (= bs!1036693 (and b!4646191 b!4646002)))

(assert (=> bs!1036693 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197614 lambda!197586))))

(declare-fun bs!1036694 () Bool)

(assert (= bs!1036694 (and b!4646191 d!1464922)))

(assert (=> bs!1036694 (not (= lambda!197614 lambda!197489))))

(declare-fun bs!1036695 () Bool)

(assert (= bs!1036695 (and b!4646191 d!1464982)))

(assert (=> bs!1036695 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810361) (= lambda!197614 lambda!197583))))

(declare-fun bs!1036696 () Bool)

(assert (= bs!1036696 (and b!4646191 b!4646095)))

(assert (=> bs!1036696 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197614 lambda!197609))))

(assert (=> bs!1036684 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197614 lambda!197581))))

(declare-fun bs!1036697 () Bool)

(assert (= bs!1036697 (and b!4646191 b!4646031)))

(assert (=> bs!1036697 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197614 lambda!197595))))

(declare-fun bs!1036698 () Bool)

(assert (= bs!1036698 (and b!4646191 d!1465106)))

(assert (=> bs!1036698 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810377) (= lambda!197614 lambda!197612))))

(declare-fun bs!1036699 () Bool)

(assert (= bs!1036699 (and b!4646191 d!1465044)))

(assert (=> bs!1036699 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810516) (= lambda!197614 lambda!197611))))

(assert (=> bs!1036682 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197614 lambda!197596))))

(assert (=> bs!1036696 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810532) (= lambda!197614 lambda!197610))))

(declare-fun bs!1036700 () Bool)

(assert (= bs!1036700 (and b!4646191 b!4646097)))

(assert (=> bs!1036700 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197614 lambda!197608))))

(declare-fun bs!1036701 () Bool)

(assert (= bs!1036701 (and b!4646191 d!1464926)))

(assert (=> bs!1036701 (not (= lambda!197614 lambda!197490))))

(declare-fun bs!1036702 () Bool)

(assert (= bs!1036702 (and b!4646191 d!1465008)))

(assert (=> bs!1036702 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810450) (= lambda!197614 lambda!197602))))

(declare-fun bs!1036703 () Bool)

(assert (= bs!1036703 (and b!4646191 b!4646193)))

(assert (=> bs!1036703 (= lambda!197614 lambda!197613)))

(assert (=> bs!1036688 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810277) (= lambda!197614 lambda!197564))))

(declare-fun bs!1036704 () Bool)

(assert (= bs!1036704 (and b!4646191 b!4646036)))

(assert (=> bs!1036704 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (ListMap!4518 Nil!51850)) (= lambda!197614 lambda!197599))))

(assert (=> b!4646191 true))

(declare-fun lt!1810584 () ListMap!4517)

(declare-fun lambda!197615 () Int)

(assert (=> bs!1036682 (= (= lt!1810584 lt!1810445) (= lambda!197615 lambda!197597))))

(assert (=> bs!1036683 (= (= lt!1810584 lt!1810089) (= lambda!197615 lambda!197562))))

(assert (=> bs!1036684 (= (= lt!1810584 lt!1810377) (= lambda!197615 lambda!197582))))

(assert (=> bs!1036685 (= (= lt!1810584 (ListMap!4518 Nil!51850)) (= lambda!197615 lambda!197600))))

(assert (=> bs!1036686 (= (= lt!1810584 lt!1810419) (= lambda!197615 lambda!197589))))

(assert (=> bs!1036685 (= (= lt!1810584 lt!1810466) (= lambda!197615 lambda!197601))))

(assert (=> bs!1036687 (= (= lt!1810584 lt!1810261) (= lambda!197615 lambda!197565))))

(assert (=> bs!1036688 (= (= lt!1810584 lt!1810089) (= lambda!197615 lambda!197563))))

(assert (=> bs!1036689 (= (= lt!1810584 lt!1810403) (= lambda!197615 lambda!197591))))

(assert (=> bs!1036690 (= (= lt!1810584 (ListMap!4518 Nil!51850)) (= lambda!197615 lambda!197579))))

(assert (=> b!4646191 (= (= lt!1810584 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197615 lambda!197614))))

(assert (=> bs!1036691 (= (= lt!1810584 lt!1810466) (= lambda!197615 lambda!197607))))

(assert (=> bs!1036692 (= (= lt!1810584 lt!1810429) (= lambda!197615 lambda!197598))))

(assert (=> bs!1036686 (= (= lt!1810584 (ListMap!4518 Nil!51850)) (= lambda!197615 lambda!197587))))

(assert (=> bs!1036693 (= (= lt!1810584 (ListMap!4518 Nil!51850)) (= lambda!197615 lambda!197586))))

(assert (=> bs!1036694 (not (= lambda!197615 lambda!197489))))

(assert (=> bs!1036695 (= (= lt!1810584 lt!1810361) (= lambda!197615 lambda!197583))))

(assert (=> bs!1036696 (= (= lt!1810584 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197615 lambda!197609))))

(assert (=> bs!1036684 (= (= lt!1810584 (ListMap!4518 Nil!51850)) (= lambda!197615 lambda!197581))))

(assert (=> bs!1036697 (= (= lt!1810584 (ListMap!4518 Nil!51850)) (= lambda!197615 lambda!197595))))

(assert (=> bs!1036698 (= (= lt!1810584 lt!1810377) (= lambda!197615 lambda!197612))))

(assert (=> bs!1036699 (= (= lt!1810584 lt!1810516) (= lambda!197615 lambda!197611))))

(assert (=> bs!1036682 (= (= lt!1810584 (ListMap!4518 Nil!51850)) (= lambda!197615 lambda!197596))))

(assert (=> bs!1036696 (= (= lt!1810584 lt!1810532) (= lambda!197615 lambda!197610))))

(assert (=> bs!1036700 (= (= lt!1810584 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197615 lambda!197608))))

(assert (=> bs!1036701 (not (= lambda!197615 lambda!197490))))

(assert (=> bs!1036702 (= (= lt!1810584 lt!1810450) (= lambda!197615 lambda!197602))))

(assert (=> bs!1036703 (= (= lt!1810584 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197615 lambda!197613))))

(assert (=> bs!1036688 (= (= lt!1810584 lt!1810277) (= lambda!197615 lambda!197564))))

(assert (=> bs!1036704 (= (= lt!1810584 (ListMap!4518 Nil!51850)) (= lambda!197615 lambda!197599))))

(assert (=> b!4646191 true))

(declare-fun bs!1036705 () Bool)

(declare-fun d!1465112 () Bool)

(assert (= bs!1036705 (and d!1465112 b!4646029)))

(declare-fun lt!1810568 () ListMap!4517)

(declare-fun lambda!197616 () Int)

(assert (=> bs!1036705 (= (= lt!1810568 lt!1810445) (= lambda!197616 lambda!197597))))

(declare-fun bs!1036706 () Bool)

(assert (= bs!1036706 (and d!1465112 b!4645912)))

(assert (=> bs!1036706 (= (= lt!1810568 lt!1810089) (= lambda!197616 lambda!197562))))

(declare-fun bs!1036707 () Bool)

(assert (= bs!1036707 (and d!1465112 b!4645990)))

(assert (=> bs!1036707 (= (= lt!1810568 lt!1810377) (= lambda!197616 lambda!197582))))

(declare-fun bs!1036708 () Bool)

(assert (= bs!1036708 (and d!1465112 b!4646034)))

(assert (=> bs!1036708 (= (= lt!1810568 (ListMap!4518 Nil!51850)) (= lambda!197616 lambda!197600))))

(declare-fun bs!1036709 () Bool)

(assert (= bs!1036709 (and d!1465112 b!4646000)))

(assert (=> bs!1036709 (= (= lt!1810568 lt!1810419) (= lambda!197616 lambda!197589))))

(assert (=> bs!1036708 (= (= lt!1810568 lt!1810466) (= lambda!197616 lambda!197601))))

(declare-fun bs!1036710 () Bool)

(assert (= bs!1036710 (and d!1465112 d!1464936)))

(assert (=> bs!1036710 (= (= lt!1810568 lt!1810261) (= lambda!197616 lambda!197565))))

(declare-fun bs!1036711 () Bool)

(assert (= bs!1036711 (and d!1465112 b!4645910)))

(assert (=> bs!1036711 (= (= lt!1810568 lt!1810089) (= lambda!197616 lambda!197563))))

(declare-fun bs!1036712 () Bool)

(assert (= bs!1036712 (and d!1465112 d!1464988)))

(assert (=> bs!1036712 (= (= lt!1810568 lt!1810403) (= lambda!197616 lambda!197591))))

(declare-fun bs!1036713 () Bool)

(assert (= bs!1036713 (and d!1465112 b!4646191)))

(assert (=> bs!1036713 (= (= lt!1810568 lt!1810584) (= lambda!197616 lambda!197615))))

(declare-fun bs!1036714 () Bool)

(assert (= bs!1036714 (and d!1465112 b!4645992)))

(assert (=> bs!1036714 (= (= lt!1810568 (ListMap!4518 Nil!51850)) (= lambda!197616 lambda!197579))))

(assert (=> bs!1036713 (= (= lt!1810568 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197616 lambda!197614))))

(declare-fun bs!1036715 () Bool)

(assert (= bs!1036715 (and d!1465112 d!1465038)))

(assert (=> bs!1036715 (= (= lt!1810568 lt!1810466) (= lambda!197616 lambda!197607))))

(declare-fun bs!1036716 () Bool)

(assert (= bs!1036716 (and d!1465112 d!1465004)))

(assert (=> bs!1036716 (= (= lt!1810568 lt!1810429) (= lambda!197616 lambda!197598))))

(assert (=> bs!1036709 (= (= lt!1810568 (ListMap!4518 Nil!51850)) (= lambda!197616 lambda!197587))))

(declare-fun bs!1036717 () Bool)

(assert (= bs!1036717 (and d!1465112 b!4646002)))

(assert (=> bs!1036717 (= (= lt!1810568 (ListMap!4518 Nil!51850)) (= lambda!197616 lambda!197586))))

(declare-fun bs!1036718 () Bool)

(assert (= bs!1036718 (and d!1465112 d!1464922)))

(assert (=> bs!1036718 (not (= lambda!197616 lambda!197489))))

(declare-fun bs!1036719 () Bool)

(assert (= bs!1036719 (and d!1465112 d!1464982)))

(assert (=> bs!1036719 (= (= lt!1810568 lt!1810361) (= lambda!197616 lambda!197583))))

(declare-fun bs!1036720 () Bool)

(assert (= bs!1036720 (and d!1465112 b!4646095)))

(assert (=> bs!1036720 (= (= lt!1810568 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197616 lambda!197609))))

(assert (=> bs!1036707 (= (= lt!1810568 (ListMap!4518 Nil!51850)) (= lambda!197616 lambda!197581))))

(declare-fun bs!1036721 () Bool)

(assert (= bs!1036721 (and d!1465112 b!4646031)))

(assert (=> bs!1036721 (= (= lt!1810568 (ListMap!4518 Nil!51850)) (= lambda!197616 lambda!197595))))

(declare-fun bs!1036722 () Bool)

(assert (= bs!1036722 (and d!1465112 d!1465106)))

(assert (=> bs!1036722 (= (= lt!1810568 lt!1810377) (= lambda!197616 lambda!197612))))

(declare-fun bs!1036723 () Bool)

(assert (= bs!1036723 (and d!1465112 d!1465044)))

(assert (=> bs!1036723 (= (= lt!1810568 lt!1810516) (= lambda!197616 lambda!197611))))

(assert (=> bs!1036705 (= (= lt!1810568 (ListMap!4518 Nil!51850)) (= lambda!197616 lambda!197596))))

(assert (=> bs!1036720 (= (= lt!1810568 lt!1810532) (= lambda!197616 lambda!197610))))

(declare-fun bs!1036724 () Bool)

(assert (= bs!1036724 (and d!1465112 b!4646097)))

(assert (=> bs!1036724 (= (= lt!1810568 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197616 lambda!197608))))

(declare-fun bs!1036725 () Bool)

(assert (= bs!1036725 (and d!1465112 d!1464926)))

(assert (=> bs!1036725 (not (= lambda!197616 lambda!197490))))

(declare-fun bs!1036726 () Bool)

(assert (= bs!1036726 (and d!1465112 d!1465008)))

(assert (=> bs!1036726 (= (= lt!1810568 lt!1810450) (= lambda!197616 lambda!197602))))

(declare-fun bs!1036727 () Bool)

(assert (= bs!1036727 (and d!1465112 b!4646193)))

(assert (=> bs!1036727 (= (= lt!1810568 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197616 lambda!197613))))

(assert (=> bs!1036711 (= (= lt!1810568 lt!1810277) (= lambda!197616 lambda!197564))))

(declare-fun bs!1036728 () Bool)

(assert (= bs!1036728 (and d!1465112 b!4646036)))

(assert (=> bs!1036728 (= (= lt!1810568 (ListMap!4518 Nil!51850)) (= lambda!197616 lambda!197599))))

(assert (=> d!1465112 true))

(declare-fun e!2898346 () ListMap!4517)

(assert (=> b!4646191 (= e!2898346 lt!1810584)))

(declare-fun lt!1810569 () ListMap!4517)

(assert (=> b!4646191 (= lt!1810569 (+!1968 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (h!57980 (t!359070 newBucket!224))))))

(assert (=> b!4646191 (= lt!1810584 (addToMapMapFromBucket!1081 (t!359070 (t!359070 newBucket!224)) (+!1968 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) (h!57980 (t!359070 newBucket!224)))))))

(declare-fun lt!1810571 () Unit!116275)

(declare-fun call!324439 () Unit!116275)

(assert (=> b!4646191 (= lt!1810571 call!324439)))

(assert (=> b!4646191 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) lambda!197614)))

(declare-fun lt!1810585 () Unit!116275)

(assert (=> b!4646191 (= lt!1810585 lt!1810571)))

(assert (=> b!4646191 (forall!10987 (toList!5182 lt!1810569) lambda!197615)))

(declare-fun lt!1810581 () Unit!116275)

(declare-fun Unit!116416 () Unit!116275)

(assert (=> b!4646191 (= lt!1810581 Unit!116416)))

(declare-fun call!324441 () Bool)

(assert (=> b!4646191 call!324441))

(declare-fun lt!1810580 () Unit!116275)

(declare-fun Unit!116418 () Unit!116275)

(assert (=> b!4646191 (= lt!1810580 Unit!116418)))

(declare-fun lt!1810576 () Unit!116275)

(declare-fun Unit!116420 () Unit!116275)

(assert (=> b!4646191 (= lt!1810576 Unit!116420)))

(declare-fun lt!1810575 () Unit!116275)

(assert (=> b!4646191 (= lt!1810575 (forallContained!3202 (toList!5182 lt!1810569) lambda!197615 (h!57980 (t!359070 newBucket!224))))))

(assert (=> b!4646191 (contains!14991 lt!1810569 (_1!29765 (h!57980 (t!359070 newBucket!224))))))

(declare-fun lt!1810583 () Unit!116275)

(declare-fun Unit!116422 () Unit!116275)

(assert (=> b!4646191 (= lt!1810583 Unit!116422)))

(assert (=> b!4646191 (contains!14991 lt!1810584 (_1!29765 (h!57980 (t!359070 newBucket!224))))))

(declare-fun lt!1810570 () Unit!116275)

(declare-fun Unit!116424 () Unit!116275)

(assert (=> b!4646191 (= lt!1810570 Unit!116424)))

(assert (=> b!4646191 (forall!10987 (t!359070 newBucket!224) lambda!197615)))

(declare-fun lt!1810587 () Unit!116275)

(declare-fun Unit!116426 () Unit!116275)

(assert (=> b!4646191 (= lt!1810587 Unit!116426)))

(declare-fun call!324440 () Bool)

(assert (=> b!4646191 call!324440))

(declare-fun lt!1810582 () Unit!116275)

(declare-fun Unit!116428 () Unit!116275)

(assert (=> b!4646191 (= lt!1810582 Unit!116428)))

(declare-fun lt!1810578 () Unit!116275)

(declare-fun Unit!116430 () Unit!116275)

(assert (=> b!4646191 (= lt!1810578 Unit!116430)))

(declare-fun lt!1810588 () Unit!116275)

(assert (=> b!4646191 (= lt!1810588 (addForallContainsKeyThenBeforeAdding!583 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810584 (_1!29765 (h!57980 (t!359070 newBucket!224))) (_2!29765 (h!57980 (t!359070 newBucket!224)))))))

(assert (=> b!4646191 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) lambda!197615)))

(declare-fun lt!1810579 () Unit!116275)

(assert (=> b!4646191 (= lt!1810579 lt!1810588)))

(assert (=> b!4646191 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) lambda!197615)))

(declare-fun lt!1810574 () Unit!116275)

(declare-fun Unit!116432 () Unit!116275)

(assert (=> b!4646191 (= lt!1810574 Unit!116432)))

(declare-fun res!1952131 () Bool)

(assert (=> b!4646191 (= res!1952131 (forall!10987 (t!359070 newBucket!224) lambda!197615))))

(declare-fun e!2898344 () Bool)

(assert (=> b!4646191 (=> (not res!1952131) (not e!2898344))))

(assert (=> b!4646191 e!2898344))

(declare-fun lt!1810586 () Unit!116275)

(declare-fun Unit!116433 () Unit!116275)

(assert (=> b!4646191 (= lt!1810586 Unit!116433)))

(declare-fun e!2898345 () Bool)

(assert (=> d!1465112 e!2898345))

(declare-fun res!1952132 () Bool)

(assert (=> d!1465112 (=> (not res!1952132) (not e!2898345))))

(assert (=> d!1465112 (= res!1952132 (forall!10987 (t!359070 newBucket!224) lambda!197616))))

(assert (=> d!1465112 (= lt!1810568 e!2898346)))

(declare-fun c!795016 () Bool)

(assert (=> d!1465112 (= c!795016 ((_ is Nil!51850) (t!359070 newBucket!224)))))

(assert (=> d!1465112 (noDuplicateKeys!1624 (t!359070 newBucket!224))))

(assert (=> d!1465112 (= (addToMapMapFromBucket!1081 (t!359070 newBucket!224) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) lt!1810568)))

(declare-fun b!4646192 () Bool)

(declare-fun res!1952130 () Bool)

(assert (=> b!4646192 (=> (not res!1952130) (not e!2898345))))

(assert (=> b!4646192 (= res!1952130 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) lambda!197616))))

(declare-fun bm!324434 () Bool)

(assert (=> bm!324434 (= call!324441 (forall!10987 (ite c!795016 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (t!359070 (t!359070 newBucket!224))) (ite c!795016 lambda!197613 lambda!197615)))))

(assert (=> b!4646193 (= e!2898346 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)))))

(declare-fun lt!1810573 () Unit!116275)

(assert (=> b!4646193 (= lt!1810573 call!324439)))

(assert (=> b!4646193 call!324440))

(declare-fun lt!1810572 () Unit!116275)

(assert (=> b!4646193 (= lt!1810572 lt!1810573)))

(assert (=> b!4646193 call!324441))

(declare-fun lt!1810577 () Unit!116275)

(declare-fun Unit!116435 () Unit!116275)

(assert (=> b!4646193 (= lt!1810577 Unit!116435)))

(declare-fun bm!324435 () Bool)

(assert (=> bm!324435 (= call!324440 (forall!10987 (ite c!795016 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (toList!5182 lt!1810569)) (ite c!795016 lambda!197613 lambda!197615)))))

(declare-fun b!4646194 () Bool)

(assert (=> b!4646194 (= e!2898345 (invariantList!1284 (toList!5182 lt!1810568)))))

(declare-fun b!4646195 () Bool)

(assert (=> b!4646195 (= e!2898344 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) lambda!197615))))

(declare-fun bm!324436 () Bool)

(assert (=> bm!324436 (= call!324439 (lemmaContainsAllItsOwnKeys!584 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))))))

(assert (= (and d!1465112 c!795016) b!4646193))

(assert (= (and d!1465112 (not c!795016)) b!4646191))

(assert (= (and b!4646191 res!1952131) b!4646195))

(assert (= (or b!4646193 b!4646191) bm!324436))

(assert (= (or b!4646193 b!4646191) bm!324434))

(assert (= (or b!4646193 b!4646191) bm!324435))

(assert (= (and d!1465112 res!1952132) b!4646192))

(assert (= (and b!4646192 res!1952130) b!4646194))

(declare-fun m!5511723 () Bool)

(assert (=> d!1465112 m!5511723))

(assert (=> d!1465112 m!5511439))

(declare-fun m!5511725 () Bool)

(assert (=> bm!324434 m!5511725))

(declare-fun m!5511727 () Bool)

(assert (=> b!4646195 m!5511727))

(assert (=> bm!324436 m!5511233))

(declare-fun m!5511729 () Bool)

(assert (=> bm!324436 m!5511729))

(declare-fun m!5511731 () Bool)

(assert (=> bm!324435 m!5511731))

(declare-fun m!5511733 () Bool)

(assert (=> b!4646194 m!5511733))

(declare-fun m!5511735 () Bool)

(assert (=> b!4646192 m!5511735))

(assert (=> b!4646191 m!5511233))

(declare-fun m!5511737 () Bool)

(assert (=> b!4646191 m!5511737))

(assert (=> b!4646191 m!5511727))

(declare-fun m!5511739 () Bool)

(assert (=> b!4646191 m!5511739))

(assert (=> b!4646191 m!5511739))

(declare-fun m!5511741 () Bool)

(assert (=> b!4646191 m!5511741))

(declare-fun m!5511743 () Bool)

(assert (=> b!4646191 m!5511743))

(declare-fun m!5511745 () Bool)

(assert (=> b!4646191 m!5511745))

(declare-fun m!5511747 () Bool)

(assert (=> b!4646191 m!5511747))

(assert (=> b!4646191 m!5511233))

(declare-fun m!5511749 () Bool)

(assert (=> b!4646191 m!5511749))

(assert (=> b!4646191 m!5511749))

(declare-fun m!5511751 () Bool)

(assert (=> b!4646191 m!5511751))

(assert (=> b!4646191 m!5511727))

(declare-fun m!5511753 () Bool)

(assert (=> b!4646191 m!5511753))

(assert (=> b!4645990 d!1465112))

(declare-fun d!1465124 () Bool)

(declare-fun e!2898363 () Bool)

(assert (=> d!1465124 e!2898363))

(declare-fun res!1952146 () Bool)

(assert (=> d!1465124 (=> (not res!1952146) (not e!2898363))))

(declare-fun lt!1810591 () ListMap!4517)

(assert (=> d!1465124 (= res!1952146 (contains!14991 lt!1810591 (_1!29765 (h!57980 newBucket!224))))))

(declare-fun lt!1810590 () List!51974)

(assert (=> d!1465124 (= lt!1810591 (ListMap!4518 lt!1810590))))

(declare-fun lt!1810589 () Unit!116275)

(declare-fun lt!1810592 () Unit!116275)

(assert (=> d!1465124 (= lt!1810589 lt!1810592)))

(assert (=> d!1465124 (= (getValueByKey!1591 lt!1810590 (_1!29765 (h!57980 newBucket!224))) (Some!11802 (_2!29765 (h!57980 newBucket!224))))))

(assert (=> d!1465124 (= lt!1810592 (lemmaContainsTupThenGetReturnValue!912 lt!1810590 (_1!29765 (h!57980 newBucket!224)) (_2!29765 (h!57980 newBucket!224))))))

(assert (=> d!1465124 (= lt!1810590 (insertNoDuplicatedKeys!420 (toList!5182 (ListMap!4518 Nil!51850)) (_1!29765 (h!57980 newBucket!224)) (_2!29765 (h!57980 newBucket!224))))))

(assert (=> d!1465124 (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224)) lt!1810591)))

(declare-fun b!4646216 () Bool)

(declare-fun res!1952145 () Bool)

(assert (=> b!4646216 (=> (not res!1952145) (not e!2898363))))

(assert (=> b!4646216 (= res!1952145 (= (getValueByKey!1591 (toList!5182 lt!1810591) (_1!29765 (h!57980 newBucket!224))) (Some!11802 (_2!29765 (h!57980 newBucket!224)))))))

(declare-fun b!4646217 () Bool)

(assert (=> b!4646217 (= e!2898363 (contains!14995 (toList!5182 lt!1810591) (h!57980 newBucket!224)))))

(assert (= (and d!1465124 res!1952146) b!4646216))

(assert (= (and b!4646216 res!1952145) b!4646217))

(declare-fun m!5511755 () Bool)

(assert (=> d!1465124 m!5511755))

(declare-fun m!5511757 () Bool)

(assert (=> d!1465124 m!5511757))

(declare-fun m!5511759 () Bool)

(assert (=> d!1465124 m!5511759))

(declare-fun m!5511761 () Bool)

(assert (=> d!1465124 m!5511761))

(declare-fun m!5511763 () Bool)

(assert (=> b!4646216 m!5511763))

(declare-fun m!5511765 () Bool)

(assert (=> b!4646217 m!5511765))

(assert (=> b!4645990 d!1465124))

(declare-fun d!1465126 () Bool)

(declare-fun noDuplicatedKeys!342 (List!51974) Bool)

(assert (=> d!1465126 (= (invariantList!1284 (toList!5182 lt!1810425)) (noDuplicatedKeys!342 (toList!5182 lt!1810425)))))

(declare-fun bs!1036729 () Bool)

(assert (= bs!1036729 d!1465126))

(declare-fun m!5511769 () Bool)

(assert (=> bs!1036729 m!5511769))

(assert (=> d!1465000 d!1465126))

(declare-fun d!1465130 () Bool)

(declare-fun res!1952155 () Bool)

(declare-fun e!2898376 () Bool)

(assert (=> d!1465130 (=> res!1952155 e!2898376)))

(assert (=> d!1465130 (= res!1952155 ((_ is Nil!51851) lt!1810086))))

(assert (=> d!1465130 (= (forall!10988 lt!1810086 lambda!197594) e!2898376)))

(declare-fun b!4646234 () Bool)

(declare-fun e!2898377 () Bool)

(assert (=> b!4646234 (= e!2898376 e!2898377)))

(declare-fun res!1952156 () Bool)

(assert (=> b!4646234 (=> (not res!1952156) (not e!2898377))))

(declare-fun dynLambda!21562 (Int tuple2!52944) Bool)

(assert (=> b!4646234 (= res!1952156 (dynLambda!21562 lambda!197594 (h!57981 lt!1810086)))))

(declare-fun b!4646235 () Bool)

(assert (=> b!4646235 (= e!2898377 (forall!10988 (t!359071 lt!1810086) lambda!197594))))

(assert (= (and d!1465130 (not res!1952155)) b!4646234))

(assert (= (and b!4646234 res!1952156) b!4646235))

(declare-fun b_lambda!171161 () Bool)

(assert (=> (not b_lambda!171161) (not b!4646234)))

(declare-fun m!5511781 () Bool)

(assert (=> b!4646234 m!5511781))

(declare-fun m!5511783 () Bool)

(assert (=> b!4646235 m!5511783))

(assert (=> d!1465000 d!1465130))

(declare-fun b!4646288 () Bool)

(assert (=> b!4646288 true))

(declare-fun bs!1036748 () Bool)

(declare-fun b!4646286 () Bool)

(assert (= bs!1036748 (and b!4646286 b!4646288)))

(declare-fun lambda!197629 () Int)

(declare-fun lambda!197628 () Int)

(assert (=> bs!1036748 (= (= (Cons!51850 (h!57980 (toList!5182 lt!1810084)) (t!359070 (toList!5182 lt!1810084))) (t!359070 (toList!5182 lt!1810084))) (= lambda!197629 lambda!197628))))

(assert (=> b!4646286 true))

(declare-fun bs!1036749 () Bool)

(declare-fun b!4646283 () Bool)

(assert (= bs!1036749 (and b!4646283 b!4646288)))

(declare-fun lambda!197630 () Int)

(assert (=> bs!1036749 (= (= (toList!5182 lt!1810084) (t!359070 (toList!5182 lt!1810084))) (= lambda!197630 lambda!197628))))

(declare-fun bs!1036750 () Bool)

(assert (= bs!1036750 (and b!4646283 b!4646286)))

(assert (=> bs!1036750 (= (= (toList!5182 lt!1810084) (Cons!51850 (h!57980 (toList!5182 lt!1810084)) (t!359070 (toList!5182 lt!1810084)))) (= lambda!197630 lambda!197629))))

(assert (=> b!4646283 true))

(declare-fun b!4646282 () Bool)

(declare-fun e!2898407 () Unit!116275)

(declare-fun Unit!116436 () Unit!116275)

(assert (=> b!4646282 (= e!2898407 Unit!116436)))

(declare-fun res!1952181 () Bool)

(declare-fun e!2898408 () Bool)

(assert (=> b!4646283 (=> (not res!1952181) (not e!2898408))))

(declare-fun lt!1810630 () List!51976)

(declare-fun forall!10989 (List!51976 Int) Bool)

(assert (=> b!4646283 (= res!1952181 (forall!10989 lt!1810630 lambda!197630))))

(declare-fun d!1465138 () Bool)

(assert (=> d!1465138 e!2898408))

(declare-fun res!1952180 () Bool)

(assert (=> d!1465138 (=> (not res!1952180) (not e!2898408))))

(declare-fun noDuplicate!827 (List!51976) Bool)

(assert (=> d!1465138 (= res!1952180 (noDuplicate!827 lt!1810630))))

(declare-fun e!2898410 () List!51976)

(assert (=> d!1465138 (= lt!1810630 e!2898410)))

(declare-fun c!795038 () Bool)

(assert (=> d!1465138 (= c!795038 ((_ is Cons!51850) (toList!5182 lt!1810084)))))

(assert (=> d!1465138 (invariantList!1284 (toList!5182 lt!1810084))))

(assert (=> d!1465138 (= (getKeysList!734 (toList!5182 lt!1810084)) lt!1810630)))

(declare-fun b!4646284 () Bool)

(assert (=> b!4646284 (= e!2898410 Nil!51852)))

(declare-fun b!4646285 () Bool)

(declare-fun res!1952179 () Bool)

(assert (=> b!4646285 (=> (not res!1952179) (not e!2898408))))

(declare-fun length!510 (List!51976) Int)

(declare-fun length!511 (List!51974) Int)

(assert (=> b!4646285 (= res!1952179 (= (length!510 lt!1810630) (length!511 (toList!5182 lt!1810084))))))

(assert (=> b!4646286 (= e!2898410 (Cons!51852 (_1!29765 (h!57980 (toList!5182 lt!1810084))) (getKeysList!734 (t!359070 (toList!5182 lt!1810084)))))))

(declare-fun c!795037 () Bool)

(assert (=> b!4646286 (= c!795037 (containsKey!2691 (t!359070 (toList!5182 lt!1810084)) (_1!29765 (h!57980 (toList!5182 lt!1810084)))))))

(declare-fun lt!1810631 () Unit!116275)

(assert (=> b!4646286 (= lt!1810631 e!2898407)))

(declare-fun c!795039 () Bool)

(assert (=> b!4646286 (= c!795039 (contains!14992 (getKeysList!734 (t!359070 (toList!5182 lt!1810084))) (_1!29765 (h!57980 (toList!5182 lt!1810084)))))))

(declare-fun lt!1810636 () Unit!116275)

(declare-fun e!2898409 () Unit!116275)

(assert (=> b!4646286 (= lt!1810636 e!2898409)))

(declare-fun lt!1810632 () List!51976)

(assert (=> b!4646286 (= lt!1810632 (getKeysList!734 (t!359070 (toList!5182 lt!1810084))))))

(declare-fun lt!1810635 () Unit!116275)

(declare-fun lemmaForallContainsAddHeadPreserves!247 (List!51974 List!51976 tuple2!52942) Unit!116275)

(assert (=> b!4646286 (= lt!1810635 (lemmaForallContainsAddHeadPreserves!247 (t!359070 (toList!5182 lt!1810084)) lt!1810632 (h!57980 (toList!5182 lt!1810084))))))

(assert (=> b!4646286 (forall!10989 lt!1810632 lambda!197629)))

(declare-fun lt!1810633 () Unit!116275)

(assert (=> b!4646286 (= lt!1810633 lt!1810635)))

(declare-fun b!4646287 () Bool)

(declare-fun Unit!116437 () Unit!116275)

(assert (=> b!4646287 (= e!2898409 Unit!116437)))

(assert (=> b!4646288 false))

(declare-fun lt!1810634 () Unit!116275)

(declare-fun forallContained!3203 (List!51976 Int K!13210) Unit!116275)

(assert (=> b!4646288 (= lt!1810634 (forallContained!3203 (getKeysList!734 (t!359070 (toList!5182 lt!1810084))) lambda!197628 (_1!29765 (h!57980 (toList!5182 lt!1810084)))))))

(declare-fun Unit!116438 () Unit!116275)

(assert (=> b!4646288 (= e!2898409 Unit!116438)))

(declare-fun b!4646289 () Bool)

(declare-fun lambda!197631 () Int)

(declare-fun content!8976 (List!51976) (InoxSet K!13210))

(declare-fun map!11452 (List!51974 Int) List!51976)

(assert (=> b!4646289 (= e!2898408 (= (content!8976 lt!1810630) (content!8976 (map!11452 (toList!5182 lt!1810084) lambda!197631))))))

(declare-fun b!4646290 () Bool)

(assert (=> b!4646290 false))

(declare-fun Unit!116439 () Unit!116275)

(assert (=> b!4646290 (= e!2898407 Unit!116439)))

(assert (= (and d!1465138 c!795038) b!4646286))

(assert (= (and d!1465138 (not c!795038)) b!4646284))

(assert (= (and b!4646286 c!795037) b!4646290))

(assert (= (and b!4646286 (not c!795037)) b!4646282))

(assert (= (and b!4646286 c!795039) b!4646288))

(assert (= (and b!4646286 (not c!795039)) b!4646287))

(assert (= (and d!1465138 res!1952180) b!4646285))

(assert (= (and b!4646285 res!1952179) b!4646283))

(assert (= (and b!4646283 res!1952181) b!4646289))

(declare-fun m!5511855 () Bool)

(assert (=> b!4646288 m!5511855))

(assert (=> b!4646288 m!5511855))

(declare-fun m!5511857 () Bool)

(assert (=> b!4646288 m!5511857))

(declare-fun m!5511859 () Bool)

(assert (=> d!1465138 m!5511859))

(assert (=> d!1465138 m!5511581))

(declare-fun m!5511861 () Bool)

(assert (=> b!4646285 m!5511861))

(declare-fun m!5511863 () Bool)

(assert (=> b!4646285 m!5511863))

(declare-fun m!5511865 () Bool)

(assert (=> b!4646283 m!5511865))

(declare-fun m!5511867 () Bool)

(assert (=> b!4646289 m!5511867))

(declare-fun m!5511869 () Bool)

(assert (=> b!4646289 m!5511869))

(assert (=> b!4646289 m!5511869))

(declare-fun m!5511871 () Bool)

(assert (=> b!4646289 m!5511871))

(declare-fun m!5511873 () Bool)

(assert (=> b!4646286 m!5511873))

(declare-fun m!5511875 () Bool)

(assert (=> b!4646286 m!5511875))

(assert (=> b!4646286 m!5511855))

(declare-fun m!5511877 () Bool)

(assert (=> b!4646286 m!5511877))

(assert (=> b!4646286 m!5511855))

(declare-fun m!5511879 () Bool)

(assert (=> b!4646286 m!5511879))

(assert (=> b!4645982 d!1465138))

(declare-fun d!1465156 () Bool)

(declare-fun lt!1810639 () Bool)

(assert (=> d!1465156 (= lt!1810639 (select (content!8976 (keys!18351 lt!1810084)) key!4968))))

(declare-fun e!2898415 () Bool)

(assert (=> d!1465156 (= lt!1810639 e!2898415)))

(declare-fun res!1952187 () Bool)

(assert (=> d!1465156 (=> (not res!1952187) (not e!2898415))))

(assert (=> d!1465156 (= res!1952187 ((_ is Cons!51852) (keys!18351 lt!1810084)))))

(assert (=> d!1465156 (= (contains!14992 (keys!18351 lt!1810084) key!4968) lt!1810639)))

(declare-fun b!4646297 () Bool)

(declare-fun e!2898416 () Bool)

(assert (=> b!4646297 (= e!2898415 e!2898416)))

(declare-fun res!1952186 () Bool)

(assert (=> b!4646297 (=> res!1952186 e!2898416)))

(assert (=> b!4646297 (= res!1952186 (= (h!57984 (keys!18351 lt!1810084)) key!4968))))

(declare-fun b!4646298 () Bool)

(assert (=> b!4646298 (= e!2898416 (contains!14992 (t!359074 (keys!18351 lt!1810084)) key!4968))))

(assert (= (and d!1465156 res!1952187) b!4646297))

(assert (= (and b!4646297 (not res!1952186)) b!4646298))

(assert (=> d!1465156 m!5511153))

(declare-fun m!5511881 () Bool)

(assert (=> d!1465156 m!5511881))

(declare-fun m!5511883 () Bool)

(assert (=> d!1465156 m!5511883))

(declare-fun m!5511885 () Bool)

(assert (=> b!4646298 m!5511885))

(assert (=> b!4645979 d!1465156))

(declare-fun bs!1036751 () Bool)

(declare-fun b!4646306 () Bool)

(assert (= bs!1036751 (and b!4646306 b!4646288)))

(declare-fun lambda!197636 () Int)

(assert (=> bs!1036751 (= (= (toList!5182 lt!1810084) (t!359070 (toList!5182 lt!1810084))) (= lambda!197636 lambda!197628))))

(declare-fun bs!1036752 () Bool)

(assert (= bs!1036752 (and b!4646306 b!4646286)))

(assert (=> bs!1036752 (= (= (toList!5182 lt!1810084) (Cons!51850 (h!57980 (toList!5182 lt!1810084)) (t!359070 (toList!5182 lt!1810084)))) (= lambda!197636 lambda!197629))))

(declare-fun bs!1036753 () Bool)

(assert (= bs!1036753 (and b!4646306 b!4646283)))

(assert (=> bs!1036753 (= lambda!197636 lambda!197630)))

(assert (=> b!4646306 true))

(declare-fun bs!1036754 () Bool)

(declare-fun b!4646307 () Bool)

(assert (= bs!1036754 (and b!4646307 b!4646289)))

(declare-fun lambda!197637 () Int)

(assert (=> bs!1036754 (= lambda!197637 lambda!197631)))

(declare-fun d!1465158 () Bool)

(declare-fun e!2898419 () Bool)

(assert (=> d!1465158 e!2898419))

(declare-fun res!1952195 () Bool)

(assert (=> d!1465158 (=> (not res!1952195) (not e!2898419))))

(declare-fun lt!1810642 () List!51976)

(assert (=> d!1465158 (= res!1952195 (noDuplicate!827 lt!1810642))))

(assert (=> d!1465158 (= lt!1810642 (getKeysList!734 (toList!5182 lt!1810084)))))

(assert (=> d!1465158 (= (keys!18351 lt!1810084) lt!1810642)))

(declare-fun b!4646305 () Bool)

(declare-fun res!1952194 () Bool)

(assert (=> b!4646305 (=> (not res!1952194) (not e!2898419))))

(assert (=> b!4646305 (= res!1952194 (= (length!510 lt!1810642) (length!511 (toList!5182 lt!1810084))))))

(declare-fun res!1952196 () Bool)

(assert (=> b!4646306 (=> (not res!1952196) (not e!2898419))))

(assert (=> b!4646306 (= res!1952196 (forall!10989 lt!1810642 lambda!197636))))

(assert (=> b!4646307 (= e!2898419 (= (content!8976 lt!1810642) (content!8976 (map!11452 (toList!5182 lt!1810084) lambda!197637))))))

(assert (= (and d!1465158 res!1952195) b!4646305))

(assert (= (and b!4646305 res!1952194) b!4646306))

(assert (= (and b!4646306 res!1952196) b!4646307))

(declare-fun m!5511887 () Bool)

(assert (=> d!1465158 m!5511887))

(assert (=> d!1465158 m!5511157))

(declare-fun m!5511889 () Bool)

(assert (=> b!4646305 m!5511889))

(assert (=> b!4646305 m!5511863))

(declare-fun m!5511891 () Bool)

(assert (=> b!4646306 m!5511891))

(declare-fun m!5511893 () Bool)

(assert (=> b!4646307 m!5511893))

(declare-fun m!5511895 () Bool)

(assert (=> b!4646307 m!5511895))

(assert (=> b!4646307 m!5511895))

(declare-fun m!5511897 () Bool)

(assert (=> b!4646307 m!5511897))

(assert (=> b!4645979 d!1465158))

(declare-fun d!1465160 () Bool)

(declare-fun res!1952197 () Bool)

(declare-fun e!2898420 () Bool)

(assert (=> d!1465160 (=> res!1952197 e!2898420)))

(assert (=> d!1465160 (= res!1952197 ((_ is Nil!51850) (toList!5182 (ListMap!4518 Nil!51850))))))

(assert (=> d!1465160 (= (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197591) e!2898420)))

(declare-fun b!4646311 () Bool)

(declare-fun e!2898421 () Bool)

(assert (=> b!4646311 (= e!2898420 e!2898421)))

(declare-fun res!1952198 () Bool)

(assert (=> b!4646311 (=> (not res!1952198) (not e!2898421))))

(assert (=> b!4646311 (= res!1952198 (dynLambda!21559 lambda!197591 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))))))

(declare-fun b!4646312 () Bool)

(assert (=> b!4646312 (= e!2898421 (forall!10987 (t!359070 (toList!5182 (ListMap!4518 Nil!51850))) lambda!197591))))

(assert (= (and d!1465160 (not res!1952197)) b!4646311))

(assert (= (and b!4646311 res!1952198) b!4646312))

(declare-fun b_lambda!171169 () Bool)

(assert (=> (not b_lambda!171169) (not b!4646311)))

(declare-fun m!5511899 () Bool)

(assert (=> b!4646311 m!5511899))

(declare-fun m!5511901 () Bool)

(assert (=> b!4646312 m!5511901))

(assert (=> b!4646001 d!1465160))

(declare-fun b!4646314 () Bool)

(declare-fun e!2898423 () Unit!116275)

(declare-fun lt!1810650 () Unit!116275)

(assert (=> b!4646314 (= e!2898423 lt!1810650)))

(declare-fun lt!1810644 () Unit!116275)

(assert (=> b!4646314 (= lt!1810644 (lemmaContainsKeyImpliesGetValueByKeyDefined!1493 (toList!5182 lt!1810481) (_1!29765 (h!57980 oldBucket!40))))))

(assert (=> b!4646314 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810481) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun lt!1810643 () Unit!116275)

(assert (=> b!4646314 (= lt!1810643 lt!1810644)))

(assert (=> b!4646314 (= lt!1810650 (lemmaInListThenGetKeysListContains!729 (toList!5182 lt!1810481) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun call!324444 () Bool)

(assert (=> b!4646314 call!324444))

(declare-fun b!4646315 () Bool)

(declare-fun e!2898426 () List!51976)

(assert (=> b!4646315 (= e!2898426 (keys!18351 lt!1810481))))

(declare-fun b!4646316 () Bool)

(assert (=> b!4646316 (= e!2898426 (getKeysList!734 (toList!5182 lt!1810481)))))

(declare-fun b!4646317 () Bool)

(declare-fun e!2898425 () Bool)

(assert (=> b!4646317 (= e!2898425 (not (contains!14992 (keys!18351 lt!1810481) (_1!29765 (h!57980 oldBucket!40)))))))

(declare-fun b!4646318 () Bool)

(declare-fun e!2898427 () Bool)

(declare-fun e!2898424 () Bool)

(assert (=> b!4646318 (= e!2898427 e!2898424)))

(declare-fun res!1952199 () Bool)

(assert (=> b!4646318 (=> (not res!1952199) (not e!2898424))))

(assert (=> b!4646318 (= res!1952199 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810481) (_1!29765 (h!57980 oldBucket!40)))))))

(declare-fun b!4646313 () Bool)

(assert (=> b!4646313 (= e!2898424 (contains!14992 (keys!18351 lt!1810481) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun d!1465162 () Bool)

(assert (=> d!1465162 e!2898427))

(declare-fun res!1952200 () Bool)

(assert (=> d!1465162 (=> res!1952200 e!2898427)))

(assert (=> d!1465162 (= res!1952200 e!2898425)))

(declare-fun res!1952201 () Bool)

(assert (=> d!1465162 (=> (not res!1952201) (not e!2898425))))

(declare-fun lt!1810645 () Bool)

(assert (=> d!1465162 (= res!1952201 (not lt!1810645))))

(declare-fun lt!1810649 () Bool)

(assert (=> d!1465162 (= lt!1810645 lt!1810649)))

(declare-fun lt!1810647 () Unit!116275)

(assert (=> d!1465162 (= lt!1810647 e!2898423)))

(declare-fun c!795041 () Bool)

(assert (=> d!1465162 (= c!795041 lt!1810649)))

(assert (=> d!1465162 (= lt!1810649 (containsKey!2691 (toList!5182 lt!1810481) (_1!29765 (h!57980 oldBucket!40))))))

(assert (=> d!1465162 (= (contains!14991 lt!1810481 (_1!29765 (h!57980 oldBucket!40))) lt!1810645)))

(declare-fun b!4646319 () Bool)

(declare-fun e!2898422 () Unit!116275)

(assert (=> b!4646319 (= e!2898423 e!2898422)))

(declare-fun c!795042 () Bool)

(assert (=> b!4646319 (= c!795042 call!324444)))

(declare-fun b!4646320 () Bool)

(declare-fun Unit!116442 () Unit!116275)

(assert (=> b!4646320 (= e!2898422 Unit!116442)))

(declare-fun bm!324439 () Bool)

(assert (=> bm!324439 (= call!324444 (contains!14992 e!2898426 (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun c!795040 () Bool)

(assert (=> bm!324439 (= c!795040 c!795041)))

(declare-fun b!4646321 () Bool)

(assert (=> b!4646321 false))

(declare-fun lt!1810648 () Unit!116275)

(declare-fun lt!1810646 () Unit!116275)

(assert (=> b!4646321 (= lt!1810648 lt!1810646)))

(assert (=> b!4646321 (containsKey!2691 (toList!5182 lt!1810481) (_1!29765 (h!57980 oldBucket!40)))))

(assert (=> b!4646321 (= lt!1810646 (lemmaInGetKeysListThenContainsKey!733 (toList!5182 lt!1810481) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun Unit!116443 () Unit!116275)

(assert (=> b!4646321 (= e!2898422 Unit!116443)))

(assert (= (and d!1465162 c!795041) b!4646314))

(assert (= (and d!1465162 (not c!795041)) b!4646319))

(assert (= (and b!4646319 c!795042) b!4646321))

(assert (= (and b!4646319 (not c!795042)) b!4646320))

(assert (= (or b!4646314 b!4646319) bm!324439))

(assert (= (and bm!324439 c!795040) b!4646316))

(assert (= (and bm!324439 (not c!795040)) b!4646315))

(assert (= (and d!1465162 res!1952201) b!4646317))

(assert (= (and d!1465162 (not res!1952200)) b!4646318))

(assert (= (and b!4646318 res!1952199) b!4646313))

(declare-fun m!5511903 () Bool)

(assert (=> b!4646321 m!5511903))

(declare-fun m!5511905 () Bool)

(assert (=> b!4646321 m!5511905))

(declare-fun m!5511907 () Bool)

(assert (=> bm!324439 m!5511907))

(assert (=> b!4646318 m!5511407))

(assert (=> b!4646318 m!5511407))

(declare-fun m!5511909 () Bool)

(assert (=> b!4646318 m!5511909))

(declare-fun m!5511911 () Bool)

(assert (=> b!4646313 m!5511911))

(assert (=> b!4646313 m!5511911))

(declare-fun m!5511913 () Bool)

(assert (=> b!4646313 m!5511913))

(declare-fun m!5511915 () Bool)

(assert (=> b!4646316 m!5511915))

(assert (=> b!4646315 m!5511911))

(assert (=> b!4646317 m!5511911))

(assert (=> b!4646317 m!5511911))

(assert (=> b!4646317 m!5511913))

(assert (=> d!1465162 m!5511903))

(declare-fun m!5511917 () Bool)

(assert (=> b!4646314 m!5511917))

(assert (=> b!4646314 m!5511407))

(assert (=> b!4646314 m!5511407))

(assert (=> b!4646314 m!5511909))

(declare-fun m!5511919 () Bool)

(assert (=> b!4646314 m!5511919))

(assert (=> d!1465010 d!1465162))

(declare-fun b!4646324 () Bool)

(declare-fun e!2898429 () Option!11803)

(assert (=> b!4646324 (= e!2898429 (getValueByKey!1591 (t!359070 lt!1810480) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun b!4646323 () Bool)

(declare-fun e!2898428 () Option!11803)

(assert (=> b!4646323 (= e!2898428 e!2898429)))

(declare-fun c!795044 () Bool)

(assert (=> b!4646323 (= c!795044 (and ((_ is Cons!51850) lt!1810480) (not (= (_1!29765 (h!57980 lt!1810480)) (_1!29765 (h!57980 oldBucket!40))))))))

(declare-fun b!4646325 () Bool)

(assert (=> b!4646325 (= e!2898429 None!11802)))

(declare-fun b!4646322 () Bool)

(assert (=> b!4646322 (= e!2898428 (Some!11802 (_2!29765 (h!57980 lt!1810480))))))

(declare-fun d!1465164 () Bool)

(declare-fun c!795043 () Bool)

(assert (=> d!1465164 (= c!795043 (and ((_ is Cons!51850) lt!1810480) (= (_1!29765 (h!57980 lt!1810480)) (_1!29765 (h!57980 oldBucket!40)))))))

(assert (=> d!1465164 (= (getValueByKey!1591 lt!1810480 (_1!29765 (h!57980 oldBucket!40))) e!2898428)))

(assert (= (and d!1465164 c!795043) b!4646322))

(assert (= (and d!1465164 (not c!795043)) b!4646323))

(assert (= (and b!4646323 c!795044) b!4646324))

(assert (= (and b!4646323 (not c!795044)) b!4646325))

(declare-fun m!5511921 () Bool)

(assert (=> b!4646324 m!5511921))

(assert (=> d!1465010 d!1465164))

(declare-fun d!1465166 () Bool)

(assert (=> d!1465166 (= (getValueByKey!1591 lt!1810480 (_1!29765 (h!57980 oldBucket!40))) (Some!11802 (_2!29765 (h!57980 oldBucket!40))))))

(declare-fun lt!1810656 () Unit!116275)

(declare-fun choose!31909 (List!51974 K!13210 V!13456) Unit!116275)

(assert (=> d!1465166 (= lt!1810656 (choose!31909 lt!1810480 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))))))

(declare-fun e!2898432 () Bool)

(assert (=> d!1465166 e!2898432))

(declare-fun res!1952206 () Bool)

(assert (=> d!1465166 (=> (not res!1952206) (not e!2898432))))

(assert (=> d!1465166 (= res!1952206 (invariantList!1284 lt!1810480))))

(assert (=> d!1465166 (= (lemmaContainsTupThenGetReturnValue!912 lt!1810480 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))) lt!1810656)))

(declare-fun b!4646330 () Bool)

(declare-fun res!1952207 () Bool)

(assert (=> b!4646330 (=> (not res!1952207) (not e!2898432))))

(assert (=> b!4646330 (= res!1952207 (containsKey!2691 lt!1810480 (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun b!4646331 () Bool)

(assert (=> b!4646331 (= e!2898432 (contains!14995 lt!1810480 (tuple2!52943 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40)))))))

(assert (= (and d!1465166 res!1952206) b!4646330))

(assert (= (and b!4646330 res!1952207) b!4646331))

(assert (=> d!1465166 m!5511401))

(declare-fun m!5511923 () Bool)

(assert (=> d!1465166 m!5511923))

(declare-fun m!5511925 () Bool)

(assert (=> d!1465166 m!5511925))

(declare-fun m!5511927 () Bool)

(assert (=> b!4646330 m!5511927))

(declare-fun m!5511929 () Bool)

(assert (=> b!4646331 m!5511929))

(assert (=> d!1465010 d!1465166))

(declare-fun b!4646377 () Bool)

(declare-fun c!795060 () Bool)

(assert (=> b!4646377 (= c!795060 ((_ is Cons!51850) (toList!5182 lt!1810085)))))

(declare-fun e!2898466 () List!51974)

(declare-fun e!2898467 () List!51974)

(assert (=> b!4646377 (= e!2898466 e!2898467)))

(declare-fun b!4646378 () Bool)

(declare-fun e!2898468 () List!51974)

(assert (=> b!4646378 (= e!2898468 (insertNoDuplicatedKeys!420 (t!359070 (toList!5182 lt!1810085)) (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))))))

(declare-fun b!4646379 () Bool)

(declare-fun e!2898465 () Unit!116275)

(declare-fun Unit!116444 () Unit!116275)

(assert (=> b!4646379 (= e!2898465 Unit!116444)))

(declare-fun b!4646380 () Bool)

(declare-fun e!2898463 () Bool)

(assert (=> b!4646380 (= e!2898463 (not (containsKey!2691 (toList!5182 lt!1810085) (_1!29765 (h!57980 oldBucket!40)))))))

(declare-fun b!4646381 () Bool)

(declare-fun res!1952233 () Bool)

(declare-fun e!2898462 () Bool)

(assert (=> b!4646381 (=> (not res!1952233) (not e!2898462))))

(declare-fun lt!1810712 () List!51974)

(assert (=> b!4646381 (= res!1952233 (containsKey!2691 lt!1810712 (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun b!4646382 () Bool)

(assert (=> b!4646382 false))

(declare-fun lt!1810710 () Unit!116275)

(declare-fun lt!1810715 () Unit!116275)

(assert (=> b!4646382 (= lt!1810710 lt!1810715)))

(assert (=> b!4646382 (containsKey!2691 (t!359070 (toList!5182 lt!1810085)) (_1!29765 (h!57980 (toList!5182 lt!1810085))))))

(assert (=> b!4646382 (= lt!1810715 (lemmaInGetKeysListThenContainsKey!733 (t!359070 (toList!5182 lt!1810085)) (_1!29765 (h!57980 (toList!5182 lt!1810085)))))))

(declare-fun lt!1810708 () Unit!116275)

(declare-fun lt!1810705 () Unit!116275)

(assert (=> b!4646382 (= lt!1810708 lt!1810705)))

(declare-fun call!324459 () List!51976)

(assert (=> b!4646382 (contains!14992 call!324459 (_1!29765 (h!57980 (toList!5182 lt!1810085))))))

(declare-fun lt!1810711 () List!51974)

(assert (=> b!4646382 (= lt!1810705 (lemmaInListThenGetKeysListContains!729 lt!1810711 (_1!29765 (h!57980 (toList!5182 lt!1810085)))))))

(assert (=> b!4646382 (= lt!1810711 (insertNoDuplicatedKeys!420 (t!359070 (toList!5182 lt!1810085)) (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))))))

(declare-fun Unit!116445 () Unit!116275)

(assert (=> b!4646382 (= e!2898465 Unit!116445)))

(declare-fun d!1465168 () Bool)

(assert (=> d!1465168 e!2898462))

(declare-fun res!1952234 () Bool)

(assert (=> d!1465168 (=> (not res!1952234) (not e!2898462))))

(assert (=> d!1465168 (= res!1952234 (invariantList!1284 lt!1810712))))

(declare-fun e!2898464 () List!51974)

(assert (=> d!1465168 (= lt!1810712 e!2898464)))

(declare-fun c!795056 () Bool)

(assert (=> d!1465168 (= c!795056 (and ((_ is Cons!51850) (toList!5182 lt!1810085)) (= (_1!29765 (h!57980 (toList!5182 lt!1810085))) (_1!29765 (h!57980 oldBucket!40)))))))

(assert (=> d!1465168 (invariantList!1284 (toList!5182 lt!1810085))))

(assert (=> d!1465168 (= (insertNoDuplicatedKeys!420 (toList!5182 lt!1810085) (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))) lt!1810712)))

(declare-fun bm!324451 () Bool)

(assert (=> bm!324451 (= call!324459 (getKeysList!734 (ite c!795056 (toList!5182 lt!1810085) lt!1810711)))))

(declare-fun b!4646383 () Bool)

(declare-fun lt!1810709 () List!51974)

(assert (=> b!4646383 (= e!2898467 lt!1810709)))

(declare-fun call!324458 () List!51974)

(assert (=> b!4646383 (= lt!1810709 call!324458)))

(declare-fun c!795059 () Bool)

(assert (=> b!4646383 (= c!795059 (containsKey!2691 (insertNoDuplicatedKeys!420 (t!359070 (toList!5182 lt!1810085)) (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))) (_1!29765 (h!57980 (toList!5182 lt!1810085)))))))

(declare-fun lt!1810706 () Unit!116275)

(assert (=> b!4646383 (= lt!1810706 e!2898465)))

(declare-fun bm!324452 () Bool)

(declare-fun call!324457 () List!51974)

(assert (=> bm!324452 (= call!324458 call!324457)))

(declare-fun c!795057 () Bool)

(assert (=> bm!324452 (= c!795057 c!795060)))

(declare-fun b!4646384 () Bool)

(assert (=> b!4646384 (= e!2898462 (= (content!8976 (getKeysList!734 lt!1810712)) ((_ map or) (content!8976 (getKeysList!734 (toList!5182 lt!1810085))) (store ((as const (Array K!13210 Bool)) false) (_1!29765 (h!57980 oldBucket!40)) true))))))

(declare-fun b!4646385 () Bool)

(assert (=> b!4646385 (= e!2898467 call!324458)))

(declare-fun c!795058 () Bool)

(declare-fun bm!324453 () Bool)

(declare-fun call!324456 () List!51974)

(declare-fun $colon$colon!1051 (List!51974 tuple2!52942) List!51974)

(assert (=> bm!324453 (= call!324456 ($colon$colon!1051 (ite c!795056 (t!359070 (toList!5182 lt!1810085)) (ite c!795058 (toList!5182 lt!1810085) e!2898468)) (ite (or c!795056 c!795058) (tuple2!52943 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))) (ite c!795060 (h!57980 (toList!5182 lt!1810085)) (tuple2!52943 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40)))))))))

(declare-fun b!4646386 () Bool)

(assert (=> b!4646386 (= e!2898464 call!324456)))

(declare-fun lt!1810707 () List!51976)

(assert (=> b!4646386 (= lt!1810707 call!324459)))

(declare-fun lt!1810713 () Unit!116275)

(declare-fun lemmaSubseqRefl!122 (List!51976) Unit!116275)

(assert (=> b!4646386 (= lt!1810713 (lemmaSubseqRefl!122 lt!1810707))))

(declare-fun subseq!638 (List!51976 List!51976) Bool)

(assert (=> b!4646386 (subseq!638 lt!1810707 lt!1810707)))

(declare-fun lt!1810714 () Unit!116275)

(assert (=> b!4646386 (= lt!1810714 lt!1810713)))

(declare-fun b!4646387 () Bool)

(declare-fun res!1952232 () Bool)

(assert (=> b!4646387 (=> (not res!1952232) (not e!2898462))))

(assert (=> b!4646387 (= res!1952232 (contains!14995 lt!1810712 (tuple2!52943 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40)))))))

(declare-fun bm!324454 () Bool)

(assert (=> bm!324454 (= call!324457 call!324456)))

(declare-fun b!4646388 () Bool)

(assert (=> b!4646388 (= e!2898466 call!324457)))

(declare-fun b!4646389 () Bool)

(assert (=> b!4646389 (= e!2898464 e!2898466)))

(declare-fun res!1952231 () Bool)

(assert (=> b!4646389 (= res!1952231 ((_ is Cons!51850) (toList!5182 lt!1810085)))))

(assert (=> b!4646389 (=> (not res!1952231) (not e!2898463))))

(assert (=> b!4646389 (= c!795058 e!2898463)))

(declare-fun b!4646390 () Bool)

(assert (=> b!4646390 (= e!2898468 Nil!51850)))

(assert (= (and d!1465168 c!795056) b!4646386))

(assert (= (and d!1465168 (not c!795056)) b!4646389))

(assert (= (and b!4646389 res!1952231) b!4646380))

(assert (= (and b!4646389 c!795058) b!4646388))

(assert (= (and b!4646389 (not c!795058)) b!4646377))

(assert (= (and b!4646377 c!795060) b!4646383))

(assert (= (and b!4646377 (not c!795060)) b!4646385))

(assert (= (and b!4646383 c!795059) b!4646382))

(assert (= (and b!4646383 (not c!795059)) b!4646379))

(assert (= (or b!4646383 b!4646385) bm!324452))

(assert (= (and bm!324452 c!795057) b!4646378))

(assert (= (and bm!324452 (not c!795057)) b!4646390))

(assert (= (or b!4646388 bm!324452) bm!324454))

(assert (= (or b!4646386 b!4646382) bm!324451))

(assert (= (or b!4646386 bm!324454) bm!324453))

(assert (= (and d!1465168 res!1952234) b!4646381))

(assert (= (and b!4646381 res!1952233) b!4646387))

(assert (= (and b!4646387 res!1952232) b!4646384))

(declare-fun m!5511999 () Bool)

(assert (=> d!1465168 m!5511999))

(declare-fun m!5512001 () Bool)

(assert (=> d!1465168 m!5512001))

(declare-fun m!5512003 () Bool)

(assert (=> bm!324453 m!5512003))

(declare-fun m!5512005 () Bool)

(assert (=> b!4646383 m!5512005))

(assert (=> b!4646383 m!5512005))

(declare-fun m!5512007 () Bool)

(assert (=> b!4646383 m!5512007))

(declare-fun m!5512009 () Bool)

(assert (=> b!4646381 m!5512009))

(assert (=> b!4646378 m!5512005))

(declare-fun m!5512011 () Bool)

(assert (=> b!4646386 m!5512011))

(declare-fun m!5512013 () Bool)

(assert (=> b!4646386 m!5512013))

(declare-fun m!5512015 () Bool)

(assert (=> b!4646382 m!5512015))

(assert (=> b!4646382 m!5512005))

(declare-fun m!5512017 () Bool)

(assert (=> b!4646382 m!5512017))

(declare-fun m!5512019 () Bool)

(assert (=> b!4646382 m!5512019))

(declare-fun m!5512021 () Bool)

(assert (=> b!4646382 m!5512021))

(declare-fun m!5512023 () Bool)

(assert (=> b!4646384 m!5512023))

(declare-fun m!5512025 () Bool)

(assert (=> b!4646384 m!5512025))

(declare-fun m!5512027 () Bool)

(assert (=> b!4646384 m!5512027))

(assert (=> b!4646384 m!5512023))

(declare-fun m!5512029 () Bool)

(assert (=> b!4646384 m!5512029))

(assert (=> b!4646384 m!5512027))

(declare-fun m!5512031 () Bool)

(assert (=> b!4646384 m!5512031))

(declare-fun m!5512033 () Bool)

(assert (=> bm!324451 m!5512033))

(declare-fun m!5512035 () Bool)

(assert (=> b!4646380 m!5512035))

(declare-fun m!5512037 () Bool)

(assert (=> b!4646387 m!5512037))

(assert (=> d!1465010 d!1465168))

(declare-fun d!1465186 () Bool)

(declare-fun res!1952235 () Bool)

(declare-fun e!2898469 () Bool)

(assert (=> d!1465186 (=> res!1952235 e!2898469)))

(assert (=> d!1465186 (= res!1952235 ((_ is Nil!51850) (Cons!51850 lt!1810091 lt!1810088)))))

(assert (=> d!1465186 (= (forall!10987 (Cons!51850 lt!1810091 lt!1810088) lambda!197598) e!2898469)))

(declare-fun b!4646391 () Bool)

(declare-fun e!2898470 () Bool)

(assert (=> b!4646391 (= e!2898469 e!2898470)))

(declare-fun res!1952236 () Bool)

(assert (=> b!4646391 (=> (not res!1952236) (not e!2898470))))

(assert (=> b!4646391 (= res!1952236 (dynLambda!21559 lambda!197598 (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))

(declare-fun b!4646392 () Bool)

(assert (=> b!4646392 (= e!2898470 (forall!10987 (t!359070 (Cons!51850 lt!1810091 lt!1810088)) lambda!197598))))

(assert (= (and d!1465186 (not res!1952235)) b!4646391))

(assert (= (and b!4646391 res!1952236) b!4646392))

(declare-fun b_lambda!171181 () Bool)

(assert (=> (not b_lambda!171181) (not b!4646391)))

(declare-fun m!5512047 () Bool)

(assert (=> b!4646391 m!5512047))

(declare-fun m!5512049 () Bool)

(assert (=> b!4646392 m!5512049))

(assert (=> d!1465004 d!1465186))

(declare-fun d!1465190 () Bool)

(declare-fun res!1952237 () Bool)

(declare-fun e!2898471 () Bool)

(assert (=> d!1465190 (=> res!1952237 e!2898471)))

(assert (=> d!1465190 (= res!1952237 (not ((_ is Cons!51850) (Cons!51850 lt!1810091 lt!1810088))))))

(assert (=> d!1465190 (= (noDuplicateKeys!1624 (Cons!51850 lt!1810091 lt!1810088)) e!2898471)))

(declare-fun b!4646393 () Bool)

(declare-fun e!2898472 () Bool)

(assert (=> b!4646393 (= e!2898471 e!2898472)))

(declare-fun res!1952238 () Bool)

(assert (=> b!4646393 (=> (not res!1952238) (not e!2898472))))

(assert (=> b!4646393 (= res!1952238 (not (containsKey!2690 (t!359070 (Cons!51850 lt!1810091 lt!1810088)) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))))

(declare-fun b!4646394 () Bool)

(assert (=> b!4646394 (= e!2898472 (noDuplicateKeys!1624 (t!359070 (Cons!51850 lt!1810091 lt!1810088))))))

(assert (= (and d!1465190 (not res!1952237)) b!4646393))

(assert (= (and b!4646393 res!1952238) b!4646394))

(declare-fun m!5512051 () Bool)

(assert (=> b!4646393 m!5512051))

(declare-fun m!5512053 () Bool)

(assert (=> b!4646394 m!5512053))

(assert (=> d!1465004 d!1465190))

(assert (=> d!1464970 d!1465058))

(declare-fun bs!1036857 () Bool)

(declare-fun b!4646399 () Bool)

(assert (= bs!1036857 (and b!4646399 b!4646029)))

(declare-fun lambda!197648 () Int)

(assert (=> bs!1036857 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810445) (= lambda!197648 lambda!197597))))

(declare-fun bs!1036858 () Bool)

(assert (= bs!1036858 (and b!4646399 b!4645912)))

(assert (=> bs!1036858 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810089) (= lambda!197648 lambda!197562))))

(declare-fun bs!1036859 () Bool)

(assert (= bs!1036859 (and b!4646399 b!4645990)))

(assert (=> bs!1036859 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810377) (= lambda!197648 lambda!197582))))

(declare-fun bs!1036860 () Bool)

(assert (= bs!1036860 (and b!4646399 b!4646034)))

(assert (=> bs!1036860 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197648 lambda!197600))))

(declare-fun bs!1036861 () Bool)

(assert (= bs!1036861 (and b!4646399 b!4646000)))

(assert (=> bs!1036861 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810419) (= lambda!197648 lambda!197589))))

(assert (=> bs!1036860 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810466) (= lambda!197648 lambda!197601))))

(declare-fun bs!1036862 () Bool)

(assert (= bs!1036862 (and b!4646399 d!1464936)))

(assert (=> bs!1036862 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810261) (= lambda!197648 lambda!197565))))

(declare-fun bs!1036863 () Bool)

(assert (= bs!1036863 (and b!4646399 b!4645910)))

(assert (=> bs!1036863 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810089) (= lambda!197648 lambda!197563))))

(declare-fun bs!1036864 () Bool)

(assert (= bs!1036864 (and b!4646399 d!1464988)))

(assert (=> bs!1036864 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810403) (= lambda!197648 lambda!197591))))

(declare-fun bs!1036865 () Bool)

(assert (= bs!1036865 (and b!4646399 b!4646191)))

(assert (=> bs!1036865 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810584) (= lambda!197648 lambda!197615))))

(declare-fun bs!1036866 () Bool)

(assert (= bs!1036866 (and b!4646399 b!4645992)))

(assert (=> bs!1036866 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197648 lambda!197579))))

(assert (=> bs!1036865 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197648 lambda!197614))))

(declare-fun bs!1036867 () Bool)

(assert (= bs!1036867 (and b!4646399 d!1465112)))

(assert (=> bs!1036867 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810568) (= lambda!197648 lambda!197616))))

(declare-fun bs!1036868 () Bool)

(assert (= bs!1036868 (and b!4646399 d!1465038)))

(assert (=> bs!1036868 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810466) (= lambda!197648 lambda!197607))))

(declare-fun bs!1036869 () Bool)

(assert (= bs!1036869 (and b!4646399 d!1465004)))

(assert (=> bs!1036869 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810429) (= lambda!197648 lambda!197598))))

(assert (=> bs!1036861 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197648 lambda!197587))))

(declare-fun bs!1036870 () Bool)

(assert (= bs!1036870 (and b!4646399 b!4646002)))

(assert (=> bs!1036870 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197648 lambda!197586))))

(declare-fun bs!1036871 () Bool)

(assert (= bs!1036871 (and b!4646399 d!1464922)))

(assert (=> bs!1036871 (not (= lambda!197648 lambda!197489))))

(declare-fun bs!1036873 () Bool)

(assert (= bs!1036873 (and b!4646399 d!1464982)))

(assert (=> bs!1036873 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810361) (= lambda!197648 lambda!197583))))

(declare-fun bs!1036874 () Bool)

(assert (= bs!1036874 (and b!4646399 b!4646095)))

(assert (=> bs!1036874 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197648 lambda!197609))))

(assert (=> bs!1036859 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197648 lambda!197581))))

(declare-fun bs!1036877 () Bool)

(assert (= bs!1036877 (and b!4646399 b!4646031)))

(assert (=> bs!1036877 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197648 lambda!197595))))

(declare-fun bs!1036879 () Bool)

(assert (= bs!1036879 (and b!4646399 d!1465106)))

(assert (=> bs!1036879 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810377) (= lambda!197648 lambda!197612))))

(declare-fun bs!1036880 () Bool)

(assert (= bs!1036880 (and b!4646399 d!1465044)))

(assert (=> bs!1036880 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810516) (= lambda!197648 lambda!197611))))

(assert (=> bs!1036857 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197648 lambda!197596))))

(assert (=> bs!1036874 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810532) (= lambda!197648 lambda!197610))))

(declare-fun bs!1036884 () Bool)

(assert (= bs!1036884 (and b!4646399 b!4646097)))

(assert (=> bs!1036884 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197648 lambda!197608))))

(declare-fun bs!1036886 () Bool)

(assert (= bs!1036886 (and b!4646399 d!1464926)))

(assert (=> bs!1036886 (not (= lambda!197648 lambda!197490))))

(declare-fun bs!1036887 () Bool)

(assert (= bs!1036887 (and b!4646399 d!1465008)))

(assert (=> bs!1036887 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810450) (= lambda!197648 lambda!197602))))

(declare-fun bs!1036888 () Bool)

(assert (= bs!1036888 (and b!4646399 b!4646193)))

(assert (=> bs!1036888 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197648 lambda!197613))))

(assert (=> bs!1036863 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810277) (= lambda!197648 lambda!197564))))

(declare-fun bs!1036891 () Bool)

(assert (= bs!1036891 (and b!4646399 b!4646036)))

(assert (=> bs!1036891 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197648 lambda!197599))))

(assert (=> b!4646399 true))

(declare-fun bs!1036901 () Bool)

(declare-fun b!4646397 () Bool)

(assert (= bs!1036901 (and b!4646397 b!4646029)))

(declare-fun lambda!197650 () Int)

(assert (=> bs!1036901 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810445) (= lambda!197650 lambda!197597))))

(declare-fun bs!1036902 () Bool)

(assert (= bs!1036902 (and b!4646397 b!4645912)))

(assert (=> bs!1036902 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810089) (= lambda!197650 lambda!197562))))

(declare-fun bs!1036904 () Bool)

(assert (= bs!1036904 (and b!4646397 b!4645990)))

(assert (=> bs!1036904 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810377) (= lambda!197650 lambda!197582))))

(declare-fun bs!1036906 () Bool)

(assert (= bs!1036906 (and b!4646397 b!4646034)))

(assert (=> bs!1036906 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197650 lambda!197600))))

(declare-fun bs!1036908 () Bool)

(assert (= bs!1036908 (and b!4646397 b!4646000)))

(assert (=> bs!1036908 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810419) (= lambda!197650 lambda!197589))))

(assert (=> bs!1036906 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810466) (= lambda!197650 lambda!197601))))

(declare-fun bs!1036910 () Bool)

(assert (= bs!1036910 (and b!4646397 d!1464936)))

(assert (=> bs!1036910 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810261) (= lambda!197650 lambda!197565))))

(declare-fun bs!1036911 () Bool)

(assert (= bs!1036911 (and b!4646397 b!4645910)))

(assert (=> bs!1036911 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810089) (= lambda!197650 lambda!197563))))

(declare-fun bs!1036912 () Bool)

(assert (= bs!1036912 (and b!4646397 d!1464988)))

(assert (=> bs!1036912 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810403) (= lambda!197650 lambda!197591))))

(declare-fun bs!1036913 () Bool)

(assert (= bs!1036913 (and b!4646397 b!4646191)))

(assert (=> bs!1036913 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810584) (= lambda!197650 lambda!197615))))

(declare-fun bs!1036914 () Bool)

(assert (= bs!1036914 (and b!4646397 b!4645992)))

(assert (=> bs!1036914 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197650 lambda!197579))))

(assert (=> bs!1036913 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197650 lambda!197614))))

(declare-fun bs!1036915 () Bool)

(assert (= bs!1036915 (and b!4646397 d!1465112)))

(assert (=> bs!1036915 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810568) (= lambda!197650 lambda!197616))))

(declare-fun bs!1036916 () Bool)

(assert (= bs!1036916 (and b!4646397 d!1465038)))

(assert (=> bs!1036916 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810466) (= lambda!197650 lambda!197607))))

(assert (=> bs!1036908 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197650 lambda!197587))))

(declare-fun bs!1036918 () Bool)

(assert (= bs!1036918 (and b!4646397 b!4646002)))

(assert (=> bs!1036918 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197650 lambda!197586))))

(declare-fun bs!1036920 () Bool)

(assert (= bs!1036920 (and b!4646397 d!1464922)))

(assert (=> bs!1036920 (not (= lambda!197650 lambda!197489))))

(declare-fun bs!1036922 () Bool)

(assert (= bs!1036922 (and b!4646397 d!1464982)))

(assert (=> bs!1036922 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810361) (= lambda!197650 lambda!197583))))

(declare-fun bs!1036924 () Bool)

(assert (= bs!1036924 (and b!4646397 b!4646095)))

(assert (=> bs!1036924 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197650 lambda!197609))))

(assert (=> bs!1036904 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197650 lambda!197581))))

(declare-fun bs!1036927 () Bool)

(assert (= bs!1036927 (and b!4646397 b!4646031)))

(assert (=> bs!1036927 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197650 lambda!197595))))

(declare-fun bs!1036929 () Bool)

(assert (= bs!1036929 (and b!4646397 d!1465106)))

(assert (=> bs!1036929 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810377) (= lambda!197650 lambda!197612))))

(declare-fun bs!1036930 () Bool)

(assert (= bs!1036930 (and b!4646397 d!1465044)))

(assert (=> bs!1036930 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810516) (= lambda!197650 lambda!197611))))

(assert (=> bs!1036901 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197650 lambda!197596))))

(assert (=> bs!1036924 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810532) (= lambda!197650 lambda!197610))))

(declare-fun bs!1036934 () Bool)

(assert (= bs!1036934 (and b!4646397 b!4646399)))

(assert (=> bs!1036934 (= lambda!197650 lambda!197648)))

(declare-fun bs!1036936 () Bool)

(assert (= bs!1036936 (and b!4646397 d!1465004)))

(assert (=> bs!1036936 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810429) (= lambda!197650 lambda!197598))))

(declare-fun bs!1036938 () Bool)

(assert (= bs!1036938 (and b!4646397 b!4646097)))

(assert (=> bs!1036938 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197650 lambda!197608))))

(declare-fun bs!1036940 () Bool)

(assert (= bs!1036940 (and b!4646397 d!1464926)))

(assert (=> bs!1036940 (not (= lambda!197650 lambda!197490))))

(declare-fun bs!1036941 () Bool)

(assert (= bs!1036941 (and b!4646397 d!1465008)))

(assert (=> bs!1036941 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810450) (= lambda!197650 lambda!197602))))

(declare-fun bs!1036943 () Bool)

(assert (= bs!1036943 (and b!4646397 b!4646193)))

(assert (=> bs!1036943 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197650 lambda!197613))))

(assert (=> bs!1036911 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810277) (= lambda!197650 lambda!197564))))

(declare-fun bs!1036946 () Bool)

(assert (= bs!1036946 (and b!4646397 b!4646036)))

(assert (=> bs!1036946 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197650 lambda!197599))))

(assert (=> b!4646397 true))

(declare-fun lambda!197652 () Int)

(declare-fun lt!1810732 () ListMap!4517)

(assert (=> bs!1036901 (= (= lt!1810732 lt!1810445) (= lambda!197652 lambda!197597))))

(assert (=> bs!1036902 (= (= lt!1810732 lt!1810089) (= lambda!197652 lambda!197562))))

(assert (=> bs!1036904 (= (= lt!1810732 lt!1810377) (= lambda!197652 lambda!197582))))

(assert (=> bs!1036906 (= (= lt!1810732 (ListMap!4518 Nil!51850)) (= lambda!197652 lambda!197600))))

(assert (=> bs!1036908 (= (= lt!1810732 lt!1810419) (= lambda!197652 lambda!197589))))

(assert (=> bs!1036906 (= (= lt!1810732 lt!1810466) (= lambda!197652 lambda!197601))))

(assert (=> bs!1036910 (= (= lt!1810732 lt!1810261) (= lambda!197652 lambda!197565))))

(assert (=> bs!1036911 (= (= lt!1810732 lt!1810089) (= lambda!197652 lambda!197563))))

(assert (=> bs!1036912 (= (= lt!1810732 lt!1810403) (= lambda!197652 lambda!197591))))

(assert (=> b!4646397 (= (= lt!1810732 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197652 lambda!197650))))

(assert (=> bs!1036913 (= (= lt!1810732 lt!1810584) (= lambda!197652 lambda!197615))))

(assert (=> bs!1036914 (= (= lt!1810732 (ListMap!4518 Nil!51850)) (= lambda!197652 lambda!197579))))

(assert (=> bs!1036913 (= (= lt!1810732 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197652 lambda!197614))))

(assert (=> bs!1036915 (= (= lt!1810732 lt!1810568) (= lambda!197652 lambda!197616))))

(assert (=> bs!1036916 (= (= lt!1810732 lt!1810466) (= lambda!197652 lambda!197607))))

(assert (=> bs!1036908 (= (= lt!1810732 (ListMap!4518 Nil!51850)) (= lambda!197652 lambda!197587))))

(assert (=> bs!1036918 (= (= lt!1810732 (ListMap!4518 Nil!51850)) (= lambda!197652 lambda!197586))))

(assert (=> bs!1036920 (not (= lambda!197652 lambda!197489))))

(assert (=> bs!1036922 (= (= lt!1810732 lt!1810361) (= lambda!197652 lambda!197583))))

(assert (=> bs!1036924 (= (= lt!1810732 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197652 lambda!197609))))

(assert (=> bs!1036904 (= (= lt!1810732 (ListMap!4518 Nil!51850)) (= lambda!197652 lambda!197581))))

(assert (=> bs!1036927 (= (= lt!1810732 (ListMap!4518 Nil!51850)) (= lambda!197652 lambda!197595))))

(assert (=> bs!1036929 (= (= lt!1810732 lt!1810377) (= lambda!197652 lambda!197612))))

(assert (=> bs!1036930 (= (= lt!1810732 lt!1810516) (= lambda!197652 lambda!197611))))

(assert (=> bs!1036901 (= (= lt!1810732 (ListMap!4518 Nil!51850)) (= lambda!197652 lambda!197596))))

(assert (=> bs!1036924 (= (= lt!1810732 lt!1810532) (= lambda!197652 lambda!197610))))

(assert (=> bs!1036934 (= (= lt!1810732 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197652 lambda!197648))))

(assert (=> bs!1036936 (= (= lt!1810732 lt!1810429) (= lambda!197652 lambda!197598))))

(assert (=> bs!1036938 (= (= lt!1810732 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197652 lambda!197608))))

(assert (=> bs!1036940 (not (= lambda!197652 lambda!197490))))

(assert (=> bs!1036941 (= (= lt!1810732 lt!1810450) (= lambda!197652 lambda!197602))))

(assert (=> bs!1036943 (= (= lt!1810732 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197652 lambda!197613))))

(assert (=> bs!1036911 (= (= lt!1810732 lt!1810277) (= lambda!197652 lambda!197564))))

(assert (=> bs!1036946 (= (= lt!1810732 (ListMap!4518 Nil!51850)) (= lambda!197652 lambda!197599))))

(assert (=> b!4646397 true))

(declare-fun bs!1036955 () Bool)

(declare-fun d!1465192 () Bool)

(assert (= bs!1036955 (and d!1465192 b!4646029)))

(declare-fun lambda!197654 () Int)

(declare-fun lt!1810716 () ListMap!4517)

(assert (=> bs!1036955 (= (= lt!1810716 lt!1810445) (= lambda!197654 lambda!197597))))

(declare-fun bs!1036956 () Bool)

(assert (= bs!1036956 (and d!1465192 b!4645912)))

(assert (=> bs!1036956 (= (= lt!1810716 lt!1810089) (= lambda!197654 lambda!197562))))

(declare-fun bs!1036957 () Bool)

(assert (= bs!1036957 (and d!1465192 b!4645990)))

(assert (=> bs!1036957 (= (= lt!1810716 lt!1810377) (= lambda!197654 lambda!197582))))

(declare-fun bs!1036958 () Bool)

(assert (= bs!1036958 (and d!1465192 b!4646034)))

(assert (=> bs!1036958 (= (= lt!1810716 (ListMap!4518 Nil!51850)) (= lambda!197654 lambda!197600))))

(declare-fun bs!1036960 () Bool)

(assert (= bs!1036960 (and d!1465192 b!4646000)))

(assert (=> bs!1036960 (= (= lt!1810716 lt!1810419) (= lambda!197654 lambda!197589))))

(assert (=> bs!1036958 (= (= lt!1810716 lt!1810466) (= lambda!197654 lambda!197601))))

(declare-fun bs!1036964 () Bool)

(assert (= bs!1036964 (and d!1465192 d!1464936)))

(assert (=> bs!1036964 (= (= lt!1810716 lt!1810261) (= lambda!197654 lambda!197565))))

(declare-fun bs!1036966 () Bool)

(assert (= bs!1036966 (and d!1465192 b!4645910)))

(assert (=> bs!1036966 (= (= lt!1810716 lt!1810089) (= lambda!197654 lambda!197563))))

(declare-fun bs!1036968 () Bool)

(assert (= bs!1036968 (and d!1465192 d!1464988)))

(assert (=> bs!1036968 (= (= lt!1810716 lt!1810403) (= lambda!197654 lambda!197591))))

(declare-fun bs!1036970 () Bool)

(assert (= bs!1036970 (and d!1465192 b!4646397)))

(assert (=> bs!1036970 (= (= lt!1810716 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197654 lambda!197650))))

(declare-fun bs!1036972 () Bool)

(assert (= bs!1036972 (and d!1465192 b!4646191)))

(assert (=> bs!1036972 (= (= lt!1810716 lt!1810584) (= lambda!197654 lambda!197615))))

(declare-fun bs!1036973 () Bool)

(assert (= bs!1036973 (and d!1465192 b!4645992)))

(assert (=> bs!1036973 (= (= lt!1810716 (ListMap!4518 Nil!51850)) (= lambda!197654 lambda!197579))))

(assert (=> bs!1036972 (= (= lt!1810716 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197654 lambda!197614))))

(declare-fun bs!1036976 () Bool)

(assert (= bs!1036976 (and d!1465192 d!1465112)))

(assert (=> bs!1036976 (= (= lt!1810716 lt!1810568) (= lambda!197654 lambda!197616))))

(declare-fun bs!1036977 () Bool)

(assert (= bs!1036977 (and d!1465192 d!1465038)))

(assert (=> bs!1036977 (= (= lt!1810716 lt!1810466) (= lambda!197654 lambda!197607))))

(assert (=> bs!1036960 (= (= lt!1810716 (ListMap!4518 Nil!51850)) (= lambda!197654 lambda!197587))))

(declare-fun bs!1036980 () Bool)

(assert (= bs!1036980 (and d!1465192 b!4646002)))

(assert (=> bs!1036980 (= (= lt!1810716 (ListMap!4518 Nil!51850)) (= lambda!197654 lambda!197586))))

(declare-fun bs!1036982 () Bool)

(assert (= bs!1036982 (and d!1465192 d!1464922)))

(assert (=> bs!1036982 (not (= lambda!197654 lambda!197489))))

(declare-fun bs!1036984 () Bool)

(assert (= bs!1036984 (and d!1465192 d!1464982)))

(assert (=> bs!1036984 (= (= lt!1810716 lt!1810361) (= lambda!197654 lambda!197583))))

(declare-fun bs!1036985 () Bool)

(assert (= bs!1036985 (and d!1465192 b!4646095)))

(assert (=> bs!1036985 (= (= lt!1810716 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197654 lambda!197609))))

(assert (=> bs!1036957 (= (= lt!1810716 (ListMap!4518 Nil!51850)) (= lambda!197654 lambda!197581))))

(declare-fun bs!1036988 () Bool)

(assert (= bs!1036988 (and d!1465192 b!4646031)))

(assert (=> bs!1036988 (= (= lt!1810716 (ListMap!4518 Nil!51850)) (= lambda!197654 lambda!197595))))

(declare-fun bs!1036990 () Bool)

(assert (= bs!1036990 (and d!1465192 d!1465106)))

(assert (=> bs!1036990 (= (= lt!1810716 lt!1810377) (= lambda!197654 lambda!197612))))

(declare-fun bs!1036992 () Bool)

(assert (= bs!1036992 (and d!1465192 d!1465044)))

(assert (=> bs!1036992 (= (= lt!1810716 lt!1810516) (= lambda!197654 lambda!197611))))

(assert (=> bs!1036955 (= (= lt!1810716 (ListMap!4518 Nil!51850)) (= lambda!197654 lambda!197596))))

(assert (=> bs!1036985 (= (= lt!1810716 lt!1810532) (= lambda!197654 lambda!197610))))

(declare-fun bs!1036996 () Bool)

(assert (= bs!1036996 (and d!1465192 b!4646399)))

(assert (=> bs!1036996 (= (= lt!1810716 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197654 lambda!197648))))

(assert (=> bs!1036970 (= (= lt!1810716 lt!1810732) (= lambda!197654 lambda!197652))))

(declare-fun bs!1036998 () Bool)

(assert (= bs!1036998 (and d!1465192 d!1465004)))

(assert (=> bs!1036998 (= (= lt!1810716 lt!1810429) (= lambda!197654 lambda!197598))))

(declare-fun bs!1037000 () Bool)

(assert (= bs!1037000 (and d!1465192 b!4646097)))

(assert (=> bs!1037000 (= (= lt!1810716 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197654 lambda!197608))))

(declare-fun bs!1037002 () Bool)

(assert (= bs!1037002 (and d!1465192 d!1464926)))

(assert (=> bs!1037002 (not (= lambda!197654 lambda!197490))))

(declare-fun bs!1037003 () Bool)

(assert (= bs!1037003 (and d!1465192 d!1465008)))

(assert (=> bs!1037003 (= (= lt!1810716 lt!1810450) (= lambda!197654 lambda!197602))))

(declare-fun bs!1037005 () Bool)

(assert (= bs!1037005 (and d!1465192 b!4646193)))

(assert (=> bs!1037005 (= (= lt!1810716 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197654 lambda!197613))))

(assert (=> bs!1036966 (= (= lt!1810716 lt!1810277) (= lambda!197654 lambda!197564))))

(declare-fun bs!1037006 () Bool)

(assert (= bs!1037006 (and d!1465192 b!4646036)))

(assert (=> bs!1037006 (= (= lt!1810716 (ListMap!4518 Nil!51850)) (= lambda!197654 lambda!197599))))

(assert (=> d!1465192 true))

(declare-fun e!2898478 () ListMap!4517)

(assert (=> b!4646397 (= e!2898478 lt!1810732)))

(declare-fun lt!1810717 () ListMap!4517)

(assert (=> b!4646397 (= lt!1810717 (+!1968 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (h!57980 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))))))))

(assert (=> b!4646397 (= lt!1810732 (addToMapMapFromBucket!1081 (t!359070 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (+!1968 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (h!57980 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))))))))

(declare-fun lt!1810719 () Unit!116275)

(declare-fun call!324460 () Unit!116275)

(assert (=> b!4646397 (= lt!1810719 call!324460)))

(assert (=> b!4646397 (forall!10987 (toList!5182 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) lambda!197650)))

(declare-fun lt!1810733 () Unit!116275)

(assert (=> b!4646397 (= lt!1810733 lt!1810719)))

(assert (=> b!4646397 (forall!10987 (toList!5182 lt!1810717) lambda!197652)))

(declare-fun lt!1810729 () Unit!116275)

(declare-fun Unit!116459 () Unit!116275)

(assert (=> b!4646397 (= lt!1810729 Unit!116459)))

(declare-fun call!324463 () Bool)

(assert (=> b!4646397 call!324463))

(declare-fun lt!1810728 () Unit!116275)

(declare-fun Unit!116460 () Unit!116275)

(assert (=> b!4646397 (= lt!1810728 Unit!116460)))

(declare-fun lt!1810724 () Unit!116275)

(declare-fun Unit!116461 () Unit!116275)

(assert (=> b!4646397 (= lt!1810724 Unit!116461)))

(declare-fun lt!1810723 () Unit!116275)

(assert (=> b!4646397 (= lt!1810723 (forallContained!3202 (toList!5182 lt!1810717) lambda!197652 (h!57980 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))))))))

(assert (=> b!4646397 (contains!14991 lt!1810717 (_1!29765 (h!57980 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))))))))

(declare-fun lt!1810731 () Unit!116275)

(declare-fun Unit!116462 () Unit!116275)

(assert (=> b!4646397 (= lt!1810731 Unit!116462)))

(assert (=> b!4646397 (contains!14991 lt!1810732 (_1!29765 (h!57980 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))))))))

(declare-fun lt!1810718 () Unit!116275)

(declare-fun Unit!116463 () Unit!116275)

(assert (=> b!4646397 (= lt!1810718 Unit!116463)))

(assert (=> b!4646397 (forall!10987 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lambda!197652)))

(declare-fun lt!1810736 () Unit!116275)

(declare-fun Unit!116464 () Unit!116275)

(assert (=> b!4646397 (= lt!1810736 Unit!116464)))

(declare-fun call!324461 () Bool)

(assert (=> b!4646397 call!324461))

(declare-fun lt!1810730 () Unit!116275)

(declare-fun Unit!116465 () Unit!116275)

(assert (=> b!4646397 (= lt!1810730 Unit!116465)))

(declare-fun lt!1810726 () Unit!116275)

(declare-fun Unit!116466 () Unit!116275)

(assert (=> b!4646397 (= lt!1810726 Unit!116466)))

(declare-fun lt!1810737 () Unit!116275)

(assert (=> b!4646397 (= lt!1810737 (addForallContainsKeyThenBeforeAdding!583 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810732 (_1!29765 (h!57980 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))))) (_2!29765 (h!57980 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))))))))

(assert (=> b!4646397 (forall!10987 (toList!5182 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) lambda!197652)))

(declare-fun lt!1810727 () Unit!116275)

(assert (=> b!4646397 (= lt!1810727 lt!1810737)))

(assert (=> b!4646397 (forall!10987 (toList!5182 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) lambda!197652)))

(declare-fun lt!1810722 () Unit!116275)

(declare-fun Unit!116467 () Unit!116275)

(assert (=> b!4646397 (= lt!1810722 Unit!116467)))

(declare-fun res!1952243 () Bool)

(assert (=> b!4646397 (= res!1952243 (forall!10987 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lambda!197652))))

(declare-fun e!2898475 () Bool)

(assert (=> b!4646397 (=> (not res!1952243) (not e!2898475))))

(assert (=> b!4646397 e!2898475))

(declare-fun lt!1810735 () Unit!116275)

(declare-fun Unit!116468 () Unit!116275)

(assert (=> b!4646397 (= lt!1810735 Unit!116468)))

(declare-fun e!2898476 () Bool)

(assert (=> d!1465192 e!2898476))

(declare-fun res!1952244 () Bool)

(assert (=> d!1465192 (=> (not res!1952244) (not e!2898476))))

(assert (=> d!1465192 (= res!1952244 (forall!10987 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lambda!197654))))

(assert (=> d!1465192 (= lt!1810716 e!2898478)))

(declare-fun c!795061 () Bool)

(assert (=> d!1465192 (= c!795061 ((_ is Nil!51850) (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))))))

(assert (=> d!1465192 (noDuplicateKeys!1624 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))))))

(assert (=> d!1465192 (= (addToMapMapFromBucket!1081 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) lt!1810716)))

(declare-fun b!4646398 () Bool)

(declare-fun res!1952241 () Bool)

(assert (=> b!4646398 (=> (not res!1952241) (not e!2898476))))

(assert (=> b!4646398 (= res!1952241 (forall!10987 (toList!5182 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) lambda!197654))))

(declare-fun bm!324455 () Bool)

(assert (=> bm!324455 (= call!324463 (forall!10987 (ite c!795061 (toList!5182 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (t!359070 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))))) (ite c!795061 lambda!197648 lambda!197652)))))

(assert (=> b!4646399 (= e!2898478 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))))))

(declare-fun lt!1810721 () Unit!116275)

(assert (=> b!4646399 (= lt!1810721 call!324460)))

(assert (=> b!4646399 call!324461))

(declare-fun lt!1810720 () Unit!116275)

(assert (=> b!4646399 (= lt!1810720 lt!1810721)))

(assert (=> b!4646399 call!324463))

(declare-fun lt!1810725 () Unit!116275)

(declare-fun Unit!116469 () Unit!116275)

(assert (=> b!4646399 (= lt!1810725 Unit!116469)))

(declare-fun bm!324456 () Bool)

(assert (=> bm!324456 (= call!324461 (forall!10987 (ite c!795061 (toList!5182 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (toList!5182 lt!1810717)) (ite c!795061 lambda!197648 lambda!197652)))))

(declare-fun b!4646400 () Bool)

(assert (=> b!4646400 (= e!2898476 (invariantList!1284 (toList!5182 lt!1810716)))))

(declare-fun b!4646401 () Bool)

(assert (=> b!4646401 (= e!2898475 (forall!10987 (toList!5182 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) lambda!197652))))

(declare-fun bm!324457 () Bool)

(assert (=> bm!324457 (= call!324460 (lemmaContainsAllItsOwnKeys!584 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))))))

(assert (= (and d!1465192 c!795061) b!4646399))

(assert (= (and d!1465192 (not c!795061)) b!4646397))

(assert (= (and b!4646397 res!1952243) b!4646401))

(assert (= (or b!4646399 b!4646397) bm!324457))

(assert (= (or b!4646399 b!4646397) bm!324455))

(assert (= (or b!4646399 b!4646397) bm!324456))

(assert (= (and d!1465192 res!1952244) b!4646398))

(assert (= (and b!4646398 res!1952241) b!4646400))

(declare-fun m!5512103 () Bool)

(assert (=> d!1465192 m!5512103))

(declare-fun m!5512105 () Bool)

(assert (=> d!1465192 m!5512105))

(declare-fun m!5512109 () Bool)

(assert (=> bm!324455 m!5512109))

(declare-fun m!5512113 () Bool)

(assert (=> b!4646401 m!5512113))

(assert (=> bm!324457 m!5511319))

(declare-fun m!5512117 () Bool)

(assert (=> bm!324457 m!5512117))

(declare-fun m!5512121 () Bool)

(assert (=> bm!324456 m!5512121))

(declare-fun m!5512125 () Bool)

(assert (=> b!4646400 m!5512125))

(declare-fun m!5512129 () Bool)

(assert (=> b!4646398 m!5512129))

(assert (=> b!4646397 m!5511319))

(declare-fun m!5512131 () Bool)

(assert (=> b!4646397 m!5512131))

(assert (=> b!4646397 m!5512113))

(declare-fun m!5512133 () Bool)

(assert (=> b!4646397 m!5512133))

(assert (=> b!4646397 m!5512133))

(declare-fun m!5512135 () Bool)

(assert (=> b!4646397 m!5512135))

(declare-fun m!5512137 () Bool)

(assert (=> b!4646397 m!5512137))

(declare-fun m!5512139 () Bool)

(assert (=> b!4646397 m!5512139))

(declare-fun m!5512141 () Bool)

(assert (=> b!4646397 m!5512141))

(assert (=> b!4646397 m!5511319))

(declare-fun m!5512143 () Bool)

(assert (=> b!4646397 m!5512143))

(assert (=> b!4646397 m!5512143))

(declare-fun m!5512145 () Bool)

(assert (=> b!4646397 m!5512145))

(assert (=> b!4646397 m!5512113))

(declare-fun m!5512147 () Bool)

(assert (=> b!4646397 m!5512147))

(assert (=> b!4646007 d!1465192))

(declare-fun bs!1037007 () Bool)

(declare-fun d!1465200 () Bool)

(assert (= bs!1037007 (and d!1465200 d!1464958)))

(declare-fun lambda!197656 () Int)

(assert (=> bs!1037007 (= lambda!197656 lambda!197574)))

(declare-fun bs!1037008 () Bool)

(assert (= bs!1037008 (and d!1465200 d!1464980)))

(assert (=> bs!1037008 (= lambda!197656 lambda!197578)))

(declare-fun bs!1037009 () Bool)

(assert (= bs!1037009 (and d!1465200 d!1464998)))

(assert (=> bs!1037009 (= lambda!197656 lambda!197593)))

(declare-fun bs!1037010 () Bool)

(assert (= bs!1037010 (and d!1465200 d!1465000)))

(assert (=> bs!1037010 (= lambda!197656 lambda!197594)))

(declare-fun lt!1810770 () ListMap!4517)

(assert (=> d!1465200 (invariantList!1284 (toList!5182 lt!1810770))))

(declare-fun e!2898488 () ListMap!4517)

(assert (=> d!1465200 (= lt!1810770 e!2898488)))

(declare-fun c!795066 () Bool)

(assert (=> d!1465200 (= c!795066 ((_ is Cons!51851) (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))))))

(assert (=> d!1465200 (forall!10988 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)) lambda!197656)))

(assert (=> d!1465200 (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) lt!1810770)))

(declare-fun b!4646418 () Bool)

(assert (=> b!4646418 (= e!2898488 (addToMapMapFromBucket!1081 (_2!29766 (h!57981 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (extractMap!1680 (t!359071 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))))))))

(declare-fun b!4646419 () Bool)

(assert (=> b!4646419 (= e!2898488 (ListMap!4518 Nil!51850))))

(assert (= (and d!1465200 c!795066) b!4646418))

(assert (= (and d!1465200 (not c!795066)) b!4646419))

(declare-fun m!5512169 () Bool)

(assert (=> d!1465200 m!5512169))

(declare-fun m!5512171 () Bool)

(assert (=> d!1465200 m!5512171))

(declare-fun m!5512173 () Bool)

(assert (=> b!4646418 m!5512173))

(assert (=> b!4646418 m!5512173))

(declare-fun m!5512175 () Bool)

(assert (=> b!4646418 m!5512175))

(assert (=> b!4646007 d!1465200))

(declare-fun bs!1037011 () Bool)

(declare-fun d!1465208 () Bool)

(assert (= bs!1037011 (and d!1465208 b!4646029)))

(declare-fun lambda!197659 () Int)

(assert (=> bs!1037011 (= (= lt!1810089 lt!1810445) (= lambda!197659 lambda!197597))))

(declare-fun bs!1037012 () Bool)

(assert (= bs!1037012 (and d!1465208 b!4645912)))

(assert (=> bs!1037012 (= lambda!197659 lambda!197562)))

(declare-fun bs!1037013 () Bool)

(assert (= bs!1037013 (and d!1465208 b!4645990)))

(assert (=> bs!1037013 (= (= lt!1810089 lt!1810377) (= lambda!197659 lambda!197582))))

(declare-fun bs!1037014 () Bool)

(assert (= bs!1037014 (and d!1465208 b!4646034)))

(assert (=> bs!1037014 (= (= lt!1810089 (ListMap!4518 Nil!51850)) (= lambda!197659 lambda!197600))))

(declare-fun bs!1037015 () Bool)

(assert (= bs!1037015 (and d!1465208 b!4646000)))

(assert (=> bs!1037015 (= (= lt!1810089 lt!1810419) (= lambda!197659 lambda!197589))))

(assert (=> bs!1037014 (= (= lt!1810089 lt!1810466) (= lambda!197659 lambda!197601))))

(declare-fun bs!1037016 () Bool)

(assert (= bs!1037016 (and d!1465208 d!1464936)))

(assert (=> bs!1037016 (= (= lt!1810089 lt!1810261) (= lambda!197659 lambda!197565))))

(declare-fun bs!1037017 () Bool)

(assert (= bs!1037017 (and d!1465208 b!4645910)))

(assert (=> bs!1037017 (= lambda!197659 lambda!197563)))

(declare-fun bs!1037018 () Bool)

(assert (= bs!1037018 (and d!1465208 d!1464988)))

(assert (=> bs!1037018 (= (= lt!1810089 lt!1810403) (= lambda!197659 lambda!197591))))

(declare-fun bs!1037019 () Bool)

(assert (= bs!1037019 (and d!1465208 b!4646191)))

(assert (=> bs!1037019 (= (= lt!1810089 lt!1810584) (= lambda!197659 lambda!197615))))

(declare-fun bs!1037020 () Bool)

(assert (= bs!1037020 (and d!1465208 b!4645992)))

(assert (=> bs!1037020 (= (= lt!1810089 (ListMap!4518 Nil!51850)) (= lambda!197659 lambda!197579))))

(assert (=> bs!1037019 (= (= lt!1810089 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197659 lambda!197614))))

(declare-fun bs!1037021 () Bool)

(assert (= bs!1037021 (and d!1465208 d!1465112)))

(assert (=> bs!1037021 (= (= lt!1810089 lt!1810568) (= lambda!197659 lambda!197616))))

(declare-fun bs!1037022 () Bool)

(assert (= bs!1037022 (and d!1465208 d!1465038)))

(assert (=> bs!1037022 (= (= lt!1810089 lt!1810466) (= lambda!197659 lambda!197607))))

(assert (=> bs!1037015 (= (= lt!1810089 (ListMap!4518 Nil!51850)) (= lambda!197659 lambda!197587))))

(declare-fun bs!1037023 () Bool)

(assert (= bs!1037023 (and d!1465208 b!4646002)))

(assert (=> bs!1037023 (= (= lt!1810089 (ListMap!4518 Nil!51850)) (= lambda!197659 lambda!197586))))

(declare-fun bs!1037024 () Bool)

(assert (= bs!1037024 (and d!1465208 d!1464922)))

(assert (=> bs!1037024 (not (= lambda!197659 lambda!197489))))

(declare-fun bs!1037025 () Bool)

(assert (= bs!1037025 (and d!1465208 d!1464982)))

(assert (=> bs!1037025 (= (= lt!1810089 lt!1810361) (= lambda!197659 lambda!197583))))

(declare-fun bs!1037026 () Bool)

(assert (= bs!1037026 (and d!1465208 b!4646095)))

(assert (=> bs!1037026 (= (= lt!1810089 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197659 lambda!197609))))

(assert (=> bs!1037013 (= (= lt!1810089 (ListMap!4518 Nil!51850)) (= lambda!197659 lambda!197581))))

(declare-fun bs!1037027 () Bool)

(assert (= bs!1037027 (and d!1465208 b!4646031)))

(assert (=> bs!1037027 (= (= lt!1810089 (ListMap!4518 Nil!51850)) (= lambda!197659 lambda!197595))))

(declare-fun bs!1037028 () Bool)

(assert (= bs!1037028 (and d!1465208 d!1465106)))

(assert (=> bs!1037028 (= (= lt!1810089 lt!1810377) (= lambda!197659 lambda!197612))))

(declare-fun bs!1037029 () Bool)

(assert (= bs!1037029 (and d!1465208 d!1465192)))

(assert (=> bs!1037029 (= (= lt!1810089 lt!1810716) (= lambda!197659 lambda!197654))))

(declare-fun bs!1037030 () Bool)

(assert (= bs!1037030 (and d!1465208 b!4646397)))

(assert (=> bs!1037030 (= (= lt!1810089 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197659 lambda!197650))))

(declare-fun bs!1037031 () Bool)

(assert (= bs!1037031 (and d!1465208 d!1465044)))

(assert (=> bs!1037031 (= (= lt!1810089 lt!1810516) (= lambda!197659 lambda!197611))))

(assert (=> bs!1037011 (= (= lt!1810089 (ListMap!4518 Nil!51850)) (= lambda!197659 lambda!197596))))

(assert (=> bs!1037026 (= (= lt!1810089 lt!1810532) (= lambda!197659 lambda!197610))))

(declare-fun bs!1037032 () Bool)

(assert (= bs!1037032 (and d!1465208 b!4646399)))

(assert (=> bs!1037032 (= (= lt!1810089 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197659 lambda!197648))))

(assert (=> bs!1037030 (= (= lt!1810089 lt!1810732) (= lambda!197659 lambda!197652))))

(declare-fun bs!1037033 () Bool)

(assert (= bs!1037033 (and d!1465208 d!1465004)))

(assert (=> bs!1037033 (= (= lt!1810089 lt!1810429) (= lambda!197659 lambda!197598))))

(declare-fun bs!1037034 () Bool)

(assert (= bs!1037034 (and d!1465208 b!4646097)))

(assert (=> bs!1037034 (= (= lt!1810089 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197659 lambda!197608))))

(declare-fun bs!1037035 () Bool)

(assert (= bs!1037035 (and d!1465208 d!1464926)))

(assert (=> bs!1037035 (not (= lambda!197659 lambda!197490))))

(declare-fun bs!1037036 () Bool)

(assert (= bs!1037036 (and d!1465208 d!1465008)))

(assert (=> bs!1037036 (= (= lt!1810089 lt!1810450) (= lambda!197659 lambda!197602))))

(declare-fun bs!1037037 () Bool)

(assert (= bs!1037037 (and d!1465208 b!4646193)))

(assert (=> bs!1037037 (= (= lt!1810089 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197659 lambda!197613))))

(assert (=> bs!1037017 (= (= lt!1810089 lt!1810277) (= lambda!197659 lambda!197564))))

(declare-fun bs!1037038 () Bool)

(assert (= bs!1037038 (and d!1465208 b!4646036)))

(assert (=> bs!1037038 (= (= lt!1810089 (ListMap!4518 Nil!51850)) (= lambda!197659 lambda!197599))))

(assert (=> d!1465208 true))

(assert (=> d!1465208 (forall!10987 (toList!5182 lt!1810089) lambda!197659)))

(declare-fun lt!1810781 () Unit!116275)

(declare-fun choose!31910 (ListMap!4517) Unit!116275)

(assert (=> d!1465208 (= lt!1810781 (choose!31910 lt!1810089))))

(assert (=> d!1465208 (= (lemmaContainsAllItsOwnKeys!584 lt!1810089) lt!1810781)))

(declare-fun bs!1037039 () Bool)

(assert (= bs!1037039 d!1465208))

(declare-fun m!5512201 () Bool)

(assert (=> bs!1037039 m!5512201))

(declare-fun m!5512203 () Bool)

(assert (=> bs!1037039 m!5512203))

(assert (=> bm!324404 d!1465208))

(declare-fun d!1465216 () Bool)

(declare-fun res!1952263 () Bool)

(declare-fun e!2898503 () Bool)

(assert (=> d!1465216 (=> res!1952263 e!2898503)))

(assert (=> d!1465216 (= res!1952263 ((_ is Nil!51850) oldBucket!40))))

(assert (=> d!1465216 (= (forall!10987 oldBucket!40 lambda!197602) e!2898503)))

(declare-fun b!4646437 () Bool)

(declare-fun e!2898504 () Bool)

(assert (=> b!4646437 (= e!2898503 e!2898504)))

(declare-fun res!1952264 () Bool)

(assert (=> b!4646437 (=> (not res!1952264) (not e!2898504))))

(assert (=> b!4646437 (= res!1952264 (dynLambda!21559 lambda!197602 (h!57980 oldBucket!40)))))

(declare-fun b!4646438 () Bool)

(assert (=> b!4646438 (= e!2898504 (forall!10987 (t!359070 oldBucket!40) lambda!197602))))

(assert (= (and d!1465216 (not res!1952263)) b!4646437))

(assert (= (and b!4646437 res!1952264) b!4646438))

(declare-fun b_lambda!171193 () Bool)

(assert (=> (not b_lambda!171193) (not b!4646437)))

(declare-fun m!5512205 () Bool)

(assert (=> b!4646437 m!5512205))

(declare-fun m!5512207 () Bool)

(assert (=> b!4646438 m!5512207))

(assert (=> d!1465008 d!1465216))

(assert (=> d!1465008 d!1464930))

(declare-fun d!1465218 () Bool)

(declare-fun res!1952265 () Bool)

(declare-fun e!2898505 () Bool)

(assert (=> d!1465218 (=> res!1952265 e!2898505)))

(assert (=> d!1465218 (= res!1952265 ((_ is Nil!51850) newBucket!224))))

(assert (=> d!1465218 (= (forall!10987 newBucket!224 lambda!197489) e!2898505)))

(declare-fun b!4646439 () Bool)

(declare-fun e!2898506 () Bool)

(assert (=> b!4646439 (= e!2898505 e!2898506)))

(declare-fun res!1952266 () Bool)

(assert (=> b!4646439 (=> (not res!1952266) (not e!2898506))))

(assert (=> b!4646439 (= res!1952266 (dynLambda!21559 lambda!197489 (h!57980 newBucket!224)))))

(declare-fun b!4646440 () Bool)

(assert (=> b!4646440 (= e!2898506 (forall!10987 (t!359070 newBucket!224) lambda!197489))))

(assert (= (and d!1465218 (not res!1952265)) b!4646439))

(assert (= (and b!4646439 res!1952266) b!4646440))

(declare-fun b_lambda!171195 () Bool)

(assert (=> (not b_lambda!171195) (not b!4646439)))

(declare-fun m!5512209 () Bool)

(assert (=> b!4646439 m!5512209))

(declare-fun m!5512211 () Bool)

(assert (=> b!4646440 m!5512211))

(assert (=> d!1464922 d!1465218))

(declare-fun d!1465220 () Bool)

(assert (=> d!1465220 (= (invariantList!1284 (toList!5182 lt!1810429)) (noDuplicatedKeys!342 (toList!5182 lt!1810429)))))

(declare-fun bs!1037040 () Bool)

(assert (= bs!1037040 d!1465220))

(declare-fun m!5512213 () Bool)

(assert (=> bs!1037040 m!5512213))

(assert (=> b!4646032 d!1465220))

(declare-fun bs!1037041 () Bool)

(declare-fun d!1465222 () Bool)

(assert (= bs!1037041 (and d!1465222 b!4646029)))

(declare-fun lambda!197660 () Int)

(assert (=> bs!1037041 (= (= (ListMap!4518 Nil!51850) lt!1810445) (= lambda!197660 lambda!197597))))

(declare-fun bs!1037042 () Bool)

(assert (= bs!1037042 (and d!1465222 b!4645912)))

(assert (=> bs!1037042 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197660 lambda!197562))))

(declare-fun bs!1037043 () Bool)

(assert (= bs!1037043 (and d!1465222 b!4645990)))

(assert (=> bs!1037043 (= (= (ListMap!4518 Nil!51850) lt!1810377) (= lambda!197660 lambda!197582))))

(declare-fun bs!1037044 () Bool)

(assert (= bs!1037044 (and d!1465222 b!4646034)))

(assert (=> bs!1037044 (= lambda!197660 lambda!197600)))

(declare-fun bs!1037045 () Bool)

(assert (= bs!1037045 (and d!1465222 b!4646000)))

(assert (=> bs!1037045 (= (= (ListMap!4518 Nil!51850) lt!1810419) (= lambda!197660 lambda!197589))))

(assert (=> bs!1037044 (= (= (ListMap!4518 Nil!51850) lt!1810466) (= lambda!197660 lambda!197601))))

(declare-fun bs!1037046 () Bool)

(assert (= bs!1037046 (and d!1465222 d!1464936)))

(assert (=> bs!1037046 (= (= (ListMap!4518 Nil!51850) lt!1810261) (= lambda!197660 lambda!197565))))

(declare-fun bs!1037047 () Bool)

(assert (= bs!1037047 (and d!1465222 b!4645910)))

(assert (=> bs!1037047 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197660 lambda!197563))))

(declare-fun bs!1037048 () Bool)

(assert (= bs!1037048 (and d!1465222 d!1464988)))

(assert (=> bs!1037048 (= (= (ListMap!4518 Nil!51850) lt!1810403) (= lambda!197660 lambda!197591))))

(declare-fun bs!1037049 () Bool)

(assert (= bs!1037049 (and d!1465222 b!4646191)))

(assert (=> bs!1037049 (= (= (ListMap!4518 Nil!51850) lt!1810584) (= lambda!197660 lambda!197615))))

(declare-fun bs!1037050 () Bool)

(assert (= bs!1037050 (and d!1465222 b!4645992)))

(assert (=> bs!1037050 (= lambda!197660 lambda!197579)))

(assert (=> bs!1037049 (= (= (ListMap!4518 Nil!51850) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197660 lambda!197614))))

(declare-fun bs!1037051 () Bool)

(assert (= bs!1037051 (and d!1465222 d!1465112)))

(assert (=> bs!1037051 (= (= (ListMap!4518 Nil!51850) lt!1810568) (= lambda!197660 lambda!197616))))

(declare-fun bs!1037052 () Bool)

(assert (= bs!1037052 (and d!1465222 d!1465038)))

(assert (=> bs!1037052 (= (= (ListMap!4518 Nil!51850) lt!1810466) (= lambda!197660 lambda!197607))))

(assert (=> bs!1037045 (= lambda!197660 lambda!197587)))

(declare-fun bs!1037053 () Bool)

(assert (= bs!1037053 (and d!1465222 b!4646002)))

(assert (=> bs!1037053 (= lambda!197660 lambda!197586)))

(declare-fun bs!1037054 () Bool)

(assert (= bs!1037054 (and d!1465222 d!1464922)))

(assert (=> bs!1037054 (not (= lambda!197660 lambda!197489))))

(declare-fun bs!1037055 () Bool)

(assert (= bs!1037055 (and d!1465222 d!1464982)))

(assert (=> bs!1037055 (= (= (ListMap!4518 Nil!51850) lt!1810361) (= lambda!197660 lambda!197583))))

(declare-fun bs!1037057 () Bool)

(assert (= bs!1037057 (and d!1465222 b!4646095)))

(assert (=> bs!1037057 (= (= (ListMap!4518 Nil!51850) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197660 lambda!197609))))

(assert (=> bs!1037043 (= lambda!197660 lambda!197581)))

(declare-fun bs!1037058 () Bool)

(assert (= bs!1037058 (and d!1465222 b!4646031)))

(assert (=> bs!1037058 (= lambda!197660 lambda!197595)))

(declare-fun bs!1037059 () Bool)

(assert (= bs!1037059 (and d!1465222 d!1465106)))

(assert (=> bs!1037059 (= (= (ListMap!4518 Nil!51850) lt!1810377) (= lambda!197660 lambda!197612))))

(declare-fun bs!1037060 () Bool)

(assert (= bs!1037060 (and d!1465222 d!1465192)))

(assert (=> bs!1037060 (= (= (ListMap!4518 Nil!51850) lt!1810716) (= lambda!197660 lambda!197654))))

(declare-fun bs!1037061 () Bool)

(assert (= bs!1037061 (and d!1465222 b!4646397)))

(assert (=> bs!1037061 (= (= (ListMap!4518 Nil!51850) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197660 lambda!197650))))

(declare-fun bs!1037062 () Bool)

(assert (= bs!1037062 (and d!1465222 d!1465044)))

(assert (=> bs!1037062 (= (= (ListMap!4518 Nil!51850) lt!1810516) (= lambda!197660 lambda!197611))))

(assert (=> bs!1037041 (= lambda!197660 lambda!197596)))

(assert (=> bs!1037057 (= (= (ListMap!4518 Nil!51850) lt!1810532) (= lambda!197660 lambda!197610))))

(declare-fun bs!1037063 () Bool)

(assert (= bs!1037063 (and d!1465222 b!4646399)))

(assert (=> bs!1037063 (= (= (ListMap!4518 Nil!51850) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197660 lambda!197648))))

(assert (=> bs!1037061 (= (= (ListMap!4518 Nil!51850) lt!1810732) (= lambda!197660 lambda!197652))))

(declare-fun bs!1037064 () Bool)

(assert (= bs!1037064 (and d!1465222 d!1465004)))

(assert (=> bs!1037064 (= (= (ListMap!4518 Nil!51850) lt!1810429) (= lambda!197660 lambda!197598))))

(declare-fun bs!1037065 () Bool)

(assert (= bs!1037065 (and d!1465222 d!1465208)))

(assert (=> bs!1037065 (= (= (ListMap!4518 Nil!51850) lt!1810089) (= lambda!197660 lambda!197659))))

(declare-fun bs!1037067 () Bool)

(assert (= bs!1037067 (and d!1465222 b!4646097)))

(assert (=> bs!1037067 (= (= (ListMap!4518 Nil!51850) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197660 lambda!197608))))

(declare-fun bs!1037068 () Bool)

(assert (= bs!1037068 (and d!1465222 d!1464926)))

(assert (=> bs!1037068 (not (= lambda!197660 lambda!197490))))

(declare-fun bs!1037069 () Bool)

(assert (= bs!1037069 (and d!1465222 d!1465008)))

(assert (=> bs!1037069 (= (= (ListMap!4518 Nil!51850) lt!1810450) (= lambda!197660 lambda!197602))))

(declare-fun bs!1037070 () Bool)

(assert (= bs!1037070 (and d!1465222 b!4646193)))

(assert (=> bs!1037070 (= (= (ListMap!4518 Nil!51850) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197660 lambda!197613))))

(assert (=> bs!1037047 (= (= (ListMap!4518 Nil!51850) lt!1810277) (= lambda!197660 lambda!197564))))

(declare-fun bs!1037071 () Bool)

(assert (= bs!1037071 (and d!1465222 b!4646036)))

(assert (=> bs!1037071 (= lambda!197660 lambda!197599)))

(assert (=> d!1465222 true))

(assert (=> d!1465222 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197660)))

(declare-fun lt!1810782 () Unit!116275)

(assert (=> d!1465222 (= lt!1810782 (choose!31910 (ListMap!4518 Nil!51850)))))

(assert (=> d!1465222 (= (lemmaContainsAllItsOwnKeys!584 (ListMap!4518 Nil!51850)) lt!1810782)))

(declare-fun bs!1037072 () Bool)

(assert (= bs!1037072 d!1465222))

(declare-fun m!5512233 () Bool)

(assert (=> bs!1037072 m!5512233))

(declare-fun m!5512235 () Bool)

(assert (=> bs!1037072 m!5512235))

(assert (=> bm!324423 d!1465222))

(assert (=> b!4646038 d!1465028))

(declare-fun d!1465232 () Bool)

(assert (=> d!1465232 (= (invariantList!1284 (toList!5182 lt!1810261)) (noDuplicatedKeys!342 (toList!5182 lt!1810261)))))

(declare-fun bs!1037073 () Bool)

(assert (= bs!1037073 d!1465232))

(declare-fun m!5512237 () Bool)

(assert (=> bs!1037073 m!5512237))

(assert (=> b!4645913 d!1465232))

(declare-fun d!1465234 () Bool)

(declare-fun c!795072 () Bool)

(assert (=> d!1465234 (= c!795072 ((_ is Nil!51850) (toList!5182 (+!1968 lt!1810085 (h!57980 oldBucket!40)))))))

(declare-fun e!2898516 () (InoxSet tuple2!52942))

(assert (=> d!1465234 (= (content!8975 (toList!5182 (+!1968 lt!1810085 (h!57980 oldBucket!40)))) e!2898516)))

(declare-fun b!4646453 () Bool)

(assert (=> b!4646453 (= e!2898516 ((as const (Array tuple2!52942 Bool)) false))))

(declare-fun b!4646454 () Bool)

(assert (=> b!4646454 (= e!2898516 ((_ map or) (store ((as const (Array tuple2!52942 Bool)) false) (h!57980 (toList!5182 (+!1968 lt!1810085 (h!57980 oldBucket!40)))) true) (content!8975 (t!359070 (toList!5182 (+!1968 lt!1810085 (h!57980 oldBucket!40)))))))))

(assert (= (and d!1465234 c!795072) b!4646453))

(assert (= (and d!1465234 (not c!795072)) b!4646454))

(declare-fun m!5512239 () Bool)

(assert (=> b!4646454 m!5512239))

(declare-fun m!5512241 () Bool)

(assert (=> b!4646454 m!5512241))

(assert (=> d!1465014 d!1465234))

(declare-fun d!1465236 () Bool)

(declare-fun c!795073 () Bool)

(assert (=> d!1465236 (= c!795073 ((_ is Nil!51850) (toList!5182 (addToMapMapFromBucket!1081 oldBucket!40 (ListMap!4518 Nil!51850)))))))

(declare-fun e!2898517 () (InoxSet tuple2!52942))

(assert (=> d!1465236 (= (content!8975 (toList!5182 (addToMapMapFromBucket!1081 oldBucket!40 (ListMap!4518 Nil!51850)))) e!2898517)))

(declare-fun b!4646455 () Bool)

(assert (=> b!4646455 (= e!2898517 ((as const (Array tuple2!52942 Bool)) false))))

(declare-fun b!4646456 () Bool)

(assert (=> b!4646456 (= e!2898517 ((_ map or) (store ((as const (Array tuple2!52942 Bool)) false) (h!57980 (toList!5182 (addToMapMapFromBucket!1081 oldBucket!40 (ListMap!4518 Nil!51850)))) true) (content!8975 (t!359070 (toList!5182 (addToMapMapFromBucket!1081 oldBucket!40 (ListMap!4518 Nil!51850)))))))))

(assert (= (and d!1465236 c!795073) b!4646455))

(assert (= (and d!1465236 (not c!795073)) b!4646456))

(declare-fun m!5512243 () Bool)

(assert (=> b!4646456 m!5512243))

(declare-fun m!5512245 () Bool)

(assert (=> b!4646456 m!5512245))

(assert (=> d!1465014 d!1465236))

(declare-fun d!1465238 () Bool)

(declare-fun res!1952283 () Bool)

(declare-fun e!2898526 () Bool)

(assert (=> d!1465238 (=> res!1952283 e!2898526)))

(assert (=> d!1465238 (= res!1952283 (or ((_ is Nil!51851) (toList!5181 (ListLongMap!3740 lt!1810086))) ((_ is Nil!51851) (t!359071 (toList!5181 (ListLongMap!3740 lt!1810086))))))))

(assert (=> d!1465238 (= (isStrictlySorted!567 (toList!5181 (ListLongMap!3740 lt!1810086))) e!2898526)))

(declare-fun b!4646465 () Bool)

(declare-fun e!2898527 () Bool)

(assert (=> b!4646465 (= e!2898526 e!2898527)))

(declare-fun res!1952284 () Bool)

(assert (=> b!4646465 (=> (not res!1952284) (not e!2898527))))

(assert (=> b!4646465 (= res!1952284 (bvslt (_1!29766 (h!57981 (toList!5181 (ListLongMap!3740 lt!1810086)))) (_1!29766 (h!57981 (t!359071 (toList!5181 (ListLongMap!3740 lt!1810086)))))))))

(declare-fun b!4646466 () Bool)

(assert (=> b!4646466 (= e!2898527 (isStrictlySorted!567 (t!359071 (toList!5181 (ListLongMap!3740 lt!1810086)))))))

(assert (= (and d!1465238 (not res!1952283)) b!4646465))

(assert (= (and b!4646465 res!1952284) b!4646466))

(declare-fun m!5512253 () Bool)

(assert (=> b!4646466 m!5512253))

(assert (=> d!1464934 d!1465238))

(declare-fun d!1465248 () Bool)

(declare-fun res!1952287 () Bool)

(declare-fun e!2898530 () Bool)

(assert (=> d!1465248 (=> res!1952287 e!2898530)))

(assert (=> d!1465248 (= res!1952287 ((_ is Nil!51850) oldBucket!40))))

(assert (=> d!1465248 (= (forall!10987 oldBucket!40 lambda!197490) e!2898530)))

(declare-fun b!4646469 () Bool)

(declare-fun e!2898531 () Bool)

(assert (=> b!4646469 (= e!2898530 e!2898531)))

(declare-fun res!1952288 () Bool)

(assert (=> b!4646469 (=> (not res!1952288) (not e!2898531))))

(assert (=> b!4646469 (= res!1952288 (dynLambda!21559 lambda!197490 (h!57980 oldBucket!40)))))

(declare-fun b!4646470 () Bool)

(assert (=> b!4646470 (= e!2898531 (forall!10987 (t!359070 oldBucket!40) lambda!197490))))

(assert (= (and d!1465248 (not res!1952287)) b!4646469))

(assert (= (and b!4646469 res!1952288) b!4646470))

(declare-fun b_lambda!171201 () Bool)

(assert (=> (not b_lambda!171201) (not b!4646469)))

(declare-fun m!5512255 () Bool)

(assert (=> b!4646469 m!5512255))

(declare-fun m!5512257 () Bool)

(assert (=> b!4646470 m!5512257))

(assert (=> d!1464926 d!1465248))

(declare-fun d!1465250 () Bool)

(declare-fun res!1952289 () Bool)

(declare-fun e!2898532 () Bool)

(assert (=> d!1465250 (=> res!1952289 e!2898532)))

(assert (=> d!1465250 (= res!1952289 ((_ is Nil!51850) (toList!5182 (ListMap!4518 Nil!51850))))))

(assert (=> d!1465250 (= (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197598) e!2898532)))

(declare-fun b!4646471 () Bool)

(declare-fun e!2898533 () Bool)

(assert (=> b!4646471 (= e!2898532 e!2898533)))

(declare-fun res!1952290 () Bool)

(assert (=> b!4646471 (=> (not res!1952290) (not e!2898533))))

(assert (=> b!4646471 (= res!1952290 (dynLambda!21559 lambda!197598 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))))))

(declare-fun b!4646472 () Bool)

(assert (=> b!4646472 (= e!2898533 (forall!10987 (t!359070 (toList!5182 (ListMap!4518 Nil!51850))) lambda!197598))))

(assert (= (and d!1465250 (not res!1952289)) b!4646471))

(assert (= (and b!4646471 res!1952290) b!4646472))

(declare-fun b_lambda!171203 () Bool)

(assert (=> (not b_lambda!171203) (not b!4646471)))

(declare-fun m!5512263 () Bool)

(assert (=> b!4646471 m!5512263))

(declare-fun m!5512265 () Bool)

(assert (=> b!4646472 m!5512265))

(assert (=> b!4646030 d!1465250))

(declare-fun d!1465254 () Bool)

(declare-fun res!1952293 () Bool)

(declare-fun e!2898536 () Bool)

(assert (=> d!1465254 (=> res!1952293 e!2898536)))

(assert (=> d!1465254 (= res!1952293 ((_ is Nil!51850) (ite c!794990 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810451))))))

(assert (=> d!1465254 (= (forall!10987 (ite c!794990 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810451)) (ite c!794990 lambda!197599 lambda!197601)) e!2898536)))

(declare-fun b!4646475 () Bool)

(declare-fun e!2898537 () Bool)

(assert (=> b!4646475 (= e!2898536 e!2898537)))

(declare-fun res!1952294 () Bool)

(assert (=> b!4646475 (=> (not res!1952294) (not e!2898537))))

(assert (=> b!4646475 (= res!1952294 (dynLambda!21559 (ite c!794990 lambda!197599 lambda!197601) (h!57980 (ite c!794990 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810451)))))))

(declare-fun b!4646476 () Bool)

(assert (=> b!4646476 (= e!2898537 (forall!10987 (t!359070 (ite c!794990 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810451))) (ite c!794990 lambda!197599 lambda!197601)))))

(assert (= (and d!1465254 (not res!1952293)) b!4646475))

(assert (= (and b!4646475 res!1952294) b!4646476))

(declare-fun b_lambda!171205 () Bool)

(assert (=> (not b_lambda!171205) (not b!4646475)))

(declare-fun m!5512269 () Bool)

(assert (=> b!4646475 m!5512269))

(declare-fun m!5512271 () Bool)

(assert (=> b!4646476 m!5512271))

(assert (=> bm!324425 d!1465254))

(assert (=> bm!324414 d!1465222))

(declare-fun b!4646479 () Bool)

(declare-fun e!2898539 () Option!11803)

(assert (=> b!4646479 (= e!2898539 (getValueByKey!1591 (t!359070 (toList!5182 lt!1810481)) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun b!4646478 () Bool)

(declare-fun e!2898538 () Option!11803)

(assert (=> b!4646478 (= e!2898538 e!2898539)))

(declare-fun c!795075 () Bool)

(assert (=> b!4646478 (= c!795075 (and ((_ is Cons!51850) (toList!5182 lt!1810481)) (not (= (_1!29765 (h!57980 (toList!5182 lt!1810481))) (_1!29765 (h!57980 oldBucket!40))))))))

(declare-fun b!4646480 () Bool)

(assert (=> b!4646480 (= e!2898539 None!11802)))

(declare-fun b!4646477 () Bool)

(assert (=> b!4646477 (= e!2898538 (Some!11802 (_2!29765 (h!57980 (toList!5182 lt!1810481)))))))

(declare-fun d!1465258 () Bool)

(declare-fun c!795074 () Bool)

(assert (=> d!1465258 (= c!795074 (and ((_ is Cons!51850) (toList!5182 lt!1810481)) (= (_1!29765 (h!57980 (toList!5182 lt!1810481))) (_1!29765 (h!57980 oldBucket!40)))))))

(assert (=> d!1465258 (= (getValueByKey!1591 (toList!5182 lt!1810481) (_1!29765 (h!57980 oldBucket!40))) e!2898538)))

(assert (= (and d!1465258 c!795074) b!4646477))

(assert (= (and d!1465258 (not c!795074)) b!4646478))

(assert (= (and b!4646478 c!795075) b!4646479))

(assert (= (and b!4646478 (not c!795075)) b!4646480))

(declare-fun m!5512273 () Bool)

(assert (=> b!4646479 m!5512273))

(assert (=> b!4646043 d!1465258))

(declare-fun d!1465260 () Bool)

(declare-fun res!1952295 () Bool)

(declare-fun e!2898540 () Bool)

(assert (=> d!1465260 (=> res!1952295 e!2898540)))

(assert (=> d!1465260 (= res!1952295 ((_ is Nil!51850) (toList!5182 (ListMap!4518 Nil!51850))))))

(assert (=> d!1465260 (= (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197602) e!2898540)))

(declare-fun b!4646481 () Bool)

(declare-fun e!2898541 () Bool)

(assert (=> b!4646481 (= e!2898540 e!2898541)))

(declare-fun res!1952296 () Bool)

(assert (=> b!4646481 (=> (not res!1952296) (not e!2898541))))

(assert (=> b!4646481 (= res!1952296 (dynLambda!21559 lambda!197602 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))))))

(declare-fun b!4646482 () Bool)

(assert (=> b!4646482 (= e!2898541 (forall!10987 (t!359070 (toList!5182 (ListMap!4518 Nil!51850))) lambda!197602))))

(assert (= (and d!1465260 (not res!1952295)) b!4646481))

(assert (= (and b!4646481 res!1952296) b!4646482))

(declare-fun b_lambda!171207 () Bool)

(assert (=> (not b_lambda!171207) (not b!4646481)))

(declare-fun m!5512275 () Bool)

(assert (=> b!4646481 m!5512275))

(declare-fun m!5512277 () Bool)

(assert (=> b!4646482 m!5512277))

(assert (=> b!4646035 d!1465260))

(declare-fun d!1465262 () Bool)

(declare-fun lt!1810788 () Bool)

(assert (=> d!1465262 (= lt!1810788 (select (content!8975 (toList!5182 lt!1810485)) lt!1810091))))

(declare-fun e!2898543 () Bool)

(assert (=> d!1465262 (= lt!1810788 e!2898543)))

(declare-fun res!1952297 () Bool)

(assert (=> d!1465262 (=> (not res!1952297) (not e!2898543))))

(assert (=> d!1465262 (= res!1952297 ((_ is Cons!51850) (toList!5182 lt!1810485)))))

(assert (=> d!1465262 (= (contains!14995 (toList!5182 lt!1810485) lt!1810091) lt!1810788)))

(declare-fun b!4646483 () Bool)

(declare-fun e!2898542 () Bool)

(assert (=> b!4646483 (= e!2898543 e!2898542)))

(declare-fun res!1952298 () Bool)

(assert (=> b!4646483 (=> res!1952298 e!2898542)))

(assert (=> b!4646483 (= res!1952298 (= (h!57980 (toList!5182 lt!1810485)) lt!1810091))))

(declare-fun b!4646484 () Bool)

(assert (=> b!4646484 (= e!2898542 (contains!14995 (t!359070 (toList!5182 lt!1810485)) lt!1810091))))

(assert (= (and d!1465262 res!1952297) b!4646483))

(assert (= (and b!4646483 (not res!1952298)) b!4646484))

(declare-fun m!5512279 () Bool)

(assert (=> d!1465262 m!5512279))

(declare-fun m!5512281 () Bool)

(assert (=> d!1465262 m!5512281))

(declare-fun m!5512283 () Bool)

(assert (=> b!4646484 m!5512283))

(assert (=> b!4646046 d!1465262))

(declare-fun d!1465264 () Bool)

(declare-fun res!1952299 () Bool)

(declare-fun e!2898544 () Bool)

(assert (=> d!1465264 (=> res!1952299 e!2898544)))

(assert (=> d!1465264 (= res!1952299 (and ((_ is Cons!51850) lt!1810428) (= (_1!29765 (h!57980 lt!1810428)) key!4968)))))

(assert (=> d!1465264 (= (containsKey!2690 lt!1810428 key!4968) e!2898544)))

(declare-fun b!4646485 () Bool)

(declare-fun e!2898545 () Bool)

(assert (=> b!4646485 (= e!2898544 e!2898545)))

(declare-fun res!1952300 () Bool)

(assert (=> b!4646485 (=> (not res!1952300) (not e!2898545))))

(assert (=> b!4646485 (= res!1952300 ((_ is Cons!51850) lt!1810428))))

(declare-fun b!4646486 () Bool)

(assert (=> b!4646486 (= e!2898545 (containsKey!2690 (t!359070 lt!1810428) key!4968))))

(assert (= (and d!1465264 (not res!1952299)) b!4646485))

(assert (= (and b!4646485 res!1952300) b!4646486))

(declare-fun m!5512285 () Bool)

(assert (=> b!4646486 m!5512285))

(assert (=> d!1465002 d!1465264))

(assert (=> d!1465002 d!1464930))

(declare-fun d!1465266 () Bool)

(declare-fun res!1952301 () Bool)

(declare-fun e!2898546 () Bool)

(assert (=> d!1465266 (=> res!1952301 e!2898546)))

(assert (=> d!1465266 (= res!1952301 ((_ is Nil!51850) (ite c!794957 (toList!5182 lt!1810089) (t!359070 oldBucket!40))))))

(assert (=> d!1465266 (= (forall!10987 (ite c!794957 (toList!5182 lt!1810089) (t!359070 oldBucket!40)) (ite c!794957 lambda!197562 lambda!197564)) e!2898546)))

(declare-fun b!4646487 () Bool)

(declare-fun e!2898547 () Bool)

(assert (=> b!4646487 (= e!2898546 e!2898547)))

(declare-fun res!1952302 () Bool)

(assert (=> b!4646487 (=> (not res!1952302) (not e!2898547))))

(assert (=> b!4646487 (= res!1952302 (dynLambda!21559 (ite c!794957 lambda!197562 lambda!197564) (h!57980 (ite c!794957 (toList!5182 lt!1810089) (t!359070 oldBucket!40)))))))

(declare-fun b!4646488 () Bool)

(assert (=> b!4646488 (= e!2898547 (forall!10987 (t!359070 (ite c!794957 (toList!5182 lt!1810089) (t!359070 oldBucket!40))) (ite c!794957 lambda!197562 lambda!197564)))))

(assert (= (and d!1465266 (not res!1952301)) b!4646487))

(assert (= (and b!4646487 res!1952302) b!4646488))

(declare-fun b_lambda!171209 () Bool)

(assert (=> (not b_lambda!171209) (not b!4646487)))

(declare-fun m!5512293 () Bool)

(assert (=> b!4646487 m!5512293))

(declare-fun m!5512297 () Bool)

(assert (=> b!4646488 m!5512297))

(assert (=> bm!324402 d!1465266))

(declare-fun d!1465272 () Bool)

(declare-fun res!1952305 () Bool)

(declare-fun e!2898550 () Bool)

(assert (=> d!1465272 (=> res!1952305 e!2898550)))

(assert (=> d!1465272 (= res!1952305 ((_ is Nil!51850) lt!1810088))))

(assert (=> d!1465272 (= (forall!10987 lt!1810088 lambda!197591) e!2898550)))

(declare-fun b!4646491 () Bool)

(declare-fun e!2898551 () Bool)

(assert (=> b!4646491 (= e!2898550 e!2898551)))

(declare-fun res!1952306 () Bool)

(assert (=> b!4646491 (=> (not res!1952306) (not e!2898551))))

(assert (=> b!4646491 (= res!1952306 (dynLambda!21559 lambda!197591 (h!57980 lt!1810088)))))

(declare-fun b!4646492 () Bool)

(assert (=> b!4646492 (= e!2898551 (forall!10987 (t!359070 lt!1810088) lambda!197591))))

(assert (= (and d!1465272 (not res!1952305)) b!4646491))

(assert (= (and b!4646491 res!1952306) b!4646492))

(declare-fun b_lambda!171213 () Bool)

(assert (=> (not b_lambda!171213) (not b!4646491)))

(declare-fun m!5512301 () Bool)

(assert (=> b!4646491 m!5512301))

(declare-fun m!5512303 () Bool)

(assert (=> b!4646492 m!5512303))

(assert (=> d!1464988 d!1465272))

(assert (=> d!1464988 d!1465086))

(declare-fun d!1465276 () Bool)

(declare-fun lt!1810789 () Bool)

(assert (=> d!1465276 (= lt!1810789 (select (content!8976 e!2898195) key!4968))))

(declare-fun e!2898554 () Bool)

(assert (=> d!1465276 (= lt!1810789 e!2898554)))

(declare-fun res!1952310 () Bool)

(assert (=> d!1465276 (=> (not res!1952310) (not e!2898554))))

(assert (=> d!1465276 (= res!1952310 ((_ is Cons!51852) e!2898195))))

(assert (=> d!1465276 (= (contains!14992 e!2898195 key!4968) lt!1810789)))

(declare-fun b!4646495 () Bool)

(declare-fun e!2898555 () Bool)

(assert (=> b!4646495 (= e!2898554 e!2898555)))

(declare-fun res!1952309 () Bool)

(assert (=> b!4646495 (=> res!1952309 e!2898555)))

(assert (=> b!4646495 (= res!1952309 (= (h!57984 e!2898195) key!4968))))

(declare-fun b!4646496 () Bool)

(assert (=> b!4646496 (= e!2898555 (contains!14992 (t!359074 e!2898195) key!4968))))

(assert (= (and d!1465276 res!1952310) b!4646495))

(assert (= (and b!4646495 (not res!1952309)) b!4646496))

(declare-fun m!5512309 () Bool)

(assert (=> d!1465276 m!5512309))

(declare-fun m!5512311 () Bool)

(assert (=> d!1465276 m!5512311))

(declare-fun m!5512313 () Bool)

(assert (=> b!4646496 m!5512313))

(assert (=> bm!324411 d!1465276))

(declare-fun d!1465280 () Bool)

(assert (=> d!1465280 (= (invariantList!1284 (toList!5182 lt!1810361)) (noDuplicatedKeys!342 (toList!5182 lt!1810361)))))

(declare-fun bs!1037102 () Bool)

(assert (= bs!1037102 d!1465280))

(declare-fun m!5512315 () Bool)

(assert (=> bs!1037102 m!5512315))

(assert (=> b!4645993 d!1465280))

(declare-fun d!1465282 () Bool)

(assert (=> d!1465282 (dynLambda!21559 lambda!197564 (h!57980 oldBucket!40))))

(declare-fun lt!1810790 () Unit!116275)

(assert (=> d!1465282 (= lt!1810790 (choose!31901 (toList!5182 lt!1810262) lambda!197564 (h!57980 oldBucket!40)))))

(declare-fun e!2898558 () Bool)

(assert (=> d!1465282 e!2898558))

(declare-fun res!1952313 () Bool)

(assert (=> d!1465282 (=> (not res!1952313) (not e!2898558))))

(assert (=> d!1465282 (= res!1952313 (forall!10987 (toList!5182 lt!1810262) lambda!197564))))

(assert (=> d!1465282 (= (forallContained!3202 (toList!5182 lt!1810262) lambda!197564 (h!57980 oldBucket!40)) lt!1810790)))

(declare-fun b!4646499 () Bool)

(assert (=> b!4646499 (= e!2898558 (contains!14995 (toList!5182 lt!1810262) (h!57980 oldBucket!40)))))

(assert (= (and d!1465282 res!1952313) b!4646499))

(declare-fun b_lambda!171219 () Bool)

(assert (=> (not b_lambda!171219) (not d!1465282)))

(declare-fun m!5512321 () Bool)

(assert (=> d!1465282 m!5512321))

(declare-fun m!5512323 () Bool)

(assert (=> d!1465282 m!5512323))

(assert (=> d!1465282 m!5511069))

(declare-fun m!5512325 () Bool)

(assert (=> b!4646499 m!5512325))

(assert (=> b!4645910 d!1465282))

(declare-fun d!1465286 () Bool)

(declare-fun e!2898561 () Bool)

(assert (=> d!1465286 e!2898561))

(declare-fun res!1952317 () Bool)

(assert (=> d!1465286 (=> (not res!1952317) (not e!2898561))))

(declare-fun lt!1810793 () ListMap!4517)

(assert (=> d!1465286 (= res!1952317 (contains!14991 lt!1810793 (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun lt!1810792 () List!51974)

(assert (=> d!1465286 (= lt!1810793 (ListMap!4518 lt!1810792))))

(declare-fun lt!1810791 () Unit!116275)

(declare-fun lt!1810794 () Unit!116275)

(assert (=> d!1465286 (= lt!1810791 lt!1810794)))

(assert (=> d!1465286 (= (getValueByKey!1591 lt!1810792 (_1!29765 (h!57980 oldBucket!40))) (Some!11802 (_2!29765 (h!57980 oldBucket!40))))))

(assert (=> d!1465286 (= lt!1810794 (lemmaContainsTupThenGetReturnValue!912 lt!1810792 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))))))

(assert (=> d!1465286 (= lt!1810792 (insertNoDuplicatedKeys!420 (toList!5182 lt!1810089) (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))))))

(assert (=> d!1465286 (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810793)))

(declare-fun b!4646502 () Bool)

(declare-fun res!1952316 () Bool)

(assert (=> b!4646502 (=> (not res!1952316) (not e!2898561))))

(assert (=> b!4646502 (= res!1952316 (= (getValueByKey!1591 (toList!5182 lt!1810793) (_1!29765 (h!57980 oldBucket!40))) (Some!11802 (_2!29765 (h!57980 oldBucket!40)))))))

(declare-fun b!4646503 () Bool)

(assert (=> b!4646503 (= e!2898561 (contains!14995 (toList!5182 lt!1810793) (h!57980 oldBucket!40)))))

(assert (= (and d!1465286 res!1952317) b!4646502))

(assert (= (and b!4646502 res!1952316) b!4646503))

(declare-fun m!5512327 () Bool)

(assert (=> d!1465286 m!5512327))

(declare-fun m!5512329 () Bool)

(assert (=> d!1465286 m!5512329))

(declare-fun m!5512331 () Bool)

(assert (=> d!1465286 m!5512331))

(declare-fun m!5512333 () Bool)

(assert (=> d!1465286 m!5512333))

(declare-fun m!5512335 () Bool)

(assert (=> b!4646502 m!5512335))

(declare-fun m!5512337 () Bool)

(assert (=> b!4646503 m!5512337))

(assert (=> b!4645910 d!1465286))

(declare-fun bs!1037103 () Bool)

(declare-fun d!1465288 () Bool)

(assert (= bs!1037103 (and d!1465288 b!4646029)))

(declare-fun lambda!197662 () Int)

(assert (=> bs!1037103 (= (= lt!1810277 lt!1810445) (= lambda!197662 lambda!197597))))

(declare-fun bs!1037104 () Bool)

(assert (= bs!1037104 (and d!1465288 b!4645912)))

(assert (=> bs!1037104 (= (= lt!1810277 lt!1810089) (= lambda!197662 lambda!197562))))

(declare-fun bs!1037105 () Bool)

(assert (= bs!1037105 (and d!1465288 b!4645990)))

(assert (=> bs!1037105 (= (= lt!1810277 lt!1810377) (= lambda!197662 lambda!197582))))

(declare-fun bs!1037106 () Bool)

(assert (= bs!1037106 (and d!1465288 b!4646034)))

(assert (=> bs!1037106 (= (= lt!1810277 (ListMap!4518 Nil!51850)) (= lambda!197662 lambda!197600))))

(declare-fun bs!1037107 () Bool)

(assert (= bs!1037107 (and d!1465288 b!4646000)))

(assert (=> bs!1037107 (= (= lt!1810277 lt!1810419) (= lambda!197662 lambda!197589))))

(assert (=> bs!1037106 (= (= lt!1810277 lt!1810466) (= lambda!197662 lambda!197601))))

(declare-fun bs!1037108 () Bool)

(assert (= bs!1037108 (and d!1465288 b!4645910)))

(assert (=> bs!1037108 (= (= lt!1810277 lt!1810089) (= lambda!197662 lambda!197563))))

(declare-fun bs!1037109 () Bool)

(assert (= bs!1037109 (and d!1465288 d!1464988)))

(assert (=> bs!1037109 (= (= lt!1810277 lt!1810403) (= lambda!197662 lambda!197591))))

(declare-fun bs!1037110 () Bool)

(assert (= bs!1037110 (and d!1465288 b!4646191)))

(assert (=> bs!1037110 (= (= lt!1810277 lt!1810584) (= lambda!197662 lambda!197615))))

(declare-fun bs!1037111 () Bool)

(assert (= bs!1037111 (and d!1465288 b!4645992)))

(assert (=> bs!1037111 (= (= lt!1810277 (ListMap!4518 Nil!51850)) (= lambda!197662 lambda!197579))))

(assert (=> bs!1037110 (= (= lt!1810277 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197662 lambda!197614))))

(declare-fun bs!1037113 () Bool)

(assert (= bs!1037113 (and d!1465288 d!1465112)))

(assert (=> bs!1037113 (= (= lt!1810277 lt!1810568) (= lambda!197662 lambda!197616))))

(declare-fun bs!1037114 () Bool)

(assert (= bs!1037114 (and d!1465288 d!1465038)))

(assert (=> bs!1037114 (= (= lt!1810277 lt!1810466) (= lambda!197662 lambda!197607))))

(assert (=> bs!1037107 (= (= lt!1810277 (ListMap!4518 Nil!51850)) (= lambda!197662 lambda!197587))))

(declare-fun bs!1037115 () Bool)

(assert (= bs!1037115 (and d!1465288 b!4646002)))

(assert (=> bs!1037115 (= (= lt!1810277 (ListMap!4518 Nil!51850)) (= lambda!197662 lambda!197586))))

(declare-fun bs!1037116 () Bool)

(assert (= bs!1037116 (and d!1465288 d!1464922)))

(assert (=> bs!1037116 (not (= lambda!197662 lambda!197489))))

(declare-fun bs!1037117 () Bool)

(assert (= bs!1037117 (and d!1465288 d!1464982)))

(assert (=> bs!1037117 (= (= lt!1810277 lt!1810361) (= lambda!197662 lambda!197583))))

(declare-fun bs!1037118 () Bool)

(assert (= bs!1037118 (and d!1465288 b!4646095)))

(assert (=> bs!1037118 (= (= lt!1810277 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197662 lambda!197609))))

(assert (=> bs!1037105 (= (= lt!1810277 (ListMap!4518 Nil!51850)) (= lambda!197662 lambda!197581))))

(declare-fun bs!1037119 () Bool)

(assert (= bs!1037119 (and d!1465288 b!4646031)))

(assert (=> bs!1037119 (= (= lt!1810277 (ListMap!4518 Nil!51850)) (= lambda!197662 lambda!197595))))

(declare-fun bs!1037120 () Bool)

(assert (= bs!1037120 (and d!1465288 d!1465106)))

(assert (=> bs!1037120 (= (= lt!1810277 lt!1810377) (= lambda!197662 lambda!197612))))

(declare-fun bs!1037121 () Bool)

(assert (= bs!1037121 (and d!1465288 d!1465222)))

(assert (=> bs!1037121 (= (= lt!1810277 (ListMap!4518 Nil!51850)) (= lambda!197662 lambda!197660))))

(declare-fun bs!1037122 () Bool)

(assert (= bs!1037122 (and d!1465288 d!1464936)))

(assert (=> bs!1037122 (= (= lt!1810277 lt!1810261) (= lambda!197662 lambda!197565))))

(declare-fun bs!1037123 () Bool)

(assert (= bs!1037123 (and d!1465288 d!1465192)))

(assert (=> bs!1037123 (= (= lt!1810277 lt!1810716) (= lambda!197662 lambda!197654))))

(declare-fun bs!1037124 () Bool)

(assert (= bs!1037124 (and d!1465288 b!4646397)))

(assert (=> bs!1037124 (= (= lt!1810277 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197662 lambda!197650))))

(declare-fun bs!1037125 () Bool)

(assert (= bs!1037125 (and d!1465288 d!1465044)))

(assert (=> bs!1037125 (= (= lt!1810277 lt!1810516) (= lambda!197662 lambda!197611))))

(assert (=> bs!1037103 (= (= lt!1810277 (ListMap!4518 Nil!51850)) (= lambda!197662 lambda!197596))))

(assert (=> bs!1037118 (= (= lt!1810277 lt!1810532) (= lambda!197662 lambda!197610))))

(declare-fun bs!1037126 () Bool)

(assert (= bs!1037126 (and d!1465288 b!4646399)))

(assert (=> bs!1037126 (= (= lt!1810277 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197662 lambda!197648))))

(assert (=> bs!1037124 (= (= lt!1810277 lt!1810732) (= lambda!197662 lambda!197652))))

(declare-fun bs!1037127 () Bool)

(assert (= bs!1037127 (and d!1465288 d!1465004)))

(assert (=> bs!1037127 (= (= lt!1810277 lt!1810429) (= lambda!197662 lambda!197598))))

(declare-fun bs!1037128 () Bool)

(assert (= bs!1037128 (and d!1465288 d!1465208)))

(assert (=> bs!1037128 (= (= lt!1810277 lt!1810089) (= lambda!197662 lambda!197659))))

(declare-fun bs!1037129 () Bool)

(assert (= bs!1037129 (and d!1465288 b!4646097)))

(assert (=> bs!1037129 (= (= lt!1810277 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197662 lambda!197608))))

(declare-fun bs!1037130 () Bool)

(assert (= bs!1037130 (and d!1465288 d!1464926)))

(assert (=> bs!1037130 (not (= lambda!197662 lambda!197490))))

(declare-fun bs!1037131 () Bool)

(assert (= bs!1037131 (and d!1465288 d!1465008)))

(assert (=> bs!1037131 (= (= lt!1810277 lt!1810450) (= lambda!197662 lambda!197602))))

(declare-fun bs!1037132 () Bool)

(assert (= bs!1037132 (and d!1465288 b!4646193)))

(assert (=> bs!1037132 (= (= lt!1810277 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197662 lambda!197613))))

(assert (=> bs!1037108 (= lambda!197662 lambda!197564)))

(declare-fun bs!1037133 () Bool)

(assert (= bs!1037133 (and d!1465288 b!4646036)))

(assert (=> bs!1037133 (= (= lt!1810277 (ListMap!4518 Nil!51850)) (= lambda!197662 lambda!197599))))

(assert (=> d!1465288 true))

(assert (=> d!1465288 (forall!10987 (toList!5182 lt!1810089) lambda!197662)))

(declare-fun lt!1810795 () Unit!116275)

(assert (=> d!1465288 (= lt!1810795 (choose!31902 lt!1810089 lt!1810277 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))))))

(assert (=> d!1465288 (forall!10987 (toList!5182 (+!1968 lt!1810089 (tuple2!52943 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))))) lambda!197662)))

(assert (=> d!1465288 (= (addForallContainsKeyThenBeforeAdding!583 lt!1810089 lt!1810277 (_1!29765 (h!57980 oldBucket!40)) (_2!29765 (h!57980 oldBucket!40))) lt!1810795)))

(declare-fun bs!1037134 () Bool)

(assert (= bs!1037134 d!1465288))

(declare-fun m!5512345 () Bool)

(assert (=> bs!1037134 m!5512345))

(declare-fun m!5512347 () Bool)

(assert (=> bs!1037134 m!5512347))

(declare-fun m!5512351 () Bool)

(assert (=> bs!1037134 m!5512351))

(declare-fun m!5512357 () Bool)

(assert (=> bs!1037134 m!5512357))

(assert (=> b!4645910 d!1465288))

(declare-fun d!1465296 () Bool)

(declare-fun res!1952326 () Bool)

(declare-fun e!2898570 () Bool)

(assert (=> d!1465296 (=> res!1952326 e!2898570)))

(assert (=> d!1465296 (= res!1952326 ((_ is Nil!51850) (toList!5182 lt!1810262)))))

(assert (=> d!1465296 (= (forall!10987 (toList!5182 lt!1810262) lambda!197564) e!2898570)))

(declare-fun b!4646512 () Bool)

(declare-fun e!2898571 () Bool)

(assert (=> b!4646512 (= e!2898570 e!2898571)))

(declare-fun res!1952327 () Bool)

(assert (=> b!4646512 (=> (not res!1952327) (not e!2898571))))

(assert (=> b!4646512 (= res!1952327 (dynLambda!21559 lambda!197564 (h!57980 (toList!5182 lt!1810262))))))

(declare-fun b!4646513 () Bool)

(assert (=> b!4646513 (= e!2898571 (forall!10987 (t!359070 (toList!5182 lt!1810262)) lambda!197564))))

(assert (= (and d!1465296 (not res!1952326)) b!4646512))

(assert (= (and b!4646512 res!1952327) b!4646513))

(declare-fun b_lambda!171225 () Bool)

(assert (=> (not b_lambda!171225) (not b!4646512)))

(declare-fun m!5512361 () Bool)

(assert (=> b!4646512 m!5512361))

(declare-fun m!5512365 () Bool)

(assert (=> b!4646513 m!5512365))

(assert (=> b!4645910 d!1465296))

(declare-fun bs!1037135 () Bool)

(declare-fun b!4646518 () Bool)

(assert (= bs!1037135 (and b!4646518 b!4646029)))

(declare-fun lambda!197663 () Int)

(assert (=> bs!1037135 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810445) (= lambda!197663 lambda!197597))))

(declare-fun bs!1037136 () Bool)

(assert (= bs!1037136 (and b!4646518 b!4645912)))

(assert (=> bs!1037136 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810089) (= lambda!197663 lambda!197562))))

(declare-fun bs!1037137 () Bool)

(assert (= bs!1037137 (and b!4646518 b!4645990)))

(assert (=> bs!1037137 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810377) (= lambda!197663 lambda!197582))))

(declare-fun bs!1037138 () Bool)

(assert (= bs!1037138 (and b!4646518 b!4646034)))

(assert (=> bs!1037138 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197663 lambda!197600))))

(declare-fun bs!1037139 () Bool)

(assert (= bs!1037139 (and b!4646518 b!4646000)))

(assert (=> bs!1037139 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810419) (= lambda!197663 lambda!197589))))

(assert (=> bs!1037138 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810466) (= lambda!197663 lambda!197601))))

(declare-fun bs!1037140 () Bool)

(assert (= bs!1037140 (and b!4646518 b!4645910)))

(assert (=> bs!1037140 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810089) (= lambda!197663 lambda!197563))))

(declare-fun bs!1037141 () Bool)

(assert (= bs!1037141 (and b!4646518 d!1464988)))

(assert (=> bs!1037141 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810403) (= lambda!197663 lambda!197591))))

(declare-fun bs!1037142 () Bool)

(assert (= bs!1037142 (and b!4646518 b!4646191)))

(assert (=> bs!1037142 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810584) (= lambda!197663 lambda!197615))))

(declare-fun bs!1037143 () Bool)

(assert (= bs!1037143 (and b!4646518 d!1465288)))

(assert (=> bs!1037143 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810277) (= lambda!197663 lambda!197662))))

(declare-fun bs!1037144 () Bool)

(assert (= bs!1037144 (and b!4646518 b!4645992)))

(assert (=> bs!1037144 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197663 lambda!197579))))

(assert (=> bs!1037142 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197663 lambda!197614))))

(declare-fun bs!1037145 () Bool)

(assert (= bs!1037145 (and b!4646518 d!1465112)))

(assert (=> bs!1037145 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810568) (= lambda!197663 lambda!197616))))

(declare-fun bs!1037146 () Bool)

(assert (= bs!1037146 (and b!4646518 d!1465038)))

(assert (=> bs!1037146 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810466) (= lambda!197663 lambda!197607))))

(assert (=> bs!1037139 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197663 lambda!197587))))

(declare-fun bs!1037147 () Bool)

(assert (= bs!1037147 (and b!4646518 b!4646002)))

(assert (=> bs!1037147 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197663 lambda!197586))))

(declare-fun bs!1037148 () Bool)

(assert (= bs!1037148 (and b!4646518 d!1464922)))

(assert (=> bs!1037148 (not (= lambda!197663 lambda!197489))))

(declare-fun bs!1037149 () Bool)

(assert (= bs!1037149 (and b!4646518 d!1464982)))

(assert (=> bs!1037149 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810361) (= lambda!197663 lambda!197583))))

(declare-fun bs!1037150 () Bool)

(assert (= bs!1037150 (and b!4646518 b!4646095)))

(assert (=> bs!1037150 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197663 lambda!197609))))

(assert (=> bs!1037137 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197663 lambda!197581))))

(declare-fun bs!1037151 () Bool)

(assert (= bs!1037151 (and b!4646518 b!4646031)))

(assert (=> bs!1037151 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197663 lambda!197595))))

(declare-fun bs!1037152 () Bool)

(assert (= bs!1037152 (and b!4646518 d!1465106)))

(assert (=> bs!1037152 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810377) (= lambda!197663 lambda!197612))))

(declare-fun bs!1037153 () Bool)

(assert (= bs!1037153 (and b!4646518 d!1465222)))

(assert (=> bs!1037153 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197663 lambda!197660))))

(declare-fun bs!1037154 () Bool)

(assert (= bs!1037154 (and b!4646518 d!1464936)))

(assert (=> bs!1037154 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810261) (= lambda!197663 lambda!197565))))

(declare-fun bs!1037155 () Bool)

(assert (= bs!1037155 (and b!4646518 d!1465192)))

(assert (=> bs!1037155 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810716) (= lambda!197663 lambda!197654))))

(declare-fun bs!1037156 () Bool)

(assert (= bs!1037156 (and b!4646518 b!4646397)))

(assert (=> bs!1037156 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197663 lambda!197650))))

(declare-fun bs!1037157 () Bool)

(assert (= bs!1037157 (and b!4646518 d!1465044)))

(assert (=> bs!1037157 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810516) (= lambda!197663 lambda!197611))))

(assert (=> bs!1037135 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197663 lambda!197596))))

(assert (=> bs!1037150 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810532) (= lambda!197663 lambda!197610))))

(declare-fun bs!1037158 () Bool)

(assert (= bs!1037158 (and b!4646518 b!4646399)))

(assert (=> bs!1037158 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197663 lambda!197648))))

(assert (=> bs!1037156 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810732) (= lambda!197663 lambda!197652))))

(declare-fun bs!1037159 () Bool)

(assert (= bs!1037159 (and b!4646518 d!1465004)))

(assert (=> bs!1037159 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810429) (= lambda!197663 lambda!197598))))

(declare-fun bs!1037160 () Bool)

(assert (= bs!1037160 (and b!4646518 d!1465208)))

(assert (=> bs!1037160 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810089) (= lambda!197663 lambda!197659))))

(declare-fun bs!1037161 () Bool)

(assert (= bs!1037161 (and b!4646518 b!4646097)))

(assert (=> bs!1037161 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197663 lambda!197608))))

(declare-fun bs!1037162 () Bool)

(assert (= bs!1037162 (and b!4646518 d!1464926)))

(assert (=> bs!1037162 (not (= lambda!197663 lambda!197490))))

(declare-fun bs!1037163 () Bool)

(assert (= bs!1037163 (and b!4646518 d!1465008)))

(assert (=> bs!1037163 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810450) (= lambda!197663 lambda!197602))))

(declare-fun bs!1037164 () Bool)

(assert (= bs!1037164 (and b!4646518 b!4646193)))

(assert (=> bs!1037164 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197663 lambda!197613))))

(assert (=> bs!1037140 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810277) (= lambda!197663 lambda!197564))))

(declare-fun bs!1037165 () Bool)

(assert (= bs!1037165 (and b!4646518 b!4646036)))

(assert (=> bs!1037165 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197663 lambda!197599))))

(assert (=> b!4646518 true))

(declare-fun bs!1037167 () Bool)

(declare-fun b!4646516 () Bool)

(assert (= bs!1037167 (and b!4646516 b!4646029)))

(declare-fun lambda!197664 () Int)

(assert (=> bs!1037167 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810445) (= lambda!197664 lambda!197597))))

(declare-fun bs!1037168 () Bool)

(assert (= bs!1037168 (and b!4646516 b!4645912)))

(assert (=> bs!1037168 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810089) (= lambda!197664 lambda!197562))))

(declare-fun bs!1037169 () Bool)

(assert (= bs!1037169 (and b!4646516 b!4645990)))

(assert (=> bs!1037169 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810377) (= lambda!197664 lambda!197582))))

(declare-fun bs!1037170 () Bool)

(assert (= bs!1037170 (and b!4646516 b!4646034)))

(assert (=> bs!1037170 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197664 lambda!197600))))

(declare-fun bs!1037171 () Bool)

(assert (= bs!1037171 (and b!4646516 b!4646000)))

(assert (=> bs!1037171 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810419) (= lambda!197664 lambda!197589))))

(assert (=> bs!1037170 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810466) (= lambda!197664 lambda!197601))))

(declare-fun bs!1037172 () Bool)

(assert (= bs!1037172 (and b!4646516 b!4645910)))

(assert (=> bs!1037172 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810089) (= lambda!197664 lambda!197563))))

(declare-fun bs!1037174 () Bool)

(assert (= bs!1037174 (and b!4646516 d!1464988)))

(assert (=> bs!1037174 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810403) (= lambda!197664 lambda!197591))))

(declare-fun bs!1037175 () Bool)

(assert (= bs!1037175 (and b!4646516 b!4646191)))

(assert (=> bs!1037175 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810584) (= lambda!197664 lambda!197615))))

(declare-fun bs!1037176 () Bool)

(assert (= bs!1037176 (and b!4646516 d!1465288)))

(assert (=> bs!1037176 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810277) (= lambda!197664 lambda!197662))))

(declare-fun bs!1037177 () Bool)

(assert (= bs!1037177 (and b!4646516 b!4645992)))

(assert (=> bs!1037177 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197664 lambda!197579))))

(declare-fun bs!1037178 () Bool)

(assert (= bs!1037178 (and b!4646516 b!4646518)))

(assert (=> bs!1037178 (= lambda!197664 lambda!197663)))

(assert (=> bs!1037175 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197664 lambda!197614))))

(declare-fun bs!1037179 () Bool)

(assert (= bs!1037179 (and b!4646516 d!1465112)))

(assert (=> bs!1037179 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810568) (= lambda!197664 lambda!197616))))

(declare-fun bs!1037180 () Bool)

(assert (= bs!1037180 (and b!4646516 d!1465038)))

(assert (=> bs!1037180 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810466) (= lambda!197664 lambda!197607))))

(assert (=> bs!1037171 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197664 lambda!197587))))

(declare-fun bs!1037181 () Bool)

(assert (= bs!1037181 (and b!4646516 b!4646002)))

(assert (=> bs!1037181 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197664 lambda!197586))))

(declare-fun bs!1037182 () Bool)

(assert (= bs!1037182 (and b!4646516 d!1464922)))

(assert (=> bs!1037182 (not (= lambda!197664 lambda!197489))))

(declare-fun bs!1037183 () Bool)

(assert (= bs!1037183 (and b!4646516 d!1464982)))

(assert (=> bs!1037183 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810361) (= lambda!197664 lambda!197583))))

(declare-fun bs!1037184 () Bool)

(assert (= bs!1037184 (and b!4646516 b!4646095)))

(assert (=> bs!1037184 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197664 lambda!197609))))

(assert (=> bs!1037169 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197664 lambda!197581))))

(declare-fun bs!1037185 () Bool)

(assert (= bs!1037185 (and b!4646516 b!4646031)))

(assert (=> bs!1037185 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197664 lambda!197595))))

(declare-fun bs!1037186 () Bool)

(assert (= bs!1037186 (and b!4646516 d!1465106)))

(assert (=> bs!1037186 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810377) (= lambda!197664 lambda!197612))))

(declare-fun bs!1037187 () Bool)

(assert (= bs!1037187 (and b!4646516 d!1465222)))

(assert (=> bs!1037187 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197664 lambda!197660))))

(declare-fun bs!1037188 () Bool)

(assert (= bs!1037188 (and b!4646516 d!1464936)))

(assert (=> bs!1037188 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810261) (= lambda!197664 lambda!197565))))

(declare-fun bs!1037189 () Bool)

(assert (= bs!1037189 (and b!4646516 d!1465192)))

(assert (=> bs!1037189 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810716) (= lambda!197664 lambda!197654))))

(declare-fun bs!1037190 () Bool)

(assert (= bs!1037190 (and b!4646516 b!4646397)))

(assert (=> bs!1037190 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197664 lambda!197650))))

(declare-fun bs!1037191 () Bool)

(assert (= bs!1037191 (and b!4646516 d!1465044)))

(assert (=> bs!1037191 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810516) (= lambda!197664 lambda!197611))))

(assert (=> bs!1037167 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197664 lambda!197596))))

(assert (=> bs!1037184 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810532) (= lambda!197664 lambda!197610))))

(declare-fun bs!1037192 () Bool)

(assert (= bs!1037192 (and b!4646516 b!4646399)))

(assert (=> bs!1037192 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197664 lambda!197648))))

(assert (=> bs!1037190 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810732) (= lambda!197664 lambda!197652))))

(declare-fun bs!1037193 () Bool)

(assert (= bs!1037193 (and b!4646516 d!1465004)))

(assert (=> bs!1037193 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810429) (= lambda!197664 lambda!197598))))

(declare-fun bs!1037194 () Bool)

(assert (= bs!1037194 (and b!4646516 d!1465208)))

(assert (=> bs!1037194 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810089) (= lambda!197664 lambda!197659))))

(declare-fun bs!1037195 () Bool)

(assert (= bs!1037195 (and b!4646516 b!4646097)))

(assert (=> bs!1037195 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197664 lambda!197608))))

(declare-fun bs!1037196 () Bool)

(assert (= bs!1037196 (and b!4646516 d!1464926)))

(assert (=> bs!1037196 (not (= lambda!197664 lambda!197490))))

(declare-fun bs!1037197 () Bool)

(assert (= bs!1037197 (and b!4646516 d!1465008)))

(assert (=> bs!1037197 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810450) (= lambda!197664 lambda!197602))))

(declare-fun bs!1037198 () Bool)

(assert (= bs!1037198 (and b!4646516 b!4646193)))

(assert (=> bs!1037198 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197664 lambda!197613))))

(assert (=> bs!1037172 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810277) (= lambda!197664 lambda!197564))))

(declare-fun bs!1037199 () Bool)

(assert (= bs!1037199 (and b!4646516 b!4646036)))

(assert (=> bs!1037199 (= (= (+!1968 lt!1810089 (h!57980 oldBucket!40)) (ListMap!4518 Nil!51850)) (= lambda!197664 lambda!197599))))

(assert (=> b!4646516 true))

(declare-fun lambda!197665 () Int)

(declare-fun lt!1810815 () ListMap!4517)

(assert (=> bs!1037167 (= (= lt!1810815 lt!1810445) (= lambda!197665 lambda!197597))))

(assert (=> bs!1037168 (= (= lt!1810815 lt!1810089) (= lambda!197665 lambda!197562))))

(assert (=> bs!1037169 (= (= lt!1810815 lt!1810377) (= lambda!197665 lambda!197582))))

(assert (=> bs!1037170 (= (= lt!1810815 (ListMap!4518 Nil!51850)) (= lambda!197665 lambda!197600))))

(assert (=> bs!1037170 (= (= lt!1810815 lt!1810466) (= lambda!197665 lambda!197601))))

(assert (=> bs!1037172 (= (= lt!1810815 lt!1810089) (= lambda!197665 lambda!197563))))

(assert (=> bs!1037174 (= (= lt!1810815 lt!1810403) (= lambda!197665 lambda!197591))))

(assert (=> bs!1037175 (= (= lt!1810815 lt!1810584) (= lambda!197665 lambda!197615))))

(assert (=> bs!1037176 (= (= lt!1810815 lt!1810277) (= lambda!197665 lambda!197662))))

(assert (=> bs!1037177 (= (= lt!1810815 (ListMap!4518 Nil!51850)) (= lambda!197665 lambda!197579))))

(assert (=> bs!1037178 (= (= lt!1810815 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197665 lambda!197663))))

(assert (=> bs!1037175 (= (= lt!1810815 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197665 lambda!197614))))

(assert (=> bs!1037179 (= (= lt!1810815 lt!1810568) (= lambda!197665 lambda!197616))))

(assert (=> bs!1037180 (= (= lt!1810815 lt!1810466) (= lambda!197665 lambda!197607))))

(assert (=> bs!1037171 (= (= lt!1810815 (ListMap!4518 Nil!51850)) (= lambda!197665 lambda!197587))))

(assert (=> bs!1037181 (= (= lt!1810815 (ListMap!4518 Nil!51850)) (= lambda!197665 lambda!197586))))

(assert (=> bs!1037182 (not (= lambda!197665 lambda!197489))))

(assert (=> bs!1037183 (= (= lt!1810815 lt!1810361) (= lambda!197665 lambda!197583))))

(assert (=> bs!1037184 (= (= lt!1810815 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197665 lambda!197609))))

(assert (=> bs!1037169 (= (= lt!1810815 (ListMap!4518 Nil!51850)) (= lambda!197665 lambda!197581))))

(assert (=> bs!1037185 (= (= lt!1810815 (ListMap!4518 Nil!51850)) (= lambda!197665 lambda!197595))))

(assert (=> bs!1037186 (= (= lt!1810815 lt!1810377) (= lambda!197665 lambda!197612))))

(assert (=> b!4646516 (= (= lt!1810815 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197665 lambda!197664))))

(assert (=> bs!1037171 (= (= lt!1810815 lt!1810419) (= lambda!197665 lambda!197589))))

(assert (=> bs!1037187 (= (= lt!1810815 (ListMap!4518 Nil!51850)) (= lambda!197665 lambda!197660))))

(assert (=> bs!1037188 (= (= lt!1810815 lt!1810261) (= lambda!197665 lambda!197565))))

(assert (=> bs!1037189 (= (= lt!1810815 lt!1810716) (= lambda!197665 lambda!197654))))

(assert (=> bs!1037190 (= (= lt!1810815 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197665 lambda!197650))))

(assert (=> bs!1037191 (= (= lt!1810815 lt!1810516) (= lambda!197665 lambda!197611))))

(assert (=> bs!1037167 (= (= lt!1810815 (ListMap!4518 Nil!51850)) (= lambda!197665 lambda!197596))))

(assert (=> bs!1037184 (= (= lt!1810815 lt!1810532) (= lambda!197665 lambda!197610))))

(assert (=> bs!1037192 (= (= lt!1810815 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197665 lambda!197648))))

(assert (=> bs!1037190 (= (= lt!1810815 lt!1810732) (= lambda!197665 lambda!197652))))

(assert (=> bs!1037193 (= (= lt!1810815 lt!1810429) (= lambda!197665 lambda!197598))))

(assert (=> bs!1037194 (= (= lt!1810815 lt!1810089) (= lambda!197665 lambda!197659))))

(assert (=> bs!1037195 (= (= lt!1810815 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197665 lambda!197608))))

(assert (=> bs!1037196 (not (= lambda!197665 lambda!197490))))

(assert (=> bs!1037197 (= (= lt!1810815 lt!1810450) (= lambda!197665 lambda!197602))))

(assert (=> bs!1037198 (= (= lt!1810815 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197665 lambda!197613))))

(assert (=> bs!1037172 (= (= lt!1810815 lt!1810277) (= lambda!197665 lambda!197564))))

(assert (=> bs!1037199 (= (= lt!1810815 (ListMap!4518 Nil!51850)) (= lambda!197665 lambda!197599))))

(assert (=> b!4646516 true))

(declare-fun bs!1037228 () Bool)

(declare-fun d!1465300 () Bool)

(assert (= bs!1037228 (and d!1465300 b!4646029)))

(declare-fun lambda!197667 () Int)

(declare-fun lt!1810799 () ListMap!4517)

(assert (=> bs!1037228 (= (= lt!1810799 lt!1810445) (= lambda!197667 lambda!197597))))

(declare-fun bs!1037229 () Bool)

(assert (= bs!1037229 (and d!1465300 b!4645912)))

(assert (=> bs!1037229 (= (= lt!1810799 lt!1810089) (= lambda!197667 lambda!197562))))

(declare-fun bs!1037230 () Bool)

(assert (= bs!1037230 (and d!1465300 b!4645990)))

(assert (=> bs!1037230 (= (= lt!1810799 lt!1810377) (= lambda!197667 lambda!197582))))

(declare-fun bs!1037231 () Bool)

(assert (= bs!1037231 (and d!1465300 b!4646034)))

(assert (=> bs!1037231 (= (= lt!1810799 (ListMap!4518 Nil!51850)) (= lambda!197667 lambda!197600))))

(assert (=> bs!1037231 (= (= lt!1810799 lt!1810466) (= lambda!197667 lambda!197601))))

(declare-fun bs!1037232 () Bool)

(assert (= bs!1037232 (and d!1465300 b!4645910)))

(assert (=> bs!1037232 (= (= lt!1810799 lt!1810089) (= lambda!197667 lambda!197563))))

(declare-fun bs!1037233 () Bool)

(assert (= bs!1037233 (and d!1465300 d!1464988)))

(assert (=> bs!1037233 (= (= lt!1810799 lt!1810403) (= lambda!197667 lambda!197591))))

(declare-fun bs!1037234 () Bool)

(assert (= bs!1037234 (and d!1465300 b!4646191)))

(assert (=> bs!1037234 (= (= lt!1810799 lt!1810584) (= lambda!197667 lambda!197615))))

(declare-fun bs!1037236 () Bool)

(assert (= bs!1037236 (and d!1465300 d!1465288)))

(assert (=> bs!1037236 (= (= lt!1810799 lt!1810277) (= lambda!197667 lambda!197662))))

(declare-fun bs!1037238 () Bool)

(assert (= bs!1037238 (and d!1465300 b!4645992)))

(assert (=> bs!1037238 (= (= lt!1810799 (ListMap!4518 Nil!51850)) (= lambda!197667 lambda!197579))))

(declare-fun bs!1037239 () Bool)

(assert (= bs!1037239 (and d!1465300 b!4646518)))

(assert (=> bs!1037239 (= (= lt!1810799 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197667 lambda!197663))))

(assert (=> bs!1037234 (= (= lt!1810799 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197667 lambda!197614))))

(declare-fun bs!1037242 () Bool)

(assert (= bs!1037242 (and d!1465300 d!1465112)))

(assert (=> bs!1037242 (= (= lt!1810799 lt!1810568) (= lambda!197667 lambda!197616))))

(declare-fun bs!1037243 () Bool)

(assert (= bs!1037243 (and d!1465300 d!1465038)))

(assert (=> bs!1037243 (= (= lt!1810799 lt!1810466) (= lambda!197667 lambda!197607))))

(declare-fun bs!1037245 () Bool)

(assert (= bs!1037245 (and d!1465300 b!4646000)))

(assert (=> bs!1037245 (= (= lt!1810799 (ListMap!4518 Nil!51850)) (= lambda!197667 lambda!197587))))

(declare-fun bs!1037247 () Bool)

(assert (= bs!1037247 (and d!1465300 b!4646002)))

(assert (=> bs!1037247 (= (= lt!1810799 (ListMap!4518 Nil!51850)) (= lambda!197667 lambda!197586))))

(declare-fun bs!1037249 () Bool)

(assert (= bs!1037249 (and d!1465300 d!1464922)))

(assert (=> bs!1037249 (not (= lambda!197667 lambda!197489))))

(declare-fun bs!1037251 () Bool)

(assert (= bs!1037251 (and d!1465300 d!1464982)))

(assert (=> bs!1037251 (= (= lt!1810799 lt!1810361) (= lambda!197667 lambda!197583))))

(assert (=> bs!1037230 (= (= lt!1810799 (ListMap!4518 Nil!51850)) (= lambda!197667 lambda!197581))))

(declare-fun bs!1037253 () Bool)

(assert (= bs!1037253 (and d!1465300 b!4646031)))

(assert (=> bs!1037253 (= (= lt!1810799 (ListMap!4518 Nil!51850)) (= lambda!197667 lambda!197595))))

(declare-fun bs!1037254 () Bool)

(assert (= bs!1037254 (and d!1465300 d!1465106)))

(assert (=> bs!1037254 (= (= lt!1810799 lt!1810377) (= lambda!197667 lambda!197612))))

(declare-fun bs!1037256 () Bool)

(assert (= bs!1037256 (and d!1465300 b!4646516)))

(assert (=> bs!1037256 (= (= lt!1810799 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197667 lambda!197664))))

(assert (=> bs!1037245 (= (= lt!1810799 lt!1810419) (= lambda!197667 lambda!197589))))

(declare-fun bs!1037259 () Bool)

(assert (= bs!1037259 (and d!1465300 d!1465222)))

(assert (=> bs!1037259 (= (= lt!1810799 (ListMap!4518 Nil!51850)) (= lambda!197667 lambda!197660))))

(declare-fun bs!1037261 () Bool)

(assert (= bs!1037261 (and d!1465300 d!1464936)))

(assert (=> bs!1037261 (= (= lt!1810799 lt!1810261) (= lambda!197667 lambda!197565))))

(declare-fun bs!1037263 () Bool)

(assert (= bs!1037263 (and d!1465300 d!1465192)))

(assert (=> bs!1037263 (= (= lt!1810799 lt!1810716) (= lambda!197667 lambda!197654))))

(declare-fun bs!1037265 () Bool)

(assert (= bs!1037265 (and d!1465300 b!4646397)))

(assert (=> bs!1037265 (= (= lt!1810799 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197667 lambda!197650))))

(declare-fun bs!1037266 () Bool)

(assert (= bs!1037266 (and d!1465300 d!1465044)))

(assert (=> bs!1037266 (= (= lt!1810799 lt!1810516) (= lambda!197667 lambda!197611))))

(assert (=> bs!1037228 (= (= lt!1810799 (ListMap!4518 Nil!51850)) (= lambda!197667 lambda!197596))))

(declare-fun bs!1037269 () Bool)

(assert (= bs!1037269 (and d!1465300 b!4646095)))

(assert (=> bs!1037269 (= (= lt!1810799 lt!1810532) (= lambda!197667 lambda!197610))))

(declare-fun bs!1037271 () Bool)

(assert (= bs!1037271 (and d!1465300 b!4646399)))

(assert (=> bs!1037271 (= (= lt!1810799 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197667 lambda!197648))))

(assert (=> bs!1037265 (= (= lt!1810799 lt!1810732) (= lambda!197667 lambda!197652))))

(declare-fun bs!1037274 () Bool)

(assert (= bs!1037274 (and d!1465300 d!1465004)))

(assert (=> bs!1037274 (= (= lt!1810799 lt!1810429) (= lambda!197667 lambda!197598))))

(assert (=> bs!1037269 (= (= lt!1810799 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197667 lambda!197609))))

(assert (=> bs!1037256 (= (= lt!1810799 lt!1810815) (= lambda!197667 lambda!197665))))

(declare-fun bs!1037278 () Bool)

(assert (= bs!1037278 (and d!1465300 d!1465208)))

(assert (=> bs!1037278 (= (= lt!1810799 lt!1810089) (= lambda!197667 lambda!197659))))

(declare-fun bs!1037280 () Bool)

(assert (= bs!1037280 (and d!1465300 b!4646097)))

(assert (=> bs!1037280 (= (= lt!1810799 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197667 lambda!197608))))

(declare-fun bs!1037281 () Bool)

(assert (= bs!1037281 (and d!1465300 d!1464926)))

(assert (=> bs!1037281 (not (= lambda!197667 lambda!197490))))

(declare-fun bs!1037283 () Bool)

(assert (= bs!1037283 (and d!1465300 d!1465008)))

(assert (=> bs!1037283 (= (= lt!1810799 lt!1810450) (= lambda!197667 lambda!197602))))

(declare-fun bs!1037285 () Bool)

(assert (= bs!1037285 (and d!1465300 b!4646193)))

(assert (=> bs!1037285 (= (= lt!1810799 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197667 lambda!197613))))

(assert (=> bs!1037232 (= (= lt!1810799 lt!1810277) (= lambda!197667 lambda!197564))))

(declare-fun bs!1037287 () Bool)

(assert (= bs!1037287 (and d!1465300 b!4646036)))

(assert (=> bs!1037287 (= (= lt!1810799 (ListMap!4518 Nil!51850)) (= lambda!197667 lambda!197599))))

(assert (=> d!1465300 true))

(declare-fun e!2898576 () ListMap!4517)

(assert (=> b!4646516 (= e!2898576 lt!1810815)))

(declare-fun lt!1810800 () ListMap!4517)

(assert (=> b!4646516 (= lt!1810800 (+!1968 (+!1968 lt!1810089 (h!57980 oldBucket!40)) (h!57980 (t!359070 oldBucket!40))))))

(assert (=> b!4646516 (= lt!1810815 (addToMapMapFromBucket!1081 (t!359070 (t!359070 oldBucket!40)) (+!1968 (+!1968 lt!1810089 (h!57980 oldBucket!40)) (h!57980 (t!359070 oldBucket!40)))))))

(declare-fun lt!1810802 () Unit!116275)

(declare-fun call!324468 () Unit!116275)

(assert (=> b!4646516 (= lt!1810802 call!324468)))

(assert (=> b!4646516 (forall!10987 (toList!5182 (+!1968 lt!1810089 (h!57980 oldBucket!40))) lambda!197664)))

(declare-fun lt!1810816 () Unit!116275)

(assert (=> b!4646516 (= lt!1810816 lt!1810802)))

(assert (=> b!4646516 (forall!10987 (toList!5182 lt!1810800) lambda!197665)))

(declare-fun lt!1810812 () Unit!116275)

(declare-fun Unit!116481 () Unit!116275)

(assert (=> b!4646516 (= lt!1810812 Unit!116481)))

(declare-fun call!324470 () Bool)

(assert (=> b!4646516 call!324470))

(declare-fun lt!1810811 () Unit!116275)

(declare-fun Unit!116482 () Unit!116275)

(assert (=> b!4646516 (= lt!1810811 Unit!116482)))

(declare-fun lt!1810807 () Unit!116275)

(declare-fun Unit!116483 () Unit!116275)

(assert (=> b!4646516 (= lt!1810807 Unit!116483)))

(declare-fun lt!1810806 () Unit!116275)

(assert (=> b!4646516 (= lt!1810806 (forallContained!3202 (toList!5182 lt!1810800) lambda!197665 (h!57980 (t!359070 oldBucket!40))))))

(assert (=> b!4646516 (contains!14991 lt!1810800 (_1!29765 (h!57980 (t!359070 oldBucket!40))))))

(declare-fun lt!1810814 () Unit!116275)

(declare-fun Unit!116484 () Unit!116275)

(assert (=> b!4646516 (= lt!1810814 Unit!116484)))

(assert (=> b!4646516 (contains!14991 lt!1810815 (_1!29765 (h!57980 (t!359070 oldBucket!40))))))

(declare-fun lt!1810801 () Unit!116275)

(declare-fun Unit!116485 () Unit!116275)

(assert (=> b!4646516 (= lt!1810801 Unit!116485)))

(assert (=> b!4646516 (forall!10987 (t!359070 oldBucket!40) lambda!197665)))

(declare-fun lt!1810818 () Unit!116275)

(declare-fun Unit!116486 () Unit!116275)

(assert (=> b!4646516 (= lt!1810818 Unit!116486)))

(declare-fun call!324469 () Bool)

(assert (=> b!4646516 call!324469))

(declare-fun lt!1810813 () Unit!116275)

(declare-fun Unit!116487 () Unit!116275)

(assert (=> b!4646516 (= lt!1810813 Unit!116487)))

(declare-fun lt!1810809 () Unit!116275)

(declare-fun Unit!116488 () Unit!116275)

(assert (=> b!4646516 (= lt!1810809 Unit!116488)))

(declare-fun lt!1810819 () Unit!116275)

(assert (=> b!4646516 (= lt!1810819 (addForallContainsKeyThenBeforeAdding!583 (+!1968 lt!1810089 (h!57980 oldBucket!40)) lt!1810815 (_1!29765 (h!57980 (t!359070 oldBucket!40))) (_2!29765 (h!57980 (t!359070 oldBucket!40)))))))

(assert (=> b!4646516 (forall!10987 (toList!5182 (+!1968 lt!1810089 (h!57980 oldBucket!40))) lambda!197665)))

(declare-fun lt!1810810 () Unit!116275)

(assert (=> b!4646516 (= lt!1810810 lt!1810819)))

(assert (=> b!4646516 (forall!10987 (toList!5182 (+!1968 lt!1810089 (h!57980 oldBucket!40))) lambda!197665)))

(declare-fun lt!1810805 () Unit!116275)

(declare-fun Unit!116489 () Unit!116275)

(assert (=> b!4646516 (= lt!1810805 Unit!116489)))

(declare-fun res!1952331 () Bool)

(assert (=> b!4646516 (= res!1952331 (forall!10987 (t!359070 oldBucket!40) lambda!197665))))

(declare-fun e!2898572 () Bool)

(assert (=> b!4646516 (=> (not res!1952331) (not e!2898572))))

(assert (=> b!4646516 e!2898572))

(declare-fun lt!1810817 () Unit!116275)

(declare-fun Unit!116490 () Unit!116275)

(assert (=> b!4646516 (= lt!1810817 Unit!116490)))

(declare-fun e!2898575 () Bool)

(assert (=> d!1465300 e!2898575))

(declare-fun res!1952332 () Bool)

(assert (=> d!1465300 (=> (not res!1952332) (not e!2898575))))

(assert (=> d!1465300 (= res!1952332 (forall!10987 (t!359070 oldBucket!40) lambda!197667))))

(assert (=> d!1465300 (= lt!1810799 e!2898576)))

(declare-fun c!795076 () Bool)

(assert (=> d!1465300 (= c!795076 ((_ is Nil!51850) (t!359070 oldBucket!40)))))

(assert (=> d!1465300 (noDuplicateKeys!1624 (t!359070 oldBucket!40))))

(assert (=> d!1465300 (= (addToMapMapFromBucket!1081 (t!359070 oldBucket!40) (+!1968 lt!1810089 (h!57980 oldBucket!40))) lt!1810799)))

(declare-fun b!4646517 () Bool)

(declare-fun res!1952330 () Bool)

(assert (=> b!4646517 (=> (not res!1952330) (not e!2898575))))

(assert (=> b!4646517 (= res!1952330 (forall!10987 (toList!5182 (+!1968 lt!1810089 (h!57980 oldBucket!40))) lambda!197667))))

(declare-fun bm!324463 () Bool)

(assert (=> bm!324463 (= call!324470 (forall!10987 (ite c!795076 (toList!5182 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (t!359070 (t!359070 oldBucket!40))) (ite c!795076 lambda!197663 lambda!197665)))))

(assert (=> b!4646518 (= e!2898576 (+!1968 lt!1810089 (h!57980 oldBucket!40)))))

(declare-fun lt!1810804 () Unit!116275)

(assert (=> b!4646518 (= lt!1810804 call!324468)))

(assert (=> b!4646518 call!324469))

(declare-fun lt!1810803 () Unit!116275)

(assert (=> b!4646518 (= lt!1810803 lt!1810804)))

(assert (=> b!4646518 call!324470))

(declare-fun lt!1810808 () Unit!116275)

(declare-fun Unit!116491 () Unit!116275)

(assert (=> b!4646518 (= lt!1810808 Unit!116491)))

(declare-fun bm!324464 () Bool)

(assert (=> bm!324464 (= call!324469 (forall!10987 (ite c!795076 (toList!5182 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (toList!5182 lt!1810800)) (ite c!795076 lambda!197663 lambda!197665)))))

(declare-fun b!4646519 () Bool)

(assert (=> b!4646519 (= e!2898575 (invariantList!1284 (toList!5182 lt!1810799)))))

(declare-fun b!4646520 () Bool)

(assert (=> b!4646520 (= e!2898572 (forall!10987 (toList!5182 (+!1968 lt!1810089 (h!57980 oldBucket!40))) lambda!197665))))

(declare-fun bm!324465 () Bool)

(assert (=> bm!324465 (= call!324468 (lemmaContainsAllItsOwnKeys!584 (+!1968 lt!1810089 (h!57980 oldBucket!40))))))

(assert (= (and d!1465300 c!795076) b!4646518))

(assert (= (and d!1465300 (not c!795076)) b!4646516))

(assert (= (and b!4646516 res!1952331) b!4646520))

(assert (= (or b!4646518 b!4646516) bm!324465))

(assert (= (or b!4646518 b!4646516) bm!324463))

(assert (= (or b!4646518 b!4646516) bm!324464))

(assert (= (and d!1465300 res!1952332) b!4646517))

(assert (= (and b!4646517 res!1952330) b!4646519))

(declare-fun m!5512385 () Bool)

(assert (=> d!1465300 m!5512385))

(assert (=> d!1465300 m!5510897))

(declare-fun m!5512387 () Bool)

(assert (=> bm!324463 m!5512387))

(declare-fun m!5512389 () Bool)

(assert (=> b!4646520 m!5512389))

(assert (=> bm!324465 m!5511071))

(declare-fun m!5512391 () Bool)

(assert (=> bm!324465 m!5512391))

(declare-fun m!5512393 () Bool)

(assert (=> bm!324464 m!5512393))

(declare-fun m!5512395 () Bool)

(assert (=> b!4646519 m!5512395))

(declare-fun m!5512397 () Bool)

(assert (=> b!4646517 m!5512397))

(assert (=> b!4646516 m!5511071))

(declare-fun m!5512399 () Bool)

(assert (=> b!4646516 m!5512399))

(assert (=> b!4646516 m!5512389))

(declare-fun m!5512401 () Bool)

(assert (=> b!4646516 m!5512401))

(assert (=> b!4646516 m!5512401))

(declare-fun m!5512403 () Bool)

(assert (=> b!4646516 m!5512403))

(declare-fun m!5512405 () Bool)

(assert (=> b!4646516 m!5512405))

(declare-fun m!5512407 () Bool)

(assert (=> b!4646516 m!5512407))

(declare-fun m!5512409 () Bool)

(assert (=> b!4646516 m!5512409))

(assert (=> b!4646516 m!5511071))

(declare-fun m!5512411 () Bool)

(assert (=> b!4646516 m!5512411))

(assert (=> b!4646516 m!5512411))

(declare-fun m!5512413 () Bool)

(assert (=> b!4646516 m!5512413))

(assert (=> b!4646516 m!5512389))

(declare-fun m!5512415 () Bool)

(assert (=> b!4646516 m!5512415))

(assert (=> b!4645910 d!1465300))

(declare-fun b!4646533 () Bool)

(declare-fun e!2898585 () Unit!116275)

(declare-fun lt!1810854 () Unit!116275)

(assert (=> b!4646533 (= e!2898585 lt!1810854)))

(declare-fun lt!1810848 () Unit!116275)

(assert (=> b!4646533 (= lt!1810848 (lemmaContainsKeyImpliesGetValueByKeyDefined!1493 (toList!5182 lt!1810277) (_1!29765 (h!57980 oldBucket!40))))))

(assert (=> b!4646533 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810277) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun lt!1810847 () Unit!116275)

(assert (=> b!4646533 (= lt!1810847 lt!1810848)))

(assert (=> b!4646533 (= lt!1810854 (lemmaInListThenGetKeysListContains!729 (toList!5182 lt!1810277) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun call!324474 () Bool)

(assert (=> b!4646533 call!324474))

(declare-fun b!4646534 () Bool)

(declare-fun e!2898588 () List!51976)

(assert (=> b!4646534 (= e!2898588 (keys!18351 lt!1810277))))

(declare-fun b!4646535 () Bool)

(assert (=> b!4646535 (= e!2898588 (getKeysList!734 (toList!5182 lt!1810277)))))

(declare-fun b!4646536 () Bool)

(declare-fun e!2898587 () Bool)

(assert (=> b!4646536 (= e!2898587 (not (contains!14992 (keys!18351 lt!1810277) (_1!29765 (h!57980 oldBucket!40)))))))

(declare-fun b!4646537 () Bool)

(declare-fun e!2898589 () Bool)

(declare-fun e!2898586 () Bool)

(assert (=> b!4646537 (= e!2898589 e!2898586)))

(declare-fun res!1952338 () Bool)

(assert (=> b!4646537 (=> (not res!1952338) (not e!2898586))))

(assert (=> b!4646537 (= res!1952338 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810277) (_1!29765 (h!57980 oldBucket!40)))))))

(declare-fun b!4646532 () Bool)

(assert (=> b!4646532 (= e!2898586 (contains!14992 (keys!18351 lt!1810277) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun d!1465314 () Bool)

(assert (=> d!1465314 e!2898589))

(declare-fun res!1952339 () Bool)

(assert (=> d!1465314 (=> res!1952339 e!2898589)))

(assert (=> d!1465314 (= res!1952339 e!2898587)))

(declare-fun res!1952340 () Bool)

(assert (=> d!1465314 (=> (not res!1952340) (not e!2898587))))

(declare-fun lt!1810849 () Bool)

(assert (=> d!1465314 (= res!1952340 (not lt!1810849))))

(declare-fun lt!1810853 () Bool)

(assert (=> d!1465314 (= lt!1810849 lt!1810853)))

(declare-fun lt!1810851 () Unit!116275)

(assert (=> d!1465314 (= lt!1810851 e!2898585)))

(declare-fun c!795081 () Bool)

(assert (=> d!1465314 (= c!795081 lt!1810853)))

(assert (=> d!1465314 (= lt!1810853 (containsKey!2691 (toList!5182 lt!1810277) (_1!29765 (h!57980 oldBucket!40))))))

(assert (=> d!1465314 (= (contains!14991 lt!1810277 (_1!29765 (h!57980 oldBucket!40))) lt!1810849)))

(declare-fun b!4646538 () Bool)

(declare-fun e!2898584 () Unit!116275)

(assert (=> b!4646538 (= e!2898585 e!2898584)))

(declare-fun c!795082 () Bool)

(assert (=> b!4646538 (= c!795082 call!324474)))

(declare-fun b!4646539 () Bool)

(declare-fun Unit!116492 () Unit!116275)

(assert (=> b!4646539 (= e!2898584 Unit!116492)))

(declare-fun bm!324469 () Bool)

(assert (=> bm!324469 (= call!324474 (contains!14992 e!2898588 (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun c!795080 () Bool)

(assert (=> bm!324469 (= c!795080 c!795081)))

(declare-fun b!4646540 () Bool)

(assert (=> b!4646540 false))

(declare-fun lt!1810852 () Unit!116275)

(declare-fun lt!1810850 () Unit!116275)

(assert (=> b!4646540 (= lt!1810852 lt!1810850)))

(assert (=> b!4646540 (containsKey!2691 (toList!5182 lt!1810277) (_1!29765 (h!57980 oldBucket!40)))))

(assert (=> b!4646540 (= lt!1810850 (lemmaInGetKeysListThenContainsKey!733 (toList!5182 lt!1810277) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun Unit!116493 () Unit!116275)

(assert (=> b!4646540 (= e!2898584 Unit!116493)))

(assert (= (and d!1465314 c!795081) b!4646533))

(assert (= (and d!1465314 (not c!795081)) b!4646538))

(assert (= (and b!4646538 c!795082) b!4646540))

(assert (= (and b!4646538 (not c!795082)) b!4646539))

(assert (= (or b!4646533 b!4646538) bm!324469))

(assert (= (and bm!324469 c!795080) b!4646535))

(assert (= (and bm!324469 (not c!795080)) b!4646534))

(assert (= (and d!1465314 res!1952340) b!4646536))

(assert (= (and d!1465314 (not res!1952339)) b!4646537))

(assert (= (and b!4646537 res!1952338) b!4646532))

(declare-fun m!5512417 () Bool)

(assert (=> b!4646540 m!5512417))

(declare-fun m!5512419 () Bool)

(assert (=> b!4646540 m!5512419))

(declare-fun m!5512421 () Bool)

(assert (=> bm!324469 m!5512421))

(declare-fun m!5512423 () Bool)

(assert (=> b!4646537 m!5512423))

(assert (=> b!4646537 m!5512423))

(declare-fun m!5512425 () Bool)

(assert (=> b!4646537 m!5512425))

(declare-fun m!5512427 () Bool)

(assert (=> b!4646532 m!5512427))

(assert (=> b!4646532 m!5512427))

(declare-fun m!5512429 () Bool)

(assert (=> b!4646532 m!5512429))

(declare-fun m!5512431 () Bool)

(assert (=> b!4646535 m!5512431))

(assert (=> b!4646534 m!5512427))

(assert (=> b!4646536 m!5512427))

(assert (=> b!4646536 m!5512427))

(assert (=> b!4646536 m!5512429))

(assert (=> d!1465314 m!5512417))

(declare-fun m!5512433 () Bool)

(assert (=> b!4646533 m!5512433))

(assert (=> b!4646533 m!5512423))

(assert (=> b!4646533 m!5512423))

(assert (=> b!4646533 m!5512425))

(declare-fun m!5512435 () Bool)

(assert (=> b!4646533 m!5512435))

(assert (=> b!4645910 d!1465314))

(declare-fun d!1465316 () Bool)

(declare-fun res!1952341 () Bool)

(declare-fun e!2898590 () Bool)

(assert (=> d!1465316 (=> res!1952341 e!2898590)))

(assert (=> d!1465316 (= res!1952341 ((_ is Nil!51850) (toList!5182 lt!1810089)))))

(assert (=> d!1465316 (= (forall!10987 (toList!5182 lt!1810089) lambda!197563) e!2898590)))

(declare-fun b!4646541 () Bool)

(declare-fun e!2898591 () Bool)

(assert (=> b!4646541 (= e!2898590 e!2898591)))

(declare-fun res!1952342 () Bool)

(assert (=> b!4646541 (=> (not res!1952342) (not e!2898591))))

(assert (=> b!4646541 (= res!1952342 (dynLambda!21559 lambda!197563 (h!57980 (toList!5182 lt!1810089))))))

(declare-fun b!4646542 () Bool)

(assert (=> b!4646542 (= e!2898591 (forall!10987 (t!359070 (toList!5182 lt!1810089)) lambda!197563))))

(assert (= (and d!1465316 (not res!1952341)) b!4646541))

(assert (= (and b!4646541 res!1952342) b!4646542))

(declare-fun b_lambda!171231 () Bool)

(assert (=> (not b_lambda!171231) (not b!4646541)))

(declare-fun m!5512437 () Bool)

(assert (=> b!4646541 m!5512437))

(declare-fun m!5512439 () Bool)

(assert (=> b!4646542 m!5512439))

(assert (=> b!4645910 d!1465316))

(declare-fun d!1465318 () Bool)

(declare-fun res!1952343 () Bool)

(declare-fun e!2898592 () Bool)

(assert (=> d!1465318 (=> res!1952343 e!2898592)))

(assert (=> d!1465318 (= res!1952343 ((_ is Nil!51850) oldBucket!40))))

(assert (=> d!1465318 (= (forall!10987 oldBucket!40 lambda!197564) e!2898592)))

(declare-fun b!4646543 () Bool)

(declare-fun e!2898593 () Bool)

(assert (=> b!4646543 (= e!2898592 e!2898593)))

(declare-fun res!1952344 () Bool)

(assert (=> b!4646543 (=> (not res!1952344) (not e!2898593))))

(assert (=> b!4646543 (= res!1952344 (dynLambda!21559 lambda!197564 (h!57980 oldBucket!40)))))

(declare-fun b!4646544 () Bool)

(assert (=> b!4646544 (= e!2898593 (forall!10987 (t!359070 oldBucket!40) lambda!197564))))

(assert (= (and d!1465318 (not res!1952343)) b!4646543))

(assert (= (and b!4646543 res!1952344) b!4646544))

(declare-fun b_lambda!171233 () Bool)

(assert (=> (not b_lambda!171233) (not b!4646543)))

(assert (=> b!4646543 m!5512321))

(declare-fun m!5512441 () Bool)

(assert (=> b!4646544 m!5512441))

(assert (=> b!4645910 d!1465318))

(declare-fun d!1465320 () Bool)

(declare-fun res!1952345 () Bool)

(declare-fun e!2898594 () Bool)

(assert (=> d!1465320 (=> res!1952345 e!2898594)))

(assert (=> d!1465320 (= res!1952345 ((_ is Nil!51850) (toList!5182 lt!1810089)))))

(assert (=> d!1465320 (= (forall!10987 (toList!5182 lt!1810089) lambda!197564) e!2898594)))

(declare-fun b!4646545 () Bool)

(declare-fun e!2898595 () Bool)

(assert (=> b!4646545 (= e!2898594 e!2898595)))

(declare-fun res!1952346 () Bool)

(assert (=> b!4646545 (=> (not res!1952346) (not e!2898595))))

(assert (=> b!4646545 (= res!1952346 (dynLambda!21559 lambda!197564 (h!57980 (toList!5182 lt!1810089))))))

(declare-fun b!4646546 () Bool)

(assert (=> b!4646546 (= e!2898595 (forall!10987 (t!359070 (toList!5182 lt!1810089)) lambda!197564))))

(assert (= (and d!1465320 (not res!1952345)) b!4646545))

(assert (= (and b!4646545 res!1952346) b!4646546))

(declare-fun b_lambda!171235 () Bool)

(assert (=> (not b_lambda!171235) (not b!4646545)))

(declare-fun m!5512443 () Bool)

(assert (=> b!4646545 m!5512443))

(declare-fun m!5512445 () Bool)

(assert (=> b!4646546 m!5512445))

(assert (=> b!4645910 d!1465320))

(declare-fun b!4646548 () Bool)

(declare-fun e!2898597 () Unit!116275)

(declare-fun lt!1810862 () Unit!116275)

(assert (=> b!4646548 (= e!2898597 lt!1810862)))

(declare-fun lt!1810856 () Unit!116275)

(assert (=> b!4646548 (= lt!1810856 (lemmaContainsKeyImpliesGetValueByKeyDefined!1493 (toList!5182 lt!1810262) (_1!29765 (h!57980 oldBucket!40))))))

(assert (=> b!4646548 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810262) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun lt!1810855 () Unit!116275)

(assert (=> b!4646548 (= lt!1810855 lt!1810856)))

(assert (=> b!4646548 (= lt!1810862 (lemmaInListThenGetKeysListContains!729 (toList!5182 lt!1810262) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun call!324475 () Bool)

(assert (=> b!4646548 call!324475))

(declare-fun b!4646549 () Bool)

(declare-fun e!2898600 () List!51976)

(assert (=> b!4646549 (= e!2898600 (keys!18351 lt!1810262))))

(declare-fun b!4646550 () Bool)

(assert (=> b!4646550 (= e!2898600 (getKeysList!734 (toList!5182 lt!1810262)))))

(declare-fun b!4646551 () Bool)

(declare-fun e!2898599 () Bool)

(assert (=> b!4646551 (= e!2898599 (not (contains!14992 (keys!18351 lt!1810262) (_1!29765 (h!57980 oldBucket!40)))))))

(declare-fun b!4646552 () Bool)

(declare-fun e!2898601 () Bool)

(declare-fun e!2898598 () Bool)

(assert (=> b!4646552 (= e!2898601 e!2898598)))

(declare-fun res!1952347 () Bool)

(assert (=> b!4646552 (=> (not res!1952347) (not e!2898598))))

(assert (=> b!4646552 (= res!1952347 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810262) (_1!29765 (h!57980 oldBucket!40)))))))

(declare-fun b!4646547 () Bool)

(assert (=> b!4646547 (= e!2898598 (contains!14992 (keys!18351 lt!1810262) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun d!1465322 () Bool)

(assert (=> d!1465322 e!2898601))

(declare-fun res!1952348 () Bool)

(assert (=> d!1465322 (=> res!1952348 e!2898601)))

(assert (=> d!1465322 (= res!1952348 e!2898599)))

(declare-fun res!1952349 () Bool)

(assert (=> d!1465322 (=> (not res!1952349) (not e!2898599))))

(declare-fun lt!1810857 () Bool)

(assert (=> d!1465322 (= res!1952349 (not lt!1810857))))

(declare-fun lt!1810861 () Bool)

(assert (=> d!1465322 (= lt!1810857 lt!1810861)))

(declare-fun lt!1810859 () Unit!116275)

(assert (=> d!1465322 (= lt!1810859 e!2898597)))

(declare-fun c!795084 () Bool)

(assert (=> d!1465322 (= c!795084 lt!1810861)))

(assert (=> d!1465322 (= lt!1810861 (containsKey!2691 (toList!5182 lt!1810262) (_1!29765 (h!57980 oldBucket!40))))))

(assert (=> d!1465322 (= (contains!14991 lt!1810262 (_1!29765 (h!57980 oldBucket!40))) lt!1810857)))

(declare-fun b!4646553 () Bool)

(declare-fun e!2898596 () Unit!116275)

(assert (=> b!4646553 (= e!2898597 e!2898596)))

(declare-fun c!795085 () Bool)

(assert (=> b!4646553 (= c!795085 call!324475)))

(declare-fun b!4646554 () Bool)

(declare-fun Unit!116494 () Unit!116275)

(assert (=> b!4646554 (= e!2898596 Unit!116494)))

(declare-fun bm!324470 () Bool)

(assert (=> bm!324470 (= call!324475 (contains!14992 e!2898600 (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun c!795083 () Bool)

(assert (=> bm!324470 (= c!795083 c!795084)))

(declare-fun b!4646555 () Bool)

(assert (=> b!4646555 false))

(declare-fun lt!1810860 () Unit!116275)

(declare-fun lt!1810858 () Unit!116275)

(assert (=> b!4646555 (= lt!1810860 lt!1810858)))

(assert (=> b!4646555 (containsKey!2691 (toList!5182 lt!1810262) (_1!29765 (h!57980 oldBucket!40)))))

(assert (=> b!4646555 (= lt!1810858 (lemmaInGetKeysListThenContainsKey!733 (toList!5182 lt!1810262) (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun Unit!116495 () Unit!116275)

(assert (=> b!4646555 (= e!2898596 Unit!116495)))

(assert (= (and d!1465322 c!795084) b!4646548))

(assert (= (and d!1465322 (not c!795084)) b!4646553))

(assert (= (and b!4646553 c!795085) b!4646555))

(assert (= (and b!4646553 (not c!795085)) b!4646554))

(assert (= (or b!4646548 b!4646553) bm!324470))

(assert (= (and bm!324470 c!795083) b!4646550))

(assert (= (and bm!324470 (not c!795083)) b!4646549))

(assert (= (and d!1465322 res!1952349) b!4646551))

(assert (= (and d!1465322 (not res!1952348)) b!4646552))

(assert (= (and b!4646552 res!1952347) b!4646547))

(declare-fun m!5512447 () Bool)

(assert (=> b!4646555 m!5512447))

(declare-fun m!5512449 () Bool)

(assert (=> b!4646555 m!5512449))

(declare-fun m!5512451 () Bool)

(assert (=> bm!324470 m!5512451))

(declare-fun m!5512453 () Bool)

(assert (=> b!4646552 m!5512453))

(assert (=> b!4646552 m!5512453))

(declare-fun m!5512455 () Bool)

(assert (=> b!4646552 m!5512455))

(declare-fun m!5512457 () Bool)

(assert (=> b!4646547 m!5512457))

(assert (=> b!4646547 m!5512457))

(declare-fun m!5512459 () Bool)

(assert (=> b!4646547 m!5512459))

(declare-fun m!5512461 () Bool)

(assert (=> b!4646550 m!5512461))

(assert (=> b!4646549 m!5512457))

(assert (=> b!4646551 m!5512457))

(assert (=> b!4646551 m!5512457))

(assert (=> b!4646551 m!5512459))

(assert (=> d!1465322 m!5512447))

(declare-fun m!5512463 () Bool)

(assert (=> b!4646548 m!5512463))

(assert (=> b!4646548 m!5512453))

(assert (=> b!4646548 m!5512453))

(assert (=> b!4646548 m!5512455))

(declare-fun m!5512465 () Bool)

(assert (=> b!4646548 m!5512465))

(assert (=> b!4645910 d!1465322))

(declare-fun bs!1037316 () Bool)

(declare-fun b!4646558 () Bool)

(assert (= bs!1037316 (and b!4646558 b!4646029)))

(declare-fun lambda!197671 () Int)

(assert (=> bs!1037316 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810445) (= lambda!197671 lambda!197597))))

(declare-fun bs!1037318 () Bool)

(assert (= bs!1037318 (and b!4646558 b!4645912)))

(assert (=> bs!1037318 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810089) (= lambda!197671 lambda!197562))))

(declare-fun bs!1037320 () Bool)

(assert (= bs!1037320 (and b!4646558 b!4645990)))

(assert (=> bs!1037320 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810377) (= lambda!197671 lambda!197582))))

(declare-fun bs!1037321 () Bool)

(assert (= bs!1037321 (and b!4646558 b!4646034)))

(assert (=> bs!1037321 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197671 lambda!197600))))

(assert (=> bs!1037321 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810466) (= lambda!197671 lambda!197601))))

(declare-fun bs!1037322 () Bool)

(assert (= bs!1037322 (and b!4646558 b!4645910)))

(assert (=> bs!1037322 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810089) (= lambda!197671 lambda!197563))))

(declare-fun bs!1037323 () Bool)

(assert (= bs!1037323 (and b!4646558 d!1464988)))

(assert (=> bs!1037323 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810403) (= lambda!197671 lambda!197591))))

(declare-fun bs!1037324 () Bool)

(assert (= bs!1037324 (and b!4646558 b!4646191)))

(assert (=> bs!1037324 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810584) (= lambda!197671 lambda!197615))))

(declare-fun bs!1037325 () Bool)

(assert (= bs!1037325 (and b!4646558 b!4645992)))

(assert (=> bs!1037325 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197671 lambda!197579))))

(declare-fun bs!1037326 () Bool)

(assert (= bs!1037326 (and b!4646558 b!4646518)))

(assert (=> bs!1037326 (= (= (extractMap!1680 (t!359071 lt!1810086)) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197671 lambda!197663))))

(assert (=> bs!1037324 (= (= (extractMap!1680 (t!359071 lt!1810086)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197671 lambda!197614))))

(declare-fun bs!1037327 () Bool)

(assert (= bs!1037327 (and b!4646558 d!1465112)))

(assert (=> bs!1037327 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810568) (= lambda!197671 lambda!197616))))

(declare-fun bs!1037328 () Bool)

(assert (= bs!1037328 (and b!4646558 d!1465038)))

(assert (=> bs!1037328 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810466) (= lambda!197671 lambda!197607))))

(declare-fun bs!1037329 () Bool)

(assert (= bs!1037329 (and b!4646558 b!4646000)))

(assert (=> bs!1037329 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197671 lambda!197587))))

(declare-fun bs!1037330 () Bool)

(assert (= bs!1037330 (and b!4646558 b!4646002)))

(assert (=> bs!1037330 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197671 lambda!197586))))

(declare-fun bs!1037331 () Bool)

(assert (= bs!1037331 (and b!4646558 d!1464922)))

(assert (=> bs!1037331 (not (= lambda!197671 lambda!197489))))

(declare-fun bs!1037332 () Bool)

(assert (= bs!1037332 (and b!4646558 d!1464982)))

(assert (=> bs!1037332 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810361) (= lambda!197671 lambda!197583))))

(assert (=> bs!1037320 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197671 lambda!197581))))

(declare-fun bs!1037333 () Bool)

(assert (= bs!1037333 (and b!4646558 b!4646031)))

(assert (=> bs!1037333 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197671 lambda!197595))))

(declare-fun bs!1037334 () Bool)

(assert (= bs!1037334 (and b!4646558 d!1465106)))

(assert (=> bs!1037334 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810377) (= lambda!197671 lambda!197612))))

(declare-fun bs!1037335 () Bool)

(assert (= bs!1037335 (and b!4646558 b!4646516)))

(assert (=> bs!1037335 (= (= (extractMap!1680 (t!359071 lt!1810086)) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197671 lambda!197664))))

(assert (=> bs!1037329 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810419) (= lambda!197671 lambda!197589))))

(declare-fun bs!1037336 () Bool)

(assert (= bs!1037336 (and b!4646558 d!1465222)))

(assert (=> bs!1037336 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197671 lambda!197660))))

(declare-fun bs!1037337 () Bool)

(assert (= bs!1037337 (and b!4646558 d!1464936)))

(assert (=> bs!1037337 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810261) (= lambda!197671 lambda!197565))))

(declare-fun bs!1037338 () Bool)

(assert (= bs!1037338 (and b!4646558 d!1465192)))

(assert (=> bs!1037338 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810716) (= lambda!197671 lambda!197654))))

(declare-fun bs!1037339 () Bool)

(assert (= bs!1037339 (and b!4646558 b!4646397)))

(assert (=> bs!1037339 (= (= (extractMap!1680 (t!359071 lt!1810086)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197671 lambda!197650))))

(declare-fun bs!1037340 () Bool)

(assert (= bs!1037340 (and b!4646558 d!1465288)))

(assert (=> bs!1037340 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810277) (= lambda!197671 lambda!197662))))

(declare-fun bs!1037341 () Bool)

(assert (= bs!1037341 (and b!4646558 d!1465300)))

(assert (=> bs!1037341 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810799) (= lambda!197671 lambda!197667))))

(declare-fun bs!1037342 () Bool)

(assert (= bs!1037342 (and b!4646558 d!1465044)))

(assert (=> bs!1037342 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810516) (= lambda!197671 lambda!197611))))

(assert (=> bs!1037316 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197671 lambda!197596))))

(declare-fun bs!1037343 () Bool)

(assert (= bs!1037343 (and b!4646558 b!4646095)))

(assert (=> bs!1037343 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810532) (= lambda!197671 lambda!197610))))

(declare-fun bs!1037344 () Bool)

(assert (= bs!1037344 (and b!4646558 b!4646399)))

(assert (=> bs!1037344 (= (= (extractMap!1680 (t!359071 lt!1810086)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197671 lambda!197648))))

(assert (=> bs!1037339 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810732) (= lambda!197671 lambda!197652))))

(declare-fun bs!1037345 () Bool)

(assert (= bs!1037345 (and b!4646558 d!1465004)))

(assert (=> bs!1037345 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810429) (= lambda!197671 lambda!197598))))

(assert (=> bs!1037343 (= (= (extractMap!1680 (t!359071 lt!1810086)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197671 lambda!197609))))

(assert (=> bs!1037335 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810815) (= lambda!197671 lambda!197665))))

(declare-fun bs!1037346 () Bool)

(assert (= bs!1037346 (and b!4646558 d!1465208)))

(assert (=> bs!1037346 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810089) (= lambda!197671 lambda!197659))))

(declare-fun bs!1037347 () Bool)

(assert (= bs!1037347 (and b!4646558 b!4646097)))

(assert (=> bs!1037347 (= (= (extractMap!1680 (t!359071 lt!1810086)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197671 lambda!197608))))

(declare-fun bs!1037348 () Bool)

(assert (= bs!1037348 (and b!4646558 d!1464926)))

(assert (=> bs!1037348 (not (= lambda!197671 lambda!197490))))

(declare-fun bs!1037349 () Bool)

(assert (= bs!1037349 (and b!4646558 d!1465008)))

(assert (=> bs!1037349 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810450) (= lambda!197671 lambda!197602))))

(declare-fun bs!1037350 () Bool)

(assert (= bs!1037350 (and b!4646558 b!4646193)))

(assert (=> bs!1037350 (= (= (extractMap!1680 (t!359071 lt!1810086)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197671 lambda!197613))))

(assert (=> bs!1037322 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810277) (= lambda!197671 lambda!197564))))

(declare-fun bs!1037351 () Bool)

(assert (= bs!1037351 (and b!4646558 b!4646036)))

(assert (=> bs!1037351 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197671 lambda!197599))))

(assert (=> b!4646558 true))

(declare-fun bs!1037353 () Bool)

(declare-fun b!4646556 () Bool)

(assert (= bs!1037353 (and b!4646556 b!4646029)))

(declare-fun lambda!197673 () Int)

(assert (=> bs!1037353 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810445) (= lambda!197673 lambda!197597))))

(declare-fun bs!1037355 () Bool)

(assert (= bs!1037355 (and b!4646556 b!4645912)))

(assert (=> bs!1037355 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810089) (= lambda!197673 lambda!197562))))

(declare-fun bs!1037357 () Bool)

(assert (= bs!1037357 (and b!4646556 b!4645990)))

(assert (=> bs!1037357 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810377) (= lambda!197673 lambda!197582))))

(declare-fun bs!1037359 () Bool)

(assert (= bs!1037359 (and b!4646556 b!4646034)))

(assert (=> bs!1037359 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197673 lambda!197600))))

(assert (=> bs!1037359 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810466) (= lambda!197673 lambda!197601))))

(declare-fun bs!1037360 () Bool)

(assert (= bs!1037360 (and b!4646556 b!4646558)))

(assert (=> bs!1037360 (= lambda!197673 lambda!197671)))

(declare-fun bs!1037361 () Bool)

(assert (= bs!1037361 (and b!4646556 b!4645910)))

(assert (=> bs!1037361 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810089) (= lambda!197673 lambda!197563))))

(declare-fun bs!1037362 () Bool)

(assert (= bs!1037362 (and b!4646556 d!1464988)))

(assert (=> bs!1037362 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810403) (= lambda!197673 lambda!197591))))

(declare-fun bs!1037363 () Bool)

(assert (= bs!1037363 (and b!4646556 b!4646191)))

(assert (=> bs!1037363 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810584) (= lambda!197673 lambda!197615))))

(declare-fun bs!1037364 () Bool)

(assert (= bs!1037364 (and b!4646556 b!4645992)))

(assert (=> bs!1037364 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197673 lambda!197579))))

(declare-fun bs!1037365 () Bool)

(assert (= bs!1037365 (and b!4646556 b!4646518)))

(assert (=> bs!1037365 (= (= (extractMap!1680 (t!359071 lt!1810086)) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197673 lambda!197663))))

(assert (=> bs!1037363 (= (= (extractMap!1680 (t!359071 lt!1810086)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197673 lambda!197614))))

(declare-fun bs!1037366 () Bool)

(assert (= bs!1037366 (and b!4646556 d!1465112)))

(assert (=> bs!1037366 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810568) (= lambda!197673 lambda!197616))))

(declare-fun bs!1037367 () Bool)

(assert (= bs!1037367 (and b!4646556 d!1465038)))

(assert (=> bs!1037367 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810466) (= lambda!197673 lambda!197607))))

(declare-fun bs!1037368 () Bool)

(assert (= bs!1037368 (and b!4646556 b!4646000)))

(assert (=> bs!1037368 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197673 lambda!197587))))

(declare-fun bs!1037369 () Bool)

(assert (= bs!1037369 (and b!4646556 b!4646002)))

(assert (=> bs!1037369 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197673 lambda!197586))))

(declare-fun bs!1037370 () Bool)

(assert (= bs!1037370 (and b!4646556 d!1464922)))

(assert (=> bs!1037370 (not (= lambda!197673 lambda!197489))))

(declare-fun bs!1037371 () Bool)

(assert (= bs!1037371 (and b!4646556 d!1464982)))

(assert (=> bs!1037371 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810361) (= lambda!197673 lambda!197583))))

(assert (=> bs!1037357 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197673 lambda!197581))))

(declare-fun bs!1037372 () Bool)

(assert (= bs!1037372 (and b!4646556 b!4646031)))

(assert (=> bs!1037372 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197673 lambda!197595))))

(declare-fun bs!1037373 () Bool)

(assert (= bs!1037373 (and b!4646556 d!1465106)))

(assert (=> bs!1037373 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810377) (= lambda!197673 lambda!197612))))

(declare-fun bs!1037374 () Bool)

(assert (= bs!1037374 (and b!4646556 b!4646516)))

(assert (=> bs!1037374 (= (= (extractMap!1680 (t!359071 lt!1810086)) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197673 lambda!197664))))

(assert (=> bs!1037368 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810419) (= lambda!197673 lambda!197589))))

(declare-fun bs!1037375 () Bool)

(assert (= bs!1037375 (and b!4646556 d!1465222)))

(assert (=> bs!1037375 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197673 lambda!197660))))

(declare-fun bs!1037376 () Bool)

(assert (= bs!1037376 (and b!4646556 d!1464936)))

(assert (=> bs!1037376 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810261) (= lambda!197673 lambda!197565))))

(declare-fun bs!1037377 () Bool)

(assert (= bs!1037377 (and b!4646556 d!1465192)))

(assert (=> bs!1037377 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810716) (= lambda!197673 lambda!197654))))

(declare-fun bs!1037378 () Bool)

(assert (= bs!1037378 (and b!4646556 b!4646397)))

(assert (=> bs!1037378 (= (= (extractMap!1680 (t!359071 lt!1810086)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197673 lambda!197650))))

(declare-fun bs!1037379 () Bool)

(assert (= bs!1037379 (and b!4646556 d!1465288)))

(assert (=> bs!1037379 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810277) (= lambda!197673 lambda!197662))))

(declare-fun bs!1037380 () Bool)

(assert (= bs!1037380 (and b!4646556 d!1465300)))

(assert (=> bs!1037380 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810799) (= lambda!197673 lambda!197667))))

(declare-fun bs!1037381 () Bool)

(assert (= bs!1037381 (and b!4646556 d!1465044)))

(assert (=> bs!1037381 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810516) (= lambda!197673 lambda!197611))))

(assert (=> bs!1037353 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197673 lambda!197596))))

(declare-fun bs!1037382 () Bool)

(assert (= bs!1037382 (and b!4646556 b!4646095)))

(assert (=> bs!1037382 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810532) (= lambda!197673 lambda!197610))))

(declare-fun bs!1037383 () Bool)

(assert (= bs!1037383 (and b!4646556 b!4646399)))

(assert (=> bs!1037383 (= (= (extractMap!1680 (t!359071 lt!1810086)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197673 lambda!197648))))

(assert (=> bs!1037378 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810732) (= lambda!197673 lambda!197652))))

(declare-fun bs!1037384 () Bool)

(assert (= bs!1037384 (and b!4646556 d!1465004)))

(assert (=> bs!1037384 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810429) (= lambda!197673 lambda!197598))))

(assert (=> bs!1037382 (= (= (extractMap!1680 (t!359071 lt!1810086)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197673 lambda!197609))))

(assert (=> bs!1037374 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810815) (= lambda!197673 lambda!197665))))

(declare-fun bs!1037385 () Bool)

(assert (= bs!1037385 (and b!4646556 d!1465208)))

(assert (=> bs!1037385 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810089) (= lambda!197673 lambda!197659))))

(declare-fun bs!1037386 () Bool)

(assert (= bs!1037386 (and b!4646556 b!4646097)))

(assert (=> bs!1037386 (= (= (extractMap!1680 (t!359071 lt!1810086)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197673 lambda!197608))))

(declare-fun bs!1037387 () Bool)

(assert (= bs!1037387 (and b!4646556 d!1464926)))

(assert (=> bs!1037387 (not (= lambda!197673 lambda!197490))))

(declare-fun bs!1037388 () Bool)

(assert (= bs!1037388 (and b!4646556 d!1465008)))

(assert (=> bs!1037388 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810450) (= lambda!197673 lambda!197602))))

(declare-fun bs!1037389 () Bool)

(assert (= bs!1037389 (and b!4646556 b!4646193)))

(assert (=> bs!1037389 (= (= (extractMap!1680 (t!359071 lt!1810086)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197673 lambda!197613))))

(assert (=> bs!1037361 (= (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810277) (= lambda!197673 lambda!197564))))

(declare-fun bs!1037390 () Bool)

(assert (= bs!1037390 (and b!4646556 b!4646036)))

(assert (=> bs!1037390 (= (= (extractMap!1680 (t!359071 lt!1810086)) (ListMap!4518 Nil!51850)) (= lambda!197673 lambda!197599))))

(assert (=> b!4646556 true))

(declare-fun lambda!197674 () Int)

(declare-fun lt!1810879 () ListMap!4517)

(assert (=> bs!1037353 (= (= lt!1810879 lt!1810445) (= lambda!197674 lambda!197597))))

(assert (=> bs!1037355 (= (= lt!1810879 lt!1810089) (= lambda!197674 lambda!197562))))

(assert (=> bs!1037357 (= (= lt!1810879 lt!1810377) (= lambda!197674 lambda!197582))))

(assert (=> bs!1037359 (= (= lt!1810879 (ListMap!4518 Nil!51850)) (= lambda!197674 lambda!197600))))

(assert (=> bs!1037359 (= (= lt!1810879 lt!1810466) (= lambda!197674 lambda!197601))))

(assert (=> bs!1037360 (= (= lt!1810879 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197674 lambda!197671))))

(assert (=> bs!1037361 (= (= lt!1810879 lt!1810089) (= lambda!197674 lambda!197563))))

(assert (=> bs!1037362 (= (= lt!1810879 lt!1810403) (= lambda!197674 lambda!197591))))

(assert (=> bs!1037364 (= (= lt!1810879 (ListMap!4518 Nil!51850)) (= lambda!197674 lambda!197579))))

(assert (=> bs!1037365 (= (= lt!1810879 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197674 lambda!197663))))

(assert (=> bs!1037363 (= (= lt!1810879 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197674 lambda!197614))))

(assert (=> bs!1037366 (= (= lt!1810879 lt!1810568) (= lambda!197674 lambda!197616))))

(assert (=> bs!1037367 (= (= lt!1810879 lt!1810466) (= lambda!197674 lambda!197607))))

(assert (=> bs!1037368 (= (= lt!1810879 (ListMap!4518 Nil!51850)) (= lambda!197674 lambda!197587))))

(assert (=> bs!1037369 (= (= lt!1810879 (ListMap!4518 Nil!51850)) (= lambda!197674 lambda!197586))))

(assert (=> bs!1037370 (not (= lambda!197674 lambda!197489))))

(assert (=> bs!1037371 (= (= lt!1810879 lt!1810361) (= lambda!197674 lambda!197583))))

(assert (=> bs!1037357 (= (= lt!1810879 (ListMap!4518 Nil!51850)) (= lambda!197674 lambda!197581))))

(assert (=> bs!1037372 (= (= lt!1810879 (ListMap!4518 Nil!51850)) (= lambda!197674 lambda!197595))))

(assert (=> bs!1037373 (= (= lt!1810879 lt!1810377) (= lambda!197674 lambda!197612))))

(assert (=> bs!1037374 (= (= lt!1810879 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197674 lambda!197664))))

(assert (=> bs!1037368 (= (= lt!1810879 lt!1810419) (= lambda!197674 lambda!197589))))

(assert (=> bs!1037375 (= (= lt!1810879 (ListMap!4518 Nil!51850)) (= lambda!197674 lambda!197660))))

(assert (=> bs!1037376 (= (= lt!1810879 lt!1810261) (= lambda!197674 lambda!197565))))

(assert (=> bs!1037377 (= (= lt!1810879 lt!1810716) (= lambda!197674 lambda!197654))))

(assert (=> bs!1037378 (= (= lt!1810879 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197674 lambda!197650))))

(assert (=> b!4646556 (= (= lt!1810879 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197674 lambda!197673))))

(assert (=> bs!1037363 (= (= lt!1810879 lt!1810584) (= lambda!197674 lambda!197615))))

(assert (=> bs!1037379 (= (= lt!1810879 lt!1810277) (= lambda!197674 lambda!197662))))

(assert (=> bs!1037380 (= (= lt!1810879 lt!1810799) (= lambda!197674 lambda!197667))))

(assert (=> bs!1037381 (= (= lt!1810879 lt!1810516) (= lambda!197674 lambda!197611))))

(assert (=> bs!1037353 (= (= lt!1810879 (ListMap!4518 Nil!51850)) (= lambda!197674 lambda!197596))))

(assert (=> bs!1037382 (= (= lt!1810879 lt!1810532) (= lambda!197674 lambda!197610))))

(assert (=> bs!1037383 (= (= lt!1810879 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197674 lambda!197648))))

(assert (=> bs!1037378 (= (= lt!1810879 lt!1810732) (= lambda!197674 lambda!197652))))

(assert (=> bs!1037384 (= (= lt!1810879 lt!1810429) (= lambda!197674 lambda!197598))))

(assert (=> bs!1037382 (= (= lt!1810879 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197674 lambda!197609))))

(assert (=> bs!1037374 (= (= lt!1810879 lt!1810815) (= lambda!197674 lambda!197665))))

(assert (=> bs!1037385 (= (= lt!1810879 lt!1810089) (= lambda!197674 lambda!197659))))

(assert (=> bs!1037386 (= (= lt!1810879 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197674 lambda!197608))))

(assert (=> bs!1037387 (not (= lambda!197674 lambda!197490))))

(assert (=> bs!1037388 (= (= lt!1810879 lt!1810450) (= lambda!197674 lambda!197602))))

(assert (=> bs!1037389 (= (= lt!1810879 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197674 lambda!197613))))

(assert (=> bs!1037361 (= (= lt!1810879 lt!1810277) (= lambda!197674 lambda!197564))))

(assert (=> bs!1037390 (= (= lt!1810879 (ListMap!4518 Nil!51850)) (= lambda!197674 lambda!197599))))

(assert (=> b!4646556 true))

(declare-fun bs!1037391 () Bool)

(declare-fun d!1465324 () Bool)

(assert (= bs!1037391 (and d!1465324 b!4646029)))

(declare-fun lt!1810863 () ListMap!4517)

(declare-fun lambda!197681 () Int)

(assert (=> bs!1037391 (= (= lt!1810863 lt!1810445) (= lambda!197681 lambda!197597))))

(declare-fun bs!1037392 () Bool)

(assert (= bs!1037392 (and d!1465324 b!4645912)))

(assert (=> bs!1037392 (= (= lt!1810863 lt!1810089) (= lambda!197681 lambda!197562))))

(declare-fun bs!1037393 () Bool)

(assert (= bs!1037393 (and d!1465324 b!4645990)))

(assert (=> bs!1037393 (= (= lt!1810863 lt!1810377) (= lambda!197681 lambda!197582))))

(declare-fun bs!1037394 () Bool)

(assert (= bs!1037394 (and d!1465324 b!4646034)))

(assert (=> bs!1037394 (= (= lt!1810863 (ListMap!4518 Nil!51850)) (= lambda!197681 lambda!197600))))

(assert (=> bs!1037394 (= (= lt!1810863 lt!1810466) (= lambda!197681 lambda!197601))))

(declare-fun bs!1037395 () Bool)

(assert (= bs!1037395 (and d!1465324 b!4646558)))

(assert (=> bs!1037395 (= (= lt!1810863 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197681 lambda!197671))))

(declare-fun bs!1037396 () Bool)

(assert (= bs!1037396 (and d!1465324 b!4645910)))

(assert (=> bs!1037396 (= (= lt!1810863 lt!1810089) (= lambda!197681 lambda!197563))))

(declare-fun bs!1037397 () Bool)

(assert (= bs!1037397 (and d!1465324 d!1464988)))

(assert (=> bs!1037397 (= (= lt!1810863 lt!1810403) (= lambda!197681 lambda!197591))))

(declare-fun bs!1037398 () Bool)

(assert (= bs!1037398 (and d!1465324 b!4645992)))

(assert (=> bs!1037398 (= (= lt!1810863 (ListMap!4518 Nil!51850)) (= lambda!197681 lambda!197579))))

(declare-fun bs!1037399 () Bool)

(assert (= bs!1037399 (and d!1465324 b!4646518)))

(assert (=> bs!1037399 (= (= lt!1810863 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197681 lambda!197663))))

(declare-fun bs!1037400 () Bool)

(assert (= bs!1037400 (and d!1465324 b!4646191)))

(assert (=> bs!1037400 (= (= lt!1810863 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197681 lambda!197614))))

(declare-fun bs!1037401 () Bool)

(assert (= bs!1037401 (and d!1465324 d!1465038)))

(assert (=> bs!1037401 (= (= lt!1810863 lt!1810466) (= lambda!197681 lambda!197607))))

(declare-fun bs!1037402 () Bool)

(assert (= bs!1037402 (and d!1465324 b!4646000)))

(assert (=> bs!1037402 (= (= lt!1810863 (ListMap!4518 Nil!51850)) (= lambda!197681 lambda!197587))))

(declare-fun bs!1037403 () Bool)

(assert (= bs!1037403 (and d!1465324 b!4646002)))

(assert (=> bs!1037403 (= (= lt!1810863 (ListMap!4518 Nil!51850)) (= lambda!197681 lambda!197586))))

(declare-fun bs!1037404 () Bool)

(assert (= bs!1037404 (and d!1465324 d!1464922)))

(assert (=> bs!1037404 (not (= lambda!197681 lambda!197489))))

(declare-fun bs!1037405 () Bool)

(assert (= bs!1037405 (and d!1465324 d!1464982)))

(assert (=> bs!1037405 (= (= lt!1810863 lt!1810361) (= lambda!197681 lambda!197583))))

(assert (=> bs!1037393 (= (= lt!1810863 (ListMap!4518 Nil!51850)) (= lambda!197681 lambda!197581))))

(declare-fun bs!1037406 () Bool)

(assert (= bs!1037406 (and d!1465324 b!4646031)))

(assert (=> bs!1037406 (= (= lt!1810863 (ListMap!4518 Nil!51850)) (= lambda!197681 lambda!197595))))

(declare-fun bs!1037407 () Bool)

(assert (= bs!1037407 (and d!1465324 d!1465106)))

(assert (=> bs!1037407 (= (= lt!1810863 lt!1810377) (= lambda!197681 lambda!197612))))

(declare-fun bs!1037408 () Bool)

(assert (= bs!1037408 (and d!1465324 b!4646516)))

(assert (=> bs!1037408 (= (= lt!1810863 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197681 lambda!197664))))

(assert (=> bs!1037402 (= (= lt!1810863 lt!1810419) (= lambda!197681 lambda!197589))))

(declare-fun bs!1037409 () Bool)

(assert (= bs!1037409 (and d!1465324 d!1465222)))

(assert (=> bs!1037409 (= (= lt!1810863 (ListMap!4518 Nil!51850)) (= lambda!197681 lambda!197660))))

(declare-fun bs!1037410 () Bool)

(assert (= bs!1037410 (and d!1465324 d!1464936)))

(assert (=> bs!1037410 (= (= lt!1810863 lt!1810261) (= lambda!197681 lambda!197565))))

(declare-fun bs!1037411 () Bool)

(assert (= bs!1037411 (and d!1465324 d!1465192)))

(assert (=> bs!1037411 (= (= lt!1810863 lt!1810716) (= lambda!197681 lambda!197654))))

(declare-fun bs!1037412 () Bool)

(assert (= bs!1037412 (and d!1465324 b!4646397)))

(assert (=> bs!1037412 (= (= lt!1810863 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197681 lambda!197650))))

(declare-fun bs!1037413 () Bool)

(assert (= bs!1037413 (and d!1465324 b!4646556)))

(assert (=> bs!1037413 (= (= lt!1810863 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197681 lambda!197673))))

(assert (=> bs!1037400 (= (= lt!1810863 lt!1810584) (= lambda!197681 lambda!197615))))

(declare-fun bs!1037414 () Bool)

(assert (= bs!1037414 (and d!1465324 d!1465288)))

(assert (=> bs!1037414 (= (= lt!1810863 lt!1810277) (= lambda!197681 lambda!197662))))

(declare-fun bs!1037415 () Bool)

(assert (= bs!1037415 (and d!1465324 d!1465300)))

(assert (=> bs!1037415 (= (= lt!1810863 lt!1810799) (= lambda!197681 lambda!197667))))

(declare-fun bs!1037416 () Bool)

(assert (= bs!1037416 (and d!1465324 d!1465044)))

(assert (=> bs!1037416 (= (= lt!1810863 lt!1810516) (= lambda!197681 lambda!197611))))

(assert (=> bs!1037391 (= (= lt!1810863 (ListMap!4518 Nil!51850)) (= lambda!197681 lambda!197596))))

(declare-fun bs!1037417 () Bool)

(assert (= bs!1037417 (and d!1465324 b!4646095)))

(assert (=> bs!1037417 (= (= lt!1810863 lt!1810532) (= lambda!197681 lambda!197610))))

(assert (=> bs!1037413 (= (= lt!1810863 lt!1810879) (= lambda!197681 lambda!197674))))

(declare-fun bs!1037418 () Bool)

(assert (= bs!1037418 (and d!1465324 d!1465112)))

(assert (=> bs!1037418 (= (= lt!1810863 lt!1810568) (= lambda!197681 lambda!197616))))

(declare-fun bs!1037419 () Bool)

(assert (= bs!1037419 (and d!1465324 b!4646399)))

(assert (=> bs!1037419 (= (= lt!1810863 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197681 lambda!197648))))

(assert (=> bs!1037412 (= (= lt!1810863 lt!1810732) (= lambda!197681 lambda!197652))))

(declare-fun bs!1037420 () Bool)

(assert (= bs!1037420 (and d!1465324 d!1465004)))

(assert (=> bs!1037420 (= (= lt!1810863 lt!1810429) (= lambda!197681 lambda!197598))))

(assert (=> bs!1037417 (= (= lt!1810863 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197681 lambda!197609))))

(assert (=> bs!1037408 (= (= lt!1810863 lt!1810815) (= lambda!197681 lambda!197665))))

(declare-fun bs!1037421 () Bool)

(assert (= bs!1037421 (and d!1465324 d!1465208)))

(assert (=> bs!1037421 (= (= lt!1810863 lt!1810089) (= lambda!197681 lambda!197659))))

(declare-fun bs!1037422 () Bool)

(assert (= bs!1037422 (and d!1465324 b!4646097)))

(assert (=> bs!1037422 (= (= lt!1810863 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197681 lambda!197608))))

(declare-fun bs!1037423 () Bool)

(assert (= bs!1037423 (and d!1465324 d!1464926)))

(assert (=> bs!1037423 (not (= lambda!197681 lambda!197490))))

(declare-fun bs!1037424 () Bool)

(assert (= bs!1037424 (and d!1465324 d!1465008)))

(assert (=> bs!1037424 (= (= lt!1810863 lt!1810450) (= lambda!197681 lambda!197602))))

(declare-fun bs!1037425 () Bool)

(assert (= bs!1037425 (and d!1465324 b!4646193)))

(assert (=> bs!1037425 (= (= lt!1810863 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197681 lambda!197613))))

(assert (=> bs!1037396 (= (= lt!1810863 lt!1810277) (= lambda!197681 lambda!197564))))

(declare-fun bs!1037426 () Bool)

(assert (= bs!1037426 (and d!1465324 b!4646036)))

(assert (=> bs!1037426 (= (= lt!1810863 (ListMap!4518 Nil!51850)) (= lambda!197681 lambda!197599))))

(assert (=> d!1465324 true))

(declare-fun e!2898604 () ListMap!4517)

(assert (=> b!4646556 (= e!2898604 lt!1810879)))

(declare-fun lt!1810864 () ListMap!4517)

(assert (=> b!4646556 (= lt!1810864 (+!1968 (extractMap!1680 (t!359071 lt!1810086)) (h!57980 (_2!29766 (h!57981 lt!1810086)))))))

(assert (=> b!4646556 (= lt!1810879 (addToMapMapFromBucket!1081 (t!359070 (_2!29766 (h!57981 lt!1810086))) (+!1968 (extractMap!1680 (t!359071 lt!1810086)) (h!57980 (_2!29766 (h!57981 lt!1810086))))))))

(declare-fun lt!1810866 () Unit!116275)

(declare-fun call!324476 () Unit!116275)

(assert (=> b!4646556 (= lt!1810866 call!324476)))

(assert (=> b!4646556 (forall!10987 (toList!5182 (extractMap!1680 (t!359071 lt!1810086))) lambda!197673)))

(declare-fun lt!1810880 () Unit!116275)

(assert (=> b!4646556 (= lt!1810880 lt!1810866)))

(assert (=> b!4646556 (forall!10987 (toList!5182 lt!1810864) lambda!197674)))

(declare-fun lt!1810876 () Unit!116275)

(declare-fun Unit!116507 () Unit!116275)

(assert (=> b!4646556 (= lt!1810876 Unit!116507)))

(declare-fun call!324478 () Bool)

(assert (=> b!4646556 call!324478))

(declare-fun lt!1810875 () Unit!116275)

(declare-fun Unit!116508 () Unit!116275)

(assert (=> b!4646556 (= lt!1810875 Unit!116508)))

(declare-fun lt!1810871 () Unit!116275)

(declare-fun Unit!116510 () Unit!116275)

(assert (=> b!4646556 (= lt!1810871 Unit!116510)))

(declare-fun lt!1810870 () Unit!116275)

(assert (=> b!4646556 (= lt!1810870 (forallContained!3202 (toList!5182 lt!1810864) lambda!197674 (h!57980 (_2!29766 (h!57981 lt!1810086)))))))

(assert (=> b!4646556 (contains!14991 lt!1810864 (_1!29765 (h!57980 (_2!29766 (h!57981 lt!1810086)))))))

(declare-fun lt!1810878 () Unit!116275)

(declare-fun Unit!116511 () Unit!116275)

(assert (=> b!4646556 (= lt!1810878 Unit!116511)))

(assert (=> b!4646556 (contains!14991 lt!1810879 (_1!29765 (h!57980 (_2!29766 (h!57981 lt!1810086)))))))

(declare-fun lt!1810865 () Unit!116275)

(declare-fun Unit!116513 () Unit!116275)

(assert (=> b!4646556 (= lt!1810865 Unit!116513)))

(assert (=> b!4646556 (forall!10987 (_2!29766 (h!57981 lt!1810086)) lambda!197674)))

(declare-fun lt!1810882 () Unit!116275)

(declare-fun Unit!116514 () Unit!116275)

(assert (=> b!4646556 (= lt!1810882 Unit!116514)))

(declare-fun call!324477 () Bool)

(assert (=> b!4646556 call!324477))

(declare-fun lt!1810877 () Unit!116275)

(declare-fun Unit!116515 () Unit!116275)

(assert (=> b!4646556 (= lt!1810877 Unit!116515)))

(declare-fun lt!1810873 () Unit!116275)

(declare-fun Unit!116516 () Unit!116275)

(assert (=> b!4646556 (= lt!1810873 Unit!116516)))

(declare-fun lt!1810883 () Unit!116275)

(assert (=> b!4646556 (= lt!1810883 (addForallContainsKeyThenBeforeAdding!583 (extractMap!1680 (t!359071 lt!1810086)) lt!1810879 (_1!29765 (h!57980 (_2!29766 (h!57981 lt!1810086)))) (_2!29765 (h!57980 (_2!29766 (h!57981 lt!1810086))))))))

(assert (=> b!4646556 (forall!10987 (toList!5182 (extractMap!1680 (t!359071 lt!1810086))) lambda!197674)))

(declare-fun lt!1810874 () Unit!116275)

(assert (=> b!4646556 (= lt!1810874 lt!1810883)))

(assert (=> b!4646556 (forall!10987 (toList!5182 (extractMap!1680 (t!359071 lt!1810086))) lambda!197674)))

(declare-fun lt!1810869 () Unit!116275)

(declare-fun Unit!116517 () Unit!116275)

(assert (=> b!4646556 (= lt!1810869 Unit!116517)))

(declare-fun res!1952351 () Bool)

(assert (=> b!4646556 (= res!1952351 (forall!10987 (_2!29766 (h!57981 lt!1810086)) lambda!197674))))

(declare-fun e!2898602 () Bool)

(assert (=> b!4646556 (=> (not res!1952351) (not e!2898602))))

(assert (=> b!4646556 e!2898602))

(declare-fun lt!1810881 () Unit!116275)

(declare-fun Unit!116518 () Unit!116275)

(assert (=> b!4646556 (= lt!1810881 Unit!116518)))

(declare-fun e!2898603 () Bool)

(assert (=> d!1465324 e!2898603))

(declare-fun res!1952352 () Bool)

(assert (=> d!1465324 (=> (not res!1952352) (not e!2898603))))

(assert (=> d!1465324 (= res!1952352 (forall!10987 (_2!29766 (h!57981 lt!1810086)) lambda!197681))))

(assert (=> d!1465324 (= lt!1810863 e!2898604)))

(declare-fun c!795086 () Bool)

(assert (=> d!1465324 (= c!795086 ((_ is Nil!51850) (_2!29766 (h!57981 lt!1810086))))))

(assert (=> d!1465324 (noDuplicateKeys!1624 (_2!29766 (h!57981 lt!1810086)))))

(assert (=> d!1465324 (= (addToMapMapFromBucket!1081 (_2!29766 (h!57981 lt!1810086)) (extractMap!1680 (t!359071 lt!1810086))) lt!1810863)))

(declare-fun b!4646557 () Bool)

(declare-fun res!1952350 () Bool)

(assert (=> b!4646557 (=> (not res!1952350) (not e!2898603))))

(assert (=> b!4646557 (= res!1952350 (forall!10987 (toList!5182 (extractMap!1680 (t!359071 lt!1810086))) lambda!197681))))

(declare-fun bm!324471 () Bool)

(assert (=> bm!324471 (= call!324478 (forall!10987 (ite c!795086 (toList!5182 (extractMap!1680 (t!359071 lt!1810086))) (t!359070 (_2!29766 (h!57981 lt!1810086)))) (ite c!795086 lambda!197671 lambda!197674)))))

(assert (=> b!4646558 (= e!2898604 (extractMap!1680 (t!359071 lt!1810086)))))

(declare-fun lt!1810868 () Unit!116275)

(assert (=> b!4646558 (= lt!1810868 call!324476)))

(assert (=> b!4646558 call!324477))

(declare-fun lt!1810867 () Unit!116275)

(assert (=> b!4646558 (= lt!1810867 lt!1810868)))

(assert (=> b!4646558 call!324478))

(declare-fun lt!1810872 () Unit!116275)

(declare-fun Unit!116519 () Unit!116275)

(assert (=> b!4646558 (= lt!1810872 Unit!116519)))

(declare-fun bm!324472 () Bool)

(assert (=> bm!324472 (= call!324477 (forall!10987 (ite c!795086 (toList!5182 (extractMap!1680 (t!359071 lt!1810086))) (toList!5182 lt!1810864)) (ite c!795086 lambda!197671 lambda!197674)))))

(declare-fun b!4646559 () Bool)

(assert (=> b!4646559 (= e!2898603 (invariantList!1284 (toList!5182 lt!1810863)))))

(declare-fun b!4646560 () Bool)

(assert (=> b!4646560 (= e!2898602 (forall!10987 (toList!5182 (extractMap!1680 (t!359071 lt!1810086))) lambda!197674))))

(declare-fun bm!324473 () Bool)

(assert (=> bm!324473 (= call!324476 (lemmaContainsAllItsOwnKeys!584 (extractMap!1680 (t!359071 lt!1810086))))))

(assert (= (and d!1465324 c!795086) b!4646558))

(assert (= (and d!1465324 (not c!795086)) b!4646556))

(assert (= (and b!4646556 res!1952351) b!4646560))

(assert (= (or b!4646558 b!4646556) bm!324473))

(assert (= (or b!4646558 b!4646556) bm!324471))

(assert (= (or b!4646558 b!4646556) bm!324472))

(assert (= (and d!1465324 res!1952352) b!4646557))

(assert (= (and b!4646557 res!1952350) b!4646559))

(declare-fun m!5512537 () Bool)

(assert (=> d!1465324 m!5512537))

(declare-fun m!5512539 () Bool)

(assert (=> d!1465324 m!5512539))

(declare-fun m!5512541 () Bool)

(assert (=> bm!324471 m!5512541))

(declare-fun m!5512543 () Bool)

(assert (=> b!4646560 m!5512543))

(assert (=> bm!324473 m!5511327))

(declare-fun m!5512545 () Bool)

(assert (=> bm!324473 m!5512545))

(declare-fun m!5512547 () Bool)

(assert (=> bm!324472 m!5512547))

(declare-fun m!5512549 () Bool)

(assert (=> b!4646559 m!5512549))

(declare-fun m!5512551 () Bool)

(assert (=> b!4646557 m!5512551))

(assert (=> b!4646556 m!5511327))

(declare-fun m!5512553 () Bool)

(assert (=> b!4646556 m!5512553))

(assert (=> b!4646556 m!5512543))

(declare-fun m!5512555 () Bool)

(assert (=> b!4646556 m!5512555))

(assert (=> b!4646556 m!5512555))

(declare-fun m!5512557 () Bool)

(assert (=> b!4646556 m!5512557))

(declare-fun m!5512559 () Bool)

(assert (=> b!4646556 m!5512559))

(declare-fun m!5512561 () Bool)

(assert (=> b!4646556 m!5512561))

(declare-fun m!5512563 () Bool)

(assert (=> b!4646556 m!5512563))

(assert (=> b!4646556 m!5511327))

(declare-fun m!5512565 () Bool)

(assert (=> b!4646556 m!5512565))

(assert (=> b!4646556 m!5512565))

(declare-fun m!5512567 () Bool)

(assert (=> b!4646556 m!5512567))

(assert (=> b!4646556 m!5512543))

(declare-fun m!5512569 () Bool)

(assert (=> b!4646556 m!5512569))

(assert (=> b!4646009 d!1465324))

(declare-fun bs!1037433 () Bool)

(declare-fun d!1465338 () Bool)

(assert (= bs!1037433 (and d!1465338 d!1464998)))

(declare-fun lambda!197683 () Int)

(assert (=> bs!1037433 (= lambda!197683 lambda!197593)))

(declare-fun bs!1037436 () Bool)

(assert (= bs!1037436 (and d!1465338 d!1465200)))

(assert (=> bs!1037436 (= lambda!197683 lambda!197656)))

(declare-fun bs!1037438 () Bool)

(assert (= bs!1037438 (and d!1465338 d!1465000)))

(assert (=> bs!1037438 (= lambda!197683 lambda!197594)))

(declare-fun bs!1037439 () Bool)

(assert (= bs!1037439 (and d!1465338 d!1464980)))

(assert (=> bs!1037439 (= lambda!197683 lambda!197578)))

(declare-fun bs!1037441 () Bool)

(assert (= bs!1037441 (and d!1465338 d!1464958)))

(assert (=> bs!1037441 (= lambda!197683 lambda!197574)))

(declare-fun lt!1810912 () ListMap!4517)

(assert (=> d!1465338 (invariantList!1284 (toList!5182 lt!1810912))))

(declare-fun e!2898622 () ListMap!4517)

(assert (=> d!1465338 (= lt!1810912 e!2898622)))

(declare-fun c!795089 () Bool)

(assert (=> d!1465338 (= c!795089 ((_ is Cons!51851) (t!359071 lt!1810086)))))

(assert (=> d!1465338 (forall!10988 (t!359071 lt!1810086) lambda!197683)))

(assert (=> d!1465338 (= (extractMap!1680 (t!359071 lt!1810086)) lt!1810912)))

(declare-fun b!4646589 () Bool)

(assert (=> b!4646589 (= e!2898622 (addToMapMapFromBucket!1081 (_2!29766 (h!57981 (t!359071 lt!1810086))) (extractMap!1680 (t!359071 (t!359071 lt!1810086)))))))

(declare-fun b!4646590 () Bool)

(assert (=> b!4646590 (= e!2898622 (ListMap!4518 Nil!51850))))

(assert (= (and d!1465338 c!795089) b!4646589))

(assert (= (and d!1465338 (not c!795089)) b!4646590))

(declare-fun m!5512571 () Bool)

(assert (=> d!1465338 m!5512571))

(declare-fun m!5512573 () Bool)

(assert (=> d!1465338 m!5512573))

(declare-fun m!5512575 () Bool)

(assert (=> b!4646589 m!5512575))

(assert (=> b!4646589 m!5512575))

(declare-fun m!5512577 () Bool)

(assert (=> b!4646589 m!5512577))

(assert (=> b!4646009 d!1465338))

(assert (=> bm!324420 d!1465222))

(declare-fun d!1465340 () Bool)

(declare-fun res!1952375 () Bool)

(declare-fun e!2898623 () Bool)

(assert (=> d!1465340 (=> res!1952375 e!2898623)))

(assert (=> d!1465340 (= res!1952375 (and ((_ is Cons!51850) (t!359070 newBucket!224)) (= (_1!29765 (h!57980 (t!359070 newBucket!224))) (_1!29765 (h!57980 newBucket!224)))))))

(assert (=> d!1465340 (= (containsKey!2690 (t!359070 newBucket!224) (_1!29765 (h!57980 newBucket!224))) e!2898623)))

(declare-fun b!4646591 () Bool)

(declare-fun e!2898624 () Bool)

(assert (=> b!4646591 (= e!2898623 e!2898624)))

(declare-fun res!1952376 () Bool)

(assert (=> b!4646591 (=> (not res!1952376) (not e!2898624))))

(assert (=> b!4646591 (= res!1952376 ((_ is Cons!51850) (t!359070 newBucket!224)))))

(declare-fun b!4646592 () Bool)

(assert (=> b!4646592 (= e!2898624 (containsKey!2690 (t!359070 (t!359070 newBucket!224)) (_1!29765 (h!57980 newBucket!224))))))

(assert (= (and d!1465340 (not res!1952375)) b!4646591))

(assert (= (and b!4646591 res!1952376) b!4646592))

(declare-fun m!5512579 () Bool)

(assert (=> b!4646592 m!5512579))

(assert (=> b!4646047 d!1465340))

(declare-fun d!1465342 () Bool)

(declare-fun res!1952377 () Bool)

(declare-fun e!2898625 () Bool)

(assert (=> d!1465342 (=> res!1952377 e!2898625)))

(assert (=> d!1465342 (= res!1952377 ((_ is Nil!51850) (toList!5182 (ListMap!4518 Nil!51850))))))

(assert (=> d!1465342 (= (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197583) e!2898625)))

(declare-fun b!4646593 () Bool)

(declare-fun e!2898626 () Bool)

(assert (=> b!4646593 (= e!2898625 e!2898626)))

(declare-fun res!1952378 () Bool)

(assert (=> b!4646593 (=> (not res!1952378) (not e!2898626))))

(assert (=> b!4646593 (= res!1952378 (dynLambda!21559 lambda!197583 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))))))

(declare-fun b!4646594 () Bool)

(assert (=> b!4646594 (= e!2898626 (forall!10987 (t!359070 (toList!5182 (ListMap!4518 Nil!51850))) lambda!197583))))

(assert (= (and d!1465342 (not res!1952377)) b!4646593))

(assert (= (and b!4646593 res!1952378) b!4646594))

(declare-fun b_lambda!171239 () Bool)

(assert (=> (not b_lambda!171239) (not b!4646593)))

(declare-fun m!5512581 () Bool)

(assert (=> b!4646593 m!5512581))

(declare-fun m!5512583 () Bool)

(assert (=> b!4646594 m!5512583))

(assert (=> b!4645991 d!1465342))

(declare-fun d!1465344 () Bool)

(declare-fun c!795090 () Bool)

(assert (=> d!1465344 (= c!795090 ((_ is Nil!51850) (toList!5182 (addToMapMapFromBucket!1081 (Cons!51850 lt!1810091 lt!1810088) (ListMap!4518 Nil!51850)))))))

(declare-fun e!2898627 () (InoxSet tuple2!52942))

(assert (=> d!1465344 (= (content!8975 (toList!5182 (addToMapMapFromBucket!1081 (Cons!51850 lt!1810091 lt!1810088) (ListMap!4518 Nil!51850)))) e!2898627)))

(declare-fun b!4646595 () Bool)

(assert (=> b!4646595 (= e!2898627 ((as const (Array tuple2!52942 Bool)) false))))

(declare-fun b!4646596 () Bool)

(assert (=> b!4646596 (= e!2898627 ((_ map or) (store ((as const (Array tuple2!52942 Bool)) false) (h!57980 (toList!5182 (addToMapMapFromBucket!1081 (Cons!51850 lt!1810091 lt!1810088) (ListMap!4518 Nil!51850)))) true) (content!8975 (t!359070 (toList!5182 (addToMapMapFromBucket!1081 (Cons!51850 lt!1810091 lt!1810088) (ListMap!4518 Nil!51850)))))))))

(assert (= (and d!1465344 c!795090) b!4646595))

(assert (= (and d!1465344 (not c!795090)) b!4646596))

(declare-fun m!5512585 () Bool)

(assert (=> b!4646596 m!5512585))

(declare-fun m!5512587 () Bool)

(assert (=> b!4646596 m!5512587))

(assert (=> d!1465012 d!1465344))

(declare-fun d!1465346 () Bool)

(declare-fun c!795091 () Bool)

(assert (=> d!1465346 (= c!795091 ((_ is Nil!51850) (toList!5182 (+!1968 lt!1810085 lt!1810091))))))

(declare-fun e!2898628 () (InoxSet tuple2!52942))

(assert (=> d!1465346 (= (content!8975 (toList!5182 (+!1968 lt!1810085 lt!1810091))) e!2898628)))

(declare-fun b!4646597 () Bool)

(assert (=> b!4646597 (= e!2898628 ((as const (Array tuple2!52942 Bool)) false))))

(declare-fun b!4646598 () Bool)

(assert (=> b!4646598 (= e!2898628 ((_ map or) (store ((as const (Array tuple2!52942 Bool)) false) (h!57980 (toList!5182 (+!1968 lt!1810085 lt!1810091))) true) (content!8975 (t!359070 (toList!5182 (+!1968 lt!1810085 lt!1810091))))))))

(assert (= (and d!1465346 c!795091) b!4646597))

(assert (= (and d!1465346 (not c!795091)) b!4646598))

(declare-fun m!5512589 () Bool)

(assert (=> b!4646598 m!5512589))

(declare-fun m!5512591 () Bool)

(assert (=> b!4646598 m!5512591))

(assert (=> d!1465012 d!1465346))

(declare-fun d!1465348 () Bool)

(declare-fun res!1952379 () Bool)

(declare-fun e!2898629 () Bool)

(assert (=> d!1465348 (=> res!1952379 e!2898629)))

(assert (=> d!1465348 (= res!1952379 (not ((_ is Cons!51850) (t!359070 oldBucket!40))))))

(assert (=> d!1465348 (= (noDuplicateKeys!1624 (t!359070 oldBucket!40)) e!2898629)))

(declare-fun b!4646599 () Bool)

(declare-fun e!2898630 () Bool)

(assert (=> b!4646599 (= e!2898629 e!2898630)))

(declare-fun res!1952380 () Bool)

(assert (=> b!4646599 (=> (not res!1952380) (not e!2898630))))

(assert (=> b!4646599 (= res!1952380 (not (containsKey!2690 (t!359070 (t!359070 oldBucket!40)) (_1!29765 (h!57980 (t!359070 oldBucket!40))))))))

(declare-fun b!4646600 () Bool)

(assert (=> b!4646600 (= e!2898630 (noDuplicateKeys!1624 (t!359070 (t!359070 oldBucket!40))))))

(assert (= (and d!1465348 (not res!1952379)) b!4646599))

(assert (= (and b!4646599 res!1952380) b!4646600))

(declare-fun m!5512593 () Bool)

(assert (=> b!4646599 m!5512593))

(declare-fun m!5512595 () Bool)

(assert (=> b!4646600 m!5512595))

(assert (=> b!4645828 d!1465348))

(assert (=> b!4645981 d!1465158))

(assert (=> b!4645983 d!1465156))

(assert (=> b!4645983 d!1465158))

(declare-fun d!1465350 () Bool)

(assert (=> d!1465350 (= (invariantList!1284 (toList!5182 lt!1810403)) (noDuplicatedKeys!342 (toList!5182 lt!1810403)))))

(declare-fun bs!1037462 () Bool)

(assert (= bs!1037462 d!1465350))

(declare-fun m!5512597 () Bool)

(assert (=> bs!1037462 m!5512597))

(assert (=> b!4646003 d!1465350))

(declare-fun d!1465352 () Bool)

(declare-fun res!1952381 () Bool)

(declare-fun e!2898631 () Bool)

(assert (=> d!1465352 (=> res!1952381 e!2898631)))

(assert (=> d!1465352 (= res!1952381 ((_ is Nil!51850) oldBucket!40))))

(assert (=> d!1465352 (= (forall!10987 oldBucket!40 lambda!197565) e!2898631)))

(declare-fun b!4646601 () Bool)

(declare-fun e!2898632 () Bool)

(assert (=> b!4646601 (= e!2898631 e!2898632)))

(declare-fun res!1952382 () Bool)

(assert (=> b!4646601 (=> (not res!1952382) (not e!2898632))))

(assert (=> b!4646601 (= res!1952382 (dynLambda!21559 lambda!197565 (h!57980 oldBucket!40)))))

(declare-fun b!4646602 () Bool)

(assert (=> b!4646602 (= e!2898632 (forall!10987 (t!359070 oldBucket!40) lambda!197565))))

(assert (= (and d!1465352 (not res!1952381)) b!4646601))

(assert (= (and b!4646601 res!1952382) b!4646602))

(declare-fun b_lambda!171241 () Bool)

(assert (=> (not b_lambda!171241) (not b!4646601)))

(declare-fun m!5512599 () Bool)

(assert (=> b!4646601 m!5512599))

(declare-fun m!5512601 () Bool)

(assert (=> b!4646602 m!5512601))

(assert (=> d!1464936 d!1465352))

(assert (=> d!1464936 d!1464930))

(declare-fun d!1465354 () Bool)

(assert (=> d!1465354 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810084) key!4968))))

(declare-fun lt!1810915 () Unit!116275)

(declare-fun choose!31914 (List!51974 K!13210) Unit!116275)

(assert (=> d!1465354 (= lt!1810915 (choose!31914 (toList!5182 lt!1810084) key!4968))))

(assert (=> d!1465354 (invariantList!1284 (toList!5182 lt!1810084))))

(assert (=> d!1465354 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1493 (toList!5182 lt!1810084) key!4968) lt!1810915)))

(declare-fun bs!1037490 () Bool)

(assert (= bs!1037490 d!1465354))

(assert (=> bs!1037490 m!5511149))

(assert (=> bs!1037490 m!5511149))

(assert (=> bs!1037490 m!5511151))

(declare-fun m!5512603 () Bool)

(assert (=> bs!1037490 m!5512603))

(assert (=> bs!1037490 m!5511581))

(assert (=> b!4645980 d!1465354))

(assert (=> b!4645980 d!1465066))

(assert (=> b!4645980 d!1465068))

(declare-fun d!1465356 () Bool)

(assert (=> d!1465356 (contains!14992 (getKeysList!734 (toList!5182 lt!1810084)) key!4968)))

(declare-fun lt!1810918 () Unit!116275)

(declare-fun choose!31915 (List!51974 K!13210) Unit!116275)

(assert (=> d!1465356 (= lt!1810918 (choose!31915 (toList!5182 lt!1810084) key!4968))))

(assert (=> d!1465356 (invariantList!1284 (toList!5182 lt!1810084))))

(assert (=> d!1465356 (= (lemmaInListThenGetKeysListContains!729 (toList!5182 lt!1810084) key!4968) lt!1810918)))

(declare-fun bs!1037495 () Bool)

(assert (= bs!1037495 d!1465356))

(assert (=> bs!1037495 m!5511157))

(assert (=> bs!1037495 m!5511157))

(declare-fun m!5512605 () Bool)

(assert (=> bs!1037495 m!5512605))

(declare-fun m!5512607 () Bool)

(assert (=> bs!1037495 m!5512607))

(assert (=> bs!1037495 m!5511581))

(assert (=> b!4645980 d!1465356))

(declare-fun b!4646604 () Bool)

(declare-fun e!2898634 () Unit!116275)

(declare-fun lt!1810926 () Unit!116275)

(assert (=> b!4646604 (= e!2898634 lt!1810926)))

(declare-fun lt!1810920 () Unit!116275)

(assert (=> b!4646604 (= lt!1810920 (lemmaContainsKeyImpliesGetValueByKeyDefined!1493 (toList!5182 lt!1810485) (_1!29765 lt!1810091)))))

(assert (=> b!4646604 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810485) (_1!29765 lt!1810091)))))

(declare-fun lt!1810919 () Unit!116275)

(assert (=> b!4646604 (= lt!1810919 lt!1810920)))

(assert (=> b!4646604 (= lt!1810926 (lemmaInListThenGetKeysListContains!729 (toList!5182 lt!1810485) (_1!29765 lt!1810091)))))

(declare-fun call!324482 () Bool)

(assert (=> b!4646604 call!324482))

(declare-fun b!4646605 () Bool)

(declare-fun e!2898637 () List!51976)

(assert (=> b!4646605 (= e!2898637 (keys!18351 lt!1810485))))

(declare-fun b!4646606 () Bool)

(assert (=> b!4646606 (= e!2898637 (getKeysList!734 (toList!5182 lt!1810485)))))

(declare-fun b!4646607 () Bool)

(declare-fun e!2898636 () Bool)

(assert (=> b!4646607 (= e!2898636 (not (contains!14992 (keys!18351 lt!1810485) (_1!29765 lt!1810091))))))

(declare-fun b!4646608 () Bool)

(declare-fun e!2898638 () Bool)

(declare-fun e!2898635 () Bool)

(assert (=> b!4646608 (= e!2898638 e!2898635)))

(declare-fun res!1952383 () Bool)

(assert (=> b!4646608 (=> (not res!1952383) (not e!2898635))))

(assert (=> b!4646608 (= res!1952383 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810485) (_1!29765 lt!1810091))))))

(declare-fun b!4646603 () Bool)

(assert (=> b!4646603 (= e!2898635 (contains!14992 (keys!18351 lt!1810485) (_1!29765 lt!1810091)))))

(declare-fun d!1465358 () Bool)

(assert (=> d!1465358 e!2898638))

(declare-fun res!1952384 () Bool)

(assert (=> d!1465358 (=> res!1952384 e!2898638)))

(assert (=> d!1465358 (= res!1952384 e!2898636)))

(declare-fun res!1952385 () Bool)

(assert (=> d!1465358 (=> (not res!1952385) (not e!2898636))))

(declare-fun lt!1810921 () Bool)

(assert (=> d!1465358 (= res!1952385 (not lt!1810921))))

(declare-fun lt!1810925 () Bool)

(assert (=> d!1465358 (= lt!1810921 lt!1810925)))

(declare-fun lt!1810923 () Unit!116275)

(assert (=> d!1465358 (= lt!1810923 e!2898634)))

(declare-fun c!795093 () Bool)

(assert (=> d!1465358 (= c!795093 lt!1810925)))

(assert (=> d!1465358 (= lt!1810925 (containsKey!2691 (toList!5182 lt!1810485) (_1!29765 lt!1810091)))))

(assert (=> d!1465358 (= (contains!14991 lt!1810485 (_1!29765 lt!1810091)) lt!1810921)))

(declare-fun b!4646609 () Bool)

(declare-fun e!2898633 () Unit!116275)

(assert (=> b!4646609 (= e!2898634 e!2898633)))

(declare-fun c!795094 () Bool)

(assert (=> b!4646609 (= c!795094 call!324482)))

(declare-fun b!4646610 () Bool)

(declare-fun Unit!116522 () Unit!116275)

(assert (=> b!4646610 (= e!2898633 Unit!116522)))

(declare-fun bm!324477 () Bool)

(assert (=> bm!324477 (= call!324482 (contains!14992 e!2898637 (_1!29765 lt!1810091)))))

(declare-fun c!795092 () Bool)

(assert (=> bm!324477 (= c!795092 c!795093)))

(declare-fun b!4646611 () Bool)

(assert (=> b!4646611 false))

(declare-fun lt!1810924 () Unit!116275)

(declare-fun lt!1810922 () Unit!116275)

(assert (=> b!4646611 (= lt!1810924 lt!1810922)))

(assert (=> b!4646611 (containsKey!2691 (toList!5182 lt!1810485) (_1!29765 lt!1810091))))

(assert (=> b!4646611 (= lt!1810922 (lemmaInGetKeysListThenContainsKey!733 (toList!5182 lt!1810485) (_1!29765 lt!1810091)))))

(declare-fun Unit!116523 () Unit!116275)

(assert (=> b!4646611 (= e!2898633 Unit!116523)))

(assert (= (and d!1465358 c!795093) b!4646604))

(assert (= (and d!1465358 (not c!795093)) b!4646609))

(assert (= (and b!4646609 c!795094) b!4646611))

(assert (= (and b!4646609 (not c!795094)) b!4646610))

(assert (= (or b!4646604 b!4646609) bm!324477))

(assert (= (and bm!324477 c!795092) b!4646606))

(assert (= (and bm!324477 (not c!795092)) b!4646605))

(assert (= (and d!1465358 res!1952385) b!4646607))

(assert (= (and d!1465358 (not res!1952384)) b!4646608))

(assert (= (and b!4646608 res!1952383) b!4646603))

(declare-fun m!5512609 () Bool)

(assert (=> b!4646611 m!5512609))

(declare-fun m!5512611 () Bool)

(assert (=> b!4646611 m!5512611))

(declare-fun m!5512613 () Bool)

(assert (=> bm!324477 m!5512613))

(assert (=> b!4646608 m!5511427))

(assert (=> b!4646608 m!5511427))

(declare-fun m!5512615 () Bool)

(assert (=> b!4646608 m!5512615))

(declare-fun m!5512617 () Bool)

(assert (=> b!4646603 m!5512617))

(assert (=> b!4646603 m!5512617))

(declare-fun m!5512619 () Bool)

(assert (=> b!4646603 m!5512619))

(declare-fun m!5512621 () Bool)

(assert (=> b!4646606 m!5512621))

(assert (=> b!4646605 m!5512617))

(assert (=> b!4646607 m!5512617))

(assert (=> b!4646607 m!5512617))

(assert (=> b!4646607 m!5512619))

(assert (=> d!1465358 m!5512609))

(declare-fun m!5512623 () Bool)

(assert (=> b!4646604 m!5512623))

(assert (=> b!4646604 m!5511427))

(assert (=> b!4646604 m!5511427))

(assert (=> b!4646604 m!5512615))

(declare-fun m!5512625 () Bool)

(assert (=> b!4646604 m!5512625))

(assert (=> d!1465016 d!1465358))

(declare-fun b!4646614 () Bool)

(declare-fun e!2898640 () Option!11803)

(assert (=> b!4646614 (= e!2898640 (getValueByKey!1591 (t!359070 lt!1810484) (_1!29765 lt!1810091)))))

(declare-fun b!4646613 () Bool)

(declare-fun e!2898639 () Option!11803)

(assert (=> b!4646613 (= e!2898639 e!2898640)))

(declare-fun c!795096 () Bool)

(assert (=> b!4646613 (= c!795096 (and ((_ is Cons!51850) lt!1810484) (not (= (_1!29765 (h!57980 lt!1810484)) (_1!29765 lt!1810091)))))))

(declare-fun b!4646615 () Bool)

(assert (=> b!4646615 (= e!2898640 None!11802)))

(declare-fun b!4646612 () Bool)

(assert (=> b!4646612 (= e!2898639 (Some!11802 (_2!29765 (h!57980 lt!1810484))))))

(declare-fun d!1465360 () Bool)

(declare-fun c!795095 () Bool)

(assert (=> d!1465360 (= c!795095 (and ((_ is Cons!51850) lt!1810484) (= (_1!29765 (h!57980 lt!1810484)) (_1!29765 lt!1810091))))))

(assert (=> d!1465360 (= (getValueByKey!1591 lt!1810484 (_1!29765 lt!1810091)) e!2898639)))

(assert (= (and d!1465360 c!795095) b!4646612))

(assert (= (and d!1465360 (not c!795095)) b!4646613))

(assert (= (and b!4646613 c!795096) b!4646614))

(assert (= (and b!4646613 (not c!795096)) b!4646615))

(declare-fun m!5512627 () Bool)

(assert (=> b!4646614 m!5512627))

(assert (=> d!1465016 d!1465360))

(declare-fun d!1465362 () Bool)

(assert (=> d!1465362 (= (getValueByKey!1591 lt!1810484 (_1!29765 lt!1810091)) (Some!11802 (_2!29765 lt!1810091)))))

(declare-fun lt!1810927 () Unit!116275)

(assert (=> d!1465362 (= lt!1810927 (choose!31909 lt!1810484 (_1!29765 lt!1810091) (_2!29765 lt!1810091)))))

(declare-fun e!2898641 () Bool)

(assert (=> d!1465362 e!2898641))

(declare-fun res!1952386 () Bool)

(assert (=> d!1465362 (=> (not res!1952386) (not e!2898641))))

(assert (=> d!1465362 (= res!1952386 (invariantList!1284 lt!1810484))))

(assert (=> d!1465362 (= (lemmaContainsTupThenGetReturnValue!912 lt!1810484 (_1!29765 lt!1810091) (_2!29765 lt!1810091)) lt!1810927)))

(declare-fun b!4646616 () Bool)

(declare-fun res!1952387 () Bool)

(assert (=> b!4646616 (=> (not res!1952387) (not e!2898641))))

(assert (=> b!4646616 (= res!1952387 (containsKey!2691 lt!1810484 (_1!29765 lt!1810091)))))

(declare-fun b!4646617 () Bool)

(assert (=> b!4646617 (= e!2898641 (contains!14995 lt!1810484 (tuple2!52943 (_1!29765 lt!1810091) (_2!29765 lt!1810091))))))

(assert (= (and d!1465362 res!1952386) b!4646616))

(assert (= (and b!4646616 res!1952387) b!4646617))

(assert (=> d!1465362 m!5511421))

(declare-fun m!5512629 () Bool)

(assert (=> d!1465362 m!5512629))

(declare-fun m!5512631 () Bool)

(assert (=> d!1465362 m!5512631))

(declare-fun m!5512633 () Bool)

(assert (=> b!4646616 m!5512633))

(declare-fun m!5512635 () Bool)

(assert (=> b!4646617 m!5512635))

(assert (=> d!1465016 d!1465362))

(declare-fun b!4646618 () Bool)

(declare-fun c!795101 () Bool)

(assert (=> b!4646618 (= c!795101 ((_ is Cons!51850) (toList!5182 lt!1810085)))))

(declare-fun e!2898646 () List!51974)

(declare-fun e!2898647 () List!51974)

(assert (=> b!4646618 (= e!2898646 e!2898647)))

(declare-fun b!4646619 () Bool)

(declare-fun e!2898648 () List!51974)

(assert (=> b!4646619 (= e!2898648 (insertNoDuplicatedKeys!420 (t!359070 (toList!5182 lt!1810085)) (_1!29765 lt!1810091) (_2!29765 lt!1810091)))))

(declare-fun b!4646620 () Bool)

(declare-fun e!2898645 () Unit!116275)

(declare-fun Unit!116524 () Unit!116275)

(assert (=> b!4646620 (= e!2898645 Unit!116524)))

(declare-fun b!4646621 () Bool)

(declare-fun e!2898643 () Bool)

(assert (=> b!4646621 (= e!2898643 (not (containsKey!2691 (toList!5182 lt!1810085) (_1!29765 lt!1810091))))))

(declare-fun b!4646622 () Bool)

(declare-fun res!1952390 () Bool)

(declare-fun e!2898642 () Bool)

(assert (=> b!4646622 (=> (not res!1952390) (not e!2898642))))

(declare-fun lt!1810935 () List!51974)

(assert (=> b!4646622 (= res!1952390 (containsKey!2691 lt!1810935 (_1!29765 lt!1810091)))))

(declare-fun b!4646623 () Bool)

(assert (=> b!4646623 false))

(declare-fun lt!1810933 () Unit!116275)

(declare-fun lt!1810938 () Unit!116275)

(assert (=> b!4646623 (= lt!1810933 lt!1810938)))

(assert (=> b!4646623 (containsKey!2691 (t!359070 (toList!5182 lt!1810085)) (_1!29765 (h!57980 (toList!5182 lt!1810085))))))

(assert (=> b!4646623 (= lt!1810938 (lemmaInGetKeysListThenContainsKey!733 (t!359070 (toList!5182 lt!1810085)) (_1!29765 (h!57980 (toList!5182 lt!1810085)))))))

(declare-fun lt!1810931 () Unit!116275)

(declare-fun lt!1810928 () Unit!116275)

(assert (=> b!4646623 (= lt!1810931 lt!1810928)))

(declare-fun call!324486 () List!51976)

(assert (=> b!4646623 (contains!14992 call!324486 (_1!29765 (h!57980 (toList!5182 lt!1810085))))))

(declare-fun lt!1810934 () List!51974)

(assert (=> b!4646623 (= lt!1810928 (lemmaInListThenGetKeysListContains!729 lt!1810934 (_1!29765 (h!57980 (toList!5182 lt!1810085)))))))

(assert (=> b!4646623 (= lt!1810934 (insertNoDuplicatedKeys!420 (t!359070 (toList!5182 lt!1810085)) (_1!29765 lt!1810091) (_2!29765 lt!1810091)))))

(declare-fun Unit!116525 () Unit!116275)

(assert (=> b!4646623 (= e!2898645 Unit!116525)))

(declare-fun d!1465364 () Bool)

(assert (=> d!1465364 e!2898642))

(declare-fun res!1952391 () Bool)

(assert (=> d!1465364 (=> (not res!1952391) (not e!2898642))))

(assert (=> d!1465364 (= res!1952391 (invariantList!1284 lt!1810935))))

(declare-fun e!2898644 () List!51974)

(assert (=> d!1465364 (= lt!1810935 e!2898644)))

(declare-fun c!795097 () Bool)

(assert (=> d!1465364 (= c!795097 (and ((_ is Cons!51850) (toList!5182 lt!1810085)) (= (_1!29765 (h!57980 (toList!5182 lt!1810085))) (_1!29765 lt!1810091))))))

(assert (=> d!1465364 (invariantList!1284 (toList!5182 lt!1810085))))

(assert (=> d!1465364 (= (insertNoDuplicatedKeys!420 (toList!5182 lt!1810085) (_1!29765 lt!1810091) (_2!29765 lt!1810091)) lt!1810935)))

(declare-fun bm!324478 () Bool)

(assert (=> bm!324478 (= call!324486 (getKeysList!734 (ite c!795097 (toList!5182 lt!1810085) lt!1810934)))))

(declare-fun b!4646624 () Bool)

(declare-fun lt!1810932 () List!51974)

(assert (=> b!4646624 (= e!2898647 lt!1810932)))

(declare-fun call!324485 () List!51974)

(assert (=> b!4646624 (= lt!1810932 call!324485)))

(declare-fun c!795100 () Bool)

(assert (=> b!4646624 (= c!795100 (containsKey!2691 (insertNoDuplicatedKeys!420 (t!359070 (toList!5182 lt!1810085)) (_1!29765 lt!1810091) (_2!29765 lt!1810091)) (_1!29765 (h!57980 (toList!5182 lt!1810085)))))))

(declare-fun lt!1810929 () Unit!116275)

(assert (=> b!4646624 (= lt!1810929 e!2898645)))

(declare-fun bm!324479 () Bool)

(declare-fun call!324484 () List!51974)

(assert (=> bm!324479 (= call!324485 call!324484)))

(declare-fun c!795098 () Bool)

(assert (=> bm!324479 (= c!795098 c!795101)))

(declare-fun b!4646625 () Bool)

(assert (=> b!4646625 (= e!2898642 (= (content!8976 (getKeysList!734 lt!1810935)) ((_ map or) (content!8976 (getKeysList!734 (toList!5182 lt!1810085))) (store ((as const (Array K!13210 Bool)) false) (_1!29765 lt!1810091) true))))))

(declare-fun b!4646626 () Bool)

(assert (=> b!4646626 (= e!2898647 call!324485)))

(declare-fun c!795099 () Bool)

(declare-fun bm!324480 () Bool)

(declare-fun call!324483 () List!51974)

(assert (=> bm!324480 (= call!324483 ($colon$colon!1051 (ite c!795097 (t!359070 (toList!5182 lt!1810085)) (ite c!795099 (toList!5182 lt!1810085) e!2898648)) (ite (or c!795097 c!795099) (tuple2!52943 (_1!29765 lt!1810091) (_2!29765 lt!1810091)) (ite c!795101 (h!57980 (toList!5182 lt!1810085)) (tuple2!52943 (_1!29765 lt!1810091) (_2!29765 lt!1810091))))))))

(declare-fun b!4646627 () Bool)

(assert (=> b!4646627 (= e!2898644 call!324483)))

(declare-fun lt!1810930 () List!51976)

(assert (=> b!4646627 (= lt!1810930 call!324486)))

(declare-fun lt!1810936 () Unit!116275)

(assert (=> b!4646627 (= lt!1810936 (lemmaSubseqRefl!122 lt!1810930))))

(assert (=> b!4646627 (subseq!638 lt!1810930 lt!1810930)))

(declare-fun lt!1810937 () Unit!116275)

(assert (=> b!4646627 (= lt!1810937 lt!1810936)))

(declare-fun b!4646628 () Bool)

(declare-fun res!1952389 () Bool)

(assert (=> b!4646628 (=> (not res!1952389) (not e!2898642))))

(assert (=> b!4646628 (= res!1952389 (contains!14995 lt!1810935 (tuple2!52943 (_1!29765 lt!1810091) (_2!29765 lt!1810091))))))

(declare-fun bm!324481 () Bool)

(assert (=> bm!324481 (= call!324484 call!324483)))

(declare-fun b!4646629 () Bool)

(assert (=> b!4646629 (= e!2898646 call!324484)))

(declare-fun b!4646630 () Bool)

(assert (=> b!4646630 (= e!2898644 e!2898646)))

(declare-fun res!1952388 () Bool)

(assert (=> b!4646630 (= res!1952388 ((_ is Cons!51850) (toList!5182 lt!1810085)))))

(assert (=> b!4646630 (=> (not res!1952388) (not e!2898643))))

(assert (=> b!4646630 (= c!795099 e!2898643)))

(declare-fun b!4646631 () Bool)

(assert (=> b!4646631 (= e!2898648 Nil!51850)))

(assert (= (and d!1465364 c!795097) b!4646627))

(assert (= (and d!1465364 (not c!795097)) b!4646630))

(assert (= (and b!4646630 res!1952388) b!4646621))

(assert (= (and b!4646630 c!795099) b!4646629))

(assert (= (and b!4646630 (not c!795099)) b!4646618))

(assert (= (and b!4646618 c!795101) b!4646624))

(assert (= (and b!4646618 (not c!795101)) b!4646626))

(assert (= (and b!4646624 c!795100) b!4646623))

(assert (= (and b!4646624 (not c!795100)) b!4646620))

(assert (= (or b!4646624 b!4646626) bm!324479))

(assert (= (and bm!324479 c!795098) b!4646619))

(assert (= (and bm!324479 (not c!795098)) b!4646631))

(assert (= (or b!4646629 bm!324479) bm!324481))

(assert (= (or b!4646627 b!4646623) bm!324478))

(assert (= (or b!4646627 bm!324481) bm!324480))

(assert (= (and d!1465364 res!1952391) b!4646622))

(assert (= (and b!4646622 res!1952390) b!4646628))

(assert (= (and b!4646628 res!1952389) b!4646625))

(declare-fun m!5512637 () Bool)

(assert (=> d!1465364 m!5512637))

(assert (=> d!1465364 m!5512001))

(declare-fun m!5512639 () Bool)

(assert (=> bm!324480 m!5512639))

(declare-fun m!5512641 () Bool)

(assert (=> b!4646624 m!5512641))

(assert (=> b!4646624 m!5512641))

(declare-fun m!5512643 () Bool)

(assert (=> b!4646624 m!5512643))

(declare-fun m!5512645 () Bool)

(assert (=> b!4646622 m!5512645))

(assert (=> b!4646619 m!5512641))

(declare-fun m!5512647 () Bool)

(assert (=> b!4646627 m!5512647))

(declare-fun m!5512649 () Bool)

(assert (=> b!4646627 m!5512649))

(declare-fun m!5512651 () Bool)

(assert (=> b!4646623 m!5512651))

(assert (=> b!4646623 m!5512641))

(declare-fun m!5512653 () Bool)

(assert (=> b!4646623 m!5512653))

(assert (=> b!4646623 m!5512019))

(assert (=> b!4646623 m!5512021))

(assert (=> b!4646625 m!5512023))

(declare-fun m!5512655 () Bool)

(assert (=> b!4646625 m!5512655))

(declare-fun m!5512657 () Bool)

(assert (=> b!4646625 m!5512657))

(assert (=> b!4646625 m!5512023))

(assert (=> b!4646625 m!5512029))

(assert (=> b!4646625 m!5512657))

(declare-fun m!5512659 () Bool)

(assert (=> b!4646625 m!5512659))

(declare-fun m!5512661 () Bool)

(assert (=> bm!324478 m!5512661))

(declare-fun m!5512663 () Bool)

(assert (=> b!4646621 m!5512663))

(declare-fun m!5512665 () Bool)

(assert (=> b!4646628 m!5512665))

(assert (=> d!1465016 d!1465364))

(declare-fun d!1465366 () Bool)

(declare-fun res!1952392 () Bool)

(declare-fun e!2898649 () Bool)

(assert (=> d!1465366 (=> res!1952392 e!2898649)))

(assert (=> d!1465366 (= res!1952392 ((_ is Nil!51850) (ite c!794980 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 lt!1810088))))))

(assert (=> d!1465366 (= (forall!10987 (ite c!794980 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 lt!1810088)) (ite c!794980 lambda!197586 lambda!197589)) e!2898649)))

(declare-fun b!4646632 () Bool)

(declare-fun e!2898650 () Bool)

(assert (=> b!4646632 (= e!2898649 e!2898650)))

(declare-fun res!1952393 () Bool)

(assert (=> b!4646632 (=> (not res!1952393) (not e!2898650))))

(assert (=> b!4646632 (= res!1952393 (dynLambda!21559 (ite c!794980 lambda!197586 lambda!197589) (h!57980 (ite c!794980 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 lt!1810088)))))))

(declare-fun b!4646633 () Bool)

(assert (=> b!4646633 (= e!2898650 (forall!10987 (t!359070 (ite c!794980 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 lt!1810088))) (ite c!794980 lambda!197586 lambda!197589)))))

(assert (= (and d!1465366 (not res!1952392)) b!4646632))

(assert (= (and b!4646632 res!1952393) b!4646633))

(declare-fun b_lambda!171243 () Bool)

(assert (=> (not b_lambda!171243) (not b!4646632)))

(declare-fun m!5512667 () Bool)

(assert (=> b!4646632 m!5512667))

(declare-fun m!5512669 () Bool)

(assert (=> b!4646633 m!5512669))

(assert (=> bm!324418 d!1465366))

(declare-fun bs!1037528 () Bool)

(declare-fun b!4646636 () Bool)

(assert (= bs!1037528 (and b!4646636 b!4646029)))

(declare-fun lambda!197687 () Int)

(assert (=> bs!1037528 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810445) (= lambda!197687 lambda!197597))))

(declare-fun bs!1037529 () Bool)

(assert (= bs!1037529 (and b!4646636 b!4645912)))

(assert (=> bs!1037529 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810089) (= lambda!197687 lambda!197562))))

(declare-fun bs!1037530 () Bool)

(assert (= bs!1037530 (and b!4646636 b!4645990)))

(assert (=> bs!1037530 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810377) (= lambda!197687 lambda!197582))))

(declare-fun bs!1037531 () Bool)

(assert (= bs!1037531 (and b!4646636 b!4646034)))

(assert (=> bs!1037531 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197687 lambda!197600))))

(assert (=> bs!1037531 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810466) (= lambda!197687 lambda!197601))))

(declare-fun bs!1037532 () Bool)

(assert (= bs!1037532 (and b!4646636 b!4646558)))

(assert (=> bs!1037532 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197687 lambda!197671))))

(declare-fun bs!1037533 () Bool)

(assert (= bs!1037533 (and b!4646636 b!4645910)))

(assert (=> bs!1037533 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810089) (= lambda!197687 lambda!197563))))

(declare-fun bs!1037534 () Bool)

(assert (= bs!1037534 (and b!4646636 d!1464988)))

(assert (=> bs!1037534 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810403) (= lambda!197687 lambda!197591))))

(declare-fun bs!1037535 () Bool)

(assert (= bs!1037535 (and b!4646636 b!4645992)))

(assert (=> bs!1037535 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197687 lambda!197579))))

(declare-fun bs!1037536 () Bool)

(assert (= bs!1037536 (and b!4646636 b!4646518)))

(assert (=> bs!1037536 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197687 lambda!197663))))

(declare-fun bs!1037537 () Bool)

(assert (= bs!1037537 (and b!4646636 b!4646191)))

(assert (=> bs!1037537 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197687 lambda!197614))))

(declare-fun bs!1037539 () Bool)

(assert (= bs!1037539 (and b!4646636 d!1465038)))

(assert (=> bs!1037539 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810466) (= lambda!197687 lambda!197607))))

(declare-fun bs!1037541 () Bool)

(assert (= bs!1037541 (and b!4646636 b!4646000)))

(assert (=> bs!1037541 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197687 lambda!197587))))

(declare-fun bs!1037543 () Bool)

(assert (= bs!1037543 (and b!4646636 b!4646002)))

(assert (=> bs!1037543 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197687 lambda!197586))))

(declare-fun bs!1037545 () Bool)

(assert (= bs!1037545 (and b!4646636 d!1464922)))

(assert (=> bs!1037545 (not (= lambda!197687 lambda!197489))))

(declare-fun bs!1037547 () Bool)

(assert (= bs!1037547 (and b!4646636 d!1464982)))

(assert (=> bs!1037547 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810361) (= lambda!197687 lambda!197583))))

(assert (=> bs!1037530 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197687 lambda!197581))))

(declare-fun bs!1037548 () Bool)

(assert (= bs!1037548 (and b!4646636 b!4646031)))

(assert (=> bs!1037548 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197687 lambda!197595))))

(declare-fun bs!1037549 () Bool)

(assert (= bs!1037549 (and b!4646636 d!1465106)))

(assert (=> bs!1037549 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810377) (= lambda!197687 lambda!197612))))

(declare-fun bs!1037550 () Bool)

(assert (= bs!1037550 (and b!4646636 b!4646516)))

(assert (=> bs!1037550 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197687 lambda!197664))))

(assert (=> bs!1037541 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810419) (= lambda!197687 lambda!197589))))

(declare-fun bs!1037551 () Bool)

(assert (= bs!1037551 (and b!4646636 d!1465222)))

(assert (=> bs!1037551 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197687 lambda!197660))))

(declare-fun bs!1037552 () Bool)

(assert (= bs!1037552 (and b!4646636 d!1464936)))

(assert (=> bs!1037552 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810261) (= lambda!197687 lambda!197565))))

(declare-fun bs!1037553 () Bool)

(assert (= bs!1037553 (and b!4646636 d!1465324)))

(assert (=> bs!1037553 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810863) (= lambda!197687 lambda!197681))))

(declare-fun bs!1037554 () Bool)

(assert (= bs!1037554 (and b!4646636 d!1465192)))

(assert (=> bs!1037554 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810716) (= lambda!197687 lambda!197654))))

(declare-fun bs!1037555 () Bool)

(assert (= bs!1037555 (and b!4646636 b!4646397)))

(assert (=> bs!1037555 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197687 lambda!197650))))

(declare-fun bs!1037556 () Bool)

(assert (= bs!1037556 (and b!4646636 b!4646556)))

(assert (=> bs!1037556 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197687 lambda!197673))))

(assert (=> bs!1037537 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810584) (= lambda!197687 lambda!197615))))

(declare-fun bs!1037557 () Bool)

(assert (= bs!1037557 (and b!4646636 d!1465288)))

(assert (=> bs!1037557 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810277) (= lambda!197687 lambda!197662))))

(declare-fun bs!1037558 () Bool)

(assert (= bs!1037558 (and b!4646636 d!1465300)))

(assert (=> bs!1037558 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810799) (= lambda!197687 lambda!197667))))

(declare-fun bs!1037559 () Bool)

(assert (= bs!1037559 (and b!4646636 d!1465044)))

(assert (=> bs!1037559 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810516) (= lambda!197687 lambda!197611))))

(assert (=> bs!1037528 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197687 lambda!197596))))

(declare-fun bs!1037561 () Bool)

(assert (= bs!1037561 (and b!4646636 b!4646095)))

(assert (=> bs!1037561 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810532) (= lambda!197687 lambda!197610))))

(assert (=> bs!1037556 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810879) (= lambda!197687 lambda!197674))))

(declare-fun bs!1037562 () Bool)

(assert (= bs!1037562 (and b!4646636 d!1465112)))

(assert (=> bs!1037562 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810568) (= lambda!197687 lambda!197616))))

(declare-fun bs!1037563 () Bool)

(assert (= bs!1037563 (and b!4646636 b!4646399)))

(assert (=> bs!1037563 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197687 lambda!197648))))

(assert (=> bs!1037555 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810732) (= lambda!197687 lambda!197652))))

(declare-fun bs!1037564 () Bool)

(assert (= bs!1037564 (and b!4646636 d!1465004)))

(assert (=> bs!1037564 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810429) (= lambda!197687 lambda!197598))))

(assert (=> bs!1037561 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197687 lambda!197609))))

(assert (=> bs!1037550 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810815) (= lambda!197687 lambda!197665))))

(declare-fun bs!1037565 () Bool)

(assert (= bs!1037565 (and b!4646636 d!1465208)))

(assert (=> bs!1037565 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810089) (= lambda!197687 lambda!197659))))

(declare-fun bs!1037566 () Bool)

(assert (= bs!1037566 (and b!4646636 b!4646097)))

(assert (=> bs!1037566 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197687 lambda!197608))))

(declare-fun bs!1037567 () Bool)

(assert (= bs!1037567 (and b!4646636 d!1464926)))

(assert (=> bs!1037567 (not (= lambda!197687 lambda!197490))))

(declare-fun bs!1037568 () Bool)

(assert (= bs!1037568 (and b!4646636 d!1465008)))

(assert (=> bs!1037568 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810450) (= lambda!197687 lambda!197602))))

(declare-fun bs!1037569 () Bool)

(assert (= bs!1037569 (and b!4646636 b!4646193)))

(assert (=> bs!1037569 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197687 lambda!197613))))

(assert (=> bs!1037533 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810277) (= lambda!197687 lambda!197564))))

(declare-fun bs!1037570 () Bool)

(assert (= bs!1037570 (and b!4646636 b!4646036)))

(assert (=> bs!1037570 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197687 lambda!197599))))

(assert (=> b!4646636 true))

(declare-fun bs!1037571 () Bool)

(declare-fun b!4646634 () Bool)

(assert (= bs!1037571 (and b!4646634 b!4646029)))

(declare-fun lambda!197689 () Int)

(assert (=> bs!1037571 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810445) (= lambda!197689 lambda!197597))))

(declare-fun bs!1037572 () Bool)

(assert (= bs!1037572 (and b!4646634 b!4645912)))

(assert (=> bs!1037572 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810089) (= lambda!197689 lambda!197562))))

(declare-fun bs!1037573 () Bool)

(assert (= bs!1037573 (and b!4646634 b!4645990)))

(assert (=> bs!1037573 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810377) (= lambda!197689 lambda!197582))))

(declare-fun bs!1037574 () Bool)

(assert (= bs!1037574 (and b!4646634 b!4646034)))

(assert (=> bs!1037574 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197689 lambda!197600))))

(assert (=> bs!1037574 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810466) (= lambda!197689 lambda!197601))))

(declare-fun bs!1037575 () Bool)

(assert (= bs!1037575 (and b!4646634 b!4646558)))

(assert (=> bs!1037575 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197689 lambda!197671))))

(declare-fun bs!1037576 () Bool)

(assert (= bs!1037576 (and b!4646634 b!4645910)))

(assert (=> bs!1037576 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810089) (= lambda!197689 lambda!197563))))

(declare-fun bs!1037577 () Bool)

(assert (= bs!1037577 (and b!4646634 d!1464988)))

(assert (=> bs!1037577 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810403) (= lambda!197689 lambda!197591))))

(declare-fun bs!1037578 () Bool)

(assert (= bs!1037578 (and b!4646634 b!4645992)))

(assert (=> bs!1037578 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197689 lambda!197579))))

(declare-fun bs!1037579 () Bool)

(assert (= bs!1037579 (and b!4646634 b!4646518)))

(assert (=> bs!1037579 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197689 lambda!197663))))

(declare-fun bs!1037580 () Bool)

(assert (= bs!1037580 (and b!4646634 b!4646191)))

(assert (=> bs!1037580 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197689 lambda!197614))))

(declare-fun bs!1037581 () Bool)

(assert (= bs!1037581 (and b!4646634 d!1465038)))

(assert (=> bs!1037581 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810466) (= lambda!197689 lambda!197607))))

(declare-fun bs!1037582 () Bool)

(assert (= bs!1037582 (and b!4646634 b!4646000)))

(assert (=> bs!1037582 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197689 lambda!197587))))

(declare-fun bs!1037583 () Bool)

(assert (= bs!1037583 (and b!4646634 b!4646636)))

(assert (=> bs!1037583 (= lambda!197689 lambda!197687)))

(declare-fun bs!1037584 () Bool)

(assert (= bs!1037584 (and b!4646634 b!4646002)))

(assert (=> bs!1037584 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197689 lambda!197586))))

(declare-fun bs!1037585 () Bool)

(assert (= bs!1037585 (and b!4646634 d!1464922)))

(assert (=> bs!1037585 (not (= lambda!197689 lambda!197489))))

(declare-fun bs!1037586 () Bool)

(assert (= bs!1037586 (and b!4646634 d!1464982)))

(assert (=> bs!1037586 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810361) (= lambda!197689 lambda!197583))))

(assert (=> bs!1037573 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197689 lambda!197581))))

(declare-fun bs!1037587 () Bool)

(assert (= bs!1037587 (and b!4646634 b!4646031)))

(assert (=> bs!1037587 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197689 lambda!197595))))

(declare-fun bs!1037588 () Bool)

(assert (= bs!1037588 (and b!4646634 d!1465106)))

(assert (=> bs!1037588 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810377) (= lambda!197689 lambda!197612))))

(declare-fun bs!1037589 () Bool)

(assert (= bs!1037589 (and b!4646634 b!4646516)))

(assert (=> bs!1037589 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197689 lambda!197664))))

(assert (=> bs!1037582 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810419) (= lambda!197689 lambda!197589))))

(declare-fun bs!1037590 () Bool)

(assert (= bs!1037590 (and b!4646634 d!1465222)))

(assert (=> bs!1037590 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197689 lambda!197660))))

(declare-fun bs!1037591 () Bool)

(assert (= bs!1037591 (and b!4646634 d!1464936)))

(assert (=> bs!1037591 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810261) (= lambda!197689 lambda!197565))))

(declare-fun bs!1037592 () Bool)

(assert (= bs!1037592 (and b!4646634 d!1465324)))

(assert (=> bs!1037592 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810863) (= lambda!197689 lambda!197681))))

(declare-fun bs!1037593 () Bool)

(assert (= bs!1037593 (and b!4646634 d!1465192)))

(assert (=> bs!1037593 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810716) (= lambda!197689 lambda!197654))))

(declare-fun bs!1037594 () Bool)

(assert (= bs!1037594 (and b!4646634 b!4646397)))

(assert (=> bs!1037594 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197689 lambda!197650))))

(declare-fun bs!1037595 () Bool)

(assert (= bs!1037595 (and b!4646634 b!4646556)))

(assert (=> bs!1037595 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197689 lambda!197673))))

(assert (=> bs!1037580 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810584) (= lambda!197689 lambda!197615))))

(declare-fun bs!1037596 () Bool)

(assert (= bs!1037596 (and b!4646634 d!1465288)))

(assert (=> bs!1037596 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810277) (= lambda!197689 lambda!197662))))

(declare-fun bs!1037597 () Bool)

(assert (= bs!1037597 (and b!4646634 d!1465300)))

(assert (=> bs!1037597 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810799) (= lambda!197689 lambda!197667))))

(declare-fun bs!1037598 () Bool)

(assert (= bs!1037598 (and b!4646634 d!1465044)))

(assert (=> bs!1037598 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810516) (= lambda!197689 lambda!197611))))

(assert (=> bs!1037571 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197689 lambda!197596))))

(declare-fun bs!1037599 () Bool)

(assert (= bs!1037599 (and b!4646634 b!4646095)))

(assert (=> bs!1037599 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810532) (= lambda!197689 lambda!197610))))

(assert (=> bs!1037595 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810879) (= lambda!197689 lambda!197674))))

(declare-fun bs!1037600 () Bool)

(assert (= bs!1037600 (and b!4646634 d!1465112)))

(assert (=> bs!1037600 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810568) (= lambda!197689 lambda!197616))))

(declare-fun bs!1037601 () Bool)

(assert (= bs!1037601 (and b!4646634 b!4646399)))

(assert (=> bs!1037601 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197689 lambda!197648))))

(assert (=> bs!1037594 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810732) (= lambda!197689 lambda!197652))))

(declare-fun bs!1037602 () Bool)

(assert (= bs!1037602 (and b!4646634 d!1465004)))

(assert (=> bs!1037602 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810429) (= lambda!197689 lambda!197598))))

(assert (=> bs!1037599 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197689 lambda!197609))))

(assert (=> bs!1037589 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810815) (= lambda!197689 lambda!197665))))

(declare-fun bs!1037603 () Bool)

(assert (= bs!1037603 (and b!4646634 d!1465208)))

(assert (=> bs!1037603 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810089) (= lambda!197689 lambda!197659))))

(declare-fun bs!1037604 () Bool)

(assert (= bs!1037604 (and b!4646634 b!4646097)))

(assert (=> bs!1037604 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197689 lambda!197608))))

(declare-fun bs!1037605 () Bool)

(assert (= bs!1037605 (and b!4646634 d!1464926)))

(assert (=> bs!1037605 (not (= lambda!197689 lambda!197490))))

(declare-fun bs!1037606 () Bool)

(assert (= bs!1037606 (and b!4646634 d!1465008)))

(assert (=> bs!1037606 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810450) (= lambda!197689 lambda!197602))))

(declare-fun bs!1037607 () Bool)

(assert (= bs!1037607 (and b!4646634 b!4646193)))

(assert (=> bs!1037607 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197689 lambda!197613))))

(assert (=> bs!1037576 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810277) (= lambda!197689 lambda!197564))))

(declare-fun bs!1037608 () Bool)

(assert (= bs!1037608 (and b!4646634 b!4646036)))

(assert (=> bs!1037608 (= (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (ListMap!4518 Nil!51850)) (= lambda!197689 lambda!197599))))

(assert (=> b!4646634 true))

(declare-fun lt!1810955 () ListMap!4517)

(declare-fun lambda!197690 () Int)

(assert (=> bs!1037571 (= (= lt!1810955 lt!1810445) (= lambda!197690 lambda!197597))))

(assert (=> bs!1037572 (= (= lt!1810955 lt!1810089) (= lambda!197690 lambda!197562))))

(assert (=> bs!1037573 (= (= lt!1810955 lt!1810377) (= lambda!197690 lambda!197582))))

(assert (=> bs!1037574 (= (= lt!1810955 (ListMap!4518 Nil!51850)) (= lambda!197690 lambda!197600))))

(assert (=> bs!1037574 (= (= lt!1810955 lt!1810466) (= lambda!197690 lambda!197601))))

(assert (=> bs!1037575 (= (= lt!1810955 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197690 lambda!197671))))

(assert (=> bs!1037576 (= (= lt!1810955 lt!1810089) (= lambda!197690 lambda!197563))))

(assert (=> bs!1037578 (= (= lt!1810955 (ListMap!4518 Nil!51850)) (= lambda!197690 lambda!197579))))

(assert (=> bs!1037579 (= (= lt!1810955 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197690 lambda!197663))))

(assert (=> bs!1037580 (= (= lt!1810955 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197690 lambda!197614))))

(assert (=> bs!1037581 (= (= lt!1810955 lt!1810466) (= lambda!197690 lambda!197607))))

(assert (=> bs!1037582 (= (= lt!1810955 (ListMap!4518 Nil!51850)) (= lambda!197690 lambda!197587))))

(assert (=> bs!1037583 (= (= lt!1810955 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197690 lambda!197687))))

(assert (=> bs!1037584 (= (= lt!1810955 (ListMap!4518 Nil!51850)) (= lambda!197690 lambda!197586))))

(assert (=> bs!1037585 (not (= lambda!197690 lambda!197489))))

(assert (=> bs!1037586 (= (= lt!1810955 lt!1810361) (= lambda!197690 lambda!197583))))

(assert (=> bs!1037573 (= (= lt!1810955 (ListMap!4518 Nil!51850)) (= lambda!197690 lambda!197581))))

(assert (=> bs!1037587 (= (= lt!1810955 (ListMap!4518 Nil!51850)) (= lambda!197690 lambda!197595))))

(assert (=> bs!1037588 (= (= lt!1810955 lt!1810377) (= lambda!197690 lambda!197612))))

(assert (=> bs!1037589 (= (= lt!1810955 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197690 lambda!197664))))

(assert (=> bs!1037582 (= (= lt!1810955 lt!1810419) (= lambda!197690 lambda!197589))))

(assert (=> bs!1037590 (= (= lt!1810955 (ListMap!4518 Nil!51850)) (= lambda!197690 lambda!197660))))

(assert (=> bs!1037591 (= (= lt!1810955 lt!1810261) (= lambda!197690 lambda!197565))))

(assert (=> bs!1037577 (= (= lt!1810955 lt!1810403) (= lambda!197690 lambda!197591))))

(assert (=> b!4646634 (= (= lt!1810955 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197690 lambda!197689))))

(assert (=> bs!1037592 (= (= lt!1810955 lt!1810863) (= lambda!197690 lambda!197681))))

(assert (=> bs!1037593 (= (= lt!1810955 lt!1810716) (= lambda!197690 lambda!197654))))

(assert (=> bs!1037594 (= (= lt!1810955 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197690 lambda!197650))))

(assert (=> bs!1037595 (= (= lt!1810955 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197690 lambda!197673))))

(assert (=> bs!1037580 (= (= lt!1810955 lt!1810584) (= lambda!197690 lambda!197615))))

(assert (=> bs!1037596 (= (= lt!1810955 lt!1810277) (= lambda!197690 lambda!197662))))

(assert (=> bs!1037597 (= (= lt!1810955 lt!1810799) (= lambda!197690 lambda!197667))))

(assert (=> bs!1037598 (= (= lt!1810955 lt!1810516) (= lambda!197690 lambda!197611))))

(assert (=> bs!1037571 (= (= lt!1810955 (ListMap!4518 Nil!51850)) (= lambda!197690 lambda!197596))))

(assert (=> bs!1037599 (= (= lt!1810955 lt!1810532) (= lambda!197690 lambda!197610))))

(assert (=> bs!1037595 (= (= lt!1810955 lt!1810879) (= lambda!197690 lambda!197674))))

(assert (=> bs!1037600 (= (= lt!1810955 lt!1810568) (= lambda!197690 lambda!197616))))

(assert (=> bs!1037601 (= (= lt!1810955 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197690 lambda!197648))))

(assert (=> bs!1037594 (= (= lt!1810955 lt!1810732) (= lambda!197690 lambda!197652))))

(assert (=> bs!1037602 (= (= lt!1810955 lt!1810429) (= lambda!197690 lambda!197598))))

(assert (=> bs!1037599 (= (= lt!1810955 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197690 lambda!197609))))

(assert (=> bs!1037589 (= (= lt!1810955 lt!1810815) (= lambda!197690 lambda!197665))))

(assert (=> bs!1037603 (= (= lt!1810955 lt!1810089) (= lambda!197690 lambda!197659))))

(assert (=> bs!1037604 (= (= lt!1810955 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197690 lambda!197608))))

(assert (=> bs!1037605 (not (= lambda!197690 lambda!197490))))

(assert (=> bs!1037606 (= (= lt!1810955 lt!1810450) (= lambda!197690 lambda!197602))))

(assert (=> bs!1037607 (= (= lt!1810955 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197690 lambda!197613))))

(assert (=> bs!1037576 (= (= lt!1810955 lt!1810277) (= lambda!197690 lambda!197564))))

(assert (=> bs!1037608 (= (= lt!1810955 (ListMap!4518 Nil!51850)) (= lambda!197690 lambda!197599))))

(assert (=> b!4646634 true))

(declare-fun bs!1037649 () Bool)

(declare-fun d!1465368 () Bool)

(assert (= bs!1037649 (and d!1465368 b!4646029)))

(declare-fun lt!1810939 () ListMap!4517)

(declare-fun lambda!197693 () Int)

(assert (=> bs!1037649 (= (= lt!1810939 lt!1810445) (= lambda!197693 lambda!197597))))

(declare-fun bs!1037651 () Bool)

(assert (= bs!1037651 (and d!1465368 b!4645912)))

(assert (=> bs!1037651 (= (= lt!1810939 lt!1810089) (= lambda!197693 lambda!197562))))

(declare-fun bs!1037653 () Bool)

(assert (= bs!1037653 (and d!1465368 b!4645990)))

(assert (=> bs!1037653 (= (= lt!1810939 lt!1810377) (= lambda!197693 lambda!197582))))

(declare-fun bs!1037654 () Bool)

(assert (= bs!1037654 (and d!1465368 b!4646034)))

(assert (=> bs!1037654 (= (= lt!1810939 (ListMap!4518 Nil!51850)) (= lambda!197693 lambda!197600))))

(assert (=> bs!1037654 (= (= lt!1810939 lt!1810466) (= lambda!197693 lambda!197601))))

(declare-fun bs!1037656 () Bool)

(assert (= bs!1037656 (and d!1465368 b!4646558)))

(assert (=> bs!1037656 (= (= lt!1810939 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197693 lambda!197671))))

(declare-fun bs!1037658 () Bool)

(assert (= bs!1037658 (and d!1465368 b!4645910)))

(assert (=> bs!1037658 (= (= lt!1810939 lt!1810089) (= lambda!197693 lambda!197563))))

(declare-fun bs!1037660 () Bool)

(assert (= bs!1037660 (and d!1465368 b!4645992)))

(assert (=> bs!1037660 (= (= lt!1810939 (ListMap!4518 Nil!51850)) (= lambda!197693 lambda!197579))))

(declare-fun bs!1037662 () Bool)

(assert (= bs!1037662 (and d!1465368 b!4646518)))

(assert (=> bs!1037662 (= (= lt!1810939 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197693 lambda!197663))))

(declare-fun bs!1037664 () Bool)

(assert (= bs!1037664 (and d!1465368 b!4646191)))

(assert (=> bs!1037664 (= (= lt!1810939 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197693 lambda!197614))))

(declare-fun bs!1037666 () Bool)

(assert (= bs!1037666 (and d!1465368 d!1465038)))

(assert (=> bs!1037666 (= (= lt!1810939 lt!1810466) (= lambda!197693 lambda!197607))))

(declare-fun bs!1037667 () Bool)

(assert (= bs!1037667 (and d!1465368 b!4646000)))

(assert (=> bs!1037667 (= (= lt!1810939 (ListMap!4518 Nil!51850)) (= lambda!197693 lambda!197587))))

(declare-fun bs!1037668 () Bool)

(assert (= bs!1037668 (and d!1465368 b!4646636)))

(assert (=> bs!1037668 (= (= lt!1810939 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197693 lambda!197687))))

(declare-fun bs!1037670 () Bool)

(assert (= bs!1037670 (and d!1465368 b!4646002)))

(assert (=> bs!1037670 (= (= lt!1810939 (ListMap!4518 Nil!51850)) (= lambda!197693 lambda!197586))))

(declare-fun bs!1037672 () Bool)

(assert (= bs!1037672 (and d!1465368 d!1464922)))

(assert (=> bs!1037672 (not (= lambda!197693 lambda!197489))))

(declare-fun bs!1037674 () Bool)

(assert (= bs!1037674 (and d!1465368 d!1464982)))

(assert (=> bs!1037674 (= (= lt!1810939 lt!1810361) (= lambda!197693 lambda!197583))))

(assert (=> bs!1037653 (= (= lt!1810939 (ListMap!4518 Nil!51850)) (= lambda!197693 lambda!197581))))

(declare-fun bs!1037676 () Bool)

(assert (= bs!1037676 (and d!1465368 b!4646031)))

(assert (=> bs!1037676 (= (= lt!1810939 (ListMap!4518 Nil!51850)) (= lambda!197693 lambda!197595))))

(declare-fun bs!1037678 () Bool)

(assert (= bs!1037678 (and d!1465368 d!1465106)))

(assert (=> bs!1037678 (= (= lt!1810939 lt!1810377) (= lambda!197693 lambda!197612))))

(declare-fun bs!1037680 () Bool)

(assert (= bs!1037680 (and d!1465368 b!4646516)))

(assert (=> bs!1037680 (= (= lt!1810939 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197693 lambda!197664))))

(assert (=> bs!1037667 (= (= lt!1810939 lt!1810419) (= lambda!197693 lambda!197589))))

(declare-fun bs!1037683 () Bool)

(assert (= bs!1037683 (and d!1465368 d!1465222)))

(assert (=> bs!1037683 (= (= lt!1810939 (ListMap!4518 Nil!51850)) (= lambda!197693 lambda!197660))))

(declare-fun bs!1037685 () Bool)

(assert (= bs!1037685 (and d!1465368 d!1464936)))

(assert (=> bs!1037685 (= (= lt!1810939 lt!1810261) (= lambda!197693 lambda!197565))))

(declare-fun bs!1037687 () Bool)

(assert (= bs!1037687 (and d!1465368 d!1464988)))

(assert (=> bs!1037687 (= (= lt!1810939 lt!1810403) (= lambda!197693 lambda!197591))))

(declare-fun bs!1037689 () Bool)

(assert (= bs!1037689 (and d!1465368 b!4646634)))

(assert (=> bs!1037689 (= (= lt!1810939 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197693 lambda!197689))))

(declare-fun bs!1037691 () Bool)

(assert (= bs!1037691 (and d!1465368 d!1465324)))

(assert (=> bs!1037691 (= (= lt!1810939 lt!1810863) (= lambda!197693 lambda!197681))))

(declare-fun bs!1037693 () Bool)

(assert (= bs!1037693 (and d!1465368 d!1465192)))

(assert (=> bs!1037693 (= (= lt!1810939 lt!1810716) (= lambda!197693 lambda!197654))))

(declare-fun bs!1037694 () Bool)

(assert (= bs!1037694 (and d!1465368 b!4646397)))

(assert (=> bs!1037694 (= (= lt!1810939 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197693 lambda!197650))))

(declare-fun bs!1037696 () Bool)

(assert (= bs!1037696 (and d!1465368 b!4646556)))

(assert (=> bs!1037696 (= (= lt!1810939 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197693 lambda!197673))))

(assert (=> bs!1037664 (= (= lt!1810939 lt!1810584) (= lambda!197693 lambda!197615))))

(declare-fun bs!1037699 () Bool)

(assert (= bs!1037699 (and d!1465368 d!1465288)))

(assert (=> bs!1037699 (= (= lt!1810939 lt!1810277) (= lambda!197693 lambda!197662))))

(declare-fun bs!1037701 () Bool)

(assert (= bs!1037701 (and d!1465368 d!1465300)))

(assert (=> bs!1037701 (= (= lt!1810939 lt!1810799) (= lambda!197693 lambda!197667))))

(declare-fun bs!1037703 () Bool)

(assert (= bs!1037703 (and d!1465368 d!1465044)))

(assert (=> bs!1037703 (= (= lt!1810939 lt!1810516) (= lambda!197693 lambda!197611))))

(assert (=> bs!1037649 (= (= lt!1810939 (ListMap!4518 Nil!51850)) (= lambda!197693 lambda!197596))))

(declare-fun bs!1037705 () Bool)

(assert (= bs!1037705 (and d!1465368 b!4646095)))

(assert (=> bs!1037705 (= (= lt!1810939 lt!1810532) (= lambda!197693 lambda!197610))))

(assert (=> bs!1037696 (= (= lt!1810939 lt!1810879) (= lambda!197693 lambda!197674))))

(assert (=> bs!1037689 (= (= lt!1810939 lt!1810955) (= lambda!197693 lambda!197690))))

(declare-fun bs!1037706 () Bool)

(assert (= bs!1037706 (and d!1465368 d!1465112)))

(assert (=> bs!1037706 (= (= lt!1810939 lt!1810568) (= lambda!197693 lambda!197616))))

(declare-fun bs!1037707 () Bool)

(assert (= bs!1037707 (and d!1465368 b!4646399)))

(assert (=> bs!1037707 (= (= lt!1810939 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197693 lambda!197648))))

(assert (=> bs!1037694 (= (= lt!1810939 lt!1810732) (= lambda!197693 lambda!197652))))

(declare-fun bs!1037708 () Bool)

(assert (= bs!1037708 (and d!1465368 d!1465004)))

(assert (=> bs!1037708 (= (= lt!1810939 lt!1810429) (= lambda!197693 lambda!197598))))

(assert (=> bs!1037705 (= (= lt!1810939 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197693 lambda!197609))))

(assert (=> bs!1037680 (= (= lt!1810939 lt!1810815) (= lambda!197693 lambda!197665))))

(declare-fun bs!1037709 () Bool)

(assert (= bs!1037709 (and d!1465368 d!1465208)))

(assert (=> bs!1037709 (= (= lt!1810939 lt!1810089) (= lambda!197693 lambda!197659))))

(declare-fun bs!1037710 () Bool)

(assert (= bs!1037710 (and d!1465368 b!4646097)))

(assert (=> bs!1037710 (= (= lt!1810939 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197693 lambda!197608))))

(declare-fun bs!1037711 () Bool)

(assert (= bs!1037711 (and d!1465368 d!1464926)))

(assert (=> bs!1037711 (not (= lambda!197693 lambda!197490))))

(declare-fun bs!1037712 () Bool)

(assert (= bs!1037712 (and d!1465368 d!1465008)))

(assert (=> bs!1037712 (= (= lt!1810939 lt!1810450) (= lambda!197693 lambda!197602))))

(declare-fun bs!1037713 () Bool)

(assert (= bs!1037713 (and d!1465368 b!4646193)))

(assert (=> bs!1037713 (= (= lt!1810939 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197693 lambda!197613))))

(assert (=> bs!1037658 (= (= lt!1810939 lt!1810277) (= lambda!197693 lambda!197564))))

(declare-fun bs!1037714 () Bool)

(assert (= bs!1037714 (and d!1465368 b!4646036)))

(assert (=> bs!1037714 (= (= lt!1810939 (ListMap!4518 Nil!51850)) (= lambda!197693 lambda!197599))))

(assert (=> d!1465368 true))

(declare-fun e!2898653 () ListMap!4517)

(assert (=> b!4646634 (= e!2898653 lt!1810955)))

(declare-fun lt!1810940 () ListMap!4517)

(assert (=> b!4646634 (= lt!1810940 (+!1968 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (h!57980 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))))))))

(assert (=> b!4646634 (= lt!1810955 (addToMapMapFromBucket!1081 (t!359070 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (+!1968 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (h!57980 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))))))))

(declare-fun lt!1810942 () Unit!116275)

(declare-fun call!324487 () Unit!116275)

(assert (=> b!4646634 (= lt!1810942 call!324487)))

(assert (=> b!4646634 (forall!10987 (toList!5182 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) lambda!197689)))

(declare-fun lt!1810956 () Unit!116275)

(assert (=> b!4646634 (= lt!1810956 lt!1810942)))

(assert (=> b!4646634 (forall!10987 (toList!5182 lt!1810940) lambda!197690)))

(declare-fun lt!1810952 () Unit!116275)

(declare-fun Unit!116537 () Unit!116275)

(assert (=> b!4646634 (= lt!1810952 Unit!116537)))

(declare-fun call!324489 () Bool)

(assert (=> b!4646634 call!324489))

(declare-fun lt!1810951 () Unit!116275)

(declare-fun Unit!116538 () Unit!116275)

(assert (=> b!4646634 (= lt!1810951 Unit!116538)))

(declare-fun lt!1810947 () Unit!116275)

(declare-fun Unit!116539 () Unit!116275)

(assert (=> b!4646634 (= lt!1810947 Unit!116539)))

(declare-fun lt!1810946 () Unit!116275)

(assert (=> b!4646634 (= lt!1810946 (forallContained!3202 (toList!5182 lt!1810940) lambda!197690 (h!57980 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))))))))

(assert (=> b!4646634 (contains!14991 lt!1810940 (_1!29765 (h!57980 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))))))))

(declare-fun lt!1810954 () Unit!116275)

(declare-fun Unit!116541 () Unit!116275)

(assert (=> b!4646634 (= lt!1810954 Unit!116541)))

(assert (=> b!4646634 (contains!14991 lt!1810955 (_1!29765 (h!57980 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))))))))

(declare-fun lt!1810941 () Unit!116275)

(declare-fun Unit!116542 () Unit!116275)

(assert (=> b!4646634 (= lt!1810941 Unit!116542)))

(assert (=> b!4646634 (forall!10987 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lambda!197690)))

(declare-fun lt!1810958 () Unit!116275)

(declare-fun Unit!116543 () Unit!116275)

(assert (=> b!4646634 (= lt!1810958 Unit!116543)))

(declare-fun call!324488 () Bool)

(assert (=> b!4646634 call!324488))

(declare-fun lt!1810953 () Unit!116275)

(declare-fun Unit!116545 () Unit!116275)

(assert (=> b!4646634 (= lt!1810953 Unit!116545)))

(declare-fun lt!1810949 () Unit!116275)

(declare-fun Unit!116546 () Unit!116275)

(assert (=> b!4646634 (= lt!1810949 Unit!116546)))

(declare-fun lt!1810959 () Unit!116275)

(assert (=> b!4646634 (= lt!1810959 (addForallContainsKeyThenBeforeAdding!583 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1810955 (_1!29765 (h!57980 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))))) (_2!29765 (h!57980 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))))))))

(assert (=> b!4646634 (forall!10987 (toList!5182 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) lambda!197690)))

(declare-fun lt!1810950 () Unit!116275)

(assert (=> b!4646634 (= lt!1810950 lt!1810959)))

(assert (=> b!4646634 (forall!10987 (toList!5182 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) lambda!197690)))

(declare-fun lt!1810945 () Unit!116275)

(declare-fun Unit!116547 () Unit!116275)

(assert (=> b!4646634 (= lt!1810945 Unit!116547)))

(declare-fun res!1952395 () Bool)

(assert (=> b!4646634 (= res!1952395 (forall!10987 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lambda!197690))))

(declare-fun e!2898651 () Bool)

(assert (=> b!4646634 (=> (not res!1952395) (not e!2898651))))

(assert (=> b!4646634 e!2898651))

(declare-fun lt!1810957 () Unit!116275)

(declare-fun Unit!116548 () Unit!116275)

(assert (=> b!4646634 (= lt!1810957 Unit!116548)))

(declare-fun e!2898652 () Bool)

(assert (=> d!1465368 e!2898652))

(declare-fun res!1952396 () Bool)

(assert (=> d!1465368 (=> (not res!1952396) (not e!2898652))))

(assert (=> d!1465368 (= res!1952396 (forall!10987 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lambda!197693))))

(assert (=> d!1465368 (= lt!1810939 e!2898653)))

(declare-fun c!795102 () Bool)

(assert (=> d!1465368 (= c!795102 ((_ is Nil!51850) (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))))))

(assert (=> d!1465368 (noDuplicateKeys!1624 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))))))

(assert (=> d!1465368 (= (addToMapMapFromBucket!1081 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) lt!1810939)))

(declare-fun b!4646635 () Bool)

(declare-fun res!1952394 () Bool)

(assert (=> b!4646635 (=> (not res!1952394) (not e!2898652))))

(assert (=> b!4646635 (= res!1952394 (forall!10987 (toList!5182 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) lambda!197693))))

(declare-fun bm!324482 () Bool)

(assert (=> bm!324482 (= call!324489 (forall!10987 (ite c!795102 (toList!5182 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (t!359070 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))))) (ite c!795102 lambda!197687 lambda!197690)))))

(assert (=> b!4646636 (= e!2898653 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))))))

(declare-fun lt!1810944 () Unit!116275)

(assert (=> b!4646636 (= lt!1810944 call!324487)))

(assert (=> b!4646636 call!324488))

(declare-fun lt!1810943 () Unit!116275)

(assert (=> b!4646636 (= lt!1810943 lt!1810944)))

(assert (=> b!4646636 call!324489))

(declare-fun lt!1810948 () Unit!116275)

(declare-fun Unit!116549 () Unit!116275)

(assert (=> b!4646636 (= lt!1810948 Unit!116549)))

(declare-fun bm!324483 () Bool)

(assert (=> bm!324483 (= call!324488 (forall!10987 (ite c!795102 (toList!5182 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (toList!5182 lt!1810940)) (ite c!795102 lambda!197687 lambda!197690)))))

(declare-fun b!4646637 () Bool)

(assert (=> b!4646637 (= e!2898652 (invariantList!1284 (toList!5182 lt!1810939)))))

(declare-fun b!4646638 () Bool)

(assert (=> b!4646638 (= e!2898651 (forall!10987 (toList!5182 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) lambda!197690))))

(declare-fun bm!324484 () Bool)

(assert (=> bm!324484 (= call!324487 (lemmaContainsAllItsOwnKeys!584 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))))))

(assert (= (and d!1465368 c!795102) b!4646636))

(assert (= (and d!1465368 (not c!795102)) b!4646634))

(assert (= (and b!4646634 res!1952395) b!4646638))

(assert (= (or b!4646636 b!4646634) bm!324484))

(assert (= (or b!4646636 b!4646634) bm!324482))

(assert (= (or b!4646636 b!4646634) bm!324483))

(assert (= (and d!1465368 res!1952396) b!4646635))

(assert (= (and b!4646635 res!1952394) b!4646637))

(declare-fun m!5512803 () Bool)

(assert (=> d!1465368 m!5512803))

(declare-fun m!5512805 () Bool)

(assert (=> d!1465368 m!5512805))

(declare-fun m!5512807 () Bool)

(assert (=> bm!324482 m!5512807))

(declare-fun m!5512809 () Bool)

(assert (=> b!4646638 m!5512809))

(assert (=> bm!324484 m!5511167))

(declare-fun m!5512811 () Bool)

(assert (=> bm!324484 m!5512811))

(declare-fun m!5512813 () Bool)

(assert (=> bm!324483 m!5512813))

(declare-fun m!5512815 () Bool)

(assert (=> b!4646637 m!5512815))

(declare-fun m!5512817 () Bool)

(assert (=> b!4646635 m!5512817))

(assert (=> b!4646634 m!5511167))

(declare-fun m!5512819 () Bool)

(assert (=> b!4646634 m!5512819))

(assert (=> b!4646634 m!5512809))

(declare-fun m!5512821 () Bool)

(assert (=> b!4646634 m!5512821))

(assert (=> b!4646634 m!5512821))

(declare-fun m!5512823 () Bool)

(assert (=> b!4646634 m!5512823))

(declare-fun m!5512825 () Bool)

(assert (=> b!4646634 m!5512825))

(declare-fun m!5512827 () Bool)

(assert (=> b!4646634 m!5512827))

(declare-fun m!5512829 () Bool)

(assert (=> b!4646634 m!5512829))

(assert (=> b!4646634 m!5511167))

(declare-fun m!5512831 () Bool)

(assert (=> b!4646634 m!5512831))

(assert (=> b!4646634 m!5512831))

(declare-fun m!5512833 () Bool)

(assert (=> b!4646634 m!5512833))

(assert (=> b!4646634 m!5512809))

(declare-fun m!5512835 () Bool)

(assert (=> b!4646634 m!5512835))

(assert (=> b!4645988 d!1465368))

(declare-fun bs!1037715 () Bool)

(declare-fun d!1465404 () Bool)

(assert (= bs!1037715 (and d!1465404 d!1464998)))

(declare-fun lambda!197695 () Int)

(assert (=> bs!1037715 (= lambda!197695 lambda!197593)))

(declare-fun bs!1037716 () Bool)

(assert (= bs!1037716 (and d!1465404 d!1465338)))

(assert (=> bs!1037716 (= lambda!197695 lambda!197683)))

(declare-fun bs!1037717 () Bool)

(assert (= bs!1037717 (and d!1465404 d!1465200)))

(assert (=> bs!1037717 (= lambda!197695 lambda!197656)))

(declare-fun bs!1037719 () Bool)

(assert (= bs!1037719 (and d!1465404 d!1465000)))

(assert (=> bs!1037719 (= lambda!197695 lambda!197594)))

(declare-fun bs!1037721 () Bool)

(assert (= bs!1037721 (and d!1465404 d!1464980)))

(assert (=> bs!1037721 (= lambda!197695 lambda!197578)))

(declare-fun bs!1037723 () Bool)

(assert (= bs!1037723 (and d!1465404 d!1464958)))

(assert (=> bs!1037723 (= lambda!197695 lambda!197574)))

(declare-fun lt!1811000 () ListMap!4517)

(assert (=> d!1465404 (invariantList!1284 (toList!5182 lt!1811000))))

(declare-fun e!2898691 () ListMap!4517)

(assert (=> d!1465404 (= lt!1811000 e!2898691)))

(declare-fun c!795113 () Bool)

(assert (=> d!1465404 (= c!795113 ((_ is Cons!51851) (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))))))

(assert (=> d!1465404 (forall!10988 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)) lambda!197695)))

(assert (=> d!1465404 (= (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) lt!1811000)))

(declare-fun b!4646687 () Bool)

(assert (=> b!4646687 (= e!2898691 (addToMapMapFromBucket!1081 (_2!29766 (h!57981 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (extractMap!1680 (t!359071 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))))))))

(declare-fun b!4646688 () Bool)

(assert (=> b!4646688 (= e!2898691 (ListMap!4518 Nil!51850))))

(assert (= (and d!1465404 c!795113) b!4646687))

(assert (= (and d!1465404 (not c!795113)) b!4646688))

(declare-fun m!5512837 () Bool)

(assert (=> d!1465404 m!5512837))

(declare-fun m!5512839 () Bool)

(assert (=> d!1465404 m!5512839))

(declare-fun m!5512841 () Bool)

(assert (=> b!4646687 m!5512841))

(assert (=> b!4646687 m!5512841))

(declare-fun m!5512843 () Bool)

(assert (=> b!4646687 m!5512843))

(assert (=> b!4645988 d!1465404))

(declare-fun d!1465406 () Bool)

(declare-fun res!1952425 () Bool)

(declare-fun e!2898692 () Bool)

(assert (=> d!1465406 (=> res!1952425 e!2898692)))

(assert (=> d!1465406 (= res!1952425 ((_ is Nil!51850) (toList!5182 (ListMap!4518 Nil!51850))))))

(assert (=> d!1465406 (= (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197597) e!2898692)))

(declare-fun b!4646689 () Bool)

(declare-fun e!2898693 () Bool)

(assert (=> b!4646689 (= e!2898692 e!2898693)))

(declare-fun res!1952426 () Bool)

(assert (=> b!4646689 (=> (not res!1952426) (not e!2898693))))

(assert (=> b!4646689 (= res!1952426 (dynLambda!21559 lambda!197597 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))))))

(declare-fun b!4646690 () Bool)

(assert (=> b!4646690 (= e!2898693 (forall!10987 (t!359070 (toList!5182 (ListMap!4518 Nil!51850))) lambda!197597))))

(assert (= (and d!1465406 (not res!1952425)) b!4646689))

(assert (= (and b!4646689 res!1952426) b!4646690))

(declare-fun b_lambda!171261 () Bool)

(assert (=> (not b_lambda!171261) (not b!4646689)))

(declare-fun m!5512845 () Bool)

(assert (=> b!4646689 m!5512845))

(declare-fun m!5512847 () Bool)

(assert (=> b!4646690 m!5512847))

(assert (=> b!4646033 d!1465406))

(declare-fun d!1465408 () Bool)

(assert (=> d!1465408 (= (invariantList!1284 (toList!5182 lt!1810360)) (noDuplicatedKeys!342 (toList!5182 lt!1810360)))))

(declare-fun bs!1037739 () Bool)

(assert (= bs!1037739 d!1465408))

(declare-fun m!5512849 () Bool)

(assert (=> bs!1037739 m!5512849))

(assert (=> d!1464980 d!1465408))

(declare-fun d!1465410 () Bool)

(declare-fun res!1952427 () Bool)

(declare-fun e!2898694 () Bool)

(assert (=> d!1465410 (=> res!1952427 e!2898694)))

(assert (=> d!1465410 (= res!1952427 ((_ is Nil!51851) (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))))

(assert (=> d!1465410 (= (forall!10988 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851) lambda!197578) e!2898694)))

(declare-fun b!4646691 () Bool)

(declare-fun e!2898695 () Bool)

(assert (=> b!4646691 (= e!2898694 e!2898695)))

(declare-fun res!1952428 () Bool)

(assert (=> b!4646691 (=> (not res!1952428) (not e!2898695))))

(assert (=> b!4646691 (= res!1952428 (dynLambda!21562 lambda!197578 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))))))

(declare-fun b!4646692 () Bool)

(assert (=> b!4646692 (= e!2898695 (forall!10988 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)) lambda!197578))))

(assert (= (and d!1465410 (not res!1952427)) b!4646691))

(assert (= (and b!4646691 res!1952428) b!4646692))

(declare-fun b_lambda!171263 () Bool)

(assert (=> (not b_lambda!171263) (not b!4646691)))

(declare-fun m!5512851 () Bool)

(assert (=> b!4646691 m!5512851))

(declare-fun m!5512853 () Bool)

(assert (=> b!4646692 m!5512853))

(assert (=> d!1464980 d!1465410))

(assert (=> b!4645914 d!1465320))

(declare-fun d!1465412 () Bool)

(assert (=> d!1465412 (= (invariantList!1284 (toList!5182 lt!1810295)) (noDuplicatedKeys!342 (toList!5182 lt!1810295)))))

(declare-fun bs!1037748 () Bool)

(assert (= bs!1037748 d!1465412))

(declare-fun m!5512855 () Bool)

(assert (=> bs!1037748 m!5512855))

(assert (=> d!1464958 d!1465412))

(declare-fun d!1465414 () Bool)

(declare-fun res!1952429 () Bool)

(declare-fun e!2898696 () Bool)

(assert (=> d!1465414 (=> res!1952429 e!2898696)))

(assert (=> d!1465414 (= res!1952429 ((_ is Nil!51851) Nil!51851))))

(assert (=> d!1465414 (= (forall!10988 Nil!51851 lambda!197574) e!2898696)))

(declare-fun b!4646693 () Bool)

(declare-fun e!2898697 () Bool)

(assert (=> b!4646693 (= e!2898696 e!2898697)))

(declare-fun res!1952430 () Bool)

(assert (=> b!4646693 (=> (not res!1952430) (not e!2898697))))

(assert (=> b!4646693 (= res!1952430 (dynLambda!21562 lambda!197574 (h!57981 Nil!51851)))))

(declare-fun b!4646694 () Bool)

(assert (=> b!4646694 (= e!2898697 (forall!10988 (t!359071 Nil!51851) lambda!197574))))

(assert (= (and d!1465414 (not res!1952429)) b!4646693))

(assert (= (and b!4646693 res!1952430) b!4646694))

(declare-fun b_lambda!171265 () Bool)

(assert (=> (not b_lambda!171265) (not b!4646693)))

(declare-fun m!5512857 () Bool)

(assert (=> b!4646693 m!5512857))

(declare-fun m!5512859 () Bool)

(assert (=> b!4646694 m!5512859))

(assert (=> d!1464958 d!1465414))

(declare-fun bs!1037758 () Bool)

(declare-fun b!4646697 () Bool)

(assert (= bs!1037758 (and b!4646697 b!4646029)))

(declare-fun lambda!197697 () Int)

(assert (=> bs!1037758 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810445) (= lambda!197697 lambda!197597))))

(declare-fun bs!1037759 () Bool)

(assert (= bs!1037759 (and b!4646697 b!4645912)))

(assert (=> bs!1037759 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810089) (= lambda!197697 lambda!197562))))

(declare-fun bs!1037760 () Bool)

(assert (= bs!1037760 (and b!4646697 b!4645990)))

(assert (=> bs!1037760 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810377) (= lambda!197697 lambda!197582))))

(declare-fun bs!1037761 () Bool)

(assert (= bs!1037761 (and b!4646697 b!4646034)))

(assert (=> bs!1037761 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197697 lambda!197600))))

(assert (=> bs!1037761 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810466) (= lambda!197697 lambda!197601))))

(declare-fun bs!1037762 () Bool)

(assert (= bs!1037762 (and b!4646697 b!4645910)))

(assert (=> bs!1037762 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810089) (= lambda!197697 lambda!197563))))

(declare-fun bs!1037763 () Bool)

(assert (= bs!1037763 (and b!4646697 b!4645992)))

(assert (=> bs!1037763 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197697 lambda!197579))))

(declare-fun bs!1037764 () Bool)

(assert (= bs!1037764 (and b!4646697 b!4646518)))

(assert (=> bs!1037764 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197697 lambda!197663))))

(declare-fun bs!1037765 () Bool)

(assert (= bs!1037765 (and b!4646697 b!4646191)))

(assert (=> bs!1037765 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197697 lambda!197614))))

(declare-fun bs!1037766 () Bool)

(assert (= bs!1037766 (and b!4646697 d!1465038)))

(assert (=> bs!1037766 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810466) (= lambda!197697 lambda!197607))))

(declare-fun bs!1037767 () Bool)

(assert (= bs!1037767 (and b!4646697 b!4646000)))

(assert (=> bs!1037767 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197697 lambda!197587))))

(declare-fun bs!1037768 () Bool)

(assert (= bs!1037768 (and b!4646697 b!4646636)))

(assert (=> bs!1037768 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197697 lambda!197687))))

(declare-fun bs!1037769 () Bool)

(assert (= bs!1037769 (and b!4646697 b!4646002)))

(assert (=> bs!1037769 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197697 lambda!197586))))

(declare-fun bs!1037770 () Bool)

(assert (= bs!1037770 (and b!4646697 d!1464922)))

(assert (=> bs!1037770 (not (= lambda!197697 lambda!197489))))

(declare-fun bs!1037771 () Bool)

(assert (= bs!1037771 (and b!4646697 d!1464982)))

(assert (=> bs!1037771 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810361) (= lambda!197697 lambda!197583))))

(assert (=> bs!1037760 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197697 lambda!197581))))

(declare-fun bs!1037772 () Bool)

(assert (= bs!1037772 (and b!4646697 b!4646031)))

(assert (=> bs!1037772 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197697 lambda!197595))))

(declare-fun bs!1037773 () Bool)

(assert (= bs!1037773 (and b!4646697 d!1465106)))

(assert (=> bs!1037773 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810377) (= lambda!197697 lambda!197612))))

(declare-fun bs!1037774 () Bool)

(assert (= bs!1037774 (and b!4646697 b!4646516)))

(assert (=> bs!1037774 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197697 lambda!197664))))

(assert (=> bs!1037767 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810419) (= lambda!197697 lambda!197589))))

(declare-fun bs!1037775 () Bool)

(assert (= bs!1037775 (and b!4646697 d!1465368)))

(assert (=> bs!1037775 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810939) (= lambda!197697 lambda!197693))))

(declare-fun bs!1037776 () Bool)

(assert (= bs!1037776 (and b!4646697 b!4646558)))

(assert (=> bs!1037776 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197697 lambda!197671))))

(declare-fun bs!1037777 () Bool)

(assert (= bs!1037777 (and b!4646697 d!1465222)))

(assert (=> bs!1037777 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197697 lambda!197660))))

(declare-fun bs!1037778 () Bool)

(assert (= bs!1037778 (and b!4646697 d!1464936)))

(assert (=> bs!1037778 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810261) (= lambda!197697 lambda!197565))))

(declare-fun bs!1037779 () Bool)

(assert (= bs!1037779 (and b!4646697 d!1464988)))

(assert (=> bs!1037779 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810403) (= lambda!197697 lambda!197591))))

(declare-fun bs!1037780 () Bool)

(assert (= bs!1037780 (and b!4646697 b!4646634)))

(assert (=> bs!1037780 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197697 lambda!197689))))

(declare-fun bs!1037781 () Bool)

(assert (= bs!1037781 (and b!4646697 d!1465324)))

(assert (=> bs!1037781 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810863) (= lambda!197697 lambda!197681))))

(declare-fun bs!1037782 () Bool)

(assert (= bs!1037782 (and b!4646697 d!1465192)))

(assert (=> bs!1037782 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810716) (= lambda!197697 lambda!197654))))

(declare-fun bs!1037783 () Bool)

(assert (= bs!1037783 (and b!4646697 b!4646397)))

(assert (=> bs!1037783 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197697 lambda!197650))))

(declare-fun bs!1037784 () Bool)

(assert (= bs!1037784 (and b!4646697 b!4646556)))

(assert (=> bs!1037784 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197697 lambda!197673))))

(assert (=> bs!1037765 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810584) (= lambda!197697 lambda!197615))))

(declare-fun bs!1037785 () Bool)

(assert (= bs!1037785 (and b!4646697 d!1465288)))

(assert (=> bs!1037785 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810277) (= lambda!197697 lambda!197662))))

(declare-fun bs!1037786 () Bool)

(assert (= bs!1037786 (and b!4646697 d!1465300)))

(assert (=> bs!1037786 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810799) (= lambda!197697 lambda!197667))))

(declare-fun bs!1037787 () Bool)

(assert (= bs!1037787 (and b!4646697 d!1465044)))

(assert (=> bs!1037787 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810516) (= lambda!197697 lambda!197611))))

(assert (=> bs!1037758 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197697 lambda!197596))))

(declare-fun bs!1037789 () Bool)

(assert (= bs!1037789 (and b!4646697 b!4646095)))

(assert (=> bs!1037789 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810532) (= lambda!197697 lambda!197610))))

(assert (=> bs!1037784 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810879) (= lambda!197697 lambda!197674))))

(assert (=> bs!1037780 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810955) (= lambda!197697 lambda!197690))))

(declare-fun bs!1037792 () Bool)

(assert (= bs!1037792 (and b!4646697 d!1465112)))

(assert (=> bs!1037792 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810568) (= lambda!197697 lambda!197616))))

(declare-fun bs!1037794 () Bool)

(assert (= bs!1037794 (and b!4646697 b!4646399)))

(assert (=> bs!1037794 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197697 lambda!197648))))

(assert (=> bs!1037783 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810732) (= lambda!197697 lambda!197652))))

(declare-fun bs!1037797 () Bool)

(assert (= bs!1037797 (and b!4646697 d!1465004)))

(assert (=> bs!1037797 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810429) (= lambda!197697 lambda!197598))))

(assert (=> bs!1037789 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197697 lambda!197609))))

(assert (=> bs!1037774 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810815) (= lambda!197697 lambda!197665))))

(declare-fun bs!1037801 () Bool)

(assert (= bs!1037801 (and b!4646697 d!1465208)))

(assert (=> bs!1037801 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810089) (= lambda!197697 lambda!197659))))

(declare-fun bs!1037803 () Bool)

(assert (= bs!1037803 (and b!4646697 b!4646097)))

(assert (=> bs!1037803 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197697 lambda!197608))))

(declare-fun bs!1037804 () Bool)

(assert (= bs!1037804 (and b!4646697 d!1464926)))

(assert (=> bs!1037804 (not (= lambda!197697 lambda!197490))))

(declare-fun bs!1037805 () Bool)

(assert (= bs!1037805 (and b!4646697 d!1465008)))

(assert (=> bs!1037805 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810450) (= lambda!197697 lambda!197602))))

(declare-fun bs!1037807 () Bool)

(assert (= bs!1037807 (and b!4646697 b!4646193)))

(assert (=> bs!1037807 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197697 lambda!197613))))

(assert (=> bs!1037762 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810277) (= lambda!197697 lambda!197564))))

(declare-fun bs!1037809 () Bool)

(assert (= bs!1037809 (and b!4646697 b!4646036)))

(assert (=> bs!1037809 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197697 lambda!197599))))

(assert (=> b!4646697 true))

(declare-fun bs!1037817 () Bool)

(declare-fun b!4646695 () Bool)

(assert (= bs!1037817 (and b!4646695 b!4646029)))

(declare-fun lambda!197699 () Int)

(assert (=> bs!1037817 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810445) (= lambda!197699 lambda!197597))))

(declare-fun bs!1037819 () Bool)

(assert (= bs!1037819 (and b!4646695 b!4645912)))

(assert (=> bs!1037819 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810089) (= lambda!197699 lambda!197562))))

(declare-fun bs!1037821 () Bool)

(assert (= bs!1037821 (and b!4646695 b!4645990)))

(assert (=> bs!1037821 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810377) (= lambda!197699 lambda!197582))))

(declare-fun bs!1037823 () Bool)

(assert (= bs!1037823 (and b!4646695 b!4646034)))

(assert (=> bs!1037823 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197699 lambda!197600))))

(assert (=> bs!1037823 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810466) (= lambda!197699 lambda!197601))))

(declare-fun bs!1037826 () Bool)

(assert (= bs!1037826 (and b!4646695 b!4645910)))

(assert (=> bs!1037826 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810089) (= lambda!197699 lambda!197563))))

(declare-fun bs!1037828 () Bool)

(assert (= bs!1037828 (and b!4646695 b!4645992)))

(assert (=> bs!1037828 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197699 lambda!197579))))

(declare-fun bs!1037830 () Bool)

(assert (= bs!1037830 (and b!4646695 b!4646191)))

(assert (=> bs!1037830 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197699 lambda!197614))))

(declare-fun bs!1037832 () Bool)

(assert (= bs!1037832 (and b!4646695 d!1465038)))

(assert (=> bs!1037832 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810466) (= lambda!197699 lambda!197607))))

(declare-fun bs!1037834 () Bool)

(assert (= bs!1037834 (and b!4646695 b!4646000)))

(assert (=> bs!1037834 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197699 lambda!197587))))

(declare-fun bs!1037836 () Bool)

(assert (= bs!1037836 (and b!4646695 b!4646636)))

(assert (=> bs!1037836 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197699 lambda!197687))))

(declare-fun bs!1037837 () Bool)

(assert (= bs!1037837 (and b!4646695 b!4646002)))

(assert (=> bs!1037837 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197699 lambda!197586))))

(declare-fun bs!1037839 () Bool)

(assert (= bs!1037839 (and b!4646695 d!1464922)))

(assert (=> bs!1037839 (not (= lambda!197699 lambda!197489))))

(declare-fun bs!1037841 () Bool)

(assert (= bs!1037841 (and b!4646695 d!1464982)))

(assert (=> bs!1037841 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810361) (= lambda!197699 lambda!197583))))

(assert (=> bs!1037821 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197699 lambda!197581))))

(declare-fun bs!1037844 () Bool)

(assert (= bs!1037844 (and b!4646695 b!4646031)))

(assert (=> bs!1037844 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197699 lambda!197595))))

(declare-fun bs!1037846 () Bool)

(assert (= bs!1037846 (and b!4646695 d!1465106)))

(assert (=> bs!1037846 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810377) (= lambda!197699 lambda!197612))))

(declare-fun bs!1037848 () Bool)

(assert (= bs!1037848 (and b!4646695 b!4646516)))

(assert (=> bs!1037848 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197699 lambda!197664))))

(assert (=> bs!1037834 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810419) (= lambda!197699 lambda!197589))))

(declare-fun bs!1037850 () Bool)

(assert (= bs!1037850 (and b!4646695 d!1465368)))

(assert (=> bs!1037850 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810939) (= lambda!197699 lambda!197693))))

(declare-fun bs!1037851 () Bool)

(assert (= bs!1037851 (and b!4646695 b!4646558)))

(assert (=> bs!1037851 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197699 lambda!197671))))

(declare-fun bs!1037852 () Bool)

(assert (= bs!1037852 (and b!4646695 d!1465222)))

(assert (=> bs!1037852 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197699 lambda!197660))))

(declare-fun bs!1037853 () Bool)

(assert (= bs!1037853 (and b!4646695 d!1464936)))

(assert (=> bs!1037853 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810261) (= lambda!197699 lambda!197565))))

(declare-fun bs!1037854 () Bool)

(assert (= bs!1037854 (and b!4646695 d!1464988)))

(assert (=> bs!1037854 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810403) (= lambda!197699 lambda!197591))))

(declare-fun bs!1037855 () Bool)

(assert (= bs!1037855 (and b!4646695 b!4646634)))

(assert (=> bs!1037855 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197699 lambda!197689))))

(declare-fun bs!1037856 () Bool)

(assert (= bs!1037856 (and b!4646695 d!1465324)))

(assert (=> bs!1037856 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810863) (= lambda!197699 lambda!197681))))

(declare-fun bs!1037857 () Bool)

(assert (= bs!1037857 (and b!4646695 d!1465192)))

(assert (=> bs!1037857 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810716) (= lambda!197699 lambda!197654))))

(declare-fun bs!1037858 () Bool)

(assert (= bs!1037858 (and b!4646695 b!4646397)))

(assert (=> bs!1037858 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197699 lambda!197650))))

(declare-fun bs!1037859 () Bool)

(assert (= bs!1037859 (and b!4646695 b!4646556)))

(assert (=> bs!1037859 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197699 lambda!197673))))

(assert (=> bs!1037830 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810584) (= lambda!197699 lambda!197615))))

(declare-fun bs!1037861 () Bool)

(assert (= bs!1037861 (and b!4646695 d!1465288)))

(assert (=> bs!1037861 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810277) (= lambda!197699 lambda!197662))))

(declare-fun bs!1037862 () Bool)

(assert (= bs!1037862 (and b!4646695 d!1465300)))

(assert (=> bs!1037862 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810799) (= lambda!197699 lambda!197667))))

(declare-fun bs!1037863 () Bool)

(assert (= bs!1037863 (and b!4646695 b!4646518)))

(assert (=> bs!1037863 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197699 lambda!197663))))

(declare-fun bs!1037864 () Bool)

(assert (= bs!1037864 (and b!4646695 b!4646697)))

(assert (=> bs!1037864 (= lambda!197699 lambda!197697)))

(declare-fun bs!1037865 () Bool)

(assert (= bs!1037865 (and b!4646695 d!1465044)))

(assert (=> bs!1037865 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810516) (= lambda!197699 lambda!197611))))

(assert (=> bs!1037817 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197699 lambda!197596))))

(declare-fun bs!1037866 () Bool)

(assert (= bs!1037866 (and b!4646695 b!4646095)))

(assert (=> bs!1037866 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810532) (= lambda!197699 lambda!197610))))

(assert (=> bs!1037859 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810879) (= lambda!197699 lambda!197674))))

(assert (=> bs!1037855 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810955) (= lambda!197699 lambda!197690))))

(declare-fun bs!1037867 () Bool)

(assert (= bs!1037867 (and b!4646695 d!1465112)))

(assert (=> bs!1037867 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810568) (= lambda!197699 lambda!197616))))

(declare-fun bs!1037868 () Bool)

(assert (= bs!1037868 (and b!4646695 b!4646399)))

(assert (=> bs!1037868 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197699 lambda!197648))))

(assert (=> bs!1037858 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810732) (= lambda!197699 lambda!197652))))

(declare-fun bs!1037869 () Bool)

(assert (= bs!1037869 (and b!4646695 d!1465004)))

(assert (=> bs!1037869 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810429) (= lambda!197699 lambda!197598))))

(assert (=> bs!1037866 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197699 lambda!197609))))

(assert (=> bs!1037848 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810815) (= lambda!197699 lambda!197665))))

(declare-fun bs!1037871 () Bool)

(assert (= bs!1037871 (and b!4646695 d!1465208)))

(assert (=> bs!1037871 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810089) (= lambda!197699 lambda!197659))))

(declare-fun bs!1037872 () Bool)

(assert (= bs!1037872 (and b!4646695 b!4646097)))

(assert (=> bs!1037872 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197699 lambda!197608))))

(declare-fun bs!1037873 () Bool)

(assert (= bs!1037873 (and b!4646695 d!1464926)))

(assert (=> bs!1037873 (not (= lambda!197699 lambda!197490))))

(declare-fun bs!1037874 () Bool)

(assert (= bs!1037874 (and b!4646695 d!1465008)))

(assert (=> bs!1037874 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810450) (= lambda!197699 lambda!197602))))

(declare-fun bs!1037875 () Bool)

(assert (= bs!1037875 (and b!4646695 b!4646193)))

(assert (=> bs!1037875 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197699 lambda!197613))))

(assert (=> bs!1037826 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1810277) (= lambda!197699 lambda!197564))))

(declare-fun bs!1037876 () Bool)

(assert (= bs!1037876 (and b!4646695 b!4646036)))

(assert (=> bs!1037876 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (ListMap!4518 Nil!51850)) (= lambda!197699 lambda!197599))))

(assert (=> b!4646695 true))

(declare-fun lambda!197700 () Int)

(declare-fun lt!1811017 () ListMap!4517)

(assert (=> bs!1037817 (= (= lt!1811017 lt!1810445) (= lambda!197700 lambda!197597))))

(assert (=> bs!1037819 (= (= lt!1811017 lt!1810089) (= lambda!197700 lambda!197562))))

(assert (=> bs!1037821 (= (= lt!1811017 lt!1810377) (= lambda!197700 lambda!197582))))

(assert (=> bs!1037823 (= (= lt!1811017 (ListMap!4518 Nil!51850)) (= lambda!197700 lambda!197600))))

(assert (=> bs!1037823 (= (= lt!1811017 lt!1810466) (= lambda!197700 lambda!197601))))

(assert (=> bs!1037826 (= (= lt!1811017 lt!1810089) (= lambda!197700 lambda!197563))))

(assert (=> bs!1037828 (= (= lt!1811017 (ListMap!4518 Nil!51850)) (= lambda!197700 lambda!197579))))

(assert (=> bs!1037830 (= (= lt!1811017 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197700 lambda!197614))))

(assert (=> bs!1037832 (= (= lt!1811017 lt!1810466) (= lambda!197700 lambda!197607))))

(assert (=> bs!1037834 (= (= lt!1811017 (ListMap!4518 Nil!51850)) (= lambda!197700 lambda!197587))))

(assert (=> bs!1037836 (= (= lt!1811017 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197700 lambda!197687))))

(assert (=> bs!1037837 (= (= lt!1811017 (ListMap!4518 Nil!51850)) (= lambda!197700 lambda!197586))))

(assert (=> bs!1037839 (not (= lambda!197700 lambda!197489))))

(assert (=> bs!1037841 (= (= lt!1811017 lt!1810361) (= lambda!197700 lambda!197583))))

(assert (=> bs!1037821 (= (= lt!1811017 (ListMap!4518 Nil!51850)) (= lambda!197700 lambda!197581))))

(assert (=> bs!1037844 (= (= lt!1811017 (ListMap!4518 Nil!51850)) (= lambda!197700 lambda!197595))))

(assert (=> bs!1037846 (= (= lt!1811017 lt!1810377) (= lambda!197700 lambda!197612))))

(assert (=> bs!1037848 (= (= lt!1811017 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197700 lambda!197664))))

(assert (=> bs!1037834 (= (= lt!1811017 lt!1810419) (= lambda!197700 lambda!197589))))

(assert (=> bs!1037850 (= (= lt!1811017 lt!1810939) (= lambda!197700 lambda!197693))))

(assert (=> bs!1037851 (= (= lt!1811017 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197700 lambda!197671))))

(assert (=> bs!1037852 (= (= lt!1811017 (ListMap!4518 Nil!51850)) (= lambda!197700 lambda!197660))))

(assert (=> bs!1037853 (= (= lt!1811017 lt!1810261) (= lambda!197700 lambda!197565))))

(assert (=> bs!1037854 (= (= lt!1811017 lt!1810403) (= lambda!197700 lambda!197591))))

(assert (=> bs!1037855 (= (= lt!1811017 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197700 lambda!197689))))

(assert (=> bs!1037856 (= (= lt!1811017 lt!1810863) (= lambda!197700 lambda!197681))))

(assert (=> bs!1037857 (= (= lt!1811017 lt!1810716) (= lambda!197700 lambda!197654))))

(assert (=> bs!1037858 (= (= lt!1811017 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197700 lambda!197650))))

(assert (=> bs!1037859 (= (= lt!1811017 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197700 lambda!197673))))

(assert (=> bs!1037830 (= (= lt!1811017 lt!1810584) (= lambda!197700 lambda!197615))))

(assert (=> bs!1037861 (= (= lt!1811017 lt!1810277) (= lambda!197700 lambda!197662))))

(assert (=> bs!1037862 (= (= lt!1811017 lt!1810799) (= lambda!197700 lambda!197667))))

(assert (=> bs!1037863 (= (= lt!1811017 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197700 lambda!197663))))

(assert (=> bs!1037864 (= (= lt!1811017 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197700 lambda!197697))))

(assert (=> bs!1037865 (= (= lt!1811017 lt!1810516) (= lambda!197700 lambda!197611))))

(assert (=> b!4646695 (= (= lt!1811017 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197700 lambda!197699))))

(assert (=> bs!1037817 (= (= lt!1811017 (ListMap!4518 Nil!51850)) (= lambda!197700 lambda!197596))))

(assert (=> bs!1037866 (= (= lt!1811017 lt!1810532) (= lambda!197700 lambda!197610))))

(assert (=> bs!1037859 (= (= lt!1811017 lt!1810879) (= lambda!197700 lambda!197674))))

(assert (=> bs!1037855 (= (= lt!1811017 lt!1810955) (= lambda!197700 lambda!197690))))

(assert (=> bs!1037867 (= (= lt!1811017 lt!1810568) (= lambda!197700 lambda!197616))))

(assert (=> bs!1037868 (= (= lt!1811017 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197700 lambda!197648))))

(assert (=> bs!1037858 (= (= lt!1811017 lt!1810732) (= lambda!197700 lambda!197652))))

(assert (=> bs!1037869 (= (= lt!1811017 lt!1810429) (= lambda!197700 lambda!197598))))

(assert (=> bs!1037866 (= (= lt!1811017 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197700 lambda!197609))))

(assert (=> bs!1037848 (= (= lt!1811017 lt!1810815) (= lambda!197700 lambda!197665))))

(assert (=> bs!1037871 (= (= lt!1811017 lt!1810089) (= lambda!197700 lambda!197659))))

(assert (=> bs!1037872 (= (= lt!1811017 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197700 lambda!197608))))

(assert (=> bs!1037873 (not (= lambda!197700 lambda!197490))))

(assert (=> bs!1037874 (= (= lt!1811017 lt!1810450) (= lambda!197700 lambda!197602))))

(assert (=> bs!1037875 (= (= lt!1811017 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197700 lambda!197613))))

(assert (=> bs!1037826 (= (= lt!1811017 lt!1810277) (= lambda!197700 lambda!197564))))

(assert (=> bs!1037876 (= (= lt!1811017 (ListMap!4518 Nil!51850)) (= lambda!197700 lambda!197599))))

(assert (=> b!4646695 true))

(declare-fun bs!1037877 () Bool)

(declare-fun d!1465416 () Bool)

(assert (= bs!1037877 (and d!1465416 b!4646029)))

(declare-fun lambda!197701 () Int)

(declare-fun lt!1811001 () ListMap!4517)

(assert (=> bs!1037877 (= (= lt!1811001 lt!1810445) (= lambda!197701 lambda!197597))))

(declare-fun bs!1037878 () Bool)

(assert (= bs!1037878 (and d!1465416 b!4645912)))

(assert (=> bs!1037878 (= (= lt!1811001 lt!1810089) (= lambda!197701 lambda!197562))))

(declare-fun bs!1037879 () Bool)

(assert (= bs!1037879 (and d!1465416 b!4645990)))

(assert (=> bs!1037879 (= (= lt!1811001 lt!1810377) (= lambda!197701 lambda!197582))))

(declare-fun bs!1037880 () Bool)

(assert (= bs!1037880 (and d!1465416 b!4646034)))

(assert (=> bs!1037880 (= (= lt!1811001 (ListMap!4518 Nil!51850)) (= lambda!197701 lambda!197600))))

(assert (=> bs!1037880 (= (= lt!1811001 lt!1810466) (= lambda!197701 lambda!197601))))

(declare-fun bs!1037881 () Bool)

(assert (= bs!1037881 (and d!1465416 b!4645910)))

(assert (=> bs!1037881 (= (= lt!1811001 lt!1810089) (= lambda!197701 lambda!197563))))

(declare-fun bs!1037882 () Bool)

(assert (= bs!1037882 (and d!1465416 b!4645992)))

(assert (=> bs!1037882 (= (= lt!1811001 (ListMap!4518 Nil!51850)) (= lambda!197701 lambda!197579))))

(declare-fun bs!1037883 () Bool)

(assert (= bs!1037883 (and d!1465416 b!4646191)))

(assert (=> bs!1037883 (= (= lt!1811001 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197701 lambda!197614))))

(declare-fun bs!1037884 () Bool)

(assert (= bs!1037884 (and d!1465416 d!1465038)))

(assert (=> bs!1037884 (= (= lt!1811001 lt!1810466) (= lambda!197701 lambda!197607))))

(declare-fun bs!1037885 () Bool)

(assert (= bs!1037885 (and d!1465416 b!4646000)))

(assert (=> bs!1037885 (= (= lt!1811001 (ListMap!4518 Nil!51850)) (= lambda!197701 lambda!197587))))

(declare-fun bs!1037886 () Bool)

(assert (= bs!1037886 (and d!1465416 b!4646636)))

(assert (=> bs!1037886 (= (= lt!1811001 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197701 lambda!197687))))

(declare-fun bs!1037887 () Bool)

(assert (= bs!1037887 (and d!1465416 b!4646002)))

(assert (=> bs!1037887 (= (= lt!1811001 (ListMap!4518 Nil!51850)) (= lambda!197701 lambda!197586))))

(declare-fun bs!1037888 () Bool)

(assert (= bs!1037888 (and d!1465416 d!1464922)))

(assert (=> bs!1037888 (not (= lambda!197701 lambda!197489))))

(declare-fun bs!1037889 () Bool)

(assert (= bs!1037889 (and d!1465416 d!1464982)))

(assert (=> bs!1037889 (= (= lt!1811001 lt!1810361) (= lambda!197701 lambda!197583))))

(assert (=> bs!1037879 (= (= lt!1811001 (ListMap!4518 Nil!51850)) (= lambda!197701 lambda!197581))))

(declare-fun bs!1037890 () Bool)

(assert (= bs!1037890 (and d!1465416 b!4646031)))

(assert (=> bs!1037890 (= (= lt!1811001 (ListMap!4518 Nil!51850)) (= lambda!197701 lambda!197595))))

(declare-fun bs!1037891 () Bool)

(assert (= bs!1037891 (and d!1465416 d!1465106)))

(assert (=> bs!1037891 (= (= lt!1811001 lt!1810377) (= lambda!197701 lambda!197612))))

(declare-fun bs!1037892 () Bool)

(assert (= bs!1037892 (and d!1465416 b!4646516)))

(assert (=> bs!1037892 (= (= lt!1811001 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197701 lambda!197664))))

(assert (=> bs!1037885 (= (= lt!1811001 lt!1810419) (= lambda!197701 lambda!197589))))

(declare-fun bs!1037893 () Bool)

(assert (= bs!1037893 (and d!1465416 d!1465368)))

(assert (=> bs!1037893 (= (= lt!1811001 lt!1810939) (= lambda!197701 lambda!197693))))

(declare-fun bs!1037894 () Bool)

(assert (= bs!1037894 (and d!1465416 b!4646558)))

(assert (=> bs!1037894 (= (= lt!1811001 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197701 lambda!197671))))

(declare-fun bs!1037895 () Bool)

(assert (= bs!1037895 (and d!1465416 d!1465222)))

(assert (=> bs!1037895 (= (= lt!1811001 (ListMap!4518 Nil!51850)) (= lambda!197701 lambda!197660))))

(declare-fun bs!1037896 () Bool)

(assert (= bs!1037896 (and d!1465416 d!1464936)))

(assert (=> bs!1037896 (= (= lt!1811001 lt!1810261) (= lambda!197701 lambda!197565))))

(declare-fun bs!1037897 () Bool)

(assert (= bs!1037897 (and d!1465416 d!1464988)))

(assert (=> bs!1037897 (= (= lt!1811001 lt!1810403) (= lambda!197701 lambda!197591))))

(declare-fun bs!1037898 () Bool)

(assert (= bs!1037898 (and d!1465416 b!4646634)))

(assert (=> bs!1037898 (= (= lt!1811001 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197701 lambda!197689))))

(declare-fun bs!1037899 () Bool)

(assert (= bs!1037899 (and d!1465416 d!1465324)))

(assert (=> bs!1037899 (= (= lt!1811001 lt!1810863) (= lambda!197701 lambda!197681))))

(declare-fun bs!1037900 () Bool)

(assert (= bs!1037900 (and d!1465416 d!1465192)))

(assert (=> bs!1037900 (= (= lt!1811001 lt!1810716) (= lambda!197701 lambda!197654))))

(declare-fun bs!1037901 () Bool)

(assert (= bs!1037901 (and d!1465416 b!4646397)))

(assert (=> bs!1037901 (= (= lt!1811001 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197701 lambda!197650))))

(declare-fun bs!1037902 () Bool)

(assert (= bs!1037902 (and d!1465416 b!4646556)))

(assert (=> bs!1037902 (= (= lt!1811001 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197701 lambda!197673))))

(assert (=> bs!1037883 (= (= lt!1811001 lt!1810584) (= lambda!197701 lambda!197615))))

(declare-fun bs!1037903 () Bool)

(assert (= bs!1037903 (and d!1465416 d!1465288)))

(assert (=> bs!1037903 (= (= lt!1811001 lt!1810277) (= lambda!197701 lambda!197662))))

(declare-fun bs!1037904 () Bool)

(assert (= bs!1037904 (and d!1465416 d!1465300)))

(assert (=> bs!1037904 (= (= lt!1811001 lt!1810799) (= lambda!197701 lambda!197667))))

(declare-fun bs!1037905 () Bool)

(assert (= bs!1037905 (and d!1465416 b!4646518)))

(assert (=> bs!1037905 (= (= lt!1811001 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197701 lambda!197663))))

(declare-fun bs!1037906 () Bool)

(assert (= bs!1037906 (and d!1465416 b!4646697)))

(assert (=> bs!1037906 (= (= lt!1811001 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197701 lambda!197697))))

(declare-fun bs!1037907 () Bool)

(assert (= bs!1037907 (and d!1465416 d!1465044)))

(assert (=> bs!1037907 (= (= lt!1811001 lt!1810516) (= lambda!197701 lambda!197611))))

(declare-fun bs!1037908 () Bool)

(assert (= bs!1037908 (and d!1465416 b!4646695)))

(assert (=> bs!1037908 (= (= lt!1811001 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197701 lambda!197699))))

(assert (=> bs!1037877 (= (= lt!1811001 (ListMap!4518 Nil!51850)) (= lambda!197701 lambda!197596))))

(declare-fun bs!1037909 () Bool)

(assert (= bs!1037909 (and d!1465416 b!4646095)))

(assert (=> bs!1037909 (= (= lt!1811001 lt!1810532) (= lambda!197701 lambda!197610))))

(assert (=> bs!1037902 (= (= lt!1811001 lt!1810879) (= lambda!197701 lambda!197674))))

(assert (=> bs!1037898 (= (= lt!1811001 lt!1810955) (= lambda!197701 lambda!197690))))

(declare-fun bs!1037910 () Bool)

(assert (= bs!1037910 (and d!1465416 d!1465112)))

(assert (=> bs!1037910 (= (= lt!1811001 lt!1810568) (= lambda!197701 lambda!197616))))

(assert (=> bs!1037908 (= (= lt!1811001 lt!1811017) (= lambda!197701 lambda!197700))))

(declare-fun bs!1037911 () Bool)

(assert (= bs!1037911 (and d!1465416 b!4646399)))

(assert (=> bs!1037911 (= (= lt!1811001 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197701 lambda!197648))))

(assert (=> bs!1037901 (= (= lt!1811001 lt!1810732) (= lambda!197701 lambda!197652))))

(declare-fun bs!1037912 () Bool)

(assert (= bs!1037912 (and d!1465416 d!1465004)))

(assert (=> bs!1037912 (= (= lt!1811001 lt!1810429) (= lambda!197701 lambda!197598))))

(assert (=> bs!1037909 (= (= lt!1811001 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197701 lambda!197609))))

(assert (=> bs!1037892 (= (= lt!1811001 lt!1810815) (= lambda!197701 lambda!197665))))

(declare-fun bs!1037913 () Bool)

(assert (= bs!1037913 (and d!1465416 d!1465208)))

(assert (=> bs!1037913 (= (= lt!1811001 lt!1810089) (= lambda!197701 lambda!197659))))

(declare-fun bs!1037914 () Bool)

(assert (= bs!1037914 (and d!1465416 b!4646097)))

(assert (=> bs!1037914 (= (= lt!1811001 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197701 lambda!197608))))

(declare-fun bs!1037915 () Bool)

(assert (= bs!1037915 (and d!1465416 d!1464926)))

(assert (=> bs!1037915 (not (= lambda!197701 lambda!197490))))

(declare-fun bs!1037916 () Bool)

(assert (= bs!1037916 (and d!1465416 d!1465008)))

(assert (=> bs!1037916 (= (= lt!1811001 lt!1810450) (= lambda!197701 lambda!197602))))

(declare-fun bs!1037917 () Bool)

(assert (= bs!1037917 (and d!1465416 b!4646193)))

(assert (=> bs!1037917 (= (= lt!1811001 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197701 lambda!197613))))

(assert (=> bs!1037881 (= (= lt!1811001 lt!1810277) (= lambda!197701 lambda!197564))))

(declare-fun bs!1037918 () Bool)

(assert (= bs!1037918 (and d!1465416 b!4646036)))

(assert (=> bs!1037918 (= (= lt!1811001 (ListMap!4518 Nil!51850)) (= lambda!197701 lambda!197599))))

(assert (=> d!1465416 true))

(declare-fun e!2898700 () ListMap!4517)

(assert (=> b!4646695 (= e!2898700 lt!1811017)))

(declare-fun lt!1811002 () ListMap!4517)

(assert (=> b!4646695 (= lt!1811002 (+!1968 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (h!57980 (t!359070 lt!1810088))))))

(assert (=> b!4646695 (= lt!1811017 (addToMapMapFromBucket!1081 (t!359070 (t!359070 lt!1810088)) (+!1968 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) (h!57980 (t!359070 lt!1810088)))))))

(declare-fun lt!1811004 () Unit!116275)

(declare-fun call!324495 () Unit!116275)

(assert (=> b!4646695 (= lt!1811004 call!324495)))

(assert (=> b!4646695 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) lambda!197699)))

(declare-fun lt!1811018 () Unit!116275)

(assert (=> b!4646695 (= lt!1811018 lt!1811004)))

(assert (=> b!4646695 (forall!10987 (toList!5182 lt!1811002) lambda!197700)))

(declare-fun lt!1811014 () Unit!116275)

(declare-fun Unit!116552 () Unit!116275)

(assert (=> b!4646695 (= lt!1811014 Unit!116552)))

(declare-fun call!324497 () Bool)

(assert (=> b!4646695 call!324497))

(declare-fun lt!1811013 () Unit!116275)

(declare-fun Unit!116553 () Unit!116275)

(assert (=> b!4646695 (= lt!1811013 Unit!116553)))

(declare-fun lt!1811009 () Unit!116275)

(declare-fun Unit!116554 () Unit!116275)

(assert (=> b!4646695 (= lt!1811009 Unit!116554)))

(declare-fun lt!1811008 () Unit!116275)

(assert (=> b!4646695 (= lt!1811008 (forallContained!3202 (toList!5182 lt!1811002) lambda!197700 (h!57980 (t!359070 lt!1810088))))))

(assert (=> b!4646695 (contains!14991 lt!1811002 (_1!29765 (h!57980 (t!359070 lt!1810088))))))

(declare-fun lt!1811016 () Unit!116275)

(declare-fun Unit!116555 () Unit!116275)

(assert (=> b!4646695 (= lt!1811016 Unit!116555)))

(assert (=> b!4646695 (contains!14991 lt!1811017 (_1!29765 (h!57980 (t!359070 lt!1810088))))))

(declare-fun lt!1811003 () Unit!116275)

(declare-fun Unit!116556 () Unit!116275)

(assert (=> b!4646695 (= lt!1811003 Unit!116556)))

(assert (=> b!4646695 (forall!10987 (t!359070 lt!1810088) lambda!197700)))

(declare-fun lt!1811020 () Unit!116275)

(declare-fun Unit!116557 () Unit!116275)

(assert (=> b!4646695 (= lt!1811020 Unit!116557)))

(declare-fun call!324496 () Bool)

(assert (=> b!4646695 call!324496))

(declare-fun lt!1811015 () Unit!116275)

(declare-fun Unit!116558 () Unit!116275)

(assert (=> b!4646695 (= lt!1811015 Unit!116558)))

(declare-fun lt!1811011 () Unit!116275)

(declare-fun Unit!116559 () Unit!116275)

(assert (=> b!4646695 (= lt!1811011 Unit!116559)))

(declare-fun lt!1811021 () Unit!116275)

(assert (=> b!4646695 (= lt!1811021 (addForallContainsKeyThenBeforeAdding!583 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1811017 (_1!29765 (h!57980 (t!359070 lt!1810088))) (_2!29765 (h!57980 (t!359070 lt!1810088)))))))

(assert (=> b!4646695 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) lambda!197700)))

(declare-fun lt!1811012 () Unit!116275)

(assert (=> b!4646695 (= lt!1811012 lt!1811021)))

(assert (=> b!4646695 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) lambda!197700)))

(declare-fun lt!1811007 () Unit!116275)

(declare-fun Unit!116560 () Unit!116275)

(assert (=> b!4646695 (= lt!1811007 Unit!116560)))

(declare-fun res!1952432 () Bool)

(assert (=> b!4646695 (= res!1952432 (forall!10987 (t!359070 lt!1810088) lambda!197700))))

(declare-fun e!2898698 () Bool)

(assert (=> b!4646695 (=> (not res!1952432) (not e!2898698))))

(assert (=> b!4646695 e!2898698))

(declare-fun lt!1811019 () Unit!116275)

(declare-fun Unit!116561 () Unit!116275)

(assert (=> b!4646695 (= lt!1811019 Unit!116561)))

(declare-fun e!2898699 () Bool)

(assert (=> d!1465416 e!2898699))

(declare-fun res!1952433 () Bool)

(assert (=> d!1465416 (=> (not res!1952433) (not e!2898699))))

(assert (=> d!1465416 (= res!1952433 (forall!10987 (t!359070 lt!1810088) lambda!197701))))

(assert (=> d!1465416 (= lt!1811001 e!2898700)))

(declare-fun c!795114 () Bool)

(assert (=> d!1465416 (= c!795114 ((_ is Nil!51850) (t!359070 lt!1810088)))))

(assert (=> d!1465416 (noDuplicateKeys!1624 (t!359070 lt!1810088))))

(assert (=> d!1465416 (= (addToMapMapFromBucket!1081 (t!359070 lt!1810088) (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) lt!1811001)))

(declare-fun b!4646696 () Bool)

(declare-fun res!1952431 () Bool)

(assert (=> b!4646696 (=> (not res!1952431) (not e!2898699))))

(assert (=> b!4646696 (= res!1952431 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) lambda!197701))))

(declare-fun bm!324490 () Bool)

(assert (=> bm!324490 (= call!324497 (forall!10987 (ite c!795114 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (t!359070 (t!359070 lt!1810088))) (ite c!795114 lambda!197697 lambda!197700)))))

(assert (=> b!4646697 (= e!2898700 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)))))

(declare-fun lt!1811006 () Unit!116275)

(assert (=> b!4646697 (= lt!1811006 call!324495)))

(assert (=> b!4646697 call!324496))

(declare-fun lt!1811005 () Unit!116275)

(assert (=> b!4646697 (= lt!1811005 lt!1811006)))

(assert (=> b!4646697 call!324497))

(declare-fun lt!1811010 () Unit!116275)

(declare-fun Unit!116562 () Unit!116275)

(assert (=> b!4646697 (= lt!1811010 Unit!116562)))

(declare-fun bm!324491 () Bool)

(assert (=> bm!324491 (= call!324496 (forall!10987 (ite c!795114 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (toList!5182 lt!1811002)) (ite c!795114 lambda!197697 lambda!197700)))))

(declare-fun b!4646698 () Bool)

(assert (=> b!4646698 (= e!2898699 (invariantList!1284 (toList!5182 lt!1811001)))))

(declare-fun b!4646699 () Bool)

(assert (=> b!4646699 (= e!2898698 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) lambda!197700))))

(declare-fun bm!324492 () Bool)

(assert (=> bm!324492 (= call!324495 (lemmaContainsAllItsOwnKeys!584 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))))))

(assert (= (and d!1465416 c!795114) b!4646697))

(assert (= (and d!1465416 (not c!795114)) b!4646695))

(assert (= (and b!4646695 res!1952432) b!4646699))

(assert (= (or b!4646697 b!4646695) bm!324492))

(assert (= (or b!4646697 b!4646695) bm!324490))

(assert (= (or b!4646697 b!4646695) bm!324491))

(assert (= (and d!1465416 res!1952433) b!4646696))

(assert (= (and b!4646696 res!1952431) b!4646698))

(declare-fun m!5512949 () Bool)

(assert (=> d!1465416 m!5512949))

(assert (=> d!1465416 m!5511625))

(declare-fun m!5512951 () Bool)

(assert (=> bm!324490 m!5512951))

(declare-fun m!5512953 () Bool)

(assert (=> b!4646699 m!5512953))

(assert (=> bm!324492 m!5511291))

(declare-fun m!5512955 () Bool)

(assert (=> bm!324492 m!5512955))

(declare-fun m!5512957 () Bool)

(assert (=> bm!324491 m!5512957))

(declare-fun m!5512959 () Bool)

(assert (=> b!4646698 m!5512959))

(declare-fun m!5512961 () Bool)

(assert (=> b!4646696 m!5512961))

(assert (=> b!4646695 m!5511291))

(declare-fun m!5512963 () Bool)

(assert (=> b!4646695 m!5512963))

(assert (=> b!4646695 m!5512953))

(declare-fun m!5512965 () Bool)

(assert (=> b!4646695 m!5512965))

(assert (=> b!4646695 m!5512965))

(declare-fun m!5512967 () Bool)

(assert (=> b!4646695 m!5512967))

(declare-fun m!5512969 () Bool)

(assert (=> b!4646695 m!5512969))

(declare-fun m!5512971 () Bool)

(assert (=> b!4646695 m!5512971))

(declare-fun m!5512973 () Bool)

(assert (=> b!4646695 m!5512973))

(assert (=> b!4646695 m!5511291))

(declare-fun m!5512975 () Bool)

(assert (=> b!4646695 m!5512975))

(assert (=> b!4646695 m!5512975))

(declare-fun m!5512977 () Bool)

(assert (=> b!4646695 m!5512977))

(assert (=> b!4646695 m!5512953))

(declare-fun m!5512979 () Bool)

(assert (=> b!4646695 m!5512979))

(assert (=> b!4646000 d!1465416))

(declare-fun d!1465434 () Bool)

(declare-fun res!1952447 () Bool)

(declare-fun e!2898715 () Bool)

(assert (=> d!1465434 (=> res!1952447 e!2898715)))

(assert (=> d!1465434 (= res!1952447 ((_ is Nil!51850) (toList!5182 (ListMap!4518 Nil!51850))))))

(assert (=> d!1465434 (= (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197587) e!2898715)))

(declare-fun b!4646723 () Bool)

(declare-fun e!2898716 () Bool)

(assert (=> b!4646723 (= e!2898715 e!2898716)))

(declare-fun res!1952448 () Bool)

(assert (=> b!4646723 (=> (not res!1952448) (not e!2898716))))

(assert (=> b!4646723 (= res!1952448 (dynLambda!21559 lambda!197587 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))))))

(declare-fun b!4646724 () Bool)

(assert (=> b!4646724 (= e!2898716 (forall!10987 (t!359070 (toList!5182 (ListMap!4518 Nil!51850))) lambda!197587))))

(assert (= (and d!1465434 (not res!1952447)) b!4646723))

(assert (= (and b!4646723 res!1952448) b!4646724))

(declare-fun b_lambda!171269 () Bool)

(assert (=> (not b_lambda!171269) (not b!4646723)))

(declare-fun m!5512981 () Bool)

(assert (=> b!4646723 m!5512981))

(declare-fun m!5512983 () Bool)

(assert (=> b!4646724 m!5512983))

(assert (=> b!4646000 d!1465434))

(declare-fun bs!1037919 () Bool)

(declare-fun d!1465436 () Bool)

(assert (= bs!1037919 (and d!1465436 b!4646029)))

(declare-fun lambda!197702 () Int)

(assert (=> bs!1037919 (= (= lt!1810419 lt!1810445) (= lambda!197702 lambda!197597))))

(declare-fun bs!1037920 () Bool)

(assert (= bs!1037920 (and d!1465436 b!4645912)))

(assert (=> bs!1037920 (= (= lt!1810419 lt!1810089) (= lambda!197702 lambda!197562))))

(declare-fun bs!1037921 () Bool)

(assert (= bs!1037921 (and d!1465436 b!4645990)))

(assert (=> bs!1037921 (= (= lt!1810419 lt!1810377) (= lambda!197702 lambda!197582))))

(declare-fun bs!1037922 () Bool)

(assert (= bs!1037922 (and d!1465436 b!4646034)))

(assert (=> bs!1037922 (= (= lt!1810419 (ListMap!4518 Nil!51850)) (= lambda!197702 lambda!197600))))

(assert (=> bs!1037922 (= (= lt!1810419 lt!1810466) (= lambda!197702 lambda!197601))))

(declare-fun bs!1037923 () Bool)

(assert (= bs!1037923 (and d!1465436 b!4645910)))

(assert (=> bs!1037923 (= (= lt!1810419 lt!1810089) (= lambda!197702 lambda!197563))))

(declare-fun bs!1037924 () Bool)

(assert (= bs!1037924 (and d!1465436 b!4645992)))

(assert (=> bs!1037924 (= (= lt!1810419 (ListMap!4518 Nil!51850)) (= lambda!197702 lambda!197579))))

(declare-fun bs!1037925 () Bool)

(assert (= bs!1037925 (and d!1465436 b!4646191)))

(assert (=> bs!1037925 (= (= lt!1810419 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197702 lambda!197614))))

(declare-fun bs!1037926 () Bool)

(assert (= bs!1037926 (and d!1465436 d!1465038)))

(assert (=> bs!1037926 (= (= lt!1810419 lt!1810466) (= lambda!197702 lambda!197607))))

(declare-fun bs!1037927 () Bool)

(assert (= bs!1037927 (and d!1465436 b!4646000)))

(assert (=> bs!1037927 (= (= lt!1810419 (ListMap!4518 Nil!51850)) (= lambda!197702 lambda!197587))))

(declare-fun bs!1037928 () Bool)

(assert (= bs!1037928 (and d!1465436 b!4646636)))

(assert (=> bs!1037928 (= (= lt!1810419 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197702 lambda!197687))))

(declare-fun bs!1037929 () Bool)

(assert (= bs!1037929 (and d!1465436 b!4646002)))

(assert (=> bs!1037929 (= (= lt!1810419 (ListMap!4518 Nil!51850)) (= lambda!197702 lambda!197586))))

(declare-fun bs!1037930 () Bool)

(assert (= bs!1037930 (and d!1465436 d!1464922)))

(assert (=> bs!1037930 (not (= lambda!197702 lambda!197489))))

(declare-fun bs!1037931 () Bool)

(assert (= bs!1037931 (and d!1465436 d!1464982)))

(assert (=> bs!1037931 (= (= lt!1810419 lt!1810361) (= lambda!197702 lambda!197583))))

(assert (=> bs!1037921 (= (= lt!1810419 (ListMap!4518 Nil!51850)) (= lambda!197702 lambda!197581))))

(declare-fun bs!1037932 () Bool)

(assert (= bs!1037932 (and d!1465436 b!4646031)))

(assert (=> bs!1037932 (= (= lt!1810419 (ListMap!4518 Nil!51850)) (= lambda!197702 lambda!197595))))

(declare-fun bs!1037933 () Bool)

(assert (= bs!1037933 (and d!1465436 d!1465106)))

(assert (=> bs!1037933 (= (= lt!1810419 lt!1810377) (= lambda!197702 lambda!197612))))

(declare-fun bs!1037934 () Bool)

(assert (= bs!1037934 (and d!1465436 b!4646516)))

(assert (=> bs!1037934 (= (= lt!1810419 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197702 lambda!197664))))

(assert (=> bs!1037927 (= lambda!197702 lambda!197589)))

(declare-fun bs!1037935 () Bool)

(assert (= bs!1037935 (and d!1465436 d!1465368)))

(assert (=> bs!1037935 (= (= lt!1810419 lt!1810939) (= lambda!197702 lambda!197693))))

(declare-fun bs!1037936 () Bool)

(assert (= bs!1037936 (and d!1465436 b!4646558)))

(assert (=> bs!1037936 (= (= lt!1810419 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197702 lambda!197671))))

(declare-fun bs!1037937 () Bool)

(assert (= bs!1037937 (and d!1465436 d!1465222)))

(assert (=> bs!1037937 (= (= lt!1810419 (ListMap!4518 Nil!51850)) (= lambda!197702 lambda!197660))))

(declare-fun bs!1037938 () Bool)

(assert (= bs!1037938 (and d!1465436 d!1464936)))

(assert (=> bs!1037938 (= (= lt!1810419 lt!1810261) (= lambda!197702 lambda!197565))))

(declare-fun bs!1037939 () Bool)

(assert (= bs!1037939 (and d!1465436 d!1464988)))

(assert (=> bs!1037939 (= (= lt!1810419 lt!1810403) (= lambda!197702 lambda!197591))))

(declare-fun bs!1037940 () Bool)

(assert (= bs!1037940 (and d!1465436 b!4646634)))

(assert (=> bs!1037940 (= (= lt!1810419 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197702 lambda!197689))))

(declare-fun bs!1037941 () Bool)

(assert (= bs!1037941 (and d!1465436 d!1465324)))

(assert (=> bs!1037941 (= (= lt!1810419 lt!1810863) (= lambda!197702 lambda!197681))))

(declare-fun bs!1037942 () Bool)

(assert (= bs!1037942 (and d!1465436 d!1465192)))

(assert (=> bs!1037942 (= (= lt!1810419 lt!1810716) (= lambda!197702 lambda!197654))))

(declare-fun bs!1037943 () Bool)

(assert (= bs!1037943 (and d!1465436 b!4646397)))

(assert (=> bs!1037943 (= (= lt!1810419 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197702 lambda!197650))))

(declare-fun bs!1037944 () Bool)

(assert (= bs!1037944 (and d!1465436 b!4646556)))

(assert (=> bs!1037944 (= (= lt!1810419 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197702 lambda!197673))))

(assert (=> bs!1037925 (= (= lt!1810419 lt!1810584) (= lambda!197702 lambda!197615))))

(declare-fun bs!1037945 () Bool)

(assert (= bs!1037945 (and d!1465436 d!1465288)))

(assert (=> bs!1037945 (= (= lt!1810419 lt!1810277) (= lambda!197702 lambda!197662))))

(declare-fun bs!1037946 () Bool)

(assert (= bs!1037946 (and d!1465436 d!1465416)))

(assert (=> bs!1037946 (= (= lt!1810419 lt!1811001) (= lambda!197702 lambda!197701))))

(declare-fun bs!1037947 () Bool)

(assert (= bs!1037947 (and d!1465436 d!1465300)))

(assert (=> bs!1037947 (= (= lt!1810419 lt!1810799) (= lambda!197702 lambda!197667))))

(declare-fun bs!1037948 () Bool)

(assert (= bs!1037948 (and d!1465436 b!4646518)))

(assert (=> bs!1037948 (= (= lt!1810419 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197702 lambda!197663))))

(declare-fun bs!1037949 () Bool)

(assert (= bs!1037949 (and d!1465436 b!4646697)))

(assert (=> bs!1037949 (= (= lt!1810419 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197702 lambda!197697))))

(declare-fun bs!1037950 () Bool)

(assert (= bs!1037950 (and d!1465436 d!1465044)))

(assert (=> bs!1037950 (= (= lt!1810419 lt!1810516) (= lambda!197702 lambda!197611))))

(declare-fun bs!1037951 () Bool)

(assert (= bs!1037951 (and d!1465436 b!4646695)))

(assert (=> bs!1037951 (= (= lt!1810419 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197702 lambda!197699))))

(assert (=> bs!1037919 (= (= lt!1810419 (ListMap!4518 Nil!51850)) (= lambda!197702 lambda!197596))))

(declare-fun bs!1037952 () Bool)

(assert (= bs!1037952 (and d!1465436 b!4646095)))

(assert (=> bs!1037952 (= (= lt!1810419 lt!1810532) (= lambda!197702 lambda!197610))))

(assert (=> bs!1037944 (= (= lt!1810419 lt!1810879) (= lambda!197702 lambda!197674))))

(assert (=> bs!1037940 (= (= lt!1810419 lt!1810955) (= lambda!197702 lambda!197690))))

(declare-fun bs!1037953 () Bool)

(assert (= bs!1037953 (and d!1465436 d!1465112)))

(assert (=> bs!1037953 (= (= lt!1810419 lt!1810568) (= lambda!197702 lambda!197616))))

(assert (=> bs!1037951 (= (= lt!1810419 lt!1811017) (= lambda!197702 lambda!197700))))

(declare-fun bs!1037954 () Bool)

(assert (= bs!1037954 (and d!1465436 b!4646399)))

(assert (=> bs!1037954 (= (= lt!1810419 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197702 lambda!197648))))

(assert (=> bs!1037943 (= (= lt!1810419 lt!1810732) (= lambda!197702 lambda!197652))))

(declare-fun bs!1037955 () Bool)

(assert (= bs!1037955 (and d!1465436 d!1465004)))

(assert (=> bs!1037955 (= (= lt!1810419 lt!1810429) (= lambda!197702 lambda!197598))))

(assert (=> bs!1037952 (= (= lt!1810419 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197702 lambda!197609))))

(assert (=> bs!1037934 (= (= lt!1810419 lt!1810815) (= lambda!197702 lambda!197665))))

(declare-fun bs!1037956 () Bool)

(assert (= bs!1037956 (and d!1465436 d!1465208)))

(assert (=> bs!1037956 (= (= lt!1810419 lt!1810089) (= lambda!197702 lambda!197659))))

(declare-fun bs!1037957 () Bool)

(assert (= bs!1037957 (and d!1465436 b!4646097)))

(assert (=> bs!1037957 (= (= lt!1810419 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197702 lambda!197608))))

(declare-fun bs!1037958 () Bool)

(assert (= bs!1037958 (and d!1465436 d!1464926)))

(assert (=> bs!1037958 (not (= lambda!197702 lambda!197490))))

(declare-fun bs!1037959 () Bool)

(assert (= bs!1037959 (and d!1465436 d!1465008)))

(assert (=> bs!1037959 (= (= lt!1810419 lt!1810450) (= lambda!197702 lambda!197602))))

(declare-fun bs!1037960 () Bool)

(assert (= bs!1037960 (and d!1465436 b!4646193)))

(assert (=> bs!1037960 (= (= lt!1810419 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197702 lambda!197613))))

(assert (=> bs!1037923 (= (= lt!1810419 lt!1810277) (= lambda!197702 lambda!197564))))

(declare-fun bs!1037961 () Bool)

(assert (= bs!1037961 (and d!1465436 b!4646036)))

(assert (=> bs!1037961 (= (= lt!1810419 (ListMap!4518 Nil!51850)) (= lambda!197702 lambda!197599))))

(assert (=> d!1465436 true))

(assert (=> d!1465436 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197702)))

(declare-fun lt!1811038 () Unit!116275)

(assert (=> d!1465436 (= lt!1811038 (choose!31902 (ListMap!4518 Nil!51850) lt!1810419 (_1!29765 (h!57980 lt!1810088)) (_2!29765 (h!57980 lt!1810088))))))

(assert (=> d!1465436 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (tuple2!52943 (_1!29765 (h!57980 lt!1810088)) (_2!29765 (h!57980 lt!1810088))))) lambda!197702)))

(assert (=> d!1465436 (= (addForallContainsKeyThenBeforeAdding!583 (ListMap!4518 Nil!51850) lt!1810419 (_1!29765 (h!57980 lt!1810088)) (_2!29765 (h!57980 lt!1810088))) lt!1811038)))

(declare-fun bs!1037962 () Bool)

(assert (= bs!1037962 d!1465436))

(declare-fun m!5512985 () Bool)

(assert (=> bs!1037962 m!5512985))

(declare-fun m!5512987 () Bool)

(assert (=> bs!1037962 m!5512987))

(declare-fun m!5512989 () Bool)

(assert (=> bs!1037962 m!5512989))

(declare-fun m!5512991 () Bool)

(assert (=> bs!1037962 m!5512991))

(assert (=> b!4646000 d!1465436))

(assert (=> b!4646000 d!1465070))

(declare-fun d!1465438 () Bool)

(declare-fun res!1952449 () Bool)

(declare-fun e!2898717 () Bool)

(assert (=> d!1465438 (=> res!1952449 e!2898717)))

(assert (=> d!1465438 (= res!1952449 ((_ is Nil!51850) lt!1810088))))

(assert (=> d!1465438 (= (forall!10987 lt!1810088 lambda!197589) e!2898717)))

(declare-fun b!4646725 () Bool)

(declare-fun e!2898718 () Bool)

(assert (=> b!4646725 (= e!2898717 e!2898718)))

(declare-fun res!1952450 () Bool)

(assert (=> b!4646725 (=> (not res!1952450) (not e!2898718))))

(assert (=> b!4646725 (= res!1952450 (dynLambda!21559 lambda!197589 (h!57980 lt!1810088)))))

(declare-fun b!4646726 () Bool)

(assert (=> b!4646726 (= e!2898718 (forall!10987 (t!359070 lt!1810088) lambda!197589))))

(assert (= (and d!1465438 (not res!1952449)) b!4646725))

(assert (= (and b!4646725 res!1952450) b!4646726))

(declare-fun b_lambda!171271 () Bool)

(assert (=> (not b_lambda!171271) (not b!4646725)))

(declare-fun m!5512993 () Bool)

(assert (=> b!4646725 m!5512993))

(declare-fun m!5512995 () Bool)

(assert (=> b!4646726 m!5512995))

(assert (=> b!4646000 d!1465438))

(declare-fun b!4646728 () Bool)

(declare-fun e!2898720 () Unit!116275)

(declare-fun lt!1811046 () Unit!116275)

(assert (=> b!4646728 (= e!2898720 lt!1811046)))

(declare-fun lt!1811040 () Unit!116275)

(assert (=> b!4646728 (= lt!1811040 (lemmaContainsKeyImpliesGetValueByKeyDefined!1493 (toList!5182 lt!1810419) (_1!29765 (h!57980 lt!1810088))))))

(assert (=> b!4646728 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810419) (_1!29765 (h!57980 lt!1810088))))))

(declare-fun lt!1811039 () Unit!116275)

(assert (=> b!4646728 (= lt!1811039 lt!1811040)))

(assert (=> b!4646728 (= lt!1811046 (lemmaInListThenGetKeysListContains!729 (toList!5182 lt!1810419) (_1!29765 (h!57980 lt!1810088))))))

(declare-fun call!324499 () Bool)

(assert (=> b!4646728 call!324499))

(declare-fun b!4646729 () Bool)

(declare-fun e!2898723 () List!51976)

(assert (=> b!4646729 (= e!2898723 (keys!18351 lt!1810419))))

(declare-fun b!4646730 () Bool)

(assert (=> b!4646730 (= e!2898723 (getKeysList!734 (toList!5182 lt!1810419)))))

(declare-fun b!4646731 () Bool)

(declare-fun e!2898722 () Bool)

(assert (=> b!4646731 (= e!2898722 (not (contains!14992 (keys!18351 lt!1810419) (_1!29765 (h!57980 lt!1810088)))))))

(declare-fun b!4646732 () Bool)

(declare-fun e!2898724 () Bool)

(declare-fun e!2898721 () Bool)

(assert (=> b!4646732 (= e!2898724 e!2898721)))

(declare-fun res!1952451 () Bool)

(assert (=> b!4646732 (=> (not res!1952451) (not e!2898721))))

(assert (=> b!4646732 (= res!1952451 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810419) (_1!29765 (h!57980 lt!1810088)))))))

(declare-fun b!4646727 () Bool)

(assert (=> b!4646727 (= e!2898721 (contains!14992 (keys!18351 lt!1810419) (_1!29765 (h!57980 lt!1810088))))))

(declare-fun d!1465440 () Bool)

(assert (=> d!1465440 e!2898724))

(declare-fun res!1952452 () Bool)

(assert (=> d!1465440 (=> res!1952452 e!2898724)))

(assert (=> d!1465440 (= res!1952452 e!2898722)))

(declare-fun res!1952453 () Bool)

(assert (=> d!1465440 (=> (not res!1952453) (not e!2898722))))

(declare-fun lt!1811041 () Bool)

(assert (=> d!1465440 (= res!1952453 (not lt!1811041))))

(declare-fun lt!1811045 () Bool)

(assert (=> d!1465440 (= lt!1811041 lt!1811045)))

(declare-fun lt!1811043 () Unit!116275)

(assert (=> d!1465440 (= lt!1811043 e!2898720)))

(declare-fun c!795121 () Bool)

(assert (=> d!1465440 (= c!795121 lt!1811045)))

(assert (=> d!1465440 (= lt!1811045 (containsKey!2691 (toList!5182 lt!1810419) (_1!29765 (h!57980 lt!1810088))))))

(assert (=> d!1465440 (= (contains!14991 lt!1810419 (_1!29765 (h!57980 lt!1810088))) lt!1811041)))

(declare-fun b!4646733 () Bool)

(declare-fun e!2898719 () Unit!116275)

(assert (=> b!4646733 (= e!2898720 e!2898719)))

(declare-fun c!795122 () Bool)

(assert (=> b!4646733 (= c!795122 call!324499)))

(declare-fun b!4646734 () Bool)

(declare-fun Unit!116574 () Unit!116275)

(assert (=> b!4646734 (= e!2898719 Unit!116574)))

(declare-fun bm!324494 () Bool)

(assert (=> bm!324494 (= call!324499 (contains!14992 e!2898723 (_1!29765 (h!57980 lt!1810088))))))

(declare-fun c!795120 () Bool)

(assert (=> bm!324494 (= c!795120 c!795121)))

(declare-fun b!4646735 () Bool)

(assert (=> b!4646735 false))

(declare-fun lt!1811044 () Unit!116275)

(declare-fun lt!1811042 () Unit!116275)

(assert (=> b!4646735 (= lt!1811044 lt!1811042)))

(assert (=> b!4646735 (containsKey!2691 (toList!5182 lt!1810419) (_1!29765 (h!57980 lt!1810088)))))

(assert (=> b!4646735 (= lt!1811042 (lemmaInGetKeysListThenContainsKey!733 (toList!5182 lt!1810419) (_1!29765 (h!57980 lt!1810088))))))

(declare-fun Unit!116575 () Unit!116275)

(assert (=> b!4646735 (= e!2898719 Unit!116575)))

(assert (= (and d!1465440 c!795121) b!4646728))

(assert (= (and d!1465440 (not c!795121)) b!4646733))

(assert (= (and b!4646733 c!795122) b!4646735))

(assert (= (and b!4646733 (not c!795122)) b!4646734))

(assert (= (or b!4646728 b!4646733) bm!324494))

(assert (= (and bm!324494 c!795120) b!4646730))

(assert (= (and bm!324494 (not c!795120)) b!4646729))

(assert (= (and d!1465440 res!1952453) b!4646731))

(assert (= (and d!1465440 (not res!1952452)) b!4646732))

(assert (= (and b!4646732 res!1952451) b!4646727))

(declare-fun m!5512997 () Bool)

(assert (=> b!4646735 m!5512997))

(declare-fun m!5512999 () Bool)

(assert (=> b!4646735 m!5512999))

(declare-fun m!5513001 () Bool)

(assert (=> bm!324494 m!5513001))

(declare-fun m!5513003 () Bool)

(assert (=> b!4646732 m!5513003))

(assert (=> b!4646732 m!5513003))

(declare-fun m!5513005 () Bool)

(assert (=> b!4646732 m!5513005))

(declare-fun m!5513007 () Bool)

(assert (=> b!4646727 m!5513007))

(assert (=> b!4646727 m!5513007))

(declare-fun m!5513009 () Bool)

(assert (=> b!4646727 m!5513009))

(declare-fun m!5513011 () Bool)

(assert (=> b!4646730 m!5513011))

(assert (=> b!4646729 m!5513007))

(assert (=> b!4646731 m!5513007))

(assert (=> b!4646731 m!5513007))

(assert (=> b!4646731 m!5513009))

(assert (=> d!1465440 m!5512997))

(declare-fun m!5513013 () Bool)

(assert (=> b!4646728 m!5513013))

(assert (=> b!4646728 m!5513003))

(assert (=> b!4646728 m!5513003))

(assert (=> b!4646728 m!5513005))

(declare-fun m!5513015 () Bool)

(assert (=> b!4646728 m!5513015))

(assert (=> b!4646000 d!1465440))

(declare-fun d!1465442 () Bool)

(declare-fun e!2898725 () Bool)

(assert (=> d!1465442 e!2898725))

(declare-fun res!1952455 () Bool)

(assert (=> d!1465442 (=> (not res!1952455) (not e!2898725))))

(declare-fun lt!1811049 () ListMap!4517)

(assert (=> d!1465442 (= res!1952455 (contains!14991 lt!1811049 (_1!29765 (h!57980 lt!1810088))))))

(declare-fun lt!1811048 () List!51974)

(assert (=> d!1465442 (= lt!1811049 (ListMap!4518 lt!1811048))))

(declare-fun lt!1811047 () Unit!116275)

(declare-fun lt!1811050 () Unit!116275)

(assert (=> d!1465442 (= lt!1811047 lt!1811050)))

(assert (=> d!1465442 (= (getValueByKey!1591 lt!1811048 (_1!29765 (h!57980 lt!1810088))) (Some!11802 (_2!29765 (h!57980 lt!1810088))))))

(assert (=> d!1465442 (= lt!1811050 (lemmaContainsTupThenGetReturnValue!912 lt!1811048 (_1!29765 (h!57980 lt!1810088)) (_2!29765 (h!57980 lt!1810088))))))

(assert (=> d!1465442 (= lt!1811048 (insertNoDuplicatedKeys!420 (toList!5182 (ListMap!4518 Nil!51850)) (_1!29765 (h!57980 lt!1810088)) (_2!29765 (h!57980 lt!1810088))))))

(assert (=> d!1465442 (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088)) lt!1811049)))

(declare-fun b!4646736 () Bool)

(declare-fun res!1952454 () Bool)

(assert (=> b!4646736 (=> (not res!1952454) (not e!2898725))))

(assert (=> b!4646736 (= res!1952454 (= (getValueByKey!1591 (toList!5182 lt!1811049) (_1!29765 (h!57980 lt!1810088))) (Some!11802 (_2!29765 (h!57980 lt!1810088)))))))

(declare-fun b!4646737 () Bool)

(assert (=> b!4646737 (= e!2898725 (contains!14995 (toList!5182 lt!1811049) (h!57980 lt!1810088)))))

(assert (= (and d!1465442 res!1952455) b!4646736))

(assert (= (and b!4646736 res!1952454) b!4646737))

(declare-fun m!5513017 () Bool)

(assert (=> d!1465442 m!5513017))

(declare-fun m!5513019 () Bool)

(assert (=> d!1465442 m!5513019))

(declare-fun m!5513021 () Bool)

(assert (=> d!1465442 m!5513021))

(declare-fun m!5513023 () Bool)

(assert (=> d!1465442 m!5513023))

(declare-fun m!5513025 () Bool)

(assert (=> b!4646736 m!5513025))

(declare-fun m!5513027 () Bool)

(assert (=> b!4646737 m!5513027))

(assert (=> b!4646000 d!1465442))

(declare-fun b!4646739 () Bool)

(declare-fun e!2898727 () Unit!116275)

(declare-fun lt!1811058 () Unit!116275)

(assert (=> b!4646739 (= e!2898727 lt!1811058)))

(declare-fun lt!1811052 () Unit!116275)

(assert (=> b!4646739 (= lt!1811052 (lemmaContainsKeyImpliesGetValueByKeyDefined!1493 (toList!5182 lt!1810404) (_1!29765 (h!57980 lt!1810088))))))

(assert (=> b!4646739 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810404) (_1!29765 (h!57980 lt!1810088))))))

(declare-fun lt!1811051 () Unit!116275)

(assert (=> b!4646739 (= lt!1811051 lt!1811052)))

(assert (=> b!4646739 (= lt!1811058 (lemmaInListThenGetKeysListContains!729 (toList!5182 lt!1810404) (_1!29765 (h!57980 lt!1810088))))))

(declare-fun call!324500 () Bool)

(assert (=> b!4646739 call!324500))

(declare-fun b!4646740 () Bool)

(declare-fun e!2898730 () List!51976)

(assert (=> b!4646740 (= e!2898730 (keys!18351 lt!1810404))))

(declare-fun b!4646741 () Bool)

(assert (=> b!4646741 (= e!2898730 (getKeysList!734 (toList!5182 lt!1810404)))))

(declare-fun b!4646742 () Bool)

(declare-fun e!2898729 () Bool)

(assert (=> b!4646742 (= e!2898729 (not (contains!14992 (keys!18351 lt!1810404) (_1!29765 (h!57980 lt!1810088)))))))

(declare-fun b!4646743 () Bool)

(declare-fun e!2898731 () Bool)

(declare-fun e!2898728 () Bool)

(assert (=> b!4646743 (= e!2898731 e!2898728)))

(declare-fun res!1952456 () Bool)

(assert (=> b!4646743 (=> (not res!1952456) (not e!2898728))))

(assert (=> b!4646743 (= res!1952456 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810404) (_1!29765 (h!57980 lt!1810088)))))))

(declare-fun b!4646738 () Bool)

(assert (=> b!4646738 (= e!2898728 (contains!14992 (keys!18351 lt!1810404) (_1!29765 (h!57980 lt!1810088))))))

(declare-fun d!1465444 () Bool)

(assert (=> d!1465444 e!2898731))

(declare-fun res!1952457 () Bool)

(assert (=> d!1465444 (=> res!1952457 e!2898731)))

(assert (=> d!1465444 (= res!1952457 e!2898729)))

(declare-fun res!1952458 () Bool)

(assert (=> d!1465444 (=> (not res!1952458) (not e!2898729))))

(declare-fun lt!1811053 () Bool)

(assert (=> d!1465444 (= res!1952458 (not lt!1811053))))

(declare-fun lt!1811057 () Bool)

(assert (=> d!1465444 (= lt!1811053 lt!1811057)))

(declare-fun lt!1811055 () Unit!116275)

(assert (=> d!1465444 (= lt!1811055 e!2898727)))

(declare-fun c!795124 () Bool)

(assert (=> d!1465444 (= c!795124 lt!1811057)))

(assert (=> d!1465444 (= lt!1811057 (containsKey!2691 (toList!5182 lt!1810404) (_1!29765 (h!57980 lt!1810088))))))

(assert (=> d!1465444 (= (contains!14991 lt!1810404 (_1!29765 (h!57980 lt!1810088))) lt!1811053)))

(declare-fun b!4646744 () Bool)

(declare-fun e!2898726 () Unit!116275)

(assert (=> b!4646744 (= e!2898727 e!2898726)))

(declare-fun c!795125 () Bool)

(assert (=> b!4646744 (= c!795125 call!324500)))

(declare-fun b!4646745 () Bool)

(declare-fun Unit!116576 () Unit!116275)

(assert (=> b!4646745 (= e!2898726 Unit!116576)))

(declare-fun bm!324495 () Bool)

(assert (=> bm!324495 (= call!324500 (contains!14992 e!2898730 (_1!29765 (h!57980 lt!1810088))))))

(declare-fun c!795123 () Bool)

(assert (=> bm!324495 (= c!795123 c!795124)))

(declare-fun b!4646746 () Bool)

(assert (=> b!4646746 false))

(declare-fun lt!1811056 () Unit!116275)

(declare-fun lt!1811054 () Unit!116275)

(assert (=> b!4646746 (= lt!1811056 lt!1811054)))

(assert (=> b!4646746 (containsKey!2691 (toList!5182 lt!1810404) (_1!29765 (h!57980 lt!1810088)))))

(assert (=> b!4646746 (= lt!1811054 (lemmaInGetKeysListThenContainsKey!733 (toList!5182 lt!1810404) (_1!29765 (h!57980 lt!1810088))))))

(declare-fun Unit!116577 () Unit!116275)

(assert (=> b!4646746 (= e!2898726 Unit!116577)))

(assert (= (and d!1465444 c!795124) b!4646739))

(assert (= (and d!1465444 (not c!795124)) b!4646744))

(assert (= (and b!4646744 c!795125) b!4646746))

(assert (= (and b!4646744 (not c!795125)) b!4646745))

(assert (= (or b!4646739 b!4646744) bm!324495))

(assert (= (and bm!324495 c!795123) b!4646741))

(assert (= (and bm!324495 (not c!795123)) b!4646740))

(assert (= (and d!1465444 res!1952458) b!4646742))

(assert (= (and d!1465444 (not res!1952457)) b!4646743))

(assert (= (and b!4646743 res!1952456) b!4646738))

(declare-fun m!5513029 () Bool)

(assert (=> b!4646746 m!5513029))

(declare-fun m!5513031 () Bool)

(assert (=> b!4646746 m!5513031))

(declare-fun m!5513033 () Bool)

(assert (=> bm!324495 m!5513033))

(declare-fun m!5513035 () Bool)

(assert (=> b!4646743 m!5513035))

(assert (=> b!4646743 m!5513035))

(declare-fun m!5513037 () Bool)

(assert (=> b!4646743 m!5513037))

(declare-fun m!5513039 () Bool)

(assert (=> b!4646738 m!5513039))

(assert (=> b!4646738 m!5513039))

(declare-fun m!5513041 () Bool)

(assert (=> b!4646738 m!5513041))

(declare-fun m!5513043 () Bool)

(assert (=> b!4646741 m!5513043))

(assert (=> b!4646740 m!5513039))

(assert (=> b!4646742 m!5513039))

(assert (=> b!4646742 m!5513039))

(assert (=> b!4646742 m!5513041))

(assert (=> d!1465444 m!5513029))

(declare-fun m!5513045 () Bool)

(assert (=> b!4646739 m!5513045))

(assert (=> b!4646739 m!5513035))

(assert (=> b!4646739 m!5513035))

(assert (=> b!4646739 m!5513037))

(declare-fun m!5513047 () Bool)

(assert (=> b!4646739 m!5513047))

(assert (=> b!4646000 d!1465444))

(declare-fun d!1465446 () Bool)

(declare-fun res!1952459 () Bool)

(declare-fun e!2898732 () Bool)

(assert (=> d!1465446 (=> res!1952459 e!2898732)))

(assert (=> d!1465446 (= res!1952459 ((_ is Nil!51850) (toList!5182 lt!1810404)))))

(assert (=> d!1465446 (= (forall!10987 (toList!5182 lt!1810404) lambda!197589) e!2898732)))

(declare-fun b!4646747 () Bool)

(declare-fun e!2898733 () Bool)

(assert (=> b!4646747 (= e!2898732 e!2898733)))

(declare-fun res!1952460 () Bool)

(assert (=> b!4646747 (=> (not res!1952460) (not e!2898733))))

(assert (=> b!4646747 (= res!1952460 (dynLambda!21559 lambda!197589 (h!57980 (toList!5182 lt!1810404))))))

(declare-fun b!4646748 () Bool)

(assert (=> b!4646748 (= e!2898733 (forall!10987 (t!359070 (toList!5182 lt!1810404)) lambda!197589))))

(assert (= (and d!1465446 (not res!1952459)) b!4646747))

(assert (= (and b!4646747 res!1952460) b!4646748))

(declare-fun b_lambda!171273 () Bool)

(assert (=> (not b_lambda!171273) (not b!4646747)))

(declare-fun m!5513049 () Bool)

(assert (=> b!4646747 m!5513049))

(declare-fun m!5513051 () Bool)

(assert (=> b!4646748 m!5513051))

(assert (=> b!4646000 d!1465446))

(declare-fun d!1465448 () Bool)

(assert (=> d!1465448 (dynLambda!21559 lambda!197589 (h!57980 lt!1810088))))

(declare-fun lt!1811061 () Unit!116275)

(assert (=> d!1465448 (= lt!1811061 (choose!31901 (toList!5182 lt!1810404) lambda!197589 (h!57980 lt!1810088)))))

(declare-fun e!2898734 () Bool)

(assert (=> d!1465448 e!2898734))

(declare-fun res!1952461 () Bool)

(assert (=> d!1465448 (=> (not res!1952461) (not e!2898734))))

(assert (=> d!1465448 (= res!1952461 (forall!10987 (toList!5182 lt!1810404) lambda!197589))))

(assert (=> d!1465448 (= (forallContained!3202 (toList!5182 lt!1810404) lambda!197589 (h!57980 lt!1810088)) lt!1811061)))

(declare-fun b!4646751 () Bool)

(assert (=> b!4646751 (= e!2898734 (contains!14995 (toList!5182 lt!1810404) (h!57980 lt!1810088)))))

(assert (= (and d!1465448 res!1952461) b!4646751))

(declare-fun b_lambda!171275 () Bool)

(assert (=> (not b_lambda!171275) (not d!1465448)))

(assert (=> d!1465448 m!5512993))

(declare-fun m!5513053 () Bool)

(assert (=> d!1465448 m!5513053))

(assert (=> d!1465448 m!5511289))

(declare-fun m!5513055 () Bool)

(assert (=> b!4646751 m!5513055))

(assert (=> b!4646000 d!1465448))

(declare-fun d!1465450 () Bool)

(declare-fun lt!1811068 () List!51974)

(assert (=> d!1465450 (not (containsKey!2690 lt!1811068 key!4968))))

(declare-fun e!2898743 () List!51974)

(assert (=> d!1465450 (= lt!1811068 e!2898743)))

(declare-fun c!795131 () Bool)

(assert (=> d!1465450 (= c!795131 (and ((_ is Cons!51850) (t!359070 oldBucket!40)) (= (_1!29765 (h!57980 (t!359070 oldBucket!40))) key!4968)))))

(assert (=> d!1465450 (noDuplicateKeys!1624 (t!359070 oldBucket!40))))

(assert (=> d!1465450 (= (removePairForKey!1247 (t!359070 oldBucket!40) key!4968) lt!1811068)))

(declare-fun b!4646765 () Bool)

(declare-fun e!2898741 () List!51974)

(assert (=> b!4646765 (= e!2898743 e!2898741)))

(declare-fun c!795130 () Bool)

(assert (=> b!4646765 (= c!795130 ((_ is Cons!51850) (t!359070 oldBucket!40)))))

(declare-fun b!4646767 () Bool)

(assert (=> b!4646767 (= e!2898741 Nil!51850)))

(declare-fun b!4646764 () Bool)

(assert (=> b!4646764 (= e!2898743 (t!359070 (t!359070 oldBucket!40)))))

(declare-fun b!4646766 () Bool)

(assert (=> b!4646766 (= e!2898741 (Cons!51850 (h!57980 (t!359070 oldBucket!40)) (removePairForKey!1247 (t!359070 (t!359070 oldBucket!40)) key!4968)))))

(assert (= (and d!1465450 c!795131) b!4646764))

(assert (= (and d!1465450 (not c!795131)) b!4646765))

(assert (= (and b!4646765 c!795130) b!4646766))

(assert (= (and b!4646765 (not c!795130)) b!4646767))

(declare-fun m!5513057 () Bool)

(assert (=> d!1465450 m!5513057))

(assert (=> d!1465450 m!5510897))

(declare-fun m!5513059 () Bool)

(assert (=> b!4646766 m!5513059))

(assert (=> b!4646027 d!1465450))

(declare-fun d!1465452 () Bool)

(assert (=> d!1465452 (= (invariantList!1284 (toList!5182 lt!1810424)) (noDuplicatedKeys!342 (toList!5182 lt!1810424)))))

(declare-fun bs!1037963 () Bool)

(assert (= bs!1037963 d!1465452))

(declare-fun m!5513061 () Bool)

(assert (=> bs!1037963 m!5513061))

(assert (=> d!1464998 d!1465452))

(declare-fun d!1465454 () Bool)

(declare-fun res!1952464 () Bool)

(declare-fun e!2898747 () Bool)

(assert (=> d!1465454 (=> res!1952464 e!2898747)))

(assert (=> d!1465454 (= res!1952464 ((_ is Nil!51851) (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))))

(assert (=> d!1465454 (= (forall!10988 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851) lambda!197593) e!2898747)))

(declare-fun b!4646772 () Bool)

(declare-fun e!2898748 () Bool)

(assert (=> b!4646772 (= e!2898747 e!2898748)))

(declare-fun res!1952465 () Bool)

(assert (=> b!4646772 (=> (not res!1952465) (not e!2898748))))

(assert (=> b!4646772 (= res!1952465 (dynLambda!21562 lambda!197593 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))))))

(declare-fun b!4646773 () Bool)

(assert (=> b!4646773 (= e!2898748 (forall!10988 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)) lambda!197593))))

(assert (= (and d!1465454 (not res!1952464)) b!4646772))

(assert (= (and b!4646772 res!1952465) b!4646773))

(declare-fun b_lambda!171277 () Bool)

(assert (=> (not b_lambda!171277) (not b!4646772)))

(declare-fun m!5513063 () Bool)

(assert (=> b!4646772 m!5513063))

(declare-fun m!5513065 () Bool)

(assert (=> b!4646773 m!5513065))

(assert (=> d!1464998 d!1465454))

(declare-fun d!1465456 () Bool)

(declare-fun res!1952466 () Bool)

(declare-fun e!2898751 () Bool)

(assert (=> d!1465456 (=> res!1952466 e!2898751)))

(assert (=> d!1465456 (= res!1952466 ((_ is Nil!51850) (ite c!794989 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810430))))))

(assert (=> d!1465456 (= (forall!10987 (ite c!794989 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810430)) (ite c!794989 lambda!197595 lambda!197597)) e!2898751)))

(declare-fun b!4646778 () Bool)

(declare-fun e!2898752 () Bool)

(assert (=> b!4646778 (= e!2898751 e!2898752)))

(declare-fun res!1952467 () Bool)

(assert (=> b!4646778 (=> (not res!1952467) (not e!2898752))))

(assert (=> b!4646778 (= res!1952467 (dynLambda!21559 (ite c!794989 lambda!197595 lambda!197597) (h!57980 (ite c!794989 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810430)))))))

(declare-fun b!4646779 () Bool)

(assert (=> b!4646779 (= e!2898752 (forall!10987 (t!359070 (ite c!794989 (toList!5182 (ListMap!4518 Nil!51850)) (toList!5182 lt!1810430))) (ite c!794989 lambda!197595 lambda!197597)))))

(assert (= (and d!1465456 (not res!1952466)) b!4646778))

(assert (= (and b!4646778 res!1952467) b!4646779))

(declare-fun b_lambda!171279 () Bool)

(assert (=> (not b_lambda!171279) (not b!4646778)))

(declare-fun m!5513067 () Bool)

(assert (=> b!4646778 m!5513067))

(declare-fun m!5513069 () Bool)

(assert (=> b!4646779 m!5513069))

(assert (=> bm!324422 d!1465456))

(assert (=> bm!324426 d!1465222))

(declare-fun d!1465458 () Bool)

(declare-fun res!1952468 () Bool)

(declare-fun e!2898753 () Bool)

(assert (=> d!1465458 (=> res!1952468 e!2898753)))

(assert (=> d!1465458 (= res!1952468 ((_ is Nil!51850) newBucket!224))))

(assert (=> d!1465458 (= (forall!10987 newBucket!224 lambda!197583) e!2898753)))

(declare-fun b!4646780 () Bool)

(declare-fun e!2898754 () Bool)

(assert (=> b!4646780 (= e!2898753 e!2898754)))

(declare-fun res!1952469 () Bool)

(assert (=> b!4646780 (=> (not res!1952469) (not e!2898754))))

(assert (=> b!4646780 (= res!1952469 (dynLambda!21559 lambda!197583 (h!57980 newBucket!224)))))

(declare-fun b!4646781 () Bool)

(assert (=> b!4646781 (= e!2898754 (forall!10987 (t!359070 newBucket!224) lambda!197583))))

(assert (= (and d!1465458 (not res!1952468)) b!4646780))

(assert (= (and b!4646780 res!1952469) b!4646781))

(declare-fun b_lambda!171281 () Bool)

(assert (=> (not b_lambda!171281) (not b!4646780)))

(declare-fun m!5513071 () Bool)

(assert (=> b!4646780 m!5513071))

(declare-fun m!5513073 () Bool)

(assert (=> b!4646781 m!5513073))

(assert (=> d!1464982 d!1465458))

(assert (=> d!1464982 d!1465020))

(declare-fun d!1465460 () Bool)

(declare-fun res!1952470 () Bool)

(declare-fun e!2898755 () Bool)

(assert (=> d!1465460 (=> res!1952470 e!2898755)))

(assert (=> d!1465460 (= res!1952470 ((_ is Nil!51850) (ite c!794957 (toList!5182 lt!1810089) (toList!5182 lt!1810262))))))

(assert (=> d!1465460 (= (forall!10987 (ite c!794957 (toList!5182 lt!1810089) (toList!5182 lt!1810262)) (ite c!794957 lambda!197562 lambda!197564)) e!2898755)))

(declare-fun b!4646782 () Bool)

(declare-fun e!2898756 () Bool)

(assert (=> b!4646782 (= e!2898755 e!2898756)))

(declare-fun res!1952471 () Bool)

(assert (=> b!4646782 (=> (not res!1952471) (not e!2898756))))

(assert (=> b!4646782 (= res!1952471 (dynLambda!21559 (ite c!794957 lambda!197562 lambda!197564) (h!57980 (ite c!794957 (toList!5182 lt!1810089) (toList!5182 lt!1810262)))))))

(declare-fun b!4646783 () Bool)

(assert (=> b!4646783 (= e!2898756 (forall!10987 (t!359070 (ite c!794957 (toList!5182 lt!1810089) (toList!5182 lt!1810262))) (ite c!794957 lambda!197562 lambda!197564)))))

(assert (= (and d!1465460 (not res!1952470)) b!4646782))

(assert (= (and b!4646782 res!1952471) b!4646783))

(declare-fun b_lambda!171283 () Bool)

(assert (=> (not b_lambda!171283) (not b!4646782)))

(declare-fun m!5513075 () Bool)

(assert (=> b!4646782 m!5513075))

(declare-fun m!5513077 () Bool)

(assert (=> b!4646783 m!5513077))

(assert (=> bm!324403 d!1465460))

(declare-fun d!1465462 () Bool)

(declare-fun e!2898759 () Bool)

(assert (=> d!1465462 e!2898759))

(declare-fun res!1952479 () Bool)

(assert (=> d!1465462 (=> (not res!1952479) (not e!2898759))))

(declare-fun lt!1811085 () ListMap!4517)

(assert (=> d!1465462 (= res!1952479 (contains!14991 lt!1811085 (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(declare-fun lt!1811084 () List!51974)

(assert (=> d!1465462 (= lt!1811085 (ListMap!4518 lt!1811084))))

(declare-fun lt!1811083 () Unit!116275)

(declare-fun lt!1811086 () Unit!116275)

(assert (=> d!1465462 (= lt!1811083 lt!1811086)))

(assert (=> d!1465462 (= (getValueByKey!1591 lt!1811084 (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) (Some!11802 (_2!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(assert (=> d!1465462 (= lt!1811086 (lemmaContainsTupThenGetReturnValue!912 lt!1811084 (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (_2!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(assert (=> d!1465462 (= lt!1811084 (insertNoDuplicatedKeys!420 (toList!5182 (ListMap!4518 Nil!51850)) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (_2!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(assert (=> d!1465462 (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1811085)))

(declare-fun b!4646790 () Bool)

(declare-fun res!1952478 () Bool)

(assert (=> b!4646790 (=> (not res!1952478) (not e!2898759))))

(assert (=> b!4646790 (= res!1952478 (= (getValueByKey!1591 (toList!5182 lt!1811085) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) (Some!11802 (_2!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))))

(declare-fun b!4646791 () Bool)

(assert (=> b!4646791 (= e!2898759 (contains!14995 (toList!5182 lt!1811085) (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))

(assert (= (and d!1465462 res!1952479) b!4646790))

(assert (= (and b!4646790 res!1952478) b!4646791))

(declare-fun m!5513079 () Bool)

(assert (=> d!1465462 m!5513079))

(declare-fun m!5513081 () Bool)

(assert (=> d!1465462 m!5513081))

(declare-fun m!5513083 () Bool)

(assert (=> d!1465462 m!5513083))

(declare-fun m!5513085 () Bool)

(assert (=> d!1465462 m!5513085))

(declare-fun m!5513087 () Bool)

(assert (=> b!4646790 m!5513087))

(declare-fun m!5513089 () Bool)

(assert (=> b!4646791 m!5513089))

(assert (=> b!4646029 d!1465462))

(assert (=> b!4646029 d!1465406))

(declare-fun bs!1037964 () Bool)

(declare-fun b!4646794 () Bool)

(assert (= bs!1037964 (and b!4646794 b!4646029)))

(declare-fun lambda!197703 () Int)

(assert (=> bs!1037964 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810445) (= lambda!197703 lambda!197597))))

(declare-fun bs!1037965 () Bool)

(assert (= bs!1037965 (and b!4646794 b!4645912)))

(assert (=> bs!1037965 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810089) (= lambda!197703 lambda!197562))))

(declare-fun bs!1037966 () Bool)

(assert (= bs!1037966 (and b!4646794 b!4645990)))

(assert (=> bs!1037966 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810377) (= lambda!197703 lambda!197582))))

(declare-fun bs!1037967 () Bool)

(assert (= bs!1037967 (and b!4646794 b!4646034)))

(assert (=> bs!1037967 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197703 lambda!197600))))

(assert (=> bs!1037967 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810466) (= lambda!197703 lambda!197601))))

(declare-fun bs!1037968 () Bool)

(assert (= bs!1037968 (and b!4646794 b!4645910)))

(assert (=> bs!1037968 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810089) (= lambda!197703 lambda!197563))))

(declare-fun bs!1037969 () Bool)

(assert (= bs!1037969 (and b!4646794 b!4645992)))

(assert (=> bs!1037969 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197703 lambda!197579))))

(declare-fun bs!1037970 () Bool)

(assert (= bs!1037970 (and b!4646794 b!4646191)))

(assert (=> bs!1037970 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197703 lambda!197614))))

(declare-fun bs!1037971 () Bool)

(assert (= bs!1037971 (and b!4646794 d!1465038)))

(assert (=> bs!1037971 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810466) (= lambda!197703 lambda!197607))))

(declare-fun bs!1037972 () Bool)

(assert (= bs!1037972 (and b!4646794 d!1465436)))

(assert (=> bs!1037972 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810419) (= lambda!197703 lambda!197702))))

(declare-fun bs!1037973 () Bool)

(assert (= bs!1037973 (and b!4646794 b!4646000)))

(assert (=> bs!1037973 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197703 lambda!197587))))

(declare-fun bs!1037974 () Bool)

(assert (= bs!1037974 (and b!4646794 b!4646636)))

(assert (=> bs!1037974 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197703 lambda!197687))))

(declare-fun bs!1037975 () Bool)

(assert (= bs!1037975 (and b!4646794 b!4646002)))

(assert (=> bs!1037975 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197703 lambda!197586))))

(declare-fun bs!1037976 () Bool)

(assert (= bs!1037976 (and b!4646794 d!1464922)))

(assert (=> bs!1037976 (not (= lambda!197703 lambda!197489))))

(declare-fun bs!1037977 () Bool)

(assert (= bs!1037977 (and b!4646794 d!1464982)))

(assert (=> bs!1037977 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810361) (= lambda!197703 lambda!197583))))

(assert (=> bs!1037966 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197703 lambda!197581))))

(declare-fun bs!1037978 () Bool)

(assert (= bs!1037978 (and b!4646794 b!4646031)))

(assert (=> bs!1037978 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197703 lambda!197595))))

(declare-fun bs!1037979 () Bool)

(assert (= bs!1037979 (and b!4646794 d!1465106)))

(assert (=> bs!1037979 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810377) (= lambda!197703 lambda!197612))))

(declare-fun bs!1037980 () Bool)

(assert (= bs!1037980 (and b!4646794 b!4646516)))

(assert (=> bs!1037980 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197703 lambda!197664))))

(assert (=> bs!1037973 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810419) (= lambda!197703 lambda!197589))))

(declare-fun bs!1037981 () Bool)

(assert (= bs!1037981 (and b!4646794 d!1465368)))

(assert (=> bs!1037981 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810939) (= lambda!197703 lambda!197693))))

(declare-fun bs!1037982 () Bool)

(assert (= bs!1037982 (and b!4646794 b!4646558)))

(assert (=> bs!1037982 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197703 lambda!197671))))

(declare-fun bs!1037983 () Bool)

(assert (= bs!1037983 (and b!4646794 d!1465222)))

(assert (=> bs!1037983 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197703 lambda!197660))))

(declare-fun bs!1037984 () Bool)

(assert (= bs!1037984 (and b!4646794 d!1464936)))

(assert (=> bs!1037984 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810261) (= lambda!197703 lambda!197565))))

(declare-fun bs!1037985 () Bool)

(assert (= bs!1037985 (and b!4646794 d!1464988)))

(assert (=> bs!1037985 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810403) (= lambda!197703 lambda!197591))))

(declare-fun bs!1037986 () Bool)

(assert (= bs!1037986 (and b!4646794 b!4646634)))

(assert (=> bs!1037986 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197703 lambda!197689))))

(declare-fun bs!1037987 () Bool)

(assert (= bs!1037987 (and b!4646794 d!1465324)))

(assert (=> bs!1037987 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810863) (= lambda!197703 lambda!197681))))

(declare-fun bs!1037988 () Bool)

(assert (= bs!1037988 (and b!4646794 d!1465192)))

(assert (=> bs!1037988 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810716) (= lambda!197703 lambda!197654))))

(declare-fun bs!1037989 () Bool)

(assert (= bs!1037989 (and b!4646794 b!4646397)))

(assert (=> bs!1037989 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197703 lambda!197650))))

(declare-fun bs!1037990 () Bool)

(assert (= bs!1037990 (and b!4646794 b!4646556)))

(assert (=> bs!1037990 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197703 lambda!197673))))

(assert (=> bs!1037970 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810584) (= lambda!197703 lambda!197615))))

(declare-fun bs!1037991 () Bool)

(assert (= bs!1037991 (and b!4646794 d!1465288)))

(assert (=> bs!1037991 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810277) (= lambda!197703 lambda!197662))))

(declare-fun bs!1037992 () Bool)

(assert (= bs!1037992 (and b!4646794 d!1465416)))

(assert (=> bs!1037992 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1811001) (= lambda!197703 lambda!197701))))

(declare-fun bs!1037993 () Bool)

(assert (= bs!1037993 (and b!4646794 d!1465300)))

(assert (=> bs!1037993 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810799) (= lambda!197703 lambda!197667))))

(declare-fun bs!1037994 () Bool)

(assert (= bs!1037994 (and b!4646794 b!4646518)))

(assert (=> bs!1037994 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197703 lambda!197663))))

(declare-fun bs!1037995 () Bool)

(assert (= bs!1037995 (and b!4646794 b!4646697)))

(assert (=> bs!1037995 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197703 lambda!197697))))

(declare-fun bs!1037996 () Bool)

(assert (= bs!1037996 (and b!4646794 d!1465044)))

(assert (=> bs!1037996 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810516) (= lambda!197703 lambda!197611))))

(declare-fun bs!1037997 () Bool)

(assert (= bs!1037997 (and b!4646794 b!4646695)))

(assert (=> bs!1037997 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197703 lambda!197699))))

(assert (=> bs!1037964 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197703 lambda!197596))))

(declare-fun bs!1037998 () Bool)

(assert (= bs!1037998 (and b!4646794 b!4646095)))

(assert (=> bs!1037998 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810532) (= lambda!197703 lambda!197610))))

(assert (=> bs!1037990 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810879) (= lambda!197703 lambda!197674))))

(assert (=> bs!1037986 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810955) (= lambda!197703 lambda!197690))))

(declare-fun bs!1037999 () Bool)

(assert (= bs!1037999 (and b!4646794 d!1465112)))

(assert (=> bs!1037999 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810568) (= lambda!197703 lambda!197616))))

(assert (=> bs!1037997 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1811017) (= lambda!197703 lambda!197700))))

(declare-fun bs!1038000 () Bool)

(assert (= bs!1038000 (and b!4646794 b!4646399)))

(assert (=> bs!1038000 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197703 lambda!197648))))

(assert (=> bs!1037989 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810732) (= lambda!197703 lambda!197652))))

(declare-fun bs!1038001 () Bool)

(assert (= bs!1038001 (and b!4646794 d!1465004)))

(assert (=> bs!1038001 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810429) (= lambda!197703 lambda!197598))))

(assert (=> bs!1037998 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197703 lambda!197609))))

(assert (=> bs!1037980 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810815) (= lambda!197703 lambda!197665))))

(declare-fun bs!1038002 () Bool)

(assert (= bs!1038002 (and b!4646794 d!1465208)))

(assert (=> bs!1038002 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810089) (= lambda!197703 lambda!197659))))

(declare-fun bs!1038003 () Bool)

(assert (= bs!1038003 (and b!4646794 b!4646097)))

(assert (=> bs!1038003 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197703 lambda!197608))))

(declare-fun bs!1038004 () Bool)

(assert (= bs!1038004 (and b!4646794 d!1464926)))

(assert (=> bs!1038004 (not (= lambda!197703 lambda!197490))))

(declare-fun bs!1038005 () Bool)

(assert (= bs!1038005 (and b!4646794 d!1465008)))

(assert (=> bs!1038005 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810450) (= lambda!197703 lambda!197602))))

(declare-fun bs!1038006 () Bool)

(assert (= bs!1038006 (and b!4646794 b!4646193)))

(assert (=> bs!1038006 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197703 lambda!197613))))

(assert (=> bs!1037968 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810277) (= lambda!197703 lambda!197564))))

(declare-fun bs!1038007 () Bool)

(assert (= bs!1038007 (and b!4646794 b!4646036)))

(assert (=> bs!1038007 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197703 lambda!197599))))

(assert (=> b!4646794 true))

(declare-fun bs!1038008 () Bool)

(declare-fun b!4646792 () Bool)

(assert (= bs!1038008 (and b!4646792 b!4645912)))

(declare-fun lambda!197704 () Int)

(assert (=> bs!1038008 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810089) (= lambda!197704 lambda!197562))))

(declare-fun bs!1038009 () Bool)

(assert (= bs!1038009 (and b!4646792 b!4645990)))

(assert (=> bs!1038009 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810377) (= lambda!197704 lambda!197582))))

(declare-fun bs!1038010 () Bool)

(assert (= bs!1038010 (and b!4646792 b!4646034)))

(assert (=> bs!1038010 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197704 lambda!197600))))

(assert (=> bs!1038010 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810466) (= lambda!197704 lambda!197601))))

(declare-fun bs!1038011 () Bool)

(assert (= bs!1038011 (and b!4646792 b!4645910)))

(assert (=> bs!1038011 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810089) (= lambda!197704 lambda!197563))))

(declare-fun bs!1038012 () Bool)

(assert (= bs!1038012 (and b!4646792 b!4645992)))

(assert (=> bs!1038012 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197704 lambda!197579))))

(declare-fun bs!1038013 () Bool)

(assert (= bs!1038013 (and b!4646792 b!4646191)))

(assert (=> bs!1038013 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197704 lambda!197614))))

(declare-fun bs!1038014 () Bool)

(assert (= bs!1038014 (and b!4646792 d!1465038)))

(assert (=> bs!1038014 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810466) (= lambda!197704 lambda!197607))))

(declare-fun bs!1038015 () Bool)

(assert (= bs!1038015 (and b!4646792 d!1465436)))

(assert (=> bs!1038015 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810419) (= lambda!197704 lambda!197702))))

(declare-fun bs!1038016 () Bool)

(assert (= bs!1038016 (and b!4646792 b!4646000)))

(assert (=> bs!1038016 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197704 lambda!197587))))

(declare-fun bs!1038017 () Bool)

(assert (= bs!1038017 (and b!4646792 b!4646636)))

(assert (=> bs!1038017 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197704 lambda!197687))))

(declare-fun bs!1038018 () Bool)

(assert (= bs!1038018 (and b!4646792 b!4646002)))

(assert (=> bs!1038018 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197704 lambda!197586))))

(declare-fun bs!1038019 () Bool)

(assert (= bs!1038019 (and b!4646792 d!1464922)))

(assert (=> bs!1038019 (not (= lambda!197704 lambda!197489))))

(declare-fun bs!1038020 () Bool)

(assert (= bs!1038020 (and b!4646792 d!1464982)))

(assert (=> bs!1038020 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810361) (= lambda!197704 lambda!197583))))

(declare-fun bs!1038021 () Bool)

(assert (= bs!1038021 (and b!4646792 b!4646029)))

(assert (=> bs!1038021 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810445) (= lambda!197704 lambda!197597))))

(declare-fun bs!1038022 () Bool)

(assert (= bs!1038022 (and b!4646792 b!4646794)))

(assert (=> bs!1038022 (= lambda!197704 lambda!197703)))

(assert (=> bs!1038009 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197704 lambda!197581))))

(declare-fun bs!1038023 () Bool)

(assert (= bs!1038023 (and b!4646792 b!4646031)))

(assert (=> bs!1038023 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197704 lambda!197595))))

(declare-fun bs!1038024 () Bool)

(assert (= bs!1038024 (and b!4646792 d!1465106)))

(assert (=> bs!1038024 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810377) (= lambda!197704 lambda!197612))))

(declare-fun bs!1038025 () Bool)

(assert (= bs!1038025 (and b!4646792 b!4646516)))

(assert (=> bs!1038025 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197704 lambda!197664))))

(assert (=> bs!1038016 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810419) (= lambda!197704 lambda!197589))))

(declare-fun bs!1038026 () Bool)

(assert (= bs!1038026 (and b!4646792 d!1465368)))

(assert (=> bs!1038026 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810939) (= lambda!197704 lambda!197693))))

(declare-fun bs!1038027 () Bool)

(assert (= bs!1038027 (and b!4646792 b!4646558)))

(assert (=> bs!1038027 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197704 lambda!197671))))

(declare-fun bs!1038028 () Bool)

(assert (= bs!1038028 (and b!4646792 d!1465222)))

(assert (=> bs!1038028 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197704 lambda!197660))))

(declare-fun bs!1038030 () Bool)

(assert (= bs!1038030 (and b!4646792 d!1464936)))

(assert (=> bs!1038030 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810261) (= lambda!197704 lambda!197565))))

(declare-fun bs!1038031 () Bool)

(assert (= bs!1038031 (and b!4646792 d!1464988)))

(assert (=> bs!1038031 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810403) (= lambda!197704 lambda!197591))))

(declare-fun bs!1038033 () Bool)

(assert (= bs!1038033 (and b!4646792 b!4646634)))

(assert (=> bs!1038033 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197704 lambda!197689))))

(declare-fun bs!1038035 () Bool)

(assert (= bs!1038035 (and b!4646792 d!1465324)))

(assert (=> bs!1038035 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810863) (= lambda!197704 lambda!197681))))

(declare-fun bs!1038037 () Bool)

(assert (= bs!1038037 (and b!4646792 d!1465192)))

(assert (=> bs!1038037 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810716) (= lambda!197704 lambda!197654))))

(declare-fun bs!1038039 () Bool)

(assert (= bs!1038039 (and b!4646792 b!4646397)))

(assert (=> bs!1038039 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197704 lambda!197650))))

(declare-fun bs!1038041 () Bool)

(assert (= bs!1038041 (and b!4646792 b!4646556)))

(assert (=> bs!1038041 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197704 lambda!197673))))

(assert (=> bs!1038013 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810584) (= lambda!197704 lambda!197615))))

(declare-fun bs!1038044 () Bool)

(assert (= bs!1038044 (and b!4646792 d!1465288)))

(assert (=> bs!1038044 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810277) (= lambda!197704 lambda!197662))))

(declare-fun bs!1038046 () Bool)

(assert (= bs!1038046 (and b!4646792 d!1465416)))

(assert (=> bs!1038046 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1811001) (= lambda!197704 lambda!197701))))

(declare-fun bs!1038047 () Bool)

(assert (= bs!1038047 (and b!4646792 d!1465300)))

(assert (=> bs!1038047 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810799) (= lambda!197704 lambda!197667))))

(declare-fun bs!1038048 () Bool)

(assert (= bs!1038048 (and b!4646792 b!4646518)))

(assert (=> bs!1038048 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197704 lambda!197663))))

(declare-fun bs!1038050 () Bool)

(assert (= bs!1038050 (and b!4646792 b!4646697)))

(assert (=> bs!1038050 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197704 lambda!197697))))

(declare-fun bs!1038051 () Bool)

(assert (= bs!1038051 (and b!4646792 d!1465044)))

(assert (=> bs!1038051 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810516) (= lambda!197704 lambda!197611))))

(declare-fun bs!1038053 () Bool)

(assert (= bs!1038053 (and b!4646792 b!4646695)))

(assert (=> bs!1038053 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197704 lambda!197699))))

(assert (=> bs!1038021 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197704 lambda!197596))))

(declare-fun bs!1038056 () Bool)

(assert (= bs!1038056 (and b!4646792 b!4646095)))

(assert (=> bs!1038056 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810532) (= lambda!197704 lambda!197610))))

(assert (=> bs!1038041 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810879) (= lambda!197704 lambda!197674))))

(assert (=> bs!1038033 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810955) (= lambda!197704 lambda!197690))))

(declare-fun bs!1038060 () Bool)

(assert (= bs!1038060 (and b!4646792 d!1465112)))

(assert (=> bs!1038060 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810568) (= lambda!197704 lambda!197616))))

(assert (=> bs!1038053 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1811017) (= lambda!197704 lambda!197700))))

(declare-fun bs!1038062 () Bool)

(assert (= bs!1038062 (and b!4646792 b!4646399)))

(assert (=> bs!1038062 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197704 lambda!197648))))

(assert (=> bs!1038039 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810732) (= lambda!197704 lambda!197652))))

(declare-fun bs!1038064 () Bool)

(assert (= bs!1038064 (and b!4646792 d!1465004)))

(assert (=> bs!1038064 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810429) (= lambda!197704 lambda!197598))))

(assert (=> bs!1038056 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197704 lambda!197609))))

(assert (=> bs!1038025 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810815) (= lambda!197704 lambda!197665))))

(declare-fun bs!1038067 () Bool)

(assert (= bs!1038067 (and b!4646792 d!1465208)))

(assert (=> bs!1038067 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810089) (= lambda!197704 lambda!197659))))

(declare-fun bs!1038069 () Bool)

(assert (= bs!1038069 (and b!4646792 b!4646097)))

(assert (=> bs!1038069 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197704 lambda!197608))))

(declare-fun bs!1038071 () Bool)

(assert (= bs!1038071 (and b!4646792 d!1464926)))

(assert (=> bs!1038071 (not (= lambda!197704 lambda!197490))))

(declare-fun bs!1038073 () Bool)

(assert (= bs!1038073 (and b!4646792 d!1465008)))

(assert (=> bs!1038073 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810450) (= lambda!197704 lambda!197602))))

(declare-fun bs!1038074 () Bool)

(assert (= bs!1038074 (and b!4646792 b!4646193)))

(assert (=> bs!1038074 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197704 lambda!197613))))

(assert (=> bs!1038011 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1810277) (= lambda!197704 lambda!197564))))

(declare-fun bs!1038077 () Bool)

(assert (= bs!1038077 (and b!4646792 b!4646036)))

(assert (=> bs!1038077 (= (= (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (ListMap!4518 Nil!51850)) (= lambda!197704 lambda!197599))))

(assert (=> b!4646792 true))

(declare-fun lt!1811103 () ListMap!4517)

(declare-fun lambda!197706 () Int)

(assert (=> bs!1038008 (= (= lt!1811103 lt!1810089) (= lambda!197706 lambda!197562))))

(assert (=> bs!1038009 (= (= lt!1811103 lt!1810377) (= lambda!197706 lambda!197582))))

(assert (=> bs!1038010 (= (= lt!1811103 lt!1810466) (= lambda!197706 lambda!197601))))

(assert (=> bs!1038011 (= (= lt!1811103 lt!1810089) (= lambda!197706 lambda!197563))))

(assert (=> bs!1038012 (= (= lt!1811103 (ListMap!4518 Nil!51850)) (= lambda!197706 lambda!197579))))

(assert (=> bs!1038013 (= (= lt!1811103 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197706 lambda!197614))))

(assert (=> bs!1038014 (= (= lt!1811103 lt!1810466) (= lambda!197706 lambda!197607))))

(assert (=> bs!1038015 (= (= lt!1811103 lt!1810419) (= lambda!197706 lambda!197702))))

(assert (=> bs!1038016 (= (= lt!1811103 (ListMap!4518 Nil!51850)) (= lambda!197706 lambda!197587))))

(assert (=> bs!1038017 (= (= lt!1811103 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197706 lambda!197687))))

(assert (=> bs!1038018 (= (= lt!1811103 (ListMap!4518 Nil!51850)) (= lambda!197706 lambda!197586))))

(assert (=> bs!1038019 (not (= lambda!197706 lambda!197489))))

(assert (=> bs!1038020 (= (= lt!1811103 lt!1810361) (= lambda!197706 lambda!197583))))

(assert (=> bs!1038021 (= (= lt!1811103 lt!1810445) (= lambda!197706 lambda!197597))))

(assert (=> bs!1038022 (= (= lt!1811103 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) (= lambda!197706 lambda!197703))))

(assert (=> bs!1038009 (= (= lt!1811103 (ListMap!4518 Nil!51850)) (= lambda!197706 lambda!197581))))

(assert (=> bs!1038023 (= (= lt!1811103 (ListMap!4518 Nil!51850)) (= lambda!197706 lambda!197595))))

(assert (=> bs!1038024 (= (= lt!1811103 lt!1810377) (= lambda!197706 lambda!197612))))

(assert (=> bs!1038010 (= (= lt!1811103 (ListMap!4518 Nil!51850)) (= lambda!197706 lambda!197600))))

(assert (=> b!4646792 (= (= lt!1811103 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) (= lambda!197706 lambda!197704))))

(assert (=> bs!1038025 (= (= lt!1811103 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197706 lambda!197664))))

(assert (=> bs!1038016 (= (= lt!1811103 lt!1810419) (= lambda!197706 lambda!197589))))

(assert (=> bs!1038026 (= (= lt!1811103 lt!1810939) (= lambda!197706 lambda!197693))))

(assert (=> bs!1038027 (= (= lt!1811103 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197706 lambda!197671))))

(assert (=> bs!1038028 (= (= lt!1811103 (ListMap!4518 Nil!51850)) (= lambda!197706 lambda!197660))))

(assert (=> bs!1038030 (= (= lt!1811103 lt!1810261) (= lambda!197706 lambda!197565))))

(assert (=> bs!1038031 (= (= lt!1811103 lt!1810403) (= lambda!197706 lambda!197591))))

(assert (=> bs!1038033 (= (= lt!1811103 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197706 lambda!197689))))

(assert (=> bs!1038035 (= (= lt!1811103 lt!1810863) (= lambda!197706 lambda!197681))))

(assert (=> bs!1038037 (= (= lt!1811103 lt!1810716) (= lambda!197706 lambda!197654))))

(assert (=> bs!1038039 (= (= lt!1811103 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197706 lambda!197650))))

(assert (=> bs!1038041 (= (= lt!1811103 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197706 lambda!197673))))

(assert (=> bs!1038013 (= (= lt!1811103 lt!1810584) (= lambda!197706 lambda!197615))))

(assert (=> bs!1038044 (= (= lt!1811103 lt!1810277) (= lambda!197706 lambda!197662))))

(assert (=> bs!1038046 (= (= lt!1811103 lt!1811001) (= lambda!197706 lambda!197701))))

(assert (=> bs!1038047 (= (= lt!1811103 lt!1810799) (= lambda!197706 lambda!197667))))

(assert (=> bs!1038048 (= (= lt!1811103 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197706 lambda!197663))))

(assert (=> bs!1038050 (= (= lt!1811103 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197706 lambda!197697))))

(assert (=> bs!1038051 (= (= lt!1811103 lt!1810516) (= lambda!197706 lambda!197611))))

(assert (=> bs!1038053 (= (= lt!1811103 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197706 lambda!197699))))

(assert (=> bs!1038021 (= (= lt!1811103 (ListMap!4518 Nil!51850)) (= lambda!197706 lambda!197596))))

(assert (=> bs!1038056 (= (= lt!1811103 lt!1810532) (= lambda!197706 lambda!197610))))

(assert (=> bs!1038041 (= (= lt!1811103 lt!1810879) (= lambda!197706 lambda!197674))))

(assert (=> bs!1038033 (= (= lt!1811103 lt!1810955) (= lambda!197706 lambda!197690))))

(assert (=> bs!1038060 (= (= lt!1811103 lt!1810568) (= lambda!197706 lambda!197616))))

(assert (=> bs!1038053 (= (= lt!1811103 lt!1811017) (= lambda!197706 lambda!197700))))

(assert (=> bs!1038062 (= (= lt!1811103 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197706 lambda!197648))))

(assert (=> bs!1038039 (= (= lt!1811103 lt!1810732) (= lambda!197706 lambda!197652))))

(assert (=> bs!1038064 (= (= lt!1811103 lt!1810429) (= lambda!197706 lambda!197598))))

(assert (=> bs!1038056 (= (= lt!1811103 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197706 lambda!197609))))

(assert (=> bs!1038025 (= (= lt!1811103 lt!1810815) (= lambda!197706 lambda!197665))))

(assert (=> bs!1038067 (= (= lt!1811103 lt!1810089) (= lambda!197706 lambda!197659))))

(assert (=> bs!1038069 (= (= lt!1811103 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197706 lambda!197608))))

(assert (=> bs!1038071 (not (= lambda!197706 lambda!197490))))

(assert (=> bs!1038073 (= (= lt!1811103 lt!1810450) (= lambda!197706 lambda!197602))))

(assert (=> bs!1038074 (= (= lt!1811103 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197706 lambda!197613))))

(assert (=> bs!1038011 (= (= lt!1811103 lt!1810277) (= lambda!197706 lambda!197564))))

(assert (=> bs!1038077 (= (= lt!1811103 (ListMap!4518 Nil!51850)) (= lambda!197706 lambda!197599))))

(assert (=> b!4646792 true))

(declare-fun bs!1038128 () Bool)

(declare-fun d!1465464 () Bool)

(assert (= bs!1038128 (and d!1465464 b!4645912)))

(declare-fun lt!1811087 () ListMap!4517)

(declare-fun lambda!197708 () Int)

(assert (=> bs!1038128 (= (= lt!1811087 lt!1810089) (= lambda!197708 lambda!197562))))

(declare-fun bs!1038129 () Bool)

(assert (= bs!1038129 (and d!1465464 b!4645990)))

(assert (=> bs!1038129 (= (= lt!1811087 lt!1810377) (= lambda!197708 lambda!197582))))

(declare-fun bs!1038130 () Bool)

(assert (= bs!1038130 (and d!1465464 b!4646034)))

(assert (=> bs!1038130 (= (= lt!1811087 lt!1810466) (= lambda!197708 lambda!197601))))

(declare-fun bs!1038131 () Bool)

(assert (= bs!1038131 (and d!1465464 b!4645910)))

(assert (=> bs!1038131 (= (= lt!1811087 lt!1810089) (= lambda!197708 lambda!197563))))

(declare-fun bs!1038132 () Bool)

(assert (= bs!1038132 (and d!1465464 b!4645992)))

(assert (=> bs!1038132 (= (= lt!1811087 (ListMap!4518 Nil!51850)) (= lambda!197708 lambda!197579))))

(declare-fun bs!1038133 () Bool)

(assert (= bs!1038133 (and d!1465464 b!4646191)))

(assert (=> bs!1038133 (= (= lt!1811087 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197708 lambda!197614))))

(declare-fun bs!1038134 () Bool)

(assert (= bs!1038134 (and d!1465464 d!1465038)))

(assert (=> bs!1038134 (= (= lt!1811087 lt!1810466) (= lambda!197708 lambda!197607))))

(declare-fun bs!1038135 () Bool)

(assert (= bs!1038135 (and d!1465464 d!1465436)))

(assert (=> bs!1038135 (= (= lt!1811087 lt!1810419) (= lambda!197708 lambda!197702))))

(declare-fun bs!1038136 () Bool)

(assert (= bs!1038136 (and d!1465464 b!4646000)))

(assert (=> bs!1038136 (= (= lt!1811087 (ListMap!4518 Nil!51850)) (= lambda!197708 lambda!197587))))

(declare-fun bs!1038137 () Bool)

(assert (= bs!1038137 (and d!1465464 b!4646636)))

(assert (=> bs!1038137 (= (= lt!1811087 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197708 lambda!197687))))

(declare-fun bs!1038138 () Bool)

(assert (= bs!1038138 (and d!1465464 b!4646002)))

(assert (=> bs!1038138 (= (= lt!1811087 (ListMap!4518 Nil!51850)) (= lambda!197708 lambda!197586))))

(declare-fun bs!1038139 () Bool)

(assert (= bs!1038139 (and d!1465464 d!1464922)))

(assert (=> bs!1038139 (not (= lambda!197708 lambda!197489))))

(declare-fun bs!1038140 () Bool)

(assert (= bs!1038140 (and d!1465464 d!1464982)))

(assert (=> bs!1038140 (= (= lt!1811087 lt!1810361) (= lambda!197708 lambda!197583))))

(declare-fun bs!1038141 () Bool)

(assert (= bs!1038141 (and d!1465464 b!4646029)))

(assert (=> bs!1038141 (= (= lt!1811087 lt!1810445) (= lambda!197708 lambda!197597))))

(declare-fun bs!1038142 () Bool)

(assert (= bs!1038142 (and d!1465464 b!4646794)))

(assert (=> bs!1038142 (= (= lt!1811087 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) (= lambda!197708 lambda!197703))))

(assert (=> bs!1038129 (= (= lt!1811087 (ListMap!4518 Nil!51850)) (= lambda!197708 lambda!197581))))

(declare-fun bs!1038143 () Bool)

(assert (= bs!1038143 (and d!1465464 b!4646031)))

(assert (=> bs!1038143 (= (= lt!1811087 (ListMap!4518 Nil!51850)) (= lambda!197708 lambda!197595))))

(declare-fun bs!1038144 () Bool)

(assert (= bs!1038144 (and d!1465464 d!1465106)))

(assert (=> bs!1038144 (= (= lt!1811087 lt!1810377) (= lambda!197708 lambda!197612))))

(assert (=> bs!1038130 (= (= lt!1811087 (ListMap!4518 Nil!51850)) (= lambda!197708 lambda!197600))))

(declare-fun bs!1038145 () Bool)

(assert (= bs!1038145 (and d!1465464 b!4646792)))

(assert (=> bs!1038145 (= (= lt!1811087 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) (= lambda!197708 lambda!197704))))

(declare-fun bs!1038146 () Bool)

(assert (= bs!1038146 (and d!1465464 b!4646516)))

(assert (=> bs!1038146 (= (= lt!1811087 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197708 lambda!197664))))

(assert (=> bs!1038136 (= (= lt!1811087 lt!1810419) (= lambda!197708 lambda!197589))))

(declare-fun bs!1038147 () Bool)

(assert (= bs!1038147 (and d!1465464 d!1465368)))

(assert (=> bs!1038147 (= (= lt!1811087 lt!1810939) (= lambda!197708 lambda!197693))))

(declare-fun bs!1038148 () Bool)

(assert (= bs!1038148 (and d!1465464 b!4646558)))

(assert (=> bs!1038148 (= (= lt!1811087 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197708 lambda!197671))))

(declare-fun bs!1038149 () Bool)

(assert (= bs!1038149 (and d!1465464 d!1465222)))

(assert (=> bs!1038149 (= (= lt!1811087 (ListMap!4518 Nil!51850)) (= lambda!197708 lambda!197660))))

(declare-fun bs!1038150 () Bool)

(assert (= bs!1038150 (and d!1465464 d!1464936)))

(assert (=> bs!1038150 (= (= lt!1811087 lt!1810261) (= lambda!197708 lambda!197565))))

(assert (=> bs!1038145 (= (= lt!1811087 lt!1811103) (= lambda!197708 lambda!197706))))

(declare-fun bs!1038151 () Bool)

(assert (= bs!1038151 (and d!1465464 d!1464988)))

(assert (=> bs!1038151 (= (= lt!1811087 lt!1810403) (= lambda!197708 lambda!197591))))

(declare-fun bs!1038152 () Bool)

(assert (= bs!1038152 (and d!1465464 b!4646634)))

(assert (=> bs!1038152 (= (= lt!1811087 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197708 lambda!197689))))

(declare-fun bs!1038153 () Bool)

(assert (= bs!1038153 (and d!1465464 d!1465324)))

(assert (=> bs!1038153 (= (= lt!1811087 lt!1810863) (= lambda!197708 lambda!197681))))

(declare-fun bs!1038154 () Bool)

(assert (= bs!1038154 (and d!1465464 d!1465192)))

(assert (=> bs!1038154 (= (= lt!1811087 lt!1810716) (= lambda!197708 lambda!197654))))

(declare-fun bs!1038155 () Bool)

(assert (= bs!1038155 (and d!1465464 b!4646397)))

(assert (=> bs!1038155 (= (= lt!1811087 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197708 lambda!197650))))

(declare-fun bs!1038156 () Bool)

(assert (= bs!1038156 (and d!1465464 b!4646556)))

(assert (=> bs!1038156 (= (= lt!1811087 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197708 lambda!197673))))

(assert (=> bs!1038133 (= (= lt!1811087 lt!1810584) (= lambda!197708 lambda!197615))))

(declare-fun bs!1038157 () Bool)

(assert (= bs!1038157 (and d!1465464 d!1465288)))

(assert (=> bs!1038157 (= (= lt!1811087 lt!1810277) (= lambda!197708 lambda!197662))))

(declare-fun bs!1038158 () Bool)

(assert (= bs!1038158 (and d!1465464 d!1465416)))

(assert (=> bs!1038158 (= (= lt!1811087 lt!1811001) (= lambda!197708 lambda!197701))))

(declare-fun bs!1038159 () Bool)

(assert (= bs!1038159 (and d!1465464 d!1465300)))

(assert (=> bs!1038159 (= (= lt!1811087 lt!1810799) (= lambda!197708 lambda!197667))))

(declare-fun bs!1038160 () Bool)

(assert (= bs!1038160 (and d!1465464 b!4646518)))

(assert (=> bs!1038160 (= (= lt!1811087 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197708 lambda!197663))))

(declare-fun bs!1038161 () Bool)

(assert (= bs!1038161 (and d!1465464 b!4646697)))

(assert (=> bs!1038161 (= (= lt!1811087 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197708 lambda!197697))))

(declare-fun bs!1038162 () Bool)

(assert (= bs!1038162 (and d!1465464 d!1465044)))

(assert (=> bs!1038162 (= (= lt!1811087 lt!1810516) (= lambda!197708 lambda!197611))))

(declare-fun bs!1038163 () Bool)

(assert (= bs!1038163 (and d!1465464 b!4646695)))

(assert (=> bs!1038163 (= (= lt!1811087 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197708 lambda!197699))))

(assert (=> bs!1038141 (= (= lt!1811087 (ListMap!4518 Nil!51850)) (= lambda!197708 lambda!197596))))

(declare-fun bs!1038164 () Bool)

(assert (= bs!1038164 (and d!1465464 b!4646095)))

(assert (=> bs!1038164 (= (= lt!1811087 lt!1810532) (= lambda!197708 lambda!197610))))

(assert (=> bs!1038156 (= (= lt!1811087 lt!1810879) (= lambda!197708 lambda!197674))))

(assert (=> bs!1038152 (= (= lt!1811087 lt!1810955) (= lambda!197708 lambda!197690))))

(declare-fun bs!1038165 () Bool)

(assert (= bs!1038165 (and d!1465464 d!1465112)))

(assert (=> bs!1038165 (= (= lt!1811087 lt!1810568) (= lambda!197708 lambda!197616))))

(assert (=> bs!1038163 (= (= lt!1811087 lt!1811017) (= lambda!197708 lambda!197700))))

(declare-fun bs!1038166 () Bool)

(assert (= bs!1038166 (and d!1465464 b!4646399)))

(assert (=> bs!1038166 (= (= lt!1811087 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197708 lambda!197648))))

(assert (=> bs!1038155 (= (= lt!1811087 lt!1810732) (= lambda!197708 lambda!197652))))

(declare-fun bs!1038167 () Bool)

(assert (= bs!1038167 (and d!1465464 d!1465004)))

(assert (=> bs!1038167 (= (= lt!1811087 lt!1810429) (= lambda!197708 lambda!197598))))

(assert (=> bs!1038164 (= (= lt!1811087 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197708 lambda!197609))))

(assert (=> bs!1038146 (= (= lt!1811087 lt!1810815) (= lambda!197708 lambda!197665))))

(declare-fun bs!1038168 () Bool)

(assert (= bs!1038168 (and d!1465464 d!1465208)))

(assert (=> bs!1038168 (= (= lt!1811087 lt!1810089) (= lambda!197708 lambda!197659))))

(declare-fun bs!1038169 () Bool)

(assert (= bs!1038169 (and d!1465464 b!4646097)))

(assert (=> bs!1038169 (= (= lt!1811087 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197708 lambda!197608))))

(declare-fun bs!1038170 () Bool)

(assert (= bs!1038170 (and d!1465464 d!1464926)))

(assert (=> bs!1038170 (not (= lambda!197708 lambda!197490))))

(declare-fun bs!1038171 () Bool)

(assert (= bs!1038171 (and d!1465464 d!1465008)))

(assert (=> bs!1038171 (= (= lt!1811087 lt!1810450) (= lambda!197708 lambda!197602))))

(declare-fun bs!1038172 () Bool)

(assert (= bs!1038172 (and d!1465464 b!4646193)))

(assert (=> bs!1038172 (= (= lt!1811087 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197708 lambda!197613))))

(assert (=> bs!1038131 (= (= lt!1811087 lt!1810277) (= lambda!197708 lambda!197564))))

(declare-fun bs!1038173 () Bool)

(assert (= bs!1038173 (and d!1465464 b!4646036)))

(assert (=> bs!1038173 (= (= lt!1811087 (ListMap!4518 Nil!51850)) (= lambda!197708 lambda!197599))))

(assert (=> d!1465464 true))

(declare-fun e!2898762 () ListMap!4517)

(assert (=> b!4646792 (= e!2898762 lt!1811103)))

(declare-fun lt!1811088 () ListMap!4517)

(assert (=> b!4646792 (= lt!1811088 (+!1968 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (h!57980 (t!359070 (Cons!51850 lt!1810091 lt!1810088)))))))

(assert (=> b!4646792 (= lt!1811103 (addToMapMapFromBucket!1081 (t!359070 (t!359070 (Cons!51850 lt!1810091 lt!1810088))) (+!1968 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (h!57980 (t!359070 (Cons!51850 lt!1810091 lt!1810088))))))))

(declare-fun lt!1811090 () Unit!116275)

(declare-fun call!324509 () Unit!116275)

(assert (=> b!4646792 (= lt!1811090 call!324509)))

(assert (=> b!4646792 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) lambda!197704)))

(declare-fun lt!1811104 () Unit!116275)

(assert (=> b!4646792 (= lt!1811104 lt!1811090)))

(assert (=> b!4646792 (forall!10987 (toList!5182 lt!1811088) lambda!197706)))

(declare-fun lt!1811100 () Unit!116275)

(declare-fun Unit!116582 () Unit!116275)

(assert (=> b!4646792 (= lt!1811100 Unit!116582)))

(declare-fun call!324511 () Bool)

(assert (=> b!4646792 call!324511))

(declare-fun lt!1811099 () Unit!116275)

(declare-fun Unit!116583 () Unit!116275)

(assert (=> b!4646792 (= lt!1811099 Unit!116583)))

(declare-fun lt!1811095 () Unit!116275)

(declare-fun Unit!116584 () Unit!116275)

(assert (=> b!4646792 (= lt!1811095 Unit!116584)))

(declare-fun lt!1811094 () Unit!116275)

(assert (=> b!4646792 (= lt!1811094 (forallContained!3202 (toList!5182 lt!1811088) lambda!197706 (h!57980 (t!359070 (Cons!51850 lt!1810091 lt!1810088)))))))

(assert (=> b!4646792 (contains!14991 lt!1811088 (_1!29765 (h!57980 (t!359070 (Cons!51850 lt!1810091 lt!1810088)))))))

(declare-fun lt!1811102 () Unit!116275)

(declare-fun Unit!116585 () Unit!116275)

(assert (=> b!4646792 (= lt!1811102 Unit!116585)))

(assert (=> b!4646792 (contains!14991 lt!1811103 (_1!29765 (h!57980 (t!359070 (Cons!51850 lt!1810091 lt!1810088)))))))

(declare-fun lt!1811089 () Unit!116275)

(declare-fun Unit!116586 () Unit!116275)

(assert (=> b!4646792 (= lt!1811089 Unit!116586)))

(assert (=> b!4646792 (forall!10987 (t!359070 (Cons!51850 lt!1810091 lt!1810088)) lambda!197706)))

(declare-fun lt!1811106 () Unit!116275)

(declare-fun Unit!116587 () Unit!116275)

(assert (=> b!4646792 (= lt!1811106 Unit!116587)))

(declare-fun call!324510 () Bool)

(assert (=> b!4646792 call!324510))

(declare-fun lt!1811101 () Unit!116275)

(declare-fun Unit!116588 () Unit!116275)

(assert (=> b!4646792 (= lt!1811101 Unit!116588)))

(declare-fun lt!1811097 () Unit!116275)

(declare-fun Unit!116589 () Unit!116275)

(assert (=> b!4646792 (= lt!1811097 Unit!116589)))

(declare-fun lt!1811107 () Unit!116275)

(assert (=> b!4646792 (= lt!1811107 (addForallContainsKeyThenBeforeAdding!583 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1811103 (_1!29765 (h!57980 (t!359070 (Cons!51850 lt!1810091 lt!1810088)))) (_2!29765 (h!57980 (t!359070 (Cons!51850 lt!1810091 lt!1810088))))))))

(assert (=> b!4646792 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) lambda!197706)))

(declare-fun lt!1811098 () Unit!116275)

(assert (=> b!4646792 (= lt!1811098 lt!1811107)))

(assert (=> b!4646792 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) lambda!197706)))

(declare-fun lt!1811093 () Unit!116275)

(declare-fun Unit!116590 () Unit!116275)

(assert (=> b!4646792 (= lt!1811093 Unit!116590)))

(declare-fun res!1952481 () Bool)

(assert (=> b!4646792 (= res!1952481 (forall!10987 (t!359070 (Cons!51850 lt!1810091 lt!1810088)) lambda!197706))))

(declare-fun e!2898760 () Bool)

(assert (=> b!4646792 (=> (not res!1952481) (not e!2898760))))

(assert (=> b!4646792 e!2898760))

(declare-fun lt!1811105 () Unit!116275)

(declare-fun Unit!116591 () Unit!116275)

(assert (=> b!4646792 (= lt!1811105 Unit!116591)))

(declare-fun e!2898761 () Bool)

(assert (=> d!1465464 e!2898761))

(declare-fun res!1952482 () Bool)

(assert (=> d!1465464 (=> (not res!1952482) (not e!2898761))))

(assert (=> d!1465464 (= res!1952482 (forall!10987 (t!359070 (Cons!51850 lt!1810091 lt!1810088)) lambda!197708))))

(assert (=> d!1465464 (= lt!1811087 e!2898762)))

(declare-fun c!795138 () Bool)

(assert (=> d!1465464 (= c!795138 ((_ is Nil!51850) (t!359070 (Cons!51850 lt!1810091 lt!1810088))))))

(assert (=> d!1465464 (noDuplicateKeys!1624 (t!359070 (Cons!51850 lt!1810091 lt!1810088)))))

(assert (=> d!1465464 (= (addToMapMapFromBucket!1081 (t!359070 (Cons!51850 lt!1810091 lt!1810088)) (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) lt!1811087)))

(declare-fun b!4646793 () Bool)

(declare-fun res!1952480 () Bool)

(assert (=> b!4646793 (=> (not res!1952480) (not e!2898761))))

(assert (=> b!4646793 (= res!1952480 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) lambda!197708))))

(declare-fun bm!324504 () Bool)

(assert (=> bm!324504 (= call!324511 (forall!10987 (ite c!795138 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) (t!359070 (t!359070 (Cons!51850 lt!1810091 lt!1810088)))) (ite c!795138 lambda!197703 lambda!197706)))))

(assert (=> b!4646794 (= e!2898762 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))

(declare-fun lt!1811092 () Unit!116275)

(assert (=> b!4646794 (= lt!1811092 call!324509)))

(assert (=> b!4646794 call!324510))

(declare-fun lt!1811091 () Unit!116275)

(assert (=> b!4646794 (= lt!1811091 lt!1811092)))

(assert (=> b!4646794 call!324511))

(declare-fun lt!1811096 () Unit!116275)

(declare-fun Unit!116592 () Unit!116275)

(assert (=> b!4646794 (= lt!1811096 Unit!116592)))

(declare-fun bm!324505 () Bool)

(assert (=> bm!324505 (= call!324510 (forall!10987 (ite c!795138 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) (toList!5182 lt!1811088)) (ite c!795138 lambda!197703 lambda!197706)))))

(declare-fun b!4646795 () Bool)

(assert (=> b!4646795 (= e!2898761 (invariantList!1284 (toList!5182 lt!1811087)))))

(declare-fun b!4646796 () Bool)

(assert (=> b!4646796 (= e!2898760 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) lambda!197706))))

(declare-fun bm!324506 () Bool)

(assert (=> bm!324506 (= call!324509 (lemmaContainsAllItsOwnKeys!584 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(assert (= (and d!1465464 c!795138) b!4646794))

(assert (= (and d!1465464 (not c!795138)) b!4646792))

(assert (= (and b!4646792 res!1952481) b!4646796))

(assert (= (or b!4646794 b!4646792) bm!324506))

(assert (= (or b!4646794 b!4646792) bm!324504))

(assert (= (or b!4646794 b!4646792) bm!324505))

(assert (= (and d!1465464 res!1952482) b!4646793))

(assert (= (and b!4646793 res!1952480) b!4646795))

(declare-fun m!5513131 () Bool)

(assert (=> d!1465464 m!5513131))

(assert (=> d!1465464 m!5512053))

(declare-fun m!5513133 () Bool)

(assert (=> bm!324504 m!5513133))

(declare-fun m!5513135 () Bool)

(assert (=> b!4646796 m!5513135))

(assert (=> bm!324506 m!5511363))

(declare-fun m!5513137 () Bool)

(assert (=> bm!324506 m!5513137))

(declare-fun m!5513139 () Bool)

(assert (=> bm!324505 m!5513139))

(declare-fun m!5513141 () Bool)

(assert (=> b!4646795 m!5513141))

(declare-fun m!5513143 () Bool)

(assert (=> b!4646793 m!5513143))

(assert (=> b!4646792 m!5511363))

(declare-fun m!5513145 () Bool)

(assert (=> b!4646792 m!5513145))

(assert (=> b!4646792 m!5513135))

(declare-fun m!5513147 () Bool)

(assert (=> b!4646792 m!5513147))

(assert (=> b!4646792 m!5513147))

(declare-fun m!5513149 () Bool)

(assert (=> b!4646792 m!5513149))

(declare-fun m!5513151 () Bool)

(assert (=> b!4646792 m!5513151))

(declare-fun m!5513153 () Bool)

(assert (=> b!4646792 m!5513153))

(declare-fun m!5513155 () Bool)

(assert (=> b!4646792 m!5513155))

(assert (=> b!4646792 m!5511363))

(declare-fun m!5513157 () Bool)

(assert (=> b!4646792 m!5513157))

(assert (=> b!4646792 m!5513157))

(declare-fun m!5513159 () Bool)

(assert (=> b!4646792 m!5513159))

(assert (=> b!4646792 m!5513135))

(declare-fun m!5513161 () Bool)

(assert (=> b!4646792 m!5513161))

(assert (=> b!4646029 d!1465464))

(declare-fun b!4646817 () Bool)

(declare-fun e!2898774 () Unit!116275)

(declare-fun lt!1811147 () Unit!116275)

(assert (=> b!4646817 (= e!2898774 lt!1811147)))

(declare-fun lt!1811141 () Unit!116275)

(assert (=> b!4646817 (= lt!1811141 (lemmaContainsKeyImpliesGetValueByKeyDefined!1493 (toList!5182 lt!1810445) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(assert (=> b!4646817 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810445) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(declare-fun lt!1811140 () Unit!116275)

(assert (=> b!4646817 (= lt!1811140 lt!1811141)))

(assert (=> b!4646817 (= lt!1811147 (lemmaInListThenGetKeysListContains!729 (toList!5182 lt!1810445) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(declare-fun call!324519 () Bool)

(assert (=> b!4646817 call!324519))

(declare-fun b!4646818 () Bool)

(declare-fun e!2898777 () List!51976)

(assert (=> b!4646818 (= e!2898777 (keys!18351 lt!1810445))))

(declare-fun b!4646819 () Bool)

(assert (=> b!4646819 (= e!2898777 (getKeysList!734 (toList!5182 lt!1810445)))))

(declare-fun e!2898776 () Bool)

(declare-fun b!4646820 () Bool)

(assert (=> b!4646820 (= e!2898776 (not (contains!14992 (keys!18351 lt!1810445) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))))

(declare-fun b!4646821 () Bool)

(declare-fun e!2898778 () Bool)

(declare-fun e!2898775 () Bool)

(assert (=> b!4646821 (= e!2898778 e!2898775)))

(declare-fun res!1952490 () Bool)

(assert (=> b!4646821 (=> (not res!1952490) (not e!2898775))))

(assert (=> b!4646821 (= res!1952490 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810445) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))))

(declare-fun b!4646816 () Bool)

(assert (=> b!4646816 (= e!2898775 (contains!14992 (keys!18351 lt!1810445) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(declare-fun d!1465468 () Bool)

(assert (=> d!1465468 e!2898778))

(declare-fun res!1952491 () Bool)

(assert (=> d!1465468 (=> res!1952491 e!2898778)))

(assert (=> d!1465468 (= res!1952491 e!2898776)))

(declare-fun res!1952492 () Bool)

(assert (=> d!1465468 (=> (not res!1952492) (not e!2898776))))

(declare-fun lt!1811142 () Bool)

(assert (=> d!1465468 (= res!1952492 (not lt!1811142))))

(declare-fun lt!1811146 () Bool)

(assert (=> d!1465468 (= lt!1811142 lt!1811146)))

(declare-fun lt!1811144 () Unit!116275)

(assert (=> d!1465468 (= lt!1811144 e!2898774)))

(declare-fun c!795146 () Bool)

(assert (=> d!1465468 (= c!795146 lt!1811146)))

(assert (=> d!1465468 (= lt!1811146 (containsKey!2691 (toList!5182 lt!1810445) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(assert (=> d!1465468 (= (contains!14991 lt!1810445 (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) lt!1811142)))

(declare-fun b!4646822 () Bool)

(declare-fun e!2898773 () Unit!116275)

(assert (=> b!4646822 (= e!2898774 e!2898773)))

(declare-fun c!795147 () Bool)

(assert (=> b!4646822 (= c!795147 call!324519)))

(declare-fun b!4646823 () Bool)

(declare-fun Unit!116593 () Unit!116275)

(assert (=> b!4646823 (= e!2898773 Unit!116593)))

(declare-fun bm!324514 () Bool)

(assert (=> bm!324514 (= call!324519 (contains!14992 e!2898777 (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(declare-fun c!795145 () Bool)

(assert (=> bm!324514 (= c!795145 c!795146)))

(declare-fun b!4646824 () Bool)

(assert (=> b!4646824 false))

(declare-fun lt!1811145 () Unit!116275)

(declare-fun lt!1811143 () Unit!116275)

(assert (=> b!4646824 (= lt!1811145 lt!1811143)))

(assert (=> b!4646824 (containsKey!2691 (toList!5182 lt!1810445) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))

(assert (=> b!4646824 (= lt!1811143 (lemmaInGetKeysListThenContainsKey!733 (toList!5182 lt!1810445) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(declare-fun Unit!116594 () Unit!116275)

(assert (=> b!4646824 (= e!2898773 Unit!116594)))

(assert (= (and d!1465468 c!795146) b!4646817))

(assert (= (and d!1465468 (not c!795146)) b!4646822))

(assert (= (and b!4646822 c!795147) b!4646824))

(assert (= (and b!4646822 (not c!795147)) b!4646823))

(assert (= (or b!4646817 b!4646822) bm!324514))

(assert (= (and bm!324514 c!795145) b!4646819))

(assert (= (and bm!324514 (not c!795145)) b!4646818))

(assert (= (and d!1465468 res!1952492) b!4646820))

(assert (= (and d!1465468 (not res!1952491)) b!4646821))

(assert (= (and b!4646821 res!1952490) b!4646816))

(declare-fun m!5513163 () Bool)

(assert (=> b!4646824 m!5513163))

(declare-fun m!5513165 () Bool)

(assert (=> b!4646824 m!5513165))

(declare-fun m!5513167 () Bool)

(assert (=> bm!324514 m!5513167))

(declare-fun m!5513169 () Bool)

(assert (=> b!4646821 m!5513169))

(assert (=> b!4646821 m!5513169))

(declare-fun m!5513171 () Bool)

(assert (=> b!4646821 m!5513171))

(declare-fun m!5513173 () Bool)

(assert (=> b!4646816 m!5513173))

(assert (=> b!4646816 m!5513173))

(declare-fun m!5513175 () Bool)

(assert (=> b!4646816 m!5513175))

(declare-fun m!5513177 () Bool)

(assert (=> b!4646819 m!5513177))

(assert (=> b!4646818 m!5513173))

(assert (=> b!4646820 m!5513173))

(assert (=> b!4646820 m!5513173))

(assert (=> b!4646820 m!5513175))

(assert (=> d!1465468 m!5513163))

(declare-fun m!5513179 () Bool)

(assert (=> b!4646817 m!5513179))

(assert (=> b!4646817 m!5513169))

(assert (=> b!4646817 m!5513169))

(assert (=> b!4646817 m!5513171))

(declare-fun m!5513181 () Bool)

(assert (=> b!4646817 m!5513181))

(assert (=> b!4646029 d!1465468))

(declare-fun d!1465470 () Bool)

(declare-fun res!1952493 () Bool)

(declare-fun e!2898779 () Bool)

(assert (=> d!1465470 (=> res!1952493 e!2898779)))

(assert (=> d!1465470 (= res!1952493 ((_ is Nil!51850) (toList!5182 lt!1810430)))))

(assert (=> d!1465470 (= (forall!10987 (toList!5182 lt!1810430) lambda!197597) e!2898779)))

(declare-fun b!4646825 () Bool)

(declare-fun e!2898780 () Bool)

(assert (=> b!4646825 (= e!2898779 e!2898780)))

(declare-fun res!1952494 () Bool)

(assert (=> b!4646825 (=> (not res!1952494) (not e!2898780))))

(assert (=> b!4646825 (= res!1952494 (dynLambda!21559 lambda!197597 (h!57980 (toList!5182 lt!1810430))))))

(declare-fun b!4646826 () Bool)

(assert (=> b!4646826 (= e!2898780 (forall!10987 (t!359070 (toList!5182 lt!1810430)) lambda!197597))))

(assert (= (and d!1465470 (not res!1952493)) b!4646825))

(assert (= (and b!4646825 res!1952494) b!4646826))

(declare-fun b_lambda!171285 () Bool)

(assert (=> (not b_lambda!171285) (not b!4646825)))

(declare-fun m!5513183 () Bool)

(assert (=> b!4646825 m!5513183))

(declare-fun m!5513185 () Bool)

(assert (=> b!4646826 m!5513185))

(assert (=> b!4646029 d!1465470))

(declare-fun b!4646828 () Bool)

(declare-fun e!2898782 () Unit!116275)

(declare-fun lt!1811155 () Unit!116275)

(assert (=> b!4646828 (= e!2898782 lt!1811155)))

(declare-fun lt!1811149 () Unit!116275)

(assert (=> b!4646828 (= lt!1811149 (lemmaContainsKeyImpliesGetValueByKeyDefined!1493 (toList!5182 lt!1810430) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(assert (=> b!4646828 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810430) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(declare-fun lt!1811148 () Unit!116275)

(assert (=> b!4646828 (= lt!1811148 lt!1811149)))

(assert (=> b!4646828 (= lt!1811155 (lemmaInListThenGetKeysListContains!729 (toList!5182 lt!1810430) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(declare-fun call!324520 () Bool)

(assert (=> b!4646828 call!324520))

(declare-fun b!4646829 () Bool)

(declare-fun e!2898785 () List!51976)

(assert (=> b!4646829 (= e!2898785 (keys!18351 lt!1810430))))

(declare-fun b!4646830 () Bool)

(assert (=> b!4646830 (= e!2898785 (getKeysList!734 (toList!5182 lt!1810430)))))

(declare-fun b!4646831 () Bool)

(declare-fun e!2898784 () Bool)

(assert (=> b!4646831 (= e!2898784 (not (contains!14992 (keys!18351 lt!1810430) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))))

(declare-fun b!4646832 () Bool)

(declare-fun e!2898786 () Bool)

(declare-fun e!2898783 () Bool)

(assert (=> b!4646832 (= e!2898786 e!2898783)))

(declare-fun res!1952495 () Bool)

(assert (=> b!4646832 (=> (not res!1952495) (not e!2898783))))

(assert (=> b!4646832 (= res!1952495 (isDefined!9068 (getValueByKey!1591 (toList!5182 lt!1810430) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))))

(declare-fun b!4646827 () Bool)

(assert (=> b!4646827 (= e!2898783 (contains!14992 (keys!18351 lt!1810430) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(declare-fun d!1465472 () Bool)

(assert (=> d!1465472 e!2898786))

(declare-fun res!1952496 () Bool)

(assert (=> d!1465472 (=> res!1952496 e!2898786)))

(assert (=> d!1465472 (= res!1952496 e!2898784)))

(declare-fun res!1952497 () Bool)

(assert (=> d!1465472 (=> (not res!1952497) (not e!2898784))))

(declare-fun lt!1811150 () Bool)

(assert (=> d!1465472 (= res!1952497 (not lt!1811150))))

(declare-fun lt!1811154 () Bool)

(assert (=> d!1465472 (= lt!1811150 lt!1811154)))

(declare-fun lt!1811152 () Unit!116275)

(assert (=> d!1465472 (= lt!1811152 e!2898782)))

(declare-fun c!795149 () Bool)

(assert (=> d!1465472 (= c!795149 lt!1811154)))

(assert (=> d!1465472 (= lt!1811154 (containsKey!2691 (toList!5182 lt!1810430) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(assert (=> d!1465472 (= (contains!14991 lt!1810430 (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) lt!1811150)))

(declare-fun b!4646833 () Bool)

(declare-fun e!2898781 () Unit!116275)

(assert (=> b!4646833 (= e!2898782 e!2898781)))

(declare-fun c!795150 () Bool)

(assert (=> b!4646833 (= c!795150 call!324520)))

(declare-fun b!4646834 () Bool)

(declare-fun Unit!116602 () Unit!116275)

(assert (=> b!4646834 (= e!2898781 Unit!116602)))

(declare-fun bm!324515 () Bool)

(assert (=> bm!324515 (= call!324520 (contains!14992 e!2898785 (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(declare-fun c!795148 () Bool)

(assert (=> bm!324515 (= c!795148 c!795149)))

(declare-fun b!4646835 () Bool)

(assert (=> b!4646835 false))

(declare-fun lt!1811153 () Unit!116275)

(declare-fun lt!1811151 () Unit!116275)

(assert (=> b!4646835 (= lt!1811153 lt!1811151)))

(assert (=> b!4646835 (containsKey!2691 (toList!5182 lt!1810430) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))

(assert (=> b!4646835 (= lt!1811151 (lemmaInGetKeysListThenContainsKey!733 (toList!5182 lt!1810430) (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(declare-fun Unit!116605 () Unit!116275)

(assert (=> b!4646835 (= e!2898781 Unit!116605)))

(assert (= (and d!1465472 c!795149) b!4646828))

(assert (= (and d!1465472 (not c!795149)) b!4646833))

(assert (= (and b!4646833 c!795150) b!4646835))

(assert (= (and b!4646833 (not c!795150)) b!4646834))

(assert (= (or b!4646828 b!4646833) bm!324515))

(assert (= (and bm!324515 c!795148) b!4646830))

(assert (= (and bm!324515 (not c!795148)) b!4646829))

(assert (= (and d!1465472 res!1952497) b!4646831))

(assert (= (and d!1465472 (not res!1952496)) b!4646832))

(assert (= (and b!4646832 res!1952495) b!4646827))

(declare-fun m!5513187 () Bool)

(assert (=> b!4646835 m!5513187))

(declare-fun m!5513189 () Bool)

(assert (=> b!4646835 m!5513189))

(declare-fun m!5513191 () Bool)

(assert (=> bm!324515 m!5513191))

(declare-fun m!5513193 () Bool)

(assert (=> b!4646832 m!5513193))

(assert (=> b!4646832 m!5513193))

(declare-fun m!5513195 () Bool)

(assert (=> b!4646832 m!5513195))

(declare-fun m!5513197 () Bool)

(assert (=> b!4646827 m!5513197))

(assert (=> b!4646827 m!5513197))

(declare-fun m!5513199 () Bool)

(assert (=> b!4646827 m!5513199))

(declare-fun m!5513201 () Bool)

(assert (=> b!4646830 m!5513201))

(assert (=> b!4646829 m!5513197))

(assert (=> b!4646831 m!5513197))

(assert (=> b!4646831 m!5513197))

(assert (=> b!4646831 m!5513199))

(assert (=> d!1465472 m!5513187))

(declare-fun m!5513203 () Bool)

(assert (=> b!4646828 m!5513203))

(assert (=> b!4646828 m!5513193))

(assert (=> b!4646828 m!5513193))

(assert (=> b!4646828 m!5513195))

(declare-fun m!5513205 () Bool)

(assert (=> b!4646828 m!5513205))

(assert (=> b!4646029 d!1465472))

(declare-fun d!1465474 () Bool)

(declare-fun res!1952498 () Bool)

(declare-fun e!2898787 () Bool)

(assert (=> d!1465474 (=> res!1952498 e!2898787)))

(assert (=> d!1465474 (= res!1952498 ((_ is Nil!51850) (Cons!51850 lt!1810091 lt!1810088)))))

(assert (=> d!1465474 (= (forall!10987 (Cons!51850 lt!1810091 lt!1810088) lambda!197597) e!2898787)))

(declare-fun b!4646836 () Bool)

(declare-fun e!2898788 () Bool)

(assert (=> b!4646836 (= e!2898787 e!2898788)))

(declare-fun res!1952499 () Bool)

(assert (=> b!4646836 (=> (not res!1952499) (not e!2898788))))

(assert (=> b!4646836 (= res!1952499 (dynLambda!21559 lambda!197597 (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))

(declare-fun b!4646837 () Bool)

(assert (=> b!4646837 (= e!2898788 (forall!10987 (t!359070 (Cons!51850 lt!1810091 lt!1810088)) lambda!197597))))

(assert (= (and d!1465474 (not res!1952498)) b!4646836))

(assert (= (and b!4646836 res!1952499) b!4646837))

(declare-fun b_lambda!171287 () Bool)

(assert (=> (not b_lambda!171287) (not b!4646836)))

(declare-fun m!5513219 () Bool)

(assert (=> b!4646836 m!5513219))

(declare-fun m!5513223 () Bool)

(assert (=> b!4646837 m!5513223))

(assert (=> b!4646029 d!1465474))

(declare-fun d!1465476 () Bool)

(assert (=> d!1465476 (dynLambda!21559 lambda!197597 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))

(declare-fun lt!1811156 () Unit!116275)

(assert (=> d!1465476 (= lt!1811156 (choose!31901 (toList!5182 lt!1810430) lambda!197597 (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))

(declare-fun e!2898789 () Bool)

(assert (=> d!1465476 e!2898789))

(declare-fun res!1952500 () Bool)

(assert (=> d!1465476 (=> (not res!1952500) (not e!2898789))))

(assert (=> d!1465476 (= res!1952500 (forall!10987 (toList!5182 lt!1810430) lambda!197597))))

(assert (=> d!1465476 (= (forallContained!3202 (toList!5182 lt!1810430) lambda!197597 (h!57980 (Cons!51850 lt!1810091 lt!1810088))) lt!1811156)))

(declare-fun b!4646838 () Bool)

(assert (=> b!4646838 (= e!2898789 (contains!14995 (toList!5182 lt!1810430) (h!57980 (Cons!51850 lt!1810091 lt!1810088))))))

(assert (= (and d!1465476 res!1952500) b!4646838))

(declare-fun b_lambda!171289 () Bool)

(assert (=> (not b_lambda!171289) (not d!1465476)))

(assert (=> d!1465476 m!5513219))

(declare-fun m!5513239 () Bool)

(assert (=> d!1465476 m!5513239))

(assert (=> d!1465476 m!5511361))

(declare-fun m!5513243 () Bool)

(assert (=> b!4646838 m!5513243))

(assert (=> b!4646029 d!1465476))

(declare-fun bs!1038213 () Bool)

(declare-fun d!1465478 () Bool)

(assert (= bs!1038213 (and d!1465478 b!4645912)))

(declare-fun lambda!197711 () Int)

(assert (=> bs!1038213 (= (= lt!1810445 lt!1810089) (= lambda!197711 lambda!197562))))

(declare-fun bs!1038215 () Bool)

(assert (= bs!1038215 (and d!1465478 b!4645990)))

(assert (=> bs!1038215 (= (= lt!1810445 lt!1810377) (= lambda!197711 lambda!197582))))

(declare-fun bs!1038217 () Bool)

(assert (= bs!1038217 (and d!1465478 b!4646034)))

(assert (=> bs!1038217 (= (= lt!1810445 lt!1810466) (= lambda!197711 lambda!197601))))

(declare-fun bs!1038219 () Bool)

(assert (= bs!1038219 (and d!1465478 b!4645910)))

(assert (=> bs!1038219 (= (= lt!1810445 lt!1810089) (= lambda!197711 lambda!197563))))

(declare-fun bs!1038221 () Bool)

(assert (= bs!1038221 (and d!1465478 b!4645992)))

(assert (=> bs!1038221 (= (= lt!1810445 (ListMap!4518 Nil!51850)) (= lambda!197711 lambda!197579))))

(declare-fun bs!1038223 () Bool)

(assert (= bs!1038223 (and d!1465478 b!4646191)))

(assert (=> bs!1038223 (= (= lt!1810445 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197711 lambda!197614))))

(declare-fun bs!1038225 () Bool)

(assert (= bs!1038225 (and d!1465478 d!1465436)))

(assert (=> bs!1038225 (= (= lt!1810445 lt!1810419) (= lambda!197711 lambda!197702))))

(declare-fun bs!1038226 () Bool)

(assert (= bs!1038226 (and d!1465478 b!4646000)))

(assert (=> bs!1038226 (= (= lt!1810445 (ListMap!4518 Nil!51850)) (= lambda!197711 lambda!197587))))

(declare-fun bs!1038227 () Bool)

(assert (= bs!1038227 (and d!1465478 b!4646636)))

(assert (=> bs!1038227 (= (= lt!1810445 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197711 lambda!197687))))

(declare-fun bs!1038228 () Bool)

(assert (= bs!1038228 (and d!1465478 b!4646002)))

(assert (=> bs!1038228 (= (= lt!1810445 (ListMap!4518 Nil!51850)) (= lambda!197711 lambda!197586))))

(declare-fun bs!1038229 () Bool)

(assert (= bs!1038229 (and d!1465478 d!1464922)))

(assert (=> bs!1038229 (not (= lambda!197711 lambda!197489))))

(declare-fun bs!1038230 () Bool)

(assert (= bs!1038230 (and d!1465478 d!1464982)))

(assert (=> bs!1038230 (= (= lt!1810445 lt!1810361) (= lambda!197711 lambda!197583))))

(declare-fun bs!1038231 () Bool)

(assert (= bs!1038231 (and d!1465478 b!4646029)))

(assert (=> bs!1038231 (= lambda!197711 lambda!197597)))

(declare-fun bs!1038232 () Bool)

(assert (= bs!1038232 (and d!1465478 b!4646794)))

(assert (=> bs!1038232 (= (= lt!1810445 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) (= lambda!197711 lambda!197703))))

(assert (=> bs!1038215 (= (= lt!1810445 (ListMap!4518 Nil!51850)) (= lambda!197711 lambda!197581))))

(declare-fun bs!1038233 () Bool)

(assert (= bs!1038233 (and d!1465478 b!4646031)))

(assert (=> bs!1038233 (= (= lt!1810445 (ListMap!4518 Nil!51850)) (= lambda!197711 lambda!197595))))

(declare-fun bs!1038234 () Bool)

(assert (= bs!1038234 (and d!1465478 d!1465106)))

(assert (=> bs!1038234 (= (= lt!1810445 lt!1810377) (= lambda!197711 lambda!197612))))

(assert (=> bs!1038217 (= (= lt!1810445 (ListMap!4518 Nil!51850)) (= lambda!197711 lambda!197600))))

(declare-fun bs!1038235 () Bool)

(assert (= bs!1038235 (and d!1465478 b!4646792)))

(assert (=> bs!1038235 (= (= lt!1810445 (+!1968 (ListMap!4518 Nil!51850) (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) (= lambda!197711 lambda!197704))))

(declare-fun bs!1038236 () Bool)

(assert (= bs!1038236 (and d!1465478 b!4646516)))

(assert (=> bs!1038236 (= (= lt!1810445 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197711 lambda!197664))))

(assert (=> bs!1038226 (= (= lt!1810445 lt!1810419) (= lambda!197711 lambda!197589))))

(declare-fun bs!1038237 () Bool)

(assert (= bs!1038237 (and d!1465478 d!1465368)))

(assert (=> bs!1038237 (= (= lt!1810445 lt!1810939) (= lambda!197711 lambda!197693))))

(declare-fun bs!1038238 () Bool)

(assert (= bs!1038238 (and d!1465478 b!4646558)))

(assert (=> bs!1038238 (= (= lt!1810445 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197711 lambda!197671))))

(declare-fun bs!1038239 () Bool)

(assert (= bs!1038239 (and d!1465478 d!1465222)))

(assert (=> bs!1038239 (= (= lt!1810445 (ListMap!4518 Nil!51850)) (= lambda!197711 lambda!197660))))

(declare-fun bs!1038240 () Bool)

(assert (= bs!1038240 (and d!1465478 d!1464936)))

(assert (=> bs!1038240 (= (= lt!1810445 lt!1810261) (= lambda!197711 lambda!197565))))

(assert (=> bs!1038235 (= (= lt!1810445 lt!1811103) (= lambda!197711 lambda!197706))))

(declare-fun bs!1038241 () Bool)

(assert (= bs!1038241 (and d!1465478 d!1464988)))

(assert (=> bs!1038241 (= (= lt!1810445 lt!1810403) (= lambda!197711 lambda!197591))))

(declare-fun bs!1038242 () Bool)

(assert (= bs!1038242 (and d!1465478 b!4646634)))

(assert (=> bs!1038242 (= (= lt!1810445 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))) (= lambda!197711 lambda!197689))))

(declare-fun bs!1038243 () Bool)

(assert (= bs!1038243 (and d!1465478 d!1465324)))

(assert (=> bs!1038243 (= (= lt!1810445 lt!1810863) (= lambda!197711 lambda!197681))))

(declare-fun bs!1038244 () Bool)

(assert (= bs!1038244 (and d!1465478 d!1465192)))

(assert (=> bs!1038244 (= (= lt!1810445 lt!1810716) (= lambda!197711 lambda!197654))))

(declare-fun bs!1038245 () Bool)

(assert (= bs!1038245 (and d!1465478 b!4646397)))

(assert (=> bs!1038245 (= (= lt!1810445 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197711 lambda!197650))))

(declare-fun bs!1038246 () Bool)

(assert (= bs!1038246 (and d!1465478 b!4646556)))

(assert (=> bs!1038246 (= (= lt!1810445 (extractMap!1680 (t!359071 lt!1810086))) (= lambda!197711 lambda!197673))))

(assert (=> bs!1038223 (= (= lt!1810445 lt!1810584) (= lambda!197711 lambda!197615))))

(declare-fun bs!1038247 () Bool)

(assert (= bs!1038247 (and d!1465478 d!1465288)))

(assert (=> bs!1038247 (= (= lt!1810445 lt!1810277) (= lambda!197711 lambda!197662))))

(declare-fun bs!1038248 () Bool)

(assert (= bs!1038248 (and d!1465478 d!1465416)))

(assert (=> bs!1038248 (= (= lt!1810445 lt!1811001) (= lambda!197711 lambda!197701))))

(declare-fun bs!1038249 () Bool)

(assert (= bs!1038249 (and d!1465478 d!1465300)))

(assert (=> bs!1038249 (= (= lt!1810445 lt!1810799) (= lambda!197711 lambda!197667))))

(declare-fun bs!1038250 () Bool)

(assert (= bs!1038250 (and d!1465478 b!4646518)))

(assert (=> bs!1038250 (= (= lt!1810445 (+!1968 lt!1810089 (h!57980 oldBucket!40))) (= lambda!197711 lambda!197663))))

(declare-fun bs!1038251 () Bool)

(assert (= bs!1038251 (and d!1465478 b!4646697)))

(assert (=> bs!1038251 (= (= lt!1810445 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197711 lambda!197697))))

(declare-fun bs!1038252 () Bool)

(assert (= bs!1038252 (and d!1465478 d!1465044)))

(assert (=> bs!1038252 (= (= lt!1810445 lt!1810516) (= lambda!197711 lambda!197611))))

(declare-fun bs!1038253 () Bool)

(assert (= bs!1038253 (and d!1465478 b!4646695)))

(assert (=> bs!1038253 (= (= lt!1810445 (+!1968 (ListMap!4518 Nil!51850) (h!57980 lt!1810088))) (= lambda!197711 lambda!197699))))

(assert (=> bs!1038231 (= (= lt!1810445 (ListMap!4518 Nil!51850)) (= lambda!197711 lambda!197596))))

(declare-fun bs!1038255 () Bool)

(assert (= bs!1038255 (and d!1465478 b!4646095)))

(assert (=> bs!1038255 (= (= lt!1810445 lt!1810532) (= lambda!197711 lambda!197610))))

(assert (=> bs!1038246 (= (= lt!1810445 lt!1810879) (= lambda!197711 lambda!197674))))

(assert (=> bs!1038242 (= (= lt!1810445 lt!1810955) (= lambda!197711 lambda!197690))))

(declare-fun bs!1038256 () Bool)

(assert (= bs!1038256 (and d!1465478 d!1465112)))

(assert (=> bs!1038256 (= (= lt!1810445 lt!1810568) (= lambda!197711 lambda!197616))))

(declare-fun bs!1038257 () Bool)

(assert (= bs!1038257 (and d!1465478 d!1465464)))

(assert (=> bs!1038257 (= (= lt!1810445 lt!1811087) (= lambda!197711 lambda!197708))))

(declare-fun bs!1038258 () Bool)

(assert (= bs!1038258 (and d!1465478 d!1465038)))

(assert (=> bs!1038258 (= (= lt!1810445 lt!1810466) (= lambda!197711 lambda!197607))))

(assert (=> bs!1038253 (= (= lt!1810445 lt!1811017) (= lambda!197711 lambda!197700))))

(declare-fun bs!1038259 () Bool)

(assert (= bs!1038259 (and d!1465478 b!4646399)))

(assert (=> bs!1038259 (= (= lt!1810445 (extractMap!1680 (t!359071 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))) (= lambda!197711 lambda!197648))))

(assert (=> bs!1038245 (= (= lt!1810445 lt!1810732) (= lambda!197711 lambda!197652))))

(declare-fun bs!1038260 () Bool)

(assert (= bs!1038260 (and d!1465478 d!1465004)))

(assert (=> bs!1038260 (= (= lt!1810445 lt!1810429) (= lambda!197711 lambda!197598))))

(assert (=> bs!1038255 (= (= lt!1810445 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197711 lambda!197609))))

(assert (=> bs!1038236 (= (= lt!1810445 lt!1810815) (= lambda!197711 lambda!197665))))

(declare-fun bs!1038261 () Bool)

(assert (= bs!1038261 (and d!1465478 d!1465208)))

(assert (=> bs!1038261 (= (= lt!1810445 lt!1810089) (= lambda!197711 lambda!197659))))

(declare-fun bs!1038262 () Bool)

(assert (= bs!1038262 (and d!1465478 b!4646097)))

(assert (=> bs!1038262 (= (= lt!1810445 (+!1968 (ListMap!4518 Nil!51850) (h!57980 oldBucket!40))) (= lambda!197711 lambda!197608))))

(declare-fun bs!1038263 () Bool)

(assert (= bs!1038263 (and d!1465478 d!1464926)))

(assert (=> bs!1038263 (not (= lambda!197711 lambda!197490))))

(declare-fun bs!1038264 () Bool)

(assert (= bs!1038264 (and d!1465478 d!1465008)))

(assert (=> bs!1038264 (= (= lt!1810445 lt!1810450) (= lambda!197711 lambda!197602))))

(declare-fun bs!1038265 () Bool)

(assert (= bs!1038265 (and d!1465478 b!4646193)))

(assert (=> bs!1038265 (= (= lt!1810445 (+!1968 (ListMap!4518 Nil!51850) (h!57980 newBucket!224))) (= lambda!197711 lambda!197613))))

(assert (=> bs!1038219 (= (= lt!1810445 lt!1810277) (= lambda!197711 lambda!197564))))

(declare-fun bs!1038266 () Bool)

(assert (= bs!1038266 (and d!1465478 b!4646036)))

(assert (=> bs!1038266 (= (= lt!1810445 (ListMap!4518 Nil!51850)) (= lambda!197711 lambda!197599))))

(assert (=> d!1465478 true))

(assert (=> d!1465478 (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197711)))

(declare-fun lt!1811157 () Unit!116275)

(assert (=> d!1465478 (= lt!1811157 (choose!31902 (ListMap!4518 Nil!51850) lt!1810445 (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (_2!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(assert (=> d!1465478 (forall!10987 (toList!5182 (+!1968 (ListMap!4518 Nil!51850) (tuple2!52943 (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (_2!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))) lambda!197711)))

(assert (=> d!1465478 (= (addForallContainsKeyThenBeforeAdding!583 (ListMap!4518 Nil!51850) lt!1810445 (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (_2!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))) lt!1811157)))

(declare-fun bs!1038267 () Bool)

(assert (= bs!1038267 d!1465478))

(declare-fun m!5513281 () Bool)

(assert (=> bs!1038267 m!5513281))

(declare-fun m!5513283 () Bool)

(assert (=> bs!1038267 m!5513283))

(declare-fun m!5513285 () Bool)

(assert (=> bs!1038267 m!5513285))

(declare-fun m!5513287 () Bool)

(assert (=> bs!1038267 m!5513287))

(assert (=> b!4646029 d!1465478))

(declare-fun d!1465498 () Bool)

(declare-fun res!1952513 () Bool)

(declare-fun e!2898805 () Bool)

(assert (=> d!1465498 (=> res!1952513 e!2898805)))

(assert (=> d!1465498 (= res!1952513 ((_ is Nil!51850) (toList!5182 (ListMap!4518 Nil!51850))))))

(assert (=> d!1465498 (= (forall!10987 (toList!5182 (ListMap!4518 Nil!51850)) lambda!197596) e!2898805)))

(declare-fun b!4646857 () Bool)

(declare-fun e!2898806 () Bool)

(assert (=> b!4646857 (= e!2898805 e!2898806)))

(declare-fun res!1952514 () Bool)

(assert (=> b!4646857 (=> (not res!1952514) (not e!2898806))))

(assert (=> b!4646857 (= res!1952514 (dynLambda!21559 lambda!197596 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))))))

(declare-fun b!4646858 () Bool)

(assert (=> b!4646858 (= e!2898806 (forall!10987 (t!359070 (toList!5182 (ListMap!4518 Nil!51850))) lambda!197596))))

(assert (= (and d!1465498 (not res!1952513)) b!4646857))

(assert (= (and b!4646857 res!1952514) b!4646858))

(declare-fun b_lambda!171299 () Bool)

(assert (=> (not b_lambda!171299) (not b!4646857)))

(declare-fun m!5513289 () Bool)

(assert (=> b!4646857 m!5513289))

(declare-fun m!5513291 () Bool)

(assert (=> b!4646858 m!5513291))

(assert (=> b!4646029 d!1465498))

(declare-fun d!1465500 () Bool)

(declare-fun res!1952515 () Bool)

(declare-fun e!2898807 () Bool)

(assert (=> d!1465500 (=> res!1952515 e!2898807)))

(assert (=> d!1465500 (= res!1952515 ((_ is Nil!51850) (ite c!794989 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 (Cons!51850 lt!1810091 lt!1810088)))))))

(assert (=> d!1465500 (= (forall!10987 (ite c!794989 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 (Cons!51850 lt!1810091 lt!1810088))) (ite c!794989 lambda!197595 lambda!197597)) e!2898807)))

(declare-fun b!4646859 () Bool)

(declare-fun e!2898808 () Bool)

(assert (=> b!4646859 (= e!2898807 e!2898808)))

(declare-fun res!1952516 () Bool)

(assert (=> b!4646859 (=> (not res!1952516) (not e!2898808))))

(assert (=> b!4646859 (= res!1952516 (dynLambda!21559 (ite c!794989 lambda!197595 lambda!197597) (h!57980 (ite c!794989 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 (Cons!51850 lt!1810091 lt!1810088))))))))

(declare-fun b!4646860 () Bool)

(assert (=> b!4646860 (= e!2898808 (forall!10987 (t!359070 (ite c!794989 (toList!5182 (ListMap!4518 Nil!51850)) (t!359070 (Cons!51850 lt!1810091 lt!1810088)))) (ite c!794989 lambda!197595 lambda!197597)))))

(assert (= (and d!1465500 (not res!1952515)) b!4646859))

(assert (= (and b!4646859 res!1952516) b!4646860))

(declare-fun b_lambda!171301 () Bool)

(assert (=> (not b_lambda!171301) (not b!4646859)))

(declare-fun m!5513323 () Bool)

(assert (=> b!4646859 m!5513323))

(declare-fun m!5513325 () Bool)

(assert (=> b!4646860 m!5513325))

(assert (=> bm!324421 d!1465500))

(declare-fun d!1465510 () Bool)

(assert (=> d!1465510 (= (invariantList!1284 (toList!5182 lt!1810450)) (noDuplicatedKeys!342 (toList!5182 lt!1810450)))))

(declare-fun bs!1038269 () Bool)

(assert (= bs!1038269 d!1465510))

(declare-fun m!5513327 () Bool)

(assert (=> bs!1038269 m!5513327))

(assert (=> b!4646037 d!1465510))

(declare-fun e!2898819 () Bool)

(declare-fun b!4646874 () Bool)

(declare-fun tp!1343144 () Bool)

(assert (=> b!4646874 (= e!2898819 (and tp_is_empty!29789 tp_is_empty!29791 tp!1343144))))

(assert (=> b!4646054 (= tp!1343143 e!2898819)))

(assert (= (and b!4646054 ((_ is Cons!51850) (t!359070 (t!359070 oldBucket!40)))) b!4646874))

(declare-fun b!4646875 () Bool)

(declare-fun e!2898820 () Bool)

(declare-fun tp!1343145 () Bool)

(assert (=> b!4646875 (= e!2898820 (and tp_is_empty!29789 tp_is_empty!29791 tp!1343145))))

(assert (=> b!4646053 (= tp!1343142 e!2898820)))

(assert (= (and b!4646053 ((_ is Cons!51850) (t!359070 (t!359070 newBucket!224)))) b!4646875))

(declare-fun b_lambda!171307 () Bool)

(assert (= b_lambda!171135 (or b!4646000 b_lambda!171307)))

(declare-fun bs!1038286 () Bool)

(declare-fun d!1465514 () Bool)

(assert (= bs!1038286 (and d!1465514 b!4646000)))

(assert (=> bs!1038286 (= (dynLambda!21559 lambda!197589 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))) (contains!14991 lt!1810419 (_1!29765 (h!57980 (toList!5182 (ListMap!4518 Nil!51850))))))))

(declare-fun m!5513333 () Bool)

(assert (=> bs!1038286 m!5513333))

(assert (=> b!4646134 d!1465514))

(declare-fun b_lambda!171309 () Bool)

(assert (= b_lambda!171195 (or d!1464922 b_lambda!171309)))

(declare-fun bs!1038288 () Bool)

(declare-fun d!1465516 () Bool)

(assert (= bs!1038288 (and d!1465516 d!1464922)))

(assert (=> bs!1038288 (= (dynLambda!21559 lambda!197489 (h!57980 newBucket!224)) (= (hash!3747 hashF!1389 (_1!29765 (h!57980 newBucket!224))) hash!414))))

(declare-fun m!5513335 () Bool)

(assert (=> bs!1038288 m!5513335))

(assert (=> b!4646439 d!1465516))

(declare-fun b_lambda!171311 () Bool)

(assert (= b_lambda!171219 (or b!4645910 b_lambda!171311)))

(declare-fun bs!1038290 () Bool)

(declare-fun d!1465518 () Bool)

(assert (= bs!1038290 (and d!1465518 b!4645910)))

(assert (=> bs!1038290 (= (dynLambda!21559 lambda!197564 (h!57980 oldBucket!40)) (contains!14991 lt!1810277 (_1!29765 (h!57980 oldBucket!40))))))

(assert (=> bs!1038290 m!5511067))

(assert (=> d!1465282 d!1465518))

(declare-fun b_lambda!171313 () Bool)

(assert (= b_lambda!171161 (or d!1465000 b_lambda!171313)))

(declare-fun bs!1038293 () Bool)

(declare-fun d!1465520 () Bool)

(assert (= bs!1038293 (and d!1465520 d!1465000)))

(assert (=> bs!1038293 (= (dynLambda!21562 lambda!197594 (h!57981 lt!1810086)) (noDuplicateKeys!1624 (_2!29766 (h!57981 lt!1810086))))))

(assert (=> bs!1038293 m!5512539))

(assert (=> b!4646234 d!1465520))

(declare-fun b_lambda!171315 () Bool)

(assert (= b_lambda!171269 (or b!4646000 b_lambda!171315)))

(declare-fun bs!1038295 () Bool)

(declare-fun d!1465522 () Bool)

(assert (= bs!1038295 (and d!1465522 b!4646000)))

(assert (=> bs!1038295 (= (dynLambda!21559 lambda!197587 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))) (contains!14991 (ListMap!4518 Nil!51850) (_1!29765 (h!57980 (toList!5182 (ListMap!4518 Nil!51850))))))))

(declare-fun m!5513337 () Bool)

(assert (=> bs!1038295 m!5513337))

(assert (=> b!4646723 d!1465522))

(declare-fun b_lambda!171317 () Bool)

(assert (= b_lambda!171241 (or d!1464936 b_lambda!171317)))

(declare-fun bs!1038297 () Bool)

(declare-fun d!1465524 () Bool)

(assert (= bs!1038297 (and d!1465524 d!1464936)))

(assert (=> bs!1038297 (= (dynLambda!21559 lambda!197565 (h!57980 oldBucket!40)) (contains!14991 lt!1810261 (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun m!5513339 () Bool)

(assert (=> bs!1038297 m!5513339))

(assert (=> b!4646601 d!1465524))

(declare-fun b_lambda!171319 () Bool)

(assert (= b_lambda!171271 (or b!4646000 b_lambda!171319)))

(declare-fun bs!1038299 () Bool)

(declare-fun d!1465526 () Bool)

(assert (= bs!1038299 (and d!1465526 b!4646000)))

(assert (=> bs!1038299 (= (dynLambda!21559 lambda!197589 (h!57980 lt!1810088)) (contains!14991 lt!1810419 (_1!29765 (h!57980 lt!1810088))))))

(assert (=> bs!1038299 m!5511285))

(assert (=> b!4646725 d!1465526))

(declare-fun b_lambda!171321 () Bool)

(assert (= b_lambda!171285 (or b!4646029 b_lambda!171321)))

(declare-fun bs!1038301 () Bool)

(declare-fun d!1465528 () Bool)

(assert (= bs!1038301 (and d!1465528 b!4646029)))

(assert (=> bs!1038301 (= (dynLambda!21559 lambda!197597 (h!57980 (toList!5182 lt!1810430))) (contains!14991 lt!1810445 (_1!29765 (h!57980 (toList!5182 lt!1810430)))))))

(declare-fun m!5513341 () Bool)

(assert (=> bs!1038301 m!5513341))

(assert (=> b!4646825 d!1465528))

(declare-fun b_lambda!171323 () Bool)

(assert (= b_lambda!171207 (or d!1465008 b_lambda!171323)))

(declare-fun bs!1038304 () Bool)

(declare-fun d!1465530 () Bool)

(assert (= bs!1038304 (and d!1465530 d!1465008)))

(assert (=> bs!1038304 (= (dynLambda!21559 lambda!197602 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))) (contains!14991 lt!1810450 (_1!29765 (h!57980 (toList!5182 (ListMap!4518 Nil!51850))))))))

(declare-fun m!5513343 () Bool)

(assert (=> bs!1038304 m!5513343))

(assert (=> b!4646481 d!1465530))

(declare-fun b_lambda!171325 () Bool)

(assert (= b_lambda!171289 (or b!4646029 b_lambda!171325)))

(declare-fun bs!1038306 () Bool)

(declare-fun d!1465532 () Bool)

(assert (= bs!1038306 (and d!1465532 b!4646029)))

(assert (=> bs!1038306 (= (dynLambda!21559 lambda!197597 (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (contains!14991 lt!1810445 (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(assert (=> bs!1038306 m!5511359))

(assert (=> d!1465476 d!1465532))

(declare-fun b_lambda!171327 () Bool)

(assert (= b_lambda!171235 (or b!4645910 b_lambda!171327)))

(declare-fun bs!1038309 () Bool)

(declare-fun d!1465534 () Bool)

(assert (= bs!1038309 (and d!1465534 b!4645910)))

(assert (=> bs!1038309 (= (dynLambda!21559 lambda!197564 (h!57980 (toList!5182 lt!1810089))) (contains!14991 lt!1810277 (_1!29765 (h!57980 (toList!5182 lt!1810089)))))))

(declare-fun m!5513345 () Bool)

(assert (=> bs!1038309 m!5513345))

(assert (=> b!4646545 d!1465534))

(declare-fun b_lambda!171329 () Bool)

(assert (= b_lambda!171125 (or b!4646034 b_lambda!171329)))

(declare-fun bs!1038311 () Bool)

(declare-fun d!1465536 () Bool)

(assert (= bs!1038311 (and d!1465536 b!4646034)))

(assert (=> bs!1038311 (= (dynLambda!21559 lambda!197601 (h!57980 oldBucket!40)) (contains!14991 lt!1810466 (_1!29765 (h!57980 oldBucket!40))))))

(assert (=> bs!1038311 m!5511389))

(assert (=> d!1465034 d!1465536))

(declare-fun b_lambda!171331 () Bool)

(assert (= b_lambda!171281 (or d!1464982 b_lambda!171331)))

(declare-fun bs!1038312 () Bool)

(declare-fun d!1465538 () Bool)

(assert (= bs!1038312 (and d!1465538 d!1464982)))

(assert (=> bs!1038312 (= (dynLambda!21559 lambda!197583 (h!57980 newBucket!224)) (contains!14991 lt!1810361 (_1!29765 (h!57980 newBucket!224))))))

(declare-fun m!5513347 () Bool)

(assert (=> bs!1038312 m!5513347))

(assert (=> b!4646780 d!1465538))

(declare-fun b_lambda!171333 () Bool)

(assert (= b_lambda!171225 (or b!4645910 b_lambda!171333)))

(declare-fun bs!1038314 () Bool)

(declare-fun d!1465540 () Bool)

(assert (= bs!1038314 (and d!1465540 b!4645910)))

(assert (=> bs!1038314 (= (dynLambda!21559 lambda!197564 (h!57980 (toList!5182 lt!1810262))) (contains!14991 lt!1810277 (_1!29765 (h!57980 (toList!5182 lt!1810262)))))))

(declare-fun m!5513349 () Bool)

(assert (=> bs!1038314 m!5513349))

(assert (=> b!4646512 d!1465540))

(declare-fun b_lambda!171335 () Bool)

(assert (= b_lambda!171169 (or d!1464988 b_lambda!171335)))

(declare-fun bs!1038316 () Bool)

(declare-fun d!1465542 () Bool)

(assert (= bs!1038316 (and d!1465542 d!1464988)))

(assert (=> bs!1038316 (= (dynLambda!21559 lambda!197591 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))) (contains!14991 lt!1810403 (_1!29765 (h!57980 (toList!5182 (ListMap!4518 Nil!51850))))))))

(declare-fun m!5513351 () Bool)

(assert (=> bs!1038316 m!5513351))

(assert (=> b!4646311 d!1465542))

(declare-fun b_lambda!171337 () Bool)

(assert (= b_lambda!171277 (or d!1464998 b_lambda!171337)))

(declare-fun bs!1038318 () Bool)

(declare-fun d!1465544 () Bool)

(assert (= bs!1038318 (and d!1465544 d!1464998)))

(assert (=> bs!1038318 (= (dynLambda!21562 lambda!197593 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851))) (noDuplicateKeys!1624 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 newBucket!224) Nil!51851)))))))

(assert (=> bs!1038318 m!5512105))

(assert (=> b!4646772 d!1465544))

(declare-fun b_lambda!171339 () Bool)

(assert (= b_lambda!171265 (or d!1464958 b_lambda!171339)))

(declare-fun bs!1038321 () Bool)

(declare-fun d!1465546 () Bool)

(assert (= bs!1038321 (and d!1465546 d!1464958)))

(assert (=> bs!1038321 (= (dynLambda!21562 lambda!197574 (h!57981 Nil!51851)) (noDuplicateKeys!1624 (_2!29766 (h!57981 Nil!51851))))))

(declare-fun m!5513353 () Bool)

(assert (=> bs!1038321 m!5513353))

(assert (=> b!4646693 d!1465546))

(declare-fun b_lambda!171341 () Bool)

(assert (= b_lambda!171273 (or b!4646000 b_lambda!171341)))

(declare-fun bs!1038323 () Bool)

(declare-fun d!1465548 () Bool)

(assert (= bs!1038323 (and d!1465548 b!4646000)))

(assert (=> bs!1038323 (= (dynLambda!21559 lambda!197589 (h!57980 (toList!5182 lt!1810404))) (contains!14991 lt!1810419 (_1!29765 (h!57980 (toList!5182 lt!1810404)))))))

(declare-fun m!5513355 () Bool)

(assert (=> bs!1038323 m!5513355))

(assert (=> b!4646747 d!1465548))

(declare-fun b_lambda!171343 () Bool)

(assert (= b_lambda!171275 (or b!4646000 b_lambda!171343)))

(assert (=> d!1465448 d!1465526))

(declare-fun b_lambda!171345 () Bool)

(assert (= b_lambda!171123 (or b!4646034 b_lambda!171345)))

(assert (=> b!4646069 d!1465536))

(declare-fun b_lambda!171347 () Bool)

(assert (= b_lambda!171143 (or b!4645990 b_lambda!171347)))

(declare-fun bs!1038325 () Bool)

(declare-fun d!1465550 () Bool)

(assert (= bs!1038325 (and d!1465550 b!4645990)))

(assert (=> bs!1038325 (= (dynLambda!21559 lambda!197582 (h!57980 (toList!5182 lt!1810362))) (contains!14991 lt!1810377 (_1!29765 (h!57980 (toList!5182 lt!1810362)))))))

(declare-fun m!5513357 () Bool)

(assert (=> bs!1038325 m!5513357))

(assert (=> b!4646173 d!1465550))

(declare-fun b_lambda!171349 () Bool)

(assert (= b_lambda!171239 (or d!1464982 b_lambda!171349)))

(declare-fun bs!1038327 () Bool)

(declare-fun d!1465552 () Bool)

(assert (= bs!1038327 (and d!1465552 d!1464982)))

(assert (=> bs!1038327 (= (dynLambda!21559 lambda!197583 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))) (contains!14991 lt!1810361 (_1!29765 (h!57980 (toList!5182 (ListMap!4518 Nil!51850))))))))

(declare-fun m!5513359 () Bool)

(assert (=> bs!1038327 m!5513359))

(assert (=> b!4646593 d!1465552))

(declare-fun b_lambda!171351 () Bool)

(assert (= b_lambda!171193 (or d!1465008 b_lambda!171351)))

(declare-fun bs!1038328 () Bool)

(declare-fun d!1465554 () Bool)

(assert (= bs!1038328 (and d!1465554 d!1465008)))

(assert (=> bs!1038328 (= (dynLambda!21559 lambda!197602 (h!57980 oldBucket!40)) (contains!14991 lt!1810450 (_1!29765 (h!57980 oldBucket!40))))))

(declare-fun m!5513361 () Bool)

(assert (=> bs!1038328 m!5513361))

(assert (=> b!4646437 d!1465554))

(declare-fun b_lambda!171353 () Bool)

(assert (= b_lambda!171287 (or b!4646029 b_lambda!171353)))

(assert (=> b!4646836 d!1465532))

(declare-fun b_lambda!171355 () Bool)

(assert (= b_lambda!171147 (or b!4645990 b_lambda!171355)))

(declare-fun bs!1038331 () Bool)

(declare-fun d!1465556 () Bool)

(assert (= bs!1038331 (and d!1465556 b!4645990)))

(assert (=> bs!1038331 (= (dynLambda!21559 lambda!197581 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))) (contains!14991 (ListMap!4518 Nil!51850) (_1!29765 (h!57980 (toList!5182 (ListMap!4518 Nil!51850))))))))

(assert (=> bs!1038331 m!5513337))

(assert (=> b!4646189 d!1465556))

(declare-fun b_lambda!171357 () Bool)

(assert (= b_lambda!171117 (or b!4645990 b_lambda!171357)))

(declare-fun bs!1038332 () Bool)

(declare-fun d!1465558 () Bool)

(assert (= bs!1038332 (and d!1465558 b!4645990)))

(assert (=> bs!1038332 (= (dynLambda!21559 lambda!197582 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))) (contains!14991 lt!1810377 (_1!29765 (h!57980 (toList!5182 (ListMap!4518 Nil!51850))))))))

(declare-fun m!5513363 () Bool)

(assert (=> bs!1038332 m!5513363))

(assert (=> b!4646061 d!1465558))

(declare-fun b_lambda!171359 () Bool)

(assert (= b_lambda!171133 (or d!1464936 b_lambda!171359)))

(declare-fun bs!1038333 () Bool)

(declare-fun d!1465560 () Bool)

(assert (= bs!1038333 (and d!1465560 d!1464936)))

(assert (=> bs!1038333 (= (dynLambda!21559 lambda!197565 (h!57980 (toList!5182 lt!1810089))) (contains!14991 lt!1810261 (_1!29765 (h!57980 (toList!5182 lt!1810089)))))))

(declare-fun m!5513365 () Bool)

(assert (=> bs!1038333 m!5513365))

(assert (=> b!4646110 d!1465560))

(declare-fun b_lambda!171361 () Bool)

(assert (= b_lambda!171213 (or d!1464988 b_lambda!171361)))

(declare-fun bs!1038334 () Bool)

(declare-fun d!1465562 () Bool)

(assert (= bs!1038334 (and d!1465562 d!1464988)))

(assert (=> bs!1038334 (= (dynLambda!21559 lambda!197591 (h!57980 lt!1810088)) (contains!14991 lt!1810403 (_1!29765 (h!57980 lt!1810088))))))

(declare-fun m!5513367 () Bool)

(assert (=> bs!1038334 m!5513367))

(assert (=> b!4646491 d!1465562))

(declare-fun b_lambda!171363 () Bool)

(assert (= b_lambda!171231 (or b!4645910 b_lambda!171363)))

(declare-fun bs!1038335 () Bool)

(declare-fun d!1465564 () Bool)

(assert (= bs!1038335 (and d!1465564 b!4645910)))

(assert (=> bs!1038335 (= (dynLambda!21559 lambda!197563 (h!57980 (toList!5182 lt!1810089))) (contains!14991 lt!1810089 (_1!29765 (h!57980 (toList!5182 lt!1810089)))))))

(declare-fun m!5513369 () Bool)

(assert (=> bs!1038335 m!5513369))

(assert (=> b!4646541 d!1465564))

(declare-fun b_lambda!171365 () Bool)

(assert (= b_lambda!171145 (or b!4645990 b_lambda!171365)))

(declare-fun bs!1038336 () Bool)

(declare-fun d!1465566 () Bool)

(assert (= bs!1038336 (and d!1465566 b!4645990)))

(assert (=> bs!1038336 (= (dynLambda!21559 lambda!197582 (h!57980 newBucket!224)) (contains!14991 lt!1810377 (_1!29765 (h!57980 newBucket!224))))))

(assert (=> bs!1038336 m!5511229))

(assert (=> d!1465102 d!1465566))

(declare-fun b_lambda!171367 () Bool)

(assert (= b_lambda!171127 (or b!4646034 b_lambda!171367)))

(declare-fun bs!1038337 () Bool)

(declare-fun d!1465568 () Bool)

(assert (= bs!1038337 (and d!1465568 b!4646034)))

(assert (=> bs!1038337 (= (dynLambda!21559 lambda!197600 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))) (contains!14991 (ListMap!4518 Nil!51850) (_1!29765 (h!57980 (toList!5182 (ListMap!4518 Nil!51850))))))))

(assert (=> bs!1038337 m!5513337))

(assert (=> b!4646074 d!1465568))

(declare-fun b_lambda!171369 () Bool)

(assert (= b_lambda!171203 (or d!1465004 b_lambda!171369)))

(declare-fun bs!1038338 () Bool)

(declare-fun d!1465570 () Bool)

(assert (= bs!1038338 (and d!1465570 d!1465004)))

(assert (=> bs!1038338 (= (dynLambda!21559 lambda!197598 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))) (contains!14991 lt!1810429 (_1!29765 (h!57980 (toList!5182 (ListMap!4518 Nil!51850))))))))

(declare-fun m!5513373 () Bool)

(assert (=> bs!1038338 m!5513373))

(assert (=> b!4646471 d!1465570))

(declare-fun b_lambda!171371 () Bool)

(assert (= b_lambda!171261 (or b!4646029 b_lambda!171371)))

(declare-fun bs!1038340 () Bool)

(declare-fun d!1465572 () Bool)

(assert (= bs!1038340 (and d!1465572 b!4646029)))

(assert (=> bs!1038340 (= (dynLambda!21559 lambda!197597 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))) (contains!14991 lt!1810445 (_1!29765 (h!57980 (toList!5182 (ListMap!4518 Nil!51850))))))))

(declare-fun m!5513379 () Bool)

(assert (=> bs!1038340 m!5513379))

(assert (=> b!4646689 d!1465572))

(declare-fun b_lambda!171373 () Bool)

(assert (= b_lambda!171299 (or b!4646029 b_lambda!171373)))

(declare-fun bs!1038341 () Bool)

(declare-fun d!1465574 () Bool)

(assert (= bs!1038341 (and d!1465574 b!4646029)))

(assert (=> bs!1038341 (= (dynLambda!21559 lambda!197596 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))) (contains!14991 (ListMap!4518 Nil!51850) (_1!29765 (h!57980 (toList!5182 (ListMap!4518 Nil!51850))))))))

(assert (=> bs!1038341 m!5513337))

(assert (=> b!4646857 d!1465574))

(declare-fun b_lambda!171375 () Bool)

(assert (= b_lambda!171141 (or b!4645990 b_lambda!171375)))

(assert (=> b!4646160 d!1465566))

(declare-fun b_lambda!171377 () Bool)

(assert (= b_lambda!171263 (or d!1464980 b_lambda!171377)))

(declare-fun bs!1038342 () Bool)

(declare-fun d!1465578 () Bool)

(assert (= bs!1038342 (and d!1465578 d!1464980)))

(assert (=> bs!1038342 (= (dynLambda!21562 lambda!197578 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851))) (noDuplicateKeys!1624 (_2!29766 (h!57981 (Cons!51851 (tuple2!52945 hash!414 oldBucket!40) Nil!51851)))))))

(assert (=> bs!1038342 m!5512805))

(assert (=> b!4646691 d!1465578))

(declare-fun b_lambda!171379 () Bool)

(assert (= b_lambda!171181 (or d!1465004 b_lambda!171379)))

(declare-fun bs!1038343 () Bool)

(declare-fun d!1465580 () Bool)

(assert (= bs!1038343 (and d!1465580 d!1465004)))

(assert (=> bs!1038343 (= (dynLambda!21559 lambda!197598 (h!57980 (Cons!51850 lt!1810091 lt!1810088))) (contains!14991 lt!1810429 (_1!29765 (h!57980 (Cons!51850 lt!1810091 lt!1810088)))))))

(declare-fun m!5513383 () Bool)

(assert (=> bs!1038343 m!5513383))

(assert (=> b!4646391 d!1465580))

(declare-fun b_lambda!171381 () Bool)

(assert (= b_lambda!171119 (or b!4646034 b_lambda!171381)))

(declare-fun bs!1038344 () Bool)

(declare-fun d!1465582 () Bool)

(assert (= bs!1038344 (and d!1465582 b!4646034)))

(assert (=> bs!1038344 (= (dynLambda!21559 lambda!197601 (h!57980 (toList!5182 (ListMap!4518 Nil!51850)))) (contains!14991 lt!1810466 (_1!29765 (h!57980 (toList!5182 (ListMap!4518 Nil!51850))))))))

(declare-fun m!5513385 () Bool)

(assert (=> bs!1038344 m!5513385))

(assert (=> b!4646065 d!1465582))

(declare-fun b_lambda!171383 () Bool)

(assert (= b_lambda!171233 (or b!4645910 b_lambda!171383)))

(assert (=> b!4646543 d!1465518))

(declare-fun b_lambda!171385 () Bool)

(assert (= b_lambda!171121 (or b!4646034 b_lambda!171385)))

(declare-fun bs!1038345 () Bool)

(declare-fun d!1465584 () Bool)

(assert (= bs!1038345 (and d!1465584 b!4646034)))

(assert (=> bs!1038345 (= (dynLambda!21559 lambda!197601 (h!57980 (toList!5182 lt!1810451))) (contains!14991 lt!1810466 (_1!29765 (h!57980 (toList!5182 lt!1810451)))))))

(declare-fun m!5513387 () Bool)

(assert (=> bs!1038345 m!5513387))

(assert (=> b!4646067 d!1465584))

(declare-fun b_lambda!171387 () Bool)

(assert (= b_lambda!171201 (or d!1464926 b_lambda!171387)))

(declare-fun bs!1038346 () Bool)

(declare-fun d!1465586 () Bool)

(assert (= bs!1038346 (and d!1465586 d!1464926)))

(assert (=> bs!1038346 (= (dynLambda!21559 lambda!197490 (h!57980 oldBucket!40)) (= (hash!3747 hashF!1389 (_1!29765 (h!57980 oldBucket!40))) hash!414))))

(declare-fun m!5513389 () Bool)

(assert (=> bs!1038346 m!5513389))

(assert (=> b!4646469 d!1465586))

(check-sat (not b!4646557) (not b!4646535) (not d!1465288) (not d!1465338) (not b!4646418) (not d!1465232) (not b!4646176) (not b!4646235) (not b!4646153) (not bm!324453) (not d!1465358) (not b!4646551) (not b_lambda!171363) (not b!4646285) (not b!4646699) (not b!4646516) (not b!4646728) (not b!4646175) (not b!4646730) (not b!4646111) (not b_lambda!171333) (not b_lambda!171387) (not d!1465362) (not bs!1038288) (not b!4646517) (not d!1465104) (not b!4646098) (not b!4646479) (not b!4646150) (not b!4646605) (not b!4646748) (not bs!1038335) (not b_lambda!171355) (not bs!1038295) (not b!4646838) (not bm!324492) (not d!1465464) (not bs!1038299) (not bm!324483) (not bm!324515) (not b!4646321) (not d!1465282) (not b!4646314) (not b!4646162) (not b_lambda!171313) (not b!4646324) (not bm!324471) (not b!4646614) (not b!4646381) (not b_lambda!171347) (not b_lambda!171377) (not d!1465452) (not b!4646540) (not b!4646063) (not b!4646549) (not b!4646829) (not b_lambda!171131) (not b!4646394) (not b!4646874) (not bm!324436) (not b!4646195) (not d!1465096) (not b!4646194) (not b!4646184) (not b!4646482) (not b!4646692) (not d!1465064) (not b!4646159) (not b_lambda!171301) (not b!4646735) (not bs!1038323) (not b!4646216) (not b_lambda!171205) (not b!4646316) (not b!4646792) (not b!4646283) (not b!4646128) (not bs!1038312) (not b_lambda!171321) (not b_lambda!171367) (not b!4646496) (not b!4646068) (not bs!1038341) (not b!4646086) (not b_lambda!171129) (not b!4646079) (not bm!324495) (not b_lambda!171359) (not b_lambda!171371) (not d!1465404) (not b!4646773) (not b!4646724) (not bm!324435) (not d!1465462) (not b!4646606) (not b!4646628) (not d!1465368) (not bm!324433) (not b!4646378) (not bs!1038314) (not bm!324477) (not b!4646499) (not b!4646192) (not b!4646766) (not d!1465156) (not b!4646476) (not b_lambda!171327) (not b!4646392) (not b!4646306) (not b!4646484) (not b!4646690) (not b!4646737) (not b_lambda!171307) (not b!4646398) (not b!4646502) (not b!4646596) (not b!4646550) (not bm!324482) (not b!4646826) (not b!4646743) (not d!1465276) (not b!4646331) (not b_lambda!171351) (not b_lambda!171373) (not b!4646081) (not b!4646313) (not b!4646589) (not b!4646470) (not b!4646174) (not d!1465300) (not b!4646635) (not b!4646738) (not b!4646141) (not b!4646094) (not b!4646739) (not b_lambda!171311) (not b!4646140) (not bs!1038286) (not b_lambda!171375) (not d!1465222) (not b!4646603) (not b!4646732) (not b!4646075) (not d!1465476) (not b!4646105) (not b!4646547) (not d!1465166) (not b!4646440) (not d!1465102) (not b!4646627) (not d!1465350) (not bm!324455) (not b!4646819) (not d!1465436) (not b!4646818) (not b!4646520) (not bs!1038340) (not b!4646330) tp_is_empty!29791 (not b!4646795) (not d!1465034) (not d!1465220) (not b!4646318) (not bm!324494) (not b_lambda!171139) (not bs!1038318) (not b!4646617) (not b!4646472) (not b!4646559) (not b!4646548) (not b!4646456) (not bm!324457) (not b!4646380) (not bs!1038342) (not b_lambda!171319) (not b!4646286) (not d!1465192) (not b_lambda!171349) (not b!4646796) (not b_lambda!171383) (not b!4646537) (not bm!324427) (not bs!1038316) (not b!4646454) (not d!1465324) (not b_lambda!171279) (not b!4646466) (not b!4646696) (not b!4646486) (not bs!1038293) (not b!4646170) (not d!1465408) (not d!1465356) (not b_lambda!171331) (not b!4646736) (not d!1465040) (not b!4646820) (not b!4646488) (not b!4646064) (not b!4646781) (not bm!324490) (not b_lambda!171309) (not b!4646637) (not b!4646089) (not b!4646288) (not b!4646625) (not bm!324514) (not b!4646619) (not bs!1038333) (not bs!1038331) (not b!4646383) (not b!4646634) (not b_lambda!171385) (not bm!324434) (not bm!324439) (not b!4646519) (not b!4646312) (not b!4646532) (not b!4646307) (not b!4646835) (not bm!324429) (not b!4646858) (not b!4646552) (not b!4646624) (not bm!324491) (not b_lambda!171381) (not bm!324465) (not b_lambda!171325) (not b!4646621) (not b!4646793) (not d!1465026) (not b!4646305) (not b!4646602) (not b!4646062) (not b!4646827) (not b!4646560) (not b!4646536) (not d!1465112) (not b_lambda!171335) (not d!1465442) (not b!4646384) (not bs!1038306) (not bm!324463) (not bs!1038297) (not b!4646132) (not d!1465364) (not d!1465444) (not d!1465472) (not d!1465468) (not bs!1038328) (not b_lambda!171209) (not bs!1038332) (not b!4646604) (not d!1465478) (not b_lambda!171283) (not b!4646137) (not b!4646181) (not b!4646623) (not b_lambda!171369) (not b!4646400) (not b_lambda!171353) (not b!4646056) (not b!4646598) (not bm!324432) (not d!1465060) (not b!4646087) (not d!1465066) (not b_lambda!171361) (not b!4646828) (not d!1465038) (not b_lambda!171323) (not bm!324505) (not d!1465124) (not b_lambda!171317) (not b_lambda!171337) (not b!4646790) (not b!4646085) (not bm!324451) (not b!4646117) (not d!1465262) (not d!1465138) (not bm!324469) (not b!4646594) (not b_lambda!171365) (not b!4646090) (not b!4646386) (not bs!1038343) (not b!4646139) (not b!4646503) (not b_lambda!171243) (not b!4646783) (not b!4646546) (not d!1465200) (not b!4646741) (not bm!324484) (not d!1465168) (not b!4646401) (not b!4646190) (not b!4646178) (not b!4646638) (not b!4646073) (not b!4646180) (not bs!1038334) (not b!4646616) (not d!1465440) (not b!4646298) (not b!4646556) (not b!4646731) (not d!1465510) (not d!1465322) (not b!4646751) (not b!4646492) (not b!4646164) (not bm!324473) (not b!4646824) (not b!4646695) (not b!4646746) (not b!4646165) (not b!4646082) (not bm!324478) (not d!1465106) tp_is_empty!29789 (not b!4646622) (not b!4646633) (not d!1465412) (not b_lambda!171343) (not b_lambda!171137) (not b!4646088) (not b!4646135) (not d!1465078) (not d!1465416) (not b!4646167) (not b!4646382) (not d!1465158) (not b!4646096) (not bm!324470) (not b!4646317) (not bm!324480) (not b!4646533) (not b!4646821) (not b!4646289) (not b!4646592) (not b!4646779) (not d!1465448) (not b_lambda!171329) (not b!4646191) (not b!4646740) (not bm!324430) (not b!4646860) (not b!4646600) (not bs!1038338) (not bs!1038290) (not d!1465286) (not b!4646078) (not bs!1038344) (not d!1465280) (not b!4646387) (not b!4646729) (not b!4646438) (not bs!1038346) (not b!4646177) (not b!4646080) (not b!4646179) (not d!1465450) (not b!4646742) (not d!1465044) (not b!4646091) (not b!4646832) (not b!4646837) (not b!4646077) (not bm!324428) (not bs!1038337) (not bm!324504) (not b!4646698) (not b!4646095) (not b!4646875) (not bs!1038336) (not b!4646099) (not b!4646315) (not bm!324472) (not bs!1038311) (not b!4646397) (not bm!324456) (not d!1465162) (not b!4646534) (not b!4646107) (not bs!1038345) (not d!1465208) (not bs!1038321) (not b_lambda!171357) (not d!1465088) (not bs!1038325) (not b!4646694) (not b!4646393) (not bm!324431) (not d!1465042) (not b_lambda!171345) (not b!4646791) (not b!4646830) (not b!4646070) (not b!4646163) (not b!4646816) (not b!4646555) (not b_lambda!171315) (not b!4646611) (not bs!1038304) (not b!4646831) (not b!4646542) (not b_lambda!171341) (not bm!324506) (not b!4646161) (not d!1465126) (not b!4646608) (not bs!1038309) (not b!4646726) (not bs!1038301) (not b_lambda!171339) (not b!4646217) (not b!4646109) (not b!4646607) (not b!4646513) (not d!1465076) (not d!1465354) (not bm!324464) (not b!4646066) (not b!4646687) (not b!4646727) (not b!4646166) (not d!1465046) (not b_lambda!171379) (not b!4646136) (not b!4646599) (not bs!1038327) (not d!1465314) (not b!4646151) (not b!4646544) (not b!4646817))
(check-sat)
