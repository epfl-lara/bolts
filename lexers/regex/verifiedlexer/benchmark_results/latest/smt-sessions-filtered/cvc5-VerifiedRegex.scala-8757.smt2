; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!467454 () Bool)

(assert start!467454)

(declare-fun b!4644921 () Bool)

(declare-fun e!2897592 () Bool)

(declare-fun e!2897591 () Bool)

(assert (=> b!4644921 (= e!2897592 e!2897591)))

(declare-fun res!1951458 () Bool)

(assert (=> b!4644921 (=> (not res!1951458) (not e!2897591))))

(declare-datatypes ((K!13188 0))(
  ( (K!13189 (val!18821 Int)) )
))
(declare-datatypes ((V!13434 0))(
  ( (V!13435 (val!18822 Int)) )
))
(declare-datatypes ((tuple2!52906 0))(
  ( (tuple2!52907 (_1!29747 K!13188) (_2!29747 V!13434)) )
))
(declare-datatypes ((List!51950 0))(
  ( (Nil!51826) (Cons!51826 (h!57950 tuple2!52906) (t!359046 List!51950)) )
))
(declare-datatypes ((ListMap!4499 0))(
  ( (ListMap!4500 (toList!5171 List!51950)) )
))
(declare-fun lt!1809340 () ListMap!4499)

(declare-fun key!4968 () K!13188)

(declare-fun contains!14976 (ListMap!4499 K!13188) Bool)

(assert (=> b!4644921 (= res!1951458 (contains!14976 lt!1809340 key!4968))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51950)

(declare-datatypes ((tuple2!52908 0))(
  ( (tuple2!52909 (_1!29748 (_ BitVec 64)) (_2!29748 List!51950)) )
))
(declare-datatypes ((List!51951 0))(
  ( (Nil!51827) (Cons!51827 (h!57951 tuple2!52908) (t!359047 List!51951)) )
))
(declare-fun extractMap!1671 (List!51951) ListMap!4499)

(assert (=> b!4644921 (= lt!1809340 (extractMap!1671 (Cons!51827 (tuple2!52909 hash!414 oldBucket!40) Nil!51827)))))

(declare-fun b!4644922 () Bool)

(declare-fun res!1951457 () Bool)

(assert (=> b!4644922 (=> (not res!1951457) (not e!2897591))))

(declare-datatypes ((Hashable!6012 0))(
  ( (HashableExt!6011 (__x!31715 Int)) )
))
(declare-fun hashF!1389 () Hashable!6012)

(declare-fun hash!3732 (Hashable!6012 K!13188) (_ BitVec 64))

(assert (=> b!4644922 (= res!1951457 (= (hash!3732 hashF!1389 key!4968) hash!414))))

(declare-fun b!4644923 () Bool)

(declare-fun addToMapMapFromBucket!1072 (List!51950 ListMap!4499) ListMap!4499)

(assert (=> b!4644923 (= e!2897591 (not (= lt!1809340 (addToMapMapFromBucket!1072 oldBucket!40 (extractMap!1671 Nil!51827)))))))

(assert (=> b!4644923 true))

(declare-fun b!4644924 () Bool)

(declare-fun res!1951455 () Bool)

(assert (=> b!4644924 (=> (not res!1951455) (not e!2897592))))

(declare-fun newBucket!224 () List!51950)

(declare-fun noDuplicateKeys!1615 (List!51950) Bool)

(assert (=> b!4644924 (= res!1951455 (noDuplicateKeys!1615 newBucket!224))))

(declare-fun b!4644925 () Bool)

(declare-fun res!1951460 () Bool)

(assert (=> b!4644925 (=> (not res!1951460) (not e!2897592))))

(declare-fun removePairForKey!1238 (List!51950 K!13188) List!51950)

(assert (=> b!4644925 (= res!1951460 (= (removePairForKey!1238 oldBucket!40 key!4968) newBucket!224))))

(declare-fun tp_is_empty!29753 () Bool)

(declare-fun tp_is_empty!29755 () Bool)

(declare-fun b!4644926 () Bool)

(declare-fun tp!1343056 () Bool)

(declare-fun e!2897590 () Bool)

(assert (=> b!4644926 (= e!2897590 (and tp_is_empty!29753 tp_is_empty!29755 tp!1343056))))

(declare-fun b!4644927 () Bool)

(declare-fun res!1951461 () Bool)

(assert (=> b!4644927 (=> (not res!1951461) (not e!2897591))))

(declare-fun allKeysSameHash!1469 (List!51950 (_ BitVec 64) Hashable!6012) Bool)

(assert (=> b!4644927 (= res!1951461 (allKeysSameHash!1469 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4644929 () Bool)

(declare-fun res!1951459 () Bool)

(assert (=> b!4644929 (=> (not res!1951459) (not e!2897592))))

(assert (=> b!4644929 (= res!1951459 (allKeysSameHash!1469 oldBucket!40 hash!414 hashF!1389))))

(declare-fun e!2897589 () Bool)

(declare-fun tp!1343057 () Bool)

(declare-fun b!4644928 () Bool)

(assert (=> b!4644928 (= e!2897589 (and tp_is_empty!29753 tp_is_empty!29755 tp!1343057))))

(declare-fun res!1951456 () Bool)

(assert (=> start!467454 (=> (not res!1951456) (not e!2897592))))

(assert (=> start!467454 (= res!1951456 (noDuplicateKeys!1615 oldBucket!40))))

(assert (=> start!467454 e!2897592))

(assert (=> start!467454 true))

(assert (=> start!467454 e!2897590))

(assert (=> start!467454 tp_is_empty!29753))

(assert (=> start!467454 e!2897589))

(assert (= (and start!467454 res!1951456) b!4644924))

(assert (= (and b!4644924 res!1951455) b!4644925))

(assert (= (and b!4644925 res!1951460) b!4644929))

(assert (= (and b!4644929 res!1951459) b!4644921))

(assert (= (and b!4644921 res!1951458) b!4644922))

(assert (= (and b!4644922 res!1951457) b!4644927))

(assert (= (and b!4644927 res!1951461) b!4644923))

(assert (= (and start!467454 (is-Cons!51826 oldBucket!40)) b!4644926))

(assert (= (and start!467454 (is-Cons!51826 newBucket!224)) b!4644928))

(declare-fun m!5509883 () Bool)

(assert (=> b!4644922 m!5509883))

(declare-fun m!5509885 () Bool)

(assert (=> b!4644927 m!5509885))

(declare-fun m!5509887 () Bool)

(assert (=> b!4644925 m!5509887))

(declare-fun m!5509889 () Bool)

(assert (=> b!4644929 m!5509889))

(declare-fun m!5509891 () Bool)

(assert (=> b!4644924 m!5509891))

(declare-fun m!5509893 () Bool)

(assert (=> b!4644921 m!5509893))

(declare-fun m!5509895 () Bool)

(assert (=> b!4644921 m!5509895))

(declare-fun m!5509897 () Bool)

(assert (=> b!4644923 m!5509897))

(assert (=> b!4644923 m!5509897))

(declare-fun m!5509899 () Bool)

(assert (=> b!4644923 m!5509899))

(declare-fun m!5509901 () Bool)

(assert (=> start!467454 m!5509901))

(push 1)

(assert (not b!4644924))

(assert (not b!4644925))

(assert tp_is_empty!29753)

(assert (not b!4644927))

(assert (not b!4644923))

(assert (not b!4644929))

(assert (not b!4644921))

(assert (not start!467454))

(assert (not b!4644926))

(assert tp_is_empty!29755)

(assert (not b!4644928))

(assert (not b!4644922))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1464768 () Bool)

(declare-fun res!1951487 () Bool)

(declare-fun e!2897609 () Bool)

(assert (=> d!1464768 (=> res!1951487 e!2897609)))

(assert (=> d!1464768 (= res!1951487 (not (is-Cons!51826 oldBucket!40)))))

(assert (=> d!1464768 (= (noDuplicateKeys!1615 oldBucket!40) e!2897609)))

(declare-fun b!4644961 () Bool)

(declare-fun e!2897610 () Bool)

(assert (=> b!4644961 (= e!2897609 e!2897610)))

(declare-fun res!1951488 () Bool)

(assert (=> b!4644961 (=> (not res!1951488) (not e!2897610))))

(declare-fun containsKey!2677 (List!51950 K!13188) Bool)

(assert (=> b!4644961 (= res!1951488 (not (containsKey!2677 (t!359046 oldBucket!40) (_1!29747 (h!57950 oldBucket!40)))))))

(declare-fun b!4644962 () Bool)

(assert (=> b!4644962 (= e!2897610 (noDuplicateKeys!1615 (t!359046 oldBucket!40)))))

(assert (= (and d!1464768 (not res!1951487)) b!4644961))

(assert (= (and b!4644961 res!1951488) b!4644962))

(declare-fun m!5509923 () Bool)

(assert (=> b!4644961 m!5509923))

(declare-fun m!5509925 () Bool)

(assert (=> b!4644962 m!5509925))

(assert (=> start!467454 d!1464768))

(declare-fun b!4644971 () Bool)

(declare-fun e!2897615 () List!51950)

(assert (=> b!4644971 (= e!2897615 (t!359046 oldBucket!40))))

(declare-fun b!4644972 () Bool)

(declare-fun e!2897616 () List!51950)

(assert (=> b!4644972 (= e!2897615 e!2897616)))

(declare-fun c!794799 () Bool)

(assert (=> b!4644972 (= c!794799 (is-Cons!51826 oldBucket!40))))

(declare-fun b!4644973 () Bool)

(assert (=> b!4644973 (= e!2897616 (Cons!51826 (h!57950 oldBucket!40) (removePairForKey!1238 (t!359046 oldBucket!40) key!4968)))))

(declare-fun d!1464770 () Bool)

(declare-fun lt!1809346 () List!51950)

(assert (=> d!1464770 (not (containsKey!2677 lt!1809346 key!4968))))

(assert (=> d!1464770 (= lt!1809346 e!2897615)))

(declare-fun c!794800 () Bool)

(assert (=> d!1464770 (= c!794800 (and (is-Cons!51826 oldBucket!40) (= (_1!29747 (h!57950 oldBucket!40)) key!4968)))))

(assert (=> d!1464770 (noDuplicateKeys!1615 oldBucket!40)))

(assert (=> d!1464770 (= (removePairForKey!1238 oldBucket!40 key!4968) lt!1809346)))

(declare-fun b!4644974 () Bool)

(assert (=> b!4644974 (= e!2897616 Nil!51826)))

(assert (= (and d!1464770 c!794800) b!4644971))

(assert (= (and d!1464770 (not c!794800)) b!4644972))

(assert (= (and b!4644972 c!794799) b!4644973))

(assert (= (and b!4644972 (not c!794799)) b!4644974))

(declare-fun m!5509927 () Bool)

(assert (=> b!4644973 m!5509927))

(declare-fun m!5509929 () Bool)

(assert (=> d!1464770 m!5509929))

(assert (=> d!1464770 m!5509901))

(assert (=> b!4644925 d!1464770))

(declare-fun d!1464772 () Bool)

(assert (=> d!1464772 true))

(assert (=> d!1464772 true))

(declare-fun lambda!197229 () Int)

(declare-fun forall!10973 (List!51950 Int) Bool)

(assert (=> d!1464772 (= (allKeysSameHash!1469 newBucket!224 hash!414 hashF!1389) (forall!10973 newBucket!224 lambda!197229))))

(declare-fun bs!1036066 () Bool)

(assert (= bs!1036066 d!1464772))

(declare-fun m!5509931 () Bool)

(assert (=> bs!1036066 m!5509931))

(assert (=> b!4644927 d!1464772))

(declare-fun b!4644997 () Bool)

(declare-fun e!2897631 () Bool)

(declare-datatypes ((List!51954 0))(
  ( (Nil!51830) (Cons!51830 (h!57955 K!13188) (t!359050 List!51954)) )
))
(declare-fun contains!14978 (List!51954 K!13188) Bool)

(declare-fun keys!18337 (ListMap!4499) List!51954)

(assert (=> b!4644997 (= e!2897631 (not (contains!14978 (keys!18337 lt!1809340) key!4968)))))

(declare-fun b!4644998 () Bool)

(declare-fun e!2897629 () Bool)

(declare-fun e!2897633 () Bool)

(assert (=> b!4644998 (= e!2897629 e!2897633)))

(declare-fun res!1951497 () Bool)

(assert (=> b!4644998 (=> (not res!1951497) (not e!2897633))))

(declare-datatypes ((Option!11797 0))(
  ( (None!11796) (Some!11796 (v!46048 V!13434)) )
))
(declare-fun isDefined!9062 (Option!11797) Bool)

(declare-fun getValueByKey!1585 (List!51950 K!13188) Option!11797)

(assert (=> b!4644998 (= res!1951497 (isDefined!9062 (getValueByKey!1585 (toList!5171 lt!1809340) key!4968)))))

(declare-fun d!1464774 () Bool)

(assert (=> d!1464774 e!2897629))

(declare-fun res!1951496 () Bool)

(assert (=> d!1464774 (=> res!1951496 e!2897629)))

(assert (=> d!1464774 (= res!1951496 e!2897631)))

(declare-fun res!1951495 () Bool)

(assert (=> d!1464774 (=> (not res!1951495) (not e!2897631))))

(declare-fun lt!1809363 () Bool)

(assert (=> d!1464774 (= res!1951495 (not lt!1809363))))

(declare-fun lt!1809370 () Bool)

(assert (=> d!1464774 (= lt!1809363 lt!1809370)))

(declare-datatypes ((Unit!116139 0))(
  ( (Unit!116140) )
))
(declare-fun lt!1809365 () Unit!116139)

(declare-fun e!2897630 () Unit!116139)

(assert (=> d!1464774 (= lt!1809365 e!2897630)))

(declare-fun c!794809 () Bool)

(assert (=> d!1464774 (= c!794809 lt!1809370)))

(declare-fun containsKey!2678 (List!51950 K!13188) Bool)

(assert (=> d!1464774 (= lt!1809370 (containsKey!2678 (toList!5171 lt!1809340) key!4968))))

(assert (=> d!1464774 (= (contains!14976 lt!1809340 key!4968) lt!1809363)))

(declare-fun b!4644999 () Bool)

(declare-fun e!2897634 () Unit!116139)

(declare-fun Unit!116141 () Unit!116139)

(assert (=> b!4644999 (= e!2897634 Unit!116141)))

(declare-fun b!4645000 () Bool)

(assert (=> b!4645000 (= e!2897633 (contains!14978 (keys!18337 lt!1809340) key!4968))))

(declare-fun bm!324297 () Bool)

(declare-fun call!324302 () Bool)

(declare-fun e!2897632 () List!51954)

(assert (=> bm!324297 (= call!324302 (contains!14978 e!2897632 key!4968))))

(declare-fun c!794807 () Bool)

(assert (=> bm!324297 (= c!794807 c!794809)))

(declare-fun b!4645001 () Bool)

(assert (=> b!4645001 (= e!2897632 (keys!18337 lt!1809340))))

(declare-fun b!4645002 () Bool)

(assert (=> b!4645002 false))

(declare-fun lt!1809366 () Unit!116139)

(declare-fun lt!1809369 () Unit!116139)

(assert (=> b!4645002 (= lt!1809366 lt!1809369)))

(assert (=> b!4645002 (containsKey!2678 (toList!5171 lt!1809340) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!727 (List!51950 K!13188) Unit!116139)

(assert (=> b!4645002 (= lt!1809369 (lemmaInGetKeysListThenContainsKey!727 (toList!5171 lt!1809340) key!4968))))

(declare-fun Unit!116142 () Unit!116139)

(assert (=> b!4645002 (= e!2897634 Unit!116142)))

(declare-fun b!4645003 () Bool)

(declare-fun lt!1809364 () Unit!116139)

(assert (=> b!4645003 (= e!2897630 lt!1809364)))

(declare-fun lt!1809367 () Unit!116139)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1487 (List!51950 K!13188) Unit!116139)

(assert (=> b!4645003 (= lt!1809367 (lemmaContainsKeyImpliesGetValueByKeyDefined!1487 (toList!5171 lt!1809340) key!4968))))

(assert (=> b!4645003 (isDefined!9062 (getValueByKey!1585 (toList!5171 lt!1809340) key!4968))))

(declare-fun lt!1809368 () Unit!116139)

(assert (=> b!4645003 (= lt!1809368 lt!1809367)))

(declare-fun lemmaInListThenGetKeysListContains!723 (List!51950 K!13188) Unit!116139)

(assert (=> b!4645003 (= lt!1809364 (lemmaInListThenGetKeysListContains!723 (toList!5171 lt!1809340) key!4968))))

(assert (=> b!4645003 call!324302))

(declare-fun b!4645004 () Bool)

(assert (=> b!4645004 (= e!2897630 e!2897634)))

(declare-fun c!794808 () Bool)

(assert (=> b!4645004 (= c!794808 call!324302)))

(declare-fun b!4645005 () Bool)

(declare-fun getKeysList!728 (List!51950) List!51954)

(assert (=> b!4645005 (= e!2897632 (getKeysList!728 (toList!5171 lt!1809340)))))

(assert (= (and d!1464774 c!794809) b!4645003))

(assert (= (and d!1464774 (not c!794809)) b!4645004))

(assert (= (and b!4645004 c!794808) b!4645002))

(assert (= (and b!4645004 (not c!794808)) b!4644999))

(assert (= (or b!4645003 b!4645004) bm!324297))

(assert (= (and bm!324297 c!794807) b!4645005))

(assert (= (and bm!324297 (not c!794807)) b!4645001))

(assert (= (and d!1464774 res!1951495) b!4644997))

(assert (= (and d!1464774 (not res!1951496)) b!4644998))

(assert (= (and b!4644998 res!1951497) b!4645000))

(declare-fun m!5509933 () Bool)

(assert (=> b!4645000 m!5509933))

(assert (=> b!4645000 m!5509933))

(declare-fun m!5509935 () Bool)

(assert (=> b!4645000 m!5509935))

(declare-fun m!5509937 () Bool)

(assert (=> d!1464774 m!5509937))

(declare-fun m!5509939 () Bool)

(assert (=> b!4644998 m!5509939))

(assert (=> b!4644998 m!5509939))

(declare-fun m!5509941 () Bool)

(assert (=> b!4644998 m!5509941))

(assert (=> b!4645001 m!5509933))

(declare-fun m!5509943 () Bool)

(assert (=> b!4645005 m!5509943))

(assert (=> b!4644997 m!5509933))

(assert (=> b!4644997 m!5509933))

(assert (=> b!4644997 m!5509935))

(assert (=> b!4645002 m!5509937))

(declare-fun m!5509945 () Bool)

(assert (=> b!4645002 m!5509945))

(declare-fun m!5509947 () Bool)

(assert (=> b!4645003 m!5509947))

(assert (=> b!4645003 m!5509939))

(assert (=> b!4645003 m!5509939))

(assert (=> b!4645003 m!5509941))

(declare-fun m!5509949 () Bool)

(assert (=> b!4645003 m!5509949))

(declare-fun m!5509951 () Bool)

(assert (=> bm!324297 m!5509951))

(assert (=> b!4644921 d!1464774))

(declare-fun d!1464776 () Bool)

(declare-fun lt!1809373 () ListMap!4499)

(declare-fun invariantList!1277 (List!51950) Bool)

(assert (=> d!1464776 (invariantList!1277 (toList!5171 lt!1809373))))

(declare-fun e!2897637 () ListMap!4499)

(assert (=> d!1464776 (= lt!1809373 e!2897637)))

(declare-fun c!794812 () Bool)

(assert (=> d!1464776 (= c!794812 (is-Cons!51827 (Cons!51827 (tuple2!52909 hash!414 oldBucket!40) Nil!51827)))))

(declare-fun lambda!197232 () Int)

(declare-fun forall!10974 (List!51951 Int) Bool)

(assert (=> d!1464776 (forall!10974 (Cons!51827 (tuple2!52909 hash!414 oldBucket!40) Nil!51827) lambda!197232)))

(assert (=> d!1464776 (= (extractMap!1671 (Cons!51827 (tuple2!52909 hash!414 oldBucket!40) Nil!51827)) lt!1809373)))

(declare-fun b!4645010 () Bool)

(assert (=> b!4645010 (= e!2897637 (addToMapMapFromBucket!1072 (_2!29748 (h!57951 (Cons!51827 (tuple2!52909 hash!414 oldBucket!40) Nil!51827))) (extractMap!1671 (t!359047 (Cons!51827 (tuple2!52909 hash!414 oldBucket!40) Nil!51827)))))))

(declare-fun b!4645011 () Bool)

(assert (=> b!4645011 (= e!2897637 (ListMap!4500 Nil!51826))))

(assert (= (and d!1464776 c!794812) b!4645010))

(assert (= (and d!1464776 (not c!794812)) b!4645011))

(declare-fun m!5509953 () Bool)

(assert (=> d!1464776 m!5509953))

(declare-fun m!5509955 () Bool)

(assert (=> d!1464776 m!5509955))

(declare-fun m!5509957 () Bool)

(assert (=> b!4645010 m!5509957))

(assert (=> b!4645010 m!5509957))

(declare-fun m!5509959 () Bool)

(assert (=> b!4645010 m!5509959))

(assert (=> b!4644921 d!1464776))

(declare-fun bs!1036067 () Bool)

(declare-fun b!4645026 () Bool)

(assert (= bs!1036067 (and b!4645026 d!1464772)))

(declare-fun lambda!197265 () Int)

(assert (=> bs!1036067 (not (= lambda!197265 lambda!197229))))

(assert (=> b!4645026 true))

(declare-fun bs!1036068 () Bool)

(declare-fun b!4645028 () Bool)

(assert (= bs!1036068 (and b!4645028 d!1464772)))

(declare-fun lambda!197266 () Int)

(assert (=> bs!1036068 (not (= lambda!197266 lambda!197229))))

(declare-fun bs!1036069 () Bool)

(assert (= bs!1036069 (and b!4645028 b!4645026)))

(assert (=> bs!1036069 (= lambda!197266 lambda!197265)))

(assert (=> b!4645028 true))

(declare-fun lambda!197267 () Int)

(assert (=> bs!1036068 (not (= lambda!197267 lambda!197229))))

(declare-fun lt!1809432 () ListMap!4499)

(assert (=> bs!1036069 (= (= lt!1809432 (extractMap!1671 Nil!51827)) (= lambda!197267 lambda!197265))))

(assert (=> b!4645028 (= (= lt!1809432 (extractMap!1671 Nil!51827)) (= lambda!197267 lambda!197266))))

(assert (=> b!4645028 true))

(declare-fun bs!1036070 () Bool)

(declare-fun d!1464778 () Bool)

(assert (= bs!1036070 (and d!1464778 d!1464772)))

(declare-fun lambda!197272 () Int)

(assert (=> bs!1036070 (not (= lambda!197272 lambda!197229))))

(declare-fun bs!1036071 () Bool)

(assert (= bs!1036071 (and d!1464778 b!4645026)))

(declare-fun lt!1809433 () ListMap!4499)

(assert (=> bs!1036071 (= (= lt!1809433 (extractMap!1671 Nil!51827)) (= lambda!197272 lambda!197265))))

(declare-fun bs!1036072 () Bool)

(assert (= bs!1036072 (and d!1464778 b!4645028)))

(assert (=> bs!1036072 (= (= lt!1809433 (extractMap!1671 Nil!51827)) (= lambda!197272 lambda!197266))))

(assert (=> bs!1036072 (= (= lt!1809433 lt!1809432) (= lambda!197272 lambda!197267))))

(assert (=> d!1464778 true))

(declare-fun bm!324304 () Bool)

(declare-fun call!324311 () Unit!116139)

(declare-fun lemmaContainsAllItsOwnKeys!577 (ListMap!4499) Unit!116139)

(assert (=> bm!324304 (= call!324311 (lemmaContainsAllItsOwnKeys!577 (extractMap!1671 Nil!51827)))))

(declare-fun e!2897646 () ListMap!4499)

(assert (=> b!4645026 (= e!2897646 (extractMap!1671 Nil!51827))))

(declare-fun lt!1809424 () Unit!116139)

(assert (=> b!4645026 (= lt!1809424 call!324311)))

(declare-fun call!324309 () Bool)

(assert (=> b!4645026 call!324309))

(declare-fun lt!1809425 () Unit!116139)

(assert (=> b!4645026 (= lt!1809425 lt!1809424)))

(declare-fun call!324310 () Bool)

(assert (=> b!4645026 call!324310))

(declare-fun lt!1809442 () Unit!116139)

(declare-fun Unit!116143 () Unit!116139)

(assert (=> b!4645026 (= lt!1809442 Unit!116143)))

(declare-fun b!4645027 () Bool)

(declare-fun res!1951505 () Bool)

(declare-fun e!2897647 () Bool)

(assert (=> b!4645027 (=> (not res!1951505) (not e!2897647))))

(assert (=> b!4645027 (= res!1951505 (forall!10973 (toList!5171 (extractMap!1671 Nil!51827)) lambda!197272))))

(declare-fun c!794817 () Bool)

(declare-fun bm!324305 () Bool)

(assert (=> bm!324305 (= call!324310 (forall!10973 (ite c!794817 (toList!5171 (extractMap!1671 Nil!51827)) oldBucket!40) (ite c!794817 lambda!197265 lambda!197267)))))

(declare-fun lt!1809426 () ListMap!4499)

(declare-fun bm!324306 () Bool)

(assert (=> bm!324306 (= call!324309 (forall!10973 (ite c!794817 (toList!5171 (extractMap!1671 Nil!51827)) (toList!5171 lt!1809426)) (ite c!794817 lambda!197265 lambda!197267)))))

(assert (=> b!4645028 (= e!2897646 lt!1809432)))

(declare-fun +!1961 (ListMap!4499 tuple2!52906) ListMap!4499)

(assert (=> b!4645028 (= lt!1809426 (+!1961 (extractMap!1671 Nil!51827) (h!57950 oldBucket!40)))))

(assert (=> b!4645028 (= lt!1809432 (addToMapMapFromBucket!1072 (t!359046 oldBucket!40) (+!1961 (extractMap!1671 Nil!51827) (h!57950 oldBucket!40))))))

(declare-fun lt!1809439 () Unit!116139)

(assert (=> b!4645028 (= lt!1809439 call!324311)))

(assert (=> b!4645028 (forall!10973 (toList!5171 (extractMap!1671 Nil!51827)) lambda!197266)))

(declare-fun lt!1809431 () Unit!116139)

(assert (=> b!4645028 (= lt!1809431 lt!1809439)))

(assert (=> b!4645028 (forall!10973 (toList!5171 lt!1809426) lambda!197267)))

(declare-fun lt!1809428 () Unit!116139)

(declare-fun Unit!116144 () Unit!116139)

(assert (=> b!4645028 (= lt!1809428 Unit!116144)))

(assert (=> b!4645028 (forall!10973 (t!359046 oldBucket!40) lambda!197267)))

(declare-fun lt!1809435 () Unit!116139)

(declare-fun Unit!116145 () Unit!116139)

(assert (=> b!4645028 (= lt!1809435 Unit!116145)))

(declare-fun lt!1809429 () Unit!116139)

(declare-fun Unit!116146 () Unit!116139)

(assert (=> b!4645028 (= lt!1809429 Unit!116146)))

(declare-fun lt!1809436 () Unit!116139)

(declare-fun forallContained!3195 (List!51950 Int tuple2!52906) Unit!116139)

(assert (=> b!4645028 (= lt!1809436 (forallContained!3195 (toList!5171 lt!1809426) lambda!197267 (h!57950 oldBucket!40)))))

(assert (=> b!4645028 (contains!14976 lt!1809426 (_1!29747 (h!57950 oldBucket!40)))))

(declare-fun lt!1809444 () Unit!116139)

(declare-fun Unit!116147 () Unit!116139)

(assert (=> b!4645028 (= lt!1809444 Unit!116147)))

(assert (=> b!4645028 (contains!14976 lt!1809432 (_1!29747 (h!57950 oldBucket!40)))))

(declare-fun lt!1809434 () Unit!116139)

(declare-fun Unit!116148 () Unit!116139)

(assert (=> b!4645028 (= lt!1809434 Unit!116148)))

(assert (=> b!4645028 (forall!10973 oldBucket!40 lambda!197267)))

(declare-fun lt!1809441 () Unit!116139)

(declare-fun Unit!116149 () Unit!116139)

(assert (=> b!4645028 (= lt!1809441 Unit!116149)))

(assert (=> b!4645028 call!324309))

(declare-fun lt!1809440 () Unit!116139)

(declare-fun Unit!116150 () Unit!116139)

(assert (=> b!4645028 (= lt!1809440 Unit!116150)))

(declare-fun lt!1809438 () Unit!116139)

(declare-fun Unit!116151 () Unit!116139)

(assert (=> b!4645028 (= lt!1809438 Unit!116151)))

(declare-fun lt!1809437 () Unit!116139)

(declare-fun addForallContainsKeyThenBeforeAdding!576 (ListMap!4499 ListMap!4499 K!13188 V!13434) Unit!116139)

(assert (=> b!4645028 (= lt!1809437 (addForallContainsKeyThenBeforeAdding!576 (extractMap!1671 Nil!51827) lt!1809432 (_1!29747 (h!57950 oldBucket!40)) (_2!29747 (h!57950 oldBucket!40))))))

(assert (=> b!4645028 (forall!10973 (toList!5171 (extractMap!1671 Nil!51827)) lambda!197267)))

(declare-fun lt!1809443 () Unit!116139)

(assert (=> b!4645028 (= lt!1809443 lt!1809437)))

(assert (=> b!4645028 (forall!10973 (toList!5171 (extractMap!1671 Nil!51827)) lambda!197267)))

(declare-fun lt!1809430 () Unit!116139)

(declare-fun Unit!116152 () Unit!116139)

(assert (=> b!4645028 (= lt!1809430 Unit!116152)))

(declare-fun res!1951506 () Bool)

(assert (=> b!4645028 (= res!1951506 call!324310)))

(declare-fun e!2897648 () Bool)

(assert (=> b!4645028 (=> (not res!1951506) (not e!2897648))))

(assert (=> b!4645028 e!2897648))

(declare-fun lt!1809427 () Unit!116139)

(declare-fun Unit!116153 () Unit!116139)

(assert (=> b!4645028 (= lt!1809427 Unit!116153)))

(declare-fun b!4645030 () Bool)

(assert (=> b!4645030 (= e!2897647 (invariantList!1277 (toList!5171 lt!1809433)))))

(declare-fun b!4645029 () Bool)

(assert (=> b!4645029 (= e!2897648 (forall!10973 (toList!5171 (extractMap!1671 Nil!51827)) lambda!197267))))

(assert (=> d!1464778 e!2897647))

(declare-fun res!1951504 () Bool)

(assert (=> d!1464778 (=> (not res!1951504) (not e!2897647))))

(assert (=> d!1464778 (= res!1951504 (forall!10973 oldBucket!40 lambda!197272))))

(assert (=> d!1464778 (= lt!1809433 e!2897646)))

(assert (=> d!1464778 (= c!794817 (is-Nil!51826 oldBucket!40))))

(assert (=> d!1464778 (noDuplicateKeys!1615 oldBucket!40)))

(assert (=> d!1464778 (= (addToMapMapFromBucket!1072 oldBucket!40 (extractMap!1671 Nil!51827)) lt!1809433)))

(assert (= (and d!1464778 c!794817) b!4645026))

(assert (= (and d!1464778 (not c!794817)) b!4645028))

(assert (= (and b!4645028 res!1951506) b!4645029))

(assert (= (or b!4645026 b!4645028) bm!324304))

(assert (= (or b!4645026 b!4645028) bm!324306))

(assert (= (or b!4645026 b!4645028) bm!324305))

(assert (= (and d!1464778 res!1951504) b!4645027))

(assert (= (and b!4645027 res!1951505) b!4645030))

(declare-fun m!5509961 () Bool)

(assert (=> bm!324306 m!5509961))

(declare-fun m!5509963 () Bool)

(assert (=> d!1464778 m!5509963))

(assert (=> d!1464778 m!5509901))

(assert (=> bm!324304 m!5509897))

(declare-fun m!5509965 () Bool)

(assert (=> bm!324304 m!5509965))

(declare-fun m!5509967 () Bool)

(assert (=> b!4645030 m!5509967))

(declare-fun m!5509969 () Bool)

(assert (=> bm!324305 m!5509969))

(declare-fun m!5509971 () Bool)

(assert (=> b!4645029 m!5509971))

(declare-fun m!5509973 () Bool)

(assert (=> b!4645028 m!5509973))

(assert (=> b!4645028 m!5509897))

(declare-fun m!5509975 () Bool)

(assert (=> b!4645028 m!5509975))

(declare-fun m!5509977 () Bool)

(assert (=> b!4645028 m!5509977))

(assert (=> b!4645028 m!5509897))

(declare-fun m!5509979 () Bool)

(assert (=> b!4645028 m!5509979))

(declare-fun m!5509981 () Bool)

(assert (=> b!4645028 m!5509981))

(assert (=> b!4645028 m!5509971))

(declare-fun m!5509983 () Bool)

(assert (=> b!4645028 m!5509983))

(assert (=> b!4645028 m!5509971))

(assert (=> b!4645028 m!5509979))

(declare-fun m!5509985 () Bool)

(assert (=> b!4645028 m!5509985))

(declare-fun m!5509987 () Bool)

(assert (=> b!4645028 m!5509987))

(declare-fun m!5509989 () Bool)

(assert (=> b!4645028 m!5509989))

(declare-fun m!5509991 () Bool)

(assert (=> b!4645028 m!5509991))

(declare-fun m!5509993 () Bool)

(assert (=> b!4645027 m!5509993))

(assert (=> b!4644923 d!1464778))

(declare-fun bs!1036073 () Bool)

(declare-fun d!1464780 () Bool)

(assert (= bs!1036073 (and d!1464780 d!1464776)))

(declare-fun lambda!197279 () Int)

(assert (=> bs!1036073 (= lambda!197279 lambda!197232)))

(declare-fun lt!1809469 () ListMap!4499)

(assert (=> d!1464780 (invariantList!1277 (toList!5171 lt!1809469))))

(declare-fun e!2897649 () ListMap!4499)

(assert (=> d!1464780 (= lt!1809469 e!2897649)))

(declare-fun c!794818 () Bool)

(assert (=> d!1464780 (= c!794818 (is-Cons!51827 Nil!51827))))

(assert (=> d!1464780 (forall!10974 Nil!51827 lambda!197279)))

(assert (=> d!1464780 (= (extractMap!1671 Nil!51827) lt!1809469)))

(declare-fun b!4645033 () Bool)

(assert (=> b!4645033 (= e!2897649 (addToMapMapFromBucket!1072 (_2!29748 (h!57951 Nil!51827)) (extractMap!1671 (t!359047 Nil!51827))))))

(declare-fun b!4645034 () Bool)

(assert (=> b!4645034 (= e!2897649 (ListMap!4500 Nil!51826))))

(assert (= (and d!1464780 c!794818) b!4645033))

(assert (= (and d!1464780 (not c!794818)) b!4645034))

(declare-fun m!5509995 () Bool)

(assert (=> d!1464780 m!5509995))

(declare-fun m!5509997 () Bool)

(assert (=> d!1464780 m!5509997))

(declare-fun m!5509999 () Bool)

(assert (=> b!4645033 m!5509999))

(assert (=> b!4645033 m!5509999))

(declare-fun m!5510001 () Bool)

(assert (=> b!4645033 m!5510001))

(assert (=> b!4644923 d!1464780))

(declare-fun d!1464782 () Bool)

(declare-fun hash!3734 (Hashable!6012 K!13188) (_ BitVec 64))

(assert (=> d!1464782 (= (hash!3732 hashF!1389 key!4968) (hash!3734 hashF!1389 key!4968))))

(declare-fun bs!1036074 () Bool)

(assert (= bs!1036074 d!1464782))

(declare-fun m!5510003 () Bool)

(assert (=> bs!1036074 m!5510003))

(assert (=> b!4644922 d!1464782))

(declare-fun d!1464784 () Bool)

(declare-fun res!1951507 () Bool)

(declare-fun e!2897650 () Bool)

(assert (=> d!1464784 (=> res!1951507 e!2897650)))

(assert (=> d!1464784 (= res!1951507 (not (is-Cons!51826 newBucket!224)))))

(assert (=> d!1464784 (= (noDuplicateKeys!1615 newBucket!224) e!2897650)))

(declare-fun b!4645035 () Bool)

(declare-fun e!2897651 () Bool)

(assert (=> b!4645035 (= e!2897650 e!2897651)))

(declare-fun res!1951508 () Bool)

(assert (=> b!4645035 (=> (not res!1951508) (not e!2897651))))

(assert (=> b!4645035 (= res!1951508 (not (containsKey!2677 (t!359046 newBucket!224) (_1!29747 (h!57950 newBucket!224)))))))

(declare-fun b!4645036 () Bool)

(assert (=> b!4645036 (= e!2897651 (noDuplicateKeys!1615 (t!359046 newBucket!224)))))

(assert (= (and d!1464784 (not res!1951507)) b!4645035))

(assert (= (and b!4645035 res!1951508) b!4645036))

(declare-fun m!5510005 () Bool)

(assert (=> b!4645035 m!5510005))

(declare-fun m!5510007 () Bool)

(assert (=> b!4645036 m!5510007))

(assert (=> b!4644924 d!1464784))

(declare-fun bs!1036075 () Bool)

(declare-fun d!1464786 () Bool)

(assert (= bs!1036075 (and d!1464786 b!4645028)))

(declare-fun lambda!197286 () Int)

(assert (=> bs!1036075 (not (= lambda!197286 lambda!197267))))

(assert (=> bs!1036075 (not (= lambda!197286 lambda!197266))))

(declare-fun bs!1036076 () Bool)

(assert (= bs!1036076 (and d!1464786 b!4645026)))

(assert (=> bs!1036076 (not (= lambda!197286 lambda!197265))))

(declare-fun bs!1036077 () Bool)

(assert (= bs!1036077 (and d!1464786 d!1464772)))

(assert (=> bs!1036077 (= lambda!197286 lambda!197229)))

(declare-fun bs!1036078 () Bool)

(assert (= bs!1036078 (and d!1464786 d!1464778)))

(assert (=> bs!1036078 (not (= lambda!197286 lambda!197272))))

(assert (=> d!1464786 true))

(assert (=> d!1464786 true))

(assert (=> d!1464786 (= (allKeysSameHash!1469 oldBucket!40 hash!414 hashF!1389) (forall!10973 oldBucket!40 lambda!197286))))

(declare-fun bs!1036079 () Bool)

(assert (= bs!1036079 d!1464786))

(declare-fun m!5510009 () Bool)

(assert (=> bs!1036079 m!5510009))

(assert (=> b!4644929 d!1464786))

(declare-fun b!4645043 () Bool)

(declare-fun e!2897656 () Bool)

(declare-fun tp!1343066 () Bool)

(assert (=> b!4645043 (= e!2897656 (and tp_is_empty!29753 tp_is_empty!29755 tp!1343066))))

(assert (=> b!4644926 (= tp!1343056 e!2897656)))

(assert (= (and b!4644926 (is-Cons!51826 (t!359046 oldBucket!40))) b!4645043))

(declare-fun b!4645044 () Bool)

(declare-fun e!2897657 () Bool)

(declare-fun tp!1343067 () Bool)

(assert (=> b!4645044 (= e!2897657 (and tp_is_empty!29753 tp_is_empty!29755 tp!1343067))))

(assert (=> b!4644928 (= tp!1343057 e!2897657)))

(assert (= (and b!4644928 (is-Cons!51826 (t!359046 newBucket!224))) b!4645044))

(push 1)

(assert (not bm!324306))

(assert (not b!4645005))

(assert (not b!4644961))

(assert (not b!4645027))

(assert (not b!4645010))

(assert (not bm!324305))

(assert (not b!4645043))

(assert (not b!4645028))

(assert (not b!4645029))

(assert (not b!4645001))

(assert (not bm!324297))

(assert (not b!4644962))

(assert (not bm!324304))

(assert (not b!4644973))

(assert (not d!1464780))

(assert (not b!4645003))

(assert tp_is_empty!29753)

(assert (not d!1464774))

(assert tp_is_empty!29755)

(assert (not b!4645002))

(assert (not d!1464778))

(assert (not d!1464786))

(assert (not b!4645036))

(assert (not b!4645030))

(assert (not b!4645033))

(assert (not b!4645035))

(assert (not d!1464770))

(assert (not b!4644998))

(assert (not d!1464776))

(assert (not b!4644997))

(assert (not d!1464772))

(assert (not d!1464782))

(assert (not b!4645044))

(assert (not b!4645000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

