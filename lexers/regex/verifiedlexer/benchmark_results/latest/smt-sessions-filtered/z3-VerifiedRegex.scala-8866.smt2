; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!473568 () Bool)

(assert start!473568)

(declare-fun b!4685888 () Bool)

(declare-fun e!2923404 () Bool)

(declare-fun tp!1345597 () Bool)

(assert (=> b!4685888 (= e!2923404 tp!1345597)))

(declare-fun b!4685889 () Bool)

(declare-fun e!2923403 () Bool)

(declare-fun e!2923402 () Bool)

(assert (=> b!4685889 (= e!2923403 e!2923402)))

(declare-fun res!1975783 () Bool)

(assert (=> b!4685889 (=> (not res!1975783) (not e!2923402))))

(declare-fun lt!1844967 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4685889 (= res!1975783 (= lt!1844967 hash!405))))

(declare-datatypes ((Hashable!6203 0))(
  ( (HashableExt!6202 (__x!31906 Int)) )
))
(declare-fun hashF!1323 () Hashable!6203)

(declare-datatypes ((K!13735 0))(
  ( (K!13736 (val!19259 Int)) )
))
(declare-fun key!4653 () K!13735)

(declare-fun hash!4031 (Hashable!6203 K!13735) (_ BitVec 64))

(assert (=> b!4685889 (= lt!1844967 (hash!4031 hashF!1323 key!4653))))

(declare-fun e!2923407 () Bool)

(declare-fun tp!1345595 () Bool)

(declare-fun tp_is_empty!30631 () Bool)

(declare-fun tp_is_empty!30629 () Bool)

(declare-fun b!4685890 () Bool)

(assert (=> b!4685890 (= e!2923407 (and tp_is_empty!30629 tp_is_empty!30631 tp!1345595))))

(declare-fun b!4685891 () Bool)

(declare-fun e!2923405 () Bool)

(assert (=> b!4685891 (= e!2923405 e!2923403)))

(declare-fun res!1975785 () Bool)

(assert (=> b!4685891 (=> (not res!1975785) (not e!2923403))))

(declare-datatypes ((V!13981 0))(
  ( (V!13982 (val!19260 Int)) )
))
(declare-datatypes ((tuple2!53730 0))(
  ( (tuple2!53731 (_1!30159 K!13735) (_2!30159 V!13981)) )
))
(declare-datatypes ((List!52479 0))(
  ( (Nil!52355) (Cons!52355 (h!58586 tuple2!53730) (t!359641 List!52479)) )
))
(declare-datatypes ((ListMap!4921 0))(
  ( (ListMap!4922 (toList!5557 List!52479)) )
))
(declare-fun lt!1844958 () ListMap!4921)

(declare-fun contains!15520 (ListMap!4921 K!13735) Bool)

(assert (=> b!4685891 (= res!1975785 (contains!15520 lt!1844958 key!4653))))

(declare-datatypes ((tuple2!53732 0))(
  ( (tuple2!53733 (_1!30160 (_ BitVec 64)) (_2!30160 List!52479)) )
))
(declare-datatypes ((List!52480 0))(
  ( (Nil!52356) (Cons!52356 (h!58587 tuple2!53732) (t!359642 List!52480)) )
))
(declare-datatypes ((ListLongMap!4087 0))(
  ( (ListLongMap!4088 (toList!5558 List!52480)) )
))
(declare-fun lm!2023 () ListLongMap!4087)

(declare-fun extractMap!1860 (List!52480) ListMap!4921)

(assert (=> b!4685891 (= lt!1844958 (extractMap!1860 (toList!5558 lm!2023)))))

(declare-fun b!4685892 () Bool)

(declare-fun res!1975794 () Bool)

(assert (=> b!4685892 (=> (not res!1975794) (not e!2923405))))

(declare-fun oldBucket!34 () List!52479)

(declare-fun noDuplicateKeys!1834 (List!52479) Bool)

(assert (=> b!4685892 (= res!1975794 (noDuplicateKeys!1834 oldBucket!34))))

(declare-fun b!4685893 () Bool)

(declare-fun e!2923406 () Bool)

(assert (=> b!4685893 (= e!2923402 (not e!2923406))))

(declare-fun res!1975786 () Bool)

(assert (=> b!4685893 (=> res!1975786 e!2923406)))

(get-info :version)

(assert (=> b!4685893 (= res!1975786 (or (and ((_ is Cons!52355) oldBucket!34) (= (_1!30159 (h!58586 oldBucket!34)) key!4653)) (not ((_ is Cons!52355) oldBucket!34)) (= (_1!30159 (h!58586 oldBucket!34)) key!4653)))))

(declare-fun lt!1844966 () ListMap!4921)

(declare-fun addToMapMapFromBucket!1266 (List!52479 ListMap!4921) ListMap!4921)

(assert (=> b!4685893 (= lt!1844958 (addToMapMapFromBucket!1266 (_2!30160 (h!58587 (toList!5558 lm!2023))) lt!1844966))))

(assert (=> b!4685893 (= lt!1844966 (extractMap!1860 (t!359642 (toList!5558 lm!2023))))))

(declare-fun tail!8536 (ListLongMap!4087) ListLongMap!4087)

(assert (=> b!4685893 (= (t!359642 (toList!5558 lm!2023)) (toList!5558 (tail!8536 lm!2023)))))

(declare-fun b!4685894 () Bool)

(declare-fun res!1975793 () Bool)

(assert (=> b!4685894 (=> (not res!1975793) (not e!2923405))))

(declare-fun newBucket!218 () List!52479)

(declare-fun removePairForKey!1429 (List!52479 K!13735) List!52479)

(assert (=> b!4685894 (= res!1975793 (= (removePairForKey!1429 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4685896 () Bool)

(declare-fun e!2923409 () Bool)

(assert (=> b!4685896 (= e!2923409 (not (= newBucket!218 Nil!52355)))))

(declare-fun lt!1844968 () tuple2!53730)

(declare-fun lt!1844957 () List!52479)

(declare-fun eq!993 (ListMap!4921 ListMap!4921) Bool)

(declare-fun +!2118 (ListMap!4921 tuple2!53730) ListMap!4921)

(assert (=> b!4685896 (eq!993 (addToMapMapFromBucket!1266 (Cons!52355 lt!1844968 lt!1844957) lt!1844966) (+!2118 (addToMapMapFromBucket!1266 lt!1844957 lt!1844966) lt!1844968))))

(declare-datatypes ((Unit!123233 0))(
  ( (Unit!123234) )
))
(declare-fun lt!1844956 () Unit!123233)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!242 (tuple2!53730 List!52479 ListMap!4921) Unit!123233)

(assert (=> b!4685896 (= lt!1844956 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!242 lt!1844968 lt!1844957 lt!1844966))))

(declare-fun head!9931 (List!52479) tuple2!53730)

(assert (=> b!4685896 (= lt!1844968 (head!9931 oldBucket!34))))

(declare-fun lt!1844965 () List!52480)

(assert (=> b!4685896 (contains!15520 (extractMap!1860 lt!1844965) key!4653)))

(declare-fun lt!1844963 () Unit!123233)

(declare-fun lemmaListContainsThenExtractedMapContains!426 (ListLongMap!4087 K!13735 Hashable!6203) Unit!123233)

(assert (=> b!4685896 (= lt!1844963 (lemmaListContainsThenExtractedMapContains!426 (ListLongMap!4088 lt!1844965) key!4653 hashF!1323))))

(assert (=> b!4685896 (= lt!1844965 (Cons!52356 (tuple2!53733 hash!405 (t!359641 oldBucket!34)) (t!359642 (toList!5558 lm!2023))))))

(declare-fun b!4685897 () Bool)

(declare-fun res!1975781 () Bool)

(assert (=> b!4685897 (=> (not res!1975781) (not e!2923402))))

(declare-fun allKeysSameHashInMap!1748 (ListLongMap!4087 Hashable!6203) Bool)

(assert (=> b!4685897 (= res!1975781 (allKeysSameHashInMap!1748 lm!2023 hashF!1323))))

(declare-fun b!4685898 () Bool)

(declare-fun e!2923408 () Bool)

(assert (=> b!4685898 (= e!2923408 e!2923409)))

(declare-fun res!1975792 () Bool)

(assert (=> b!4685898 (=> res!1975792 e!2923409)))

(declare-fun lt!1844962 () List!52479)

(assert (=> b!4685898 (= res!1975792 (not (= (removePairForKey!1429 lt!1844957 key!4653) lt!1844962)))))

(declare-fun tail!8537 (List!52479) List!52479)

(assert (=> b!4685898 (= lt!1844962 (tail!8537 newBucket!218))))

(assert (=> b!4685898 (= lt!1844957 (tail!8537 oldBucket!34))))

(declare-fun b!4685899 () Bool)

(declare-fun res!1975788 () Bool)

(assert (=> b!4685899 (=> (not res!1975788) (not e!2923405))))

(assert (=> b!4685899 (= res!1975788 (noDuplicateKeys!1834 newBucket!218))))

(declare-fun e!2923410 () Bool)

(declare-fun tp!1345596 () Bool)

(declare-fun b!4685900 () Bool)

(assert (=> b!4685900 (= e!2923410 (and tp_is_empty!30629 tp_is_empty!30631 tp!1345596))))

(declare-fun b!4685901 () Bool)

(declare-fun res!1975790 () Bool)

(assert (=> b!4685901 (=> (not res!1975790) (not e!2923402))))

(declare-fun head!9932 (List!52480) tuple2!53732)

(assert (=> b!4685901 (= res!1975790 (= (head!9932 (toList!5558 lm!2023)) (tuple2!53733 hash!405 oldBucket!34)))))

(declare-fun b!4685902 () Bool)

(declare-fun res!1975795 () Bool)

(assert (=> b!4685902 (=> (not res!1975795) (not e!2923402))))

(assert (=> b!4685902 (= res!1975795 ((_ is Cons!52356) (toList!5558 lm!2023)))))

(declare-fun b!4685903 () Bool)

(declare-fun res!1975791 () Bool)

(assert (=> b!4685903 (=> (not res!1975791) (not e!2923405))))

(declare-fun allKeysSameHash!1660 (List!52479 (_ BitVec 64) Hashable!6203) Bool)

(assert (=> b!4685903 (= res!1975791 (allKeysSameHash!1660 oldBucket!34 hash!405 hashF!1323))))

(declare-fun res!1975787 () Bool)

(assert (=> start!473568 (=> (not res!1975787) (not e!2923405))))

(declare-fun lambda!205979 () Int)

(declare-fun forall!11287 (List!52480 Int) Bool)

(assert (=> start!473568 (= res!1975787 (forall!11287 (toList!5558 lm!2023) lambda!205979))))

(assert (=> start!473568 e!2923405))

(declare-fun inv!67609 (ListLongMap!4087) Bool)

(assert (=> start!473568 (and (inv!67609 lm!2023) e!2923404)))

(assert (=> start!473568 tp_is_empty!30629))

(assert (=> start!473568 e!2923407))

(assert (=> start!473568 true))

(assert (=> start!473568 e!2923410))

(declare-fun b!4685895 () Bool)

(assert (=> b!4685895 (= e!2923406 e!2923408)))

(declare-fun res!1975784 () Bool)

(assert (=> b!4685895 (=> res!1975784 e!2923408)))

(declare-fun containsKey!3005 (List!52479 K!13735) Bool)

(assert (=> b!4685895 (= res!1975784 (not (containsKey!3005 (t!359641 oldBucket!34) key!4653)))))

(assert (=> b!4685895 (containsKey!3005 oldBucket!34 key!4653)))

(declare-fun lt!1844961 () Unit!123233)

(declare-fun lemmaGetPairDefinedThenContainsKey!186 (List!52479 K!13735 Hashable!6203) Unit!123233)

(assert (=> b!4685895 (= lt!1844961 (lemmaGetPairDefinedThenContainsKey!186 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1844969 () List!52479)

(declare-datatypes ((Option!12029 0))(
  ( (None!12028) (Some!12028 (v!46415 tuple2!53730)) )
))
(declare-fun isDefined!9284 (Option!12029) Bool)

(declare-fun getPair!438 (List!52479 K!13735) Option!12029)

(assert (=> b!4685895 (isDefined!9284 (getPair!438 lt!1844969 key!4653))))

(declare-fun lt!1844955 () Unit!123233)

(declare-fun lt!1844959 () tuple2!53732)

(declare-fun forallContained!3394 (List!52480 Int tuple2!53732) Unit!123233)

(assert (=> b!4685895 (= lt!1844955 (forallContained!3394 (toList!5558 lm!2023) lambda!205979 lt!1844959))))

(declare-fun contains!15521 (List!52480 tuple2!53732) Bool)

(assert (=> b!4685895 (contains!15521 (toList!5558 lm!2023) lt!1844959)))

(assert (=> b!4685895 (= lt!1844959 (tuple2!53733 lt!1844967 lt!1844969))))

(declare-fun lt!1844960 () Unit!123233)

(declare-fun lemmaGetValueImpliesTupleContained!243 (ListLongMap!4087 (_ BitVec 64) List!52479) Unit!123233)

(assert (=> b!4685895 (= lt!1844960 (lemmaGetValueImpliesTupleContained!243 lm!2023 lt!1844967 lt!1844969))))

(declare-fun apply!12317 (ListLongMap!4087 (_ BitVec 64)) List!52479)

(assert (=> b!4685895 (= lt!1844969 (apply!12317 lm!2023 lt!1844967))))

(declare-fun contains!15522 (ListLongMap!4087 (_ BitVec 64)) Bool)

(assert (=> b!4685895 (contains!15522 lm!2023 lt!1844967)))

(declare-fun lt!1844970 () Unit!123233)

(declare-fun lemmaInGenMapThenLongMapContainsHash!644 (ListLongMap!4087 K!13735 Hashable!6203) Unit!123233)

(assert (=> b!4685895 (= lt!1844970 (lemmaInGenMapThenLongMapContainsHash!644 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1844964 () Unit!123233)

(declare-fun lemmaInGenMapThenGetPairDefined!234 (ListLongMap!4087 K!13735 Hashable!6203) Unit!123233)

(assert (=> b!4685895 (= lt!1844964 (lemmaInGenMapThenGetPairDefined!234 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4685904 () Bool)

(declare-fun res!1975789 () Bool)

(assert (=> b!4685904 (=> res!1975789 e!2923409)))

(assert (=> b!4685904 (= res!1975789 (not (= (removePairForKey!1429 (t!359641 oldBucket!34) key!4653) lt!1844962)))))

(declare-fun b!4685905 () Bool)

(declare-fun res!1975782 () Bool)

(assert (=> b!4685905 (=> (not res!1975782) (not e!2923402))))

(assert (=> b!4685905 (= res!1975782 (allKeysSameHash!1660 newBucket!218 hash!405 hashF!1323))))

(assert (= (and start!473568 res!1975787) b!4685892))

(assert (= (and b!4685892 res!1975794) b!4685899))

(assert (= (and b!4685899 res!1975788) b!4685894))

(assert (= (and b!4685894 res!1975793) b!4685903))

(assert (= (and b!4685903 res!1975791) b!4685891))

(assert (= (and b!4685891 res!1975785) b!4685889))

(assert (= (and b!4685889 res!1975783) b!4685905))

(assert (= (and b!4685905 res!1975782) b!4685897))

(assert (= (and b!4685897 res!1975781) b!4685901))

(assert (= (and b!4685901 res!1975790) b!4685902))

(assert (= (and b!4685902 res!1975795) b!4685893))

(assert (= (and b!4685893 (not res!1975786)) b!4685895))

(assert (= (and b!4685895 (not res!1975784)) b!4685898))

(assert (= (and b!4685898 (not res!1975792)) b!4685904))

(assert (= (and b!4685904 (not res!1975789)) b!4685896))

(assert (= start!473568 b!4685888))

(assert (= (and start!473568 ((_ is Cons!52355) oldBucket!34)) b!4685890))

(assert (= (and start!473568 ((_ is Cons!52355) newBucket!218)) b!4685900))

(declare-fun m!5584783 () Bool)

(assert (=> start!473568 m!5584783))

(declare-fun m!5584785 () Bool)

(assert (=> start!473568 m!5584785))

(declare-fun m!5584787 () Bool)

(assert (=> b!4685895 m!5584787))

(declare-fun m!5584789 () Bool)

(assert (=> b!4685895 m!5584789))

(declare-fun m!5584791 () Bool)

(assert (=> b!4685895 m!5584791))

(declare-fun m!5584793 () Bool)

(assert (=> b!4685895 m!5584793))

(declare-fun m!5584795 () Bool)

(assert (=> b!4685895 m!5584795))

(declare-fun m!5584797 () Bool)

(assert (=> b!4685895 m!5584797))

(declare-fun m!5584799 () Bool)

(assert (=> b!4685895 m!5584799))

(declare-fun m!5584801 () Bool)

(assert (=> b!4685895 m!5584801))

(declare-fun m!5584803 () Bool)

(assert (=> b!4685895 m!5584803))

(assert (=> b!4685895 m!5584791))

(declare-fun m!5584805 () Bool)

(assert (=> b!4685895 m!5584805))

(declare-fun m!5584807 () Bool)

(assert (=> b!4685895 m!5584807))

(declare-fun m!5584809 () Bool)

(assert (=> b!4685895 m!5584809))

(declare-fun m!5584811 () Bool)

(assert (=> b!4685903 m!5584811))

(declare-fun m!5584813 () Bool)

(assert (=> b!4685893 m!5584813))

(declare-fun m!5584815 () Bool)

(assert (=> b!4685893 m!5584815))

(declare-fun m!5584817 () Bool)

(assert (=> b!4685893 m!5584817))

(declare-fun m!5584819 () Bool)

(assert (=> b!4685889 m!5584819))

(declare-fun m!5584821 () Bool)

(assert (=> b!4685901 m!5584821))

(declare-fun m!5584823 () Bool)

(assert (=> b!4685894 m!5584823))

(declare-fun m!5584825 () Bool)

(assert (=> b!4685905 m!5584825))

(declare-fun m!5584827 () Bool)

(assert (=> b!4685891 m!5584827))

(declare-fun m!5584829 () Bool)

(assert (=> b!4685891 m!5584829))

(declare-fun m!5584831 () Bool)

(assert (=> b!4685898 m!5584831))

(declare-fun m!5584833 () Bool)

(assert (=> b!4685898 m!5584833))

(declare-fun m!5584835 () Bool)

(assert (=> b!4685898 m!5584835))

(declare-fun m!5584837 () Bool)

(assert (=> b!4685904 m!5584837))

(declare-fun m!5584839 () Bool)

(assert (=> b!4685892 m!5584839))

(declare-fun m!5584841 () Bool)

(assert (=> b!4685896 m!5584841))

(declare-fun m!5584843 () Bool)

(assert (=> b!4685896 m!5584843))

(declare-fun m!5584845 () Bool)

(assert (=> b!4685896 m!5584845))

(declare-fun m!5584847 () Bool)

(assert (=> b!4685896 m!5584847))

(declare-fun m!5584849 () Bool)

(assert (=> b!4685896 m!5584849))

(assert (=> b!4685896 m!5584849))

(assert (=> b!4685896 m!5584845))

(declare-fun m!5584851 () Bool)

(assert (=> b!4685896 m!5584851))

(assert (=> b!4685896 m!5584847))

(declare-fun m!5584853 () Bool)

(assert (=> b!4685896 m!5584853))

(declare-fun m!5584855 () Bool)

(assert (=> b!4685896 m!5584855))

(declare-fun m!5584857 () Bool)

(assert (=> b!4685896 m!5584857))

(assert (=> b!4685896 m!5584843))

(declare-fun m!5584859 () Bool)

(assert (=> b!4685899 m!5584859))

(declare-fun m!5584861 () Bool)

(assert (=> b!4685897 m!5584861))

(check-sat (not b!4685895) (not b!4685903) (not start!473568) (not b!4685891) (not b!4685900) tp_is_empty!30629 (not b!4685892) (not b!4685901) (not b!4685893) (not b!4685904) (not b!4685894) (not b!4685896) (not b!4685889) (not b!4685888) (not b!4685899) (not b!4685905) tp_is_empty!30631 (not b!4685898) (not b!4685890) (not b!4685897))
(check-sat)
(get-model)

(declare-fun d!1489059 () Bool)

(declare-fun res!1975800 () Bool)

(declare-fun e!2923415 () Bool)

(assert (=> d!1489059 (=> res!1975800 e!2923415)))

(assert (=> d!1489059 (= res!1975800 (not ((_ is Cons!52355) oldBucket!34)))))

(assert (=> d!1489059 (= (noDuplicateKeys!1834 oldBucket!34) e!2923415)))

(declare-fun b!4685910 () Bool)

(declare-fun e!2923416 () Bool)

(assert (=> b!4685910 (= e!2923415 e!2923416)))

(declare-fun res!1975801 () Bool)

(assert (=> b!4685910 (=> (not res!1975801) (not e!2923416))))

(assert (=> b!4685910 (= res!1975801 (not (containsKey!3005 (t!359641 oldBucket!34) (_1!30159 (h!58586 oldBucket!34)))))))

(declare-fun b!4685911 () Bool)

(assert (=> b!4685911 (= e!2923416 (noDuplicateKeys!1834 (t!359641 oldBucket!34)))))

(assert (= (and d!1489059 (not res!1975800)) b!4685910))

(assert (= (and b!4685910 res!1975801) b!4685911))

(declare-fun m!5584863 () Bool)

(assert (=> b!4685910 m!5584863))

(declare-fun m!5584865 () Bool)

(assert (=> b!4685911 m!5584865))

(assert (=> b!4685892 d!1489059))

(declare-fun d!1489061 () Bool)

(assert (=> d!1489061 true))

(assert (=> d!1489061 true))

(declare-fun lambda!205982 () Int)

(declare-fun forall!11288 (List!52479 Int) Bool)

(assert (=> d!1489061 (= (allKeysSameHash!1660 oldBucket!34 hash!405 hashF!1323) (forall!11288 oldBucket!34 lambda!205982))))

(declare-fun bs!1084158 () Bool)

(assert (= bs!1084158 d!1489061))

(declare-fun m!5584867 () Bool)

(assert (=> bs!1084158 m!5584867))

(assert (=> b!4685903 d!1489061))

(declare-fun bs!1084163 () Bool)

(declare-fun b!4685982 () Bool)

(assert (= bs!1084163 (and b!4685982 d!1489061)))

(declare-fun lambda!206033 () Int)

(assert (=> bs!1084163 (not (= lambda!206033 lambda!205982))))

(assert (=> b!4685982 true))

(declare-fun bs!1084164 () Bool)

(declare-fun b!4685981 () Bool)

(assert (= bs!1084164 (and b!4685981 d!1489061)))

(declare-fun lambda!206036 () Int)

(assert (=> bs!1084164 (not (= lambda!206036 lambda!205982))))

(declare-fun bs!1084165 () Bool)

(assert (= bs!1084165 (and b!4685981 b!4685982)))

(assert (=> bs!1084165 (= lambda!206036 lambda!206033)))

(assert (=> b!4685981 true))

(declare-fun lambda!206037 () Int)

(assert (=> bs!1084164 (not (= lambda!206037 lambda!205982))))

(declare-fun lt!1845097 () ListMap!4921)

(assert (=> bs!1084165 (= (= lt!1845097 lt!1844966) (= lambda!206037 lambda!206033))))

(assert (=> b!4685981 (= (= lt!1845097 lt!1844966) (= lambda!206037 lambda!206036))))

(assert (=> b!4685981 true))

(declare-fun bs!1084166 () Bool)

(declare-fun d!1489063 () Bool)

(assert (= bs!1084166 (and d!1489063 d!1489061)))

(declare-fun lambda!206042 () Int)

(assert (=> bs!1084166 (not (= lambda!206042 lambda!205982))))

(declare-fun bs!1084167 () Bool)

(assert (= bs!1084167 (and d!1489063 b!4685982)))

(declare-fun lt!1845081 () ListMap!4921)

(assert (=> bs!1084167 (= (= lt!1845081 lt!1844966) (= lambda!206042 lambda!206033))))

(declare-fun bs!1084168 () Bool)

(assert (= bs!1084168 (and d!1489063 b!4685981)))

(assert (=> bs!1084168 (= (= lt!1845081 lt!1844966) (= lambda!206042 lambda!206036))))

(assert (=> bs!1084168 (= (= lt!1845081 lt!1845097) (= lambda!206042 lambda!206037))))

(assert (=> d!1489063 true))

(declare-fun lt!1845080 () ListMap!4921)

(declare-fun bm!327436 () Bool)

(declare-fun call!327443 () Bool)

(declare-fun c!801288 () Bool)

(assert (=> bm!327436 (= call!327443 (forall!11288 (ite c!801288 (toList!5557 lt!1844966) (toList!5557 lt!1845080)) (ite c!801288 lambda!206033 lambda!206037)))))

(declare-fun b!4685979 () Bool)

(declare-fun e!2923454 () Bool)

(declare-fun invariantList!1396 (List!52479) Bool)

(assert (=> b!4685979 (= e!2923454 (invariantList!1396 (toList!5557 lt!1845081)))))

(declare-fun call!327442 () Bool)

(declare-fun bm!327437 () Bool)

(assert (=> bm!327437 (= call!327442 (forall!11288 (toList!5557 lt!1844966) (ite c!801288 lambda!206033 lambda!206037)))))

(assert (=> d!1489063 e!2923454))

(declare-fun res!1975819 () Bool)

(assert (=> d!1489063 (=> (not res!1975819) (not e!2923454))))

(assert (=> d!1489063 (= res!1975819 (forall!11288 (_2!30160 (h!58587 (toList!5558 lm!2023))) lambda!206042))))

(declare-fun e!2923455 () ListMap!4921)

(assert (=> d!1489063 (= lt!1845081 e!2923455)))

(assert (=> d!1489063 (= c!801288 ((_ is Nil!52355) (_2!30160 (h!58587 (toList!5558 lm!2023)))))))

(assert (=> d!1489063 (noDuplicateKeys!1834 (_2!30160 (h!58587 (toList!5558 lm!2023))))))

(assert (=> d!1489063 (= (addToMapMapFromBucket!1266 (_2!30160 (h!58587 (toList!5558 lm!2023))) lt!1844966) lt!1845081)))

(declare-fun b!4685980 () Bool)

(declare-fun e!2923456 () Bool)

(assert (=> b!4685980 (= e!2923456 (forall!11288 (toList!5557 lt!1844966) lambda!206037))))

(assert (=> b!4685981 (= e!2923455 lt!1845097)))

(assert (=> b!4685981 (= lt!1845080 (+!2118 lt!1844966 (h!58586 (_2!30160 (h!58587 (toList!5558 lm!2023))))))))

(assert (=> b!4685981 (= lt!1845097 (addToMapMapFromBucket!1266 (t!359641 (_2!30160 (h!58587 (toList!5558 lm!2023)))) (+!2118 lt!1844966 (h!58586 (_2!30160 (h!58587 (toList!5558 lm!2023)))))))))

(declare-fun lt!1845085 () Unit!123233)

(declare-fun call!327441 () Unit!123233)

(assert (=> b!4685981 (= lt!1845085 call!327441)))

(assert (=> b!4685981 (forall!11288 (toList!5557 lt!1844966) lambda!206036)))

(declare-fun lt!1845083 () Unit!123233)

(assert (=> b!4685981 (= lt!1845083 lt!1845085)))

(assert (=> b!4685981 (forall!11288 (toList!5557 lt!1845080) lambda!206037)))

(declare-fun lt!1845096 () Unit!123233)

(declare-fun Unit!123241 () Unit!123233)

(assert (=> b!4685981 (= lt!1845096 Unit!123241)))

(assert (=> b!4685981 (forall!11288 (t!359641 (_2!30160 (h!58587 (toList!5558 lm!2023)))) lambda!206037)))

(declare-fun lt!1845099 () Unit!123233)

(declare-fun Unit!123242 () Unit!123233)

(assert (=> b!4685981 (= lt!1845099 Unit!123242)))

(declare-fun lt!1845086 () Unit!123233)

(declare-fun Unit!123244 () Unit!123233)

(assert (=> b!4685981 (= lt!1845086 Unit!123244)))

(declare-fun lt!1845084 () Unit!123233)

(declare-fun forallContained!3396 (List!52479 Int tuple2!53730) Unit!123233)

(assert (=> b!4685981 (= lt!1845084 (forallContained!3396 (toList!5557 lt!1845080) lambda!206037 (h!58586 (_2!30160 (h!58587 (toList!5558 lm!2023))))))))

(assert (=> b!4685981 (contains!15520 lt!1845080 (_1!30159 (h!58586 (_2!30160 (h!58587 (toList!5558 lm!2023))))))))

(declare-fun lt!1845087 () Unit!123233)

(declare-fun Unit!123247 () Unit!123233)

(assert (=> b!4685981 (= lt!1845087 Unit!123247)))

(assert (=> b!4685981 (contains!15520 lt!1845097 (_1!30159 (h!58586 (_2!30160 (h!58587 (toList!5558 lm!2023))))))))

(declare-fun lt!1845093 () Unit!123233)

(declare-fun Unit!123250 () Unit!123233)

(assert (=> b!4685981 (= lt!1845093 Unit!123250)))

(assert (=> b!4685981 (forall!11288 (_2!30160 (h!58587 (toList!5558 lm!2023))) lambda!206037)))

(declare-fun lt!1845091 () Unit!123233)

(declare-fun Unit!123251 () Unit!123233)

(assert (=> b!4685981 (= lt!1845091 Unit!123251)))

(assert (=> b!4685981 call!327443))

(declare-fun lt!1845092 () Unit!123233)

(declare-fun Unit!123252 () Unit!123233)

(assert (=> b!4685981 (= lt!1845092 Unit!123252)))

(declare-fun lt!1845082 () Unit!123233)

(declare-fun Unit!123253 () Unit!123233)

(assert (=> b!4685981 (= lt!1845082 Unit!123253)))

(declare-fun lt!1845095 () Unit!123233)

(declare-fun addForallContainsKeyThenBeforeAdding!683 (ListMap!4921 ListMap!4921 K!13735 V!13981) Unit!123233)

(assert (=> b!4685981 (= lt!1845095 (addForallContainsKeyThenBeforeAdding!683 lt!1844966 lt!1845097 (_1!30159 (h!58586 (_2!30160 (h!58587 (toList!5558 lm!2023))))) (_2!30159 (h!58586 (_2!30160 (h!58587 (toList!5558 lm!2023)))))))))

(assert (=> b!4685981 (forall!11288 (toList!5557 lt!1844966) lambda!206037)))

(declare-fun lt!1845090 () Unit!123233)

(assert (=> b!4685981 (= lt!1845090 lt!1845095)))

(assert (=> b!4685981 call!327442))

(declare-fun lt!1845079 () Unit!123233)

(declare-fun Unit!123256 () Unit!123233)

(assert (=> b!4685981 (= lt!1845079 Unit!123256)))

(declare-fun res!1975817 () Bool)

(assert (=> b!4685981 (= res!1975817 (forall!11288 (_2!30160 (h!58587 (toList!5558 lm!2023))) lambda!206037))))

(assert (=> b!4685981 (=> (not res!1975817) (not e!2923456))))

(assert (=> b!4685981 e!2923456))

(declare-fun lt!1845089 () Unit!123233)

(declare-fun Unit!123257 () Unit!123233)

(assert (=> b!4685981 (= lt!1845089 Unit!123257)))

(assert (=> b!4685982 (= e!2923455 lt!1844966)))

(declare-fun lt!1845098 () Unit!123233)

(assert (=> b!4685982 (= lt!1845098 call!327441)))

(assert (=> b!4685982 call!327443))

(declare-fun lt!1845094 () Unit!123233)

(assert (=> b!4685982 (= lt!1845094 lt!1845098)))

(assert (=> b!4685982 call!327442))

(declare-fun lt!1845088 () Unit!123233)

(declare-fun Unit!123258 () Unit!123233)

(assert (=> b!4685982 (= lt!1845088 Unit!123258)))

(declare-fun b!4685983 () Bool)

(declare-fun res!1975818 () Bool)

(assert (=> b!4685983 (=> (not res!1975818) (not e!2923454))))

(assert (=> b!4685983 (= res!1975818 (forall!11288 (toList!5557 lt!1844966) lambda!206042))))

(declare-fun bm!327438 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!684 (ListMap!4921) Unit!123233)

(assert (=> bm!327438 (= call!327441 (lemmaContainsAllItsOwnKeys!684 lt!1844966))))

(assert (= (and d!1489063 c!801288) b!4685982))

(assert (= (and d!1489063 (not c!801288)) b!4685981))

(assert (= (and b!4685981 res!1975817) b!4685980))

(assert (= (or b!4685982 b!4685981) bm!327438))

(assert (= (or b!4685982 b!4685981) bm!327436))

(assert (= (or b!4685982 b!4685981) bm!327437))

(assert (= (and d!1489063 res!1975819) b!4685983))

(assert (= (and b!4685983 res!1975818) b!4685979))

(declare-fun m!5584911 () Bool)

(assert (=> bm!327437 m!5584911))

(declare-fun m!5584913 () Bool)

(assert (=> b!4685980 m!5584913))

(declare-fun m!5584915 () Bool)

(assert (=> bm!327436 m!5584915))

(declare-fun m!5584917 () Bool)

(assert (=> b!4685979 m!5584917))

(declare-fun m!5584919 () Bool)

(assert (=> b!4685981 m!5584919))

(declare-fun m!5584921 () Bool)

(assert (=> b!4685981 m!5584921))

(declare-fun m!5584923 () Bool)

(assert (=> b!4685981 m!5584923))

(declare-fun m!5584925 () Bool)

(assert (=> b!4685981 m!5584925))

(declare-fun m!5584927 () Bool)

(assert (=> b!4685981 m!5584927))

(assert (=> b!4685981 m!5584919))

(declare-fun m!5584929 () Bool)

(assert (=> b!4685981 m!5584929))

(declare-fun m!5584931 () Bool)

(assert (=> b!4685981 m!5584931))

(assert (=> b!4685981 m!5584913))

(declare-fun m!5584933 () Bool)

(assert (=> b!4685981 m!5584933))

(declare-fun m!5584935 () Bool)

(assert (=> b!4685981 m!5584935))

(declare-fun m!5584937 () Bool)

(assert (=> b!4685981 m!5584937))

(assert (=> b!4685981 m!5584923))

(declare-fun m!5584939 () Bool)

(assert (=> bm!327438 m!5584939))

(declare-fun m!5584941 () Bool)

(assert (=> b!4685983 m!5584941))

(declare-fun m!5584943 () Bool)

(assert (=> d!1489063 m!5584943))

(declare-fun m!5584945 () Bool)

(assert (=> d!1489063 m!5584945))

(assert (=> b!4685893 d!1489063))

(declare-fun bs!1084172 () Bool)

(declare-fun d!1489081 () Bool)

(assert (= bs!1084172 (and d!1489081 start!473568)))

(declare-fun lambda!206055 () Int)

(assert (=> bs!1084172 (= lambda!206055 lambda!205979)))

(declare-fun lt!1845133 () ListMap!4921)

(assert (=> d!1489081 (invariantList!1396 (toList!5557 lt!1845133))))

(declare-fun e!2923466 () ListMap!4921)

(assert (=> d!1489081 (= lt!1845133 e!2923466)))

(declare-fun c!801292 () Bool)

(assert (=> d!1489081 (= c!801292 ((_ is Cons!52356) (t!359642 (toList!5558 lm!2023))))))

(assert (=> d!1489081 (forall!11287 (t!359642 (toList!5558 lm!2023)) lambda!206055)))

(assert (=> d!1489081 (= (extractMap!1860 (t!359642 (toList!5558 lm!2023))) lt!1845133)))

(declare-fun b!4686003 () Bool)

(assert (=> b!4686003 (= e!2923466 (addToMapMapFromBucket!1266 (_2!30160 (h!58587 (t!359642 (toList!5558 lm!2023)))) (extractMap!1860 (t!359642 (t!359642 (toList!5558 lm!2023))))))))

(declare-fun b!4686004 () Bool)

(assert (=> b!4686004 (= e!2923466 (ListMap!4922 Nil!52355))))

(assert (= (and d!1489081 c!801292) b!4686003))

(assert (= (and d!1489081 (not c!801292)) b!4686004))

(declare-fun m!5584977 () Bool)

(assert (=> d!1489081 m!5584977))

(declare-fun m!5584979 () Bool)

(assert (=> d!1489081 m!5584979))

(declare-fun m!5584981 () Bool)

(assert (=> b!4686003 m!5584981))

(assert (=> b!4686003 m!5584981))

(declare-fun m!5584983 () Bool)

(assert (=> b!4686003 m!5584983))

(assert (=> b!4685893 d!1489081))

(declare-fun d!1489085 () Bool)

(declare-fun tail!8538 (List!52480) List!52480)

(assert (=> d!1489085 (= (tail!8536 lm!2023) (ListLongMap!4088 (tail!8538 (toList!5558 lm!2023))))))

(declare-fun bs!1084173 () Bool)

(assert (= bs!1084173 d!1489085))

(declare-fun m!5584985 () Bool)

(assert (=> bs!1084173 m!5584985))

(assert (=> b!4685893 d!1489085))

(declare-fun b!4686013 () Bool)

(declare-fun e!2923472 () List!52479)

(assert (=> b!4686013 (= e!2923472 (t!359641 (t!359641 oldBucket!34)))))

(declare-fun d!1489087 () Bool)

(declare-fun lt!1845136 () List!52479)

(assert (=> d!1489087 (not (containsKey!3005 lt!1845136 key!4653))))

(assert (=> d!1489087 (= lt!1845136 e!2923472)))

(declare-fun c!801297 () Bool)

(assert (=> d!1489087 (= c!801297 (and ((_ is Cons!52355) (t!359641 oldBucket!34)) (= (_1!30159 (h!58586 (t!359641 oldBucket!34))) key!4653)))))

(assert (=> d!1489087 (noDuplicateKeys!1834 (t!359641 oldBucket!34))))

(assert (=> d!1489087 (= (removePairForKey!1429 (t!359641 oldBucket!34) key!4653) lt!1845136)))

(declare-fun b!4686015 () Bool)

(declare-fun e!2923471 () List!52479)

(assert (=> b!4686015 (= e!2923471 (Cons!52355 (h!58586 (t!359641 oldBucket!34)) (removePairForKey!1429 (t!359641 (t!359641 oldBucket!34)) key!4653)))))

(declare-fun b!4686016 () Bool)

(assert (=> b!4686016 (= e!2923471 Nil!52355)))

(declare-fun b!4686014 () Bool)

(assert (=> b!4686014 (= e!2923472 e!2923471)))

(declare-fun c!801298 () Bool)

(assert (=> b!4686014 (= c!801298 ((_ is Cons!52355) (t!359641 oldBucket!34)))))

(assert (= (and d!1489087 c!801297) b!4686013))

(assert (= (and d!1489087 (not c!801297)) b!4686014))

(assert (= (and b!4686014 c!801298) b!4686015))

(assert (= (and b!4686014 (not c!801298)) b!4686016))

(declare-fun m!5584987 () Bool)

(assert (=> d!1489087 m!5584987))

(assert (=> d!1489087 m!5584865))

(declare-fun m!5584989 () Bool)

(assert (=> b!4686015 m!5584989))

(assert (=> b!4685904 d!1489087))

(declare-fun b!4686017 () Bool)

(declare-fun e!2923474 () List!52479)

(assert (=> b!4686017 (= e!2923474 (t!359641 oldBucket!34))))

(declare-fun d!1489089 () Bool)

(declare-fun lt!1845137 () List!52479)

(assert (=> d!1489089 (not (containsKey!3005 lt!1845137 key!4653))))

(assert (=> d!1489089 (= lt!1845137 e!2923474)))

(declare-fun c!801299 () Bool)

(assert (=> d!1489089 (= c!801299 (and ((_ is Cons!52355) oldBucket!34) (= (_1!30159 (h!58586 oldBucket!34)) key!4653)))))

(assert (=> d!1489089 (noDuplicateKeys!1834 oldBucket!34)))

(assert (=> d!1489089 (= (removePairForKey!1429 oldBucket!34 key!4653) lt!1845137)))

(declare-fun b!4686019 () Bool)

(declare-fun e!2923473 () List!52479)

(assert (=> b!4686019 (= e!2923473 (Cons!52355 (h!58586 oldBucket!34) (removePairForKey!1429 (t!359641 oldBucket!34) key!4653)))))

(declare-fun b!4686020 () Bool)

(assert (=> b!4686020 (= e!2923473 Nil!52355)))

(declare-fun b!4686018 () Bool)

(assert (=> b!4686018 (= e!2923474 e!2923473)))

(declare-fun c!801300 () Bool)

(assert (=> b!4686018 (= c!801300 ((_ is Cons!52355) oldBucket!34))))

(assert (= (and d!1489089 c!801299) b!4686017))

(assert (= (and d!1489089 (not c!801299)) b!4686018))

(assert (= (and b!4686018 c!801300) b!4686019))

(assert (= (and b!4686018 (not c!801300)) b!4686020))

(declare-fun m!5584991 () Bool)

(assert (=> d!1489089 m!5584991))

(assert (=> d!1489089 m!5584839))

(assert (=> b!4686019 m!5584837))

(assert (=> b!4685894 d!1489089))

(declare-fun bs!1084174 () Bool)

(declare-fun d!1489091 () Bool)

(assert (= bs!1084174 (and d!1489091 d!1489061)))

(declare-fun lambda!206056 () Int)

(assert (=> bs!1084174 (= lambda!206056 lambda!205982)))

(declare-fun bs!1084175 () Bool)

(assert (= bs!1084175 (and d!1489091 b!4685982)))

(assert (=> bs!1084175 (not (= lambda!206056 lambda!206033))))

(declare-fun bs!1084176 () Bool)

(assert (= bs!1084176 (and d!1489091 b!4685981)))

(assert (=> bs!1084176 (not (= lambda!206056 lambda!206037))))

(assert (=> bs!1084176 (not (= lambda!206056 lambda!206036))))

(declare-fun bs!1084177 () Bool)

(assert (= bs!1084177 (and d!1489091 d!1489063)))

(assert (=> bs!1084177 (not (= lambda!206056 lambda!206042))))

(assert (=> d!1489091 true))

(assert (=> d!1489091 true))

(assert (=> d!1489091 (= (allKeysSameHash!1660 newBucket!218 hash!405 hashF!1323) (forall!11288 newBucket!218 lambda!206056))))

(declare-fun bs!1084178 () Bool)

(assert (= bs!1084178 d!1489091))

(declare-fun m!5584993 () Bool)

(assert (=> bs!1084178 m!5584993))

(assert (=> b!4685905 d!1489091))

(declare-fun d!1489093 () Bool)

(declare-fun lt!1845143 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9136 (List!52480) (InoxSet tuple2!53732))

(assert (=> d!1489093 (= lt!1845143 (select (content!9136 (toList!5558 lm!2023)) lt!1844959))))

(declare-fun e!2923480 () Bool)

(assert (=> d!1489093 (= lt!1845143 e!2923480)))

(declare-fun res!1975833 () Bool)

(assert (=> d!1489093 (=> (not res!1975833) (not e!2923480))))

(assert (=> d!1489093 (= res!1975833 ((_ is Cons!52356) (toList!5558 lm!2023)))))

(assert (=> d!1489093 (= (contains!15521 (toList!5558 lm!2023) lt!1844959) lt!1845143)))

(declare-fun b!4686025 () Bool)

(declare-fun e!2923479 () Bool)

(assert (=> b!4686025 (= e!2923480 e!2923479)))

(declare-fun res!1975834 () Bool)

(assert (=> b!4686025 (=> res!1975834 e!2923479)))

(assert (=> b!4686025 (= res!1975834 (= (h!58587 (toList!5558 lm!2023)) lt!1844959))))

(declare-fun b!4686026 () Bool)

(assert (=> b!4686026 (= e!2923479 (contains!15521 (t!359642 (toList!5558 lm!2023)) lt!1844959))))

(assert (= (and d!1489093 res!1975833) b!4686025))

(assert (= (and b!4686025 (not res!1975834)) b!4686026))

(declare-fun m!5584997 () Bool)

(assert (=> d!1489093 m!5584997))

(declare-fun m!5584999 () Bool)

(assert (=> d!1489093 m!5584999))

(declare-fun m!5585001 () Bool)

(assert (=> b!4686026 m!5585001))

(assert (=> b!4685895 d!1489093))

(declare-fun d!1489097 () Bool)

(declare-fun isEmpty!29079 (Option!12029) Bool)

(assert (=> d!1489097 (= (isDefined!9284 (getPair!438 lt!1844969 key!4653)) (not (isEmpty!29079 (getPair!438 lt!1844969 key!4653))))))

(declare-fun bs!1084180 () Bool)

(assert (= bs!1084180 d!1489097))

(assert (=> bs!1084180 m!5584791))

(declare-fun m!5585003 () Bool)

(assert (=> bs!1084180 m!5585003))

(assert (=> b!4685895 d!1489097))

(declare-fun bs!1084185 () Bool)

(declare-fun d!1489099 () Bool)

(assert (= bs!1084185 (and d!1489099 start!473568)))

(declare-fun lambda!206060 () Int)

(assert (=> bs!1084185 (= lambda!206060 lambda!205979)))

(declare-fun bs!1084186 () Bool)

(assert (= bs!1084186 (and d!1489099 d!1489081)))

(assert (=> bs!1084186 (= lambda!206060 lambda!206055)))

(assert (=> d!1489099 (contains!15522 lm!2023 (hash!4031 hashF!1323 key!4653))))

(declare-fun lt!1845147 () Unit!123233)

(declare-fun choose!32482 (ListLongMap!4087 K!13735 Hashable!6203) Unit!123233)

(assert (=> d!1489099 (= lt!1845147 (choose!32482 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1489099 (forall!11287 (toList!5558 lm!2023) lambda!206060)))

(assert (=> d!1489099 (= (lemmaInGenMapThenLongMapContainsHash!644 lm!2023 key!4653 hashF!1323) lt!1845147)))

(declare-fun bs!1084187 () Bool)

(assert (= bs!1084187 d!1489099))

(assert (=> bs!1084187 m!5584819))

(assert (=> bs!1084187 m!5584819))

(declare-fun m!5585017 () Bool)

(assert (=> bs!1084187 m!5585017))

(declare-fun m!5585019 () Bool)

(assert (=> bs!1084187 m!5585019))

(declare-fun m!5585021 () Bool)

(assert (=> bs!1084187 m!5585021))

(assert (=> b!4685895 d!1489099))

(declare-fun b!4686060 () Bool)

(declare-fun e!2923503 () Bool)

(assert (=> b!4686060 (= e!2923503 (not (containsKey!3005 lt!1844969 key!4653)))))

(declare-fun b!4686061 () Bool)

(declare-fun e!2923505 () Option!12029)

(declare-fun e!2923501 () Option!12029)

(assert (=> b!4686061 (= e!2923505 e!2923501)))

(declare-fun c!801310 () Bool)

(assert (=> b!4686061 (= c!801310 ((_ is Cons!52355) lt!1844969))))

(declare-fun b!4686062 () Bool)

(declare-fun e!2923502 () Bool)

(declare-fun lt!1845170 () Option!12029)

(declare-fun contains!15525 (List!52479 tuple2!53730) Bool)

(declare-fun get!17453 (Option!12029) tuple2!53730)

(assert (=> b!4686062 (= e!2923502 (contains!15525 lt!1844969 (get!17453 lt!1845170)))))

(declare-fun b!4686064 () Bool)

(assert (=> b!4686064 (= e!2923501 None!12028)))

(declare-fun b!4686065 () Bool)

(declare-fun res!1975855 () Bool)

(assert (=> b!4686065 (=> (not res!1975855) (not e!2923502))))

(assert (=> b!4686065 (= res!1975855 (= (_1!30159 (get!17453 lt!1845170)) key!4653))))

(declare-fun b!4686066 () Bool)

(declare-fun e!2923504 () Bool)

(assert (=> b!4686066 (= e!2923504 e!2923502)))

(declare-fun res!1975854 () Bool)

(assert (=> b!4686066 (=> (not res!1975854) (not e!2923502))))

(assert (=> b!4686066 (= res!1975854 (isDefined!9284 lt!1845170))))

(declare-fun b!4686067 () Bool)

(assert (=> b!4686067 (= e!2923505 (Some!12028 (h!58586 lt!1844969)))))

(declare-fun b!4686063 () Bool)

(assert (=> b!4686063 (= e!2923501 (getPair!438 (t!359641 lt!1844969) key!4653))))

(declare-fun d!1489105 () Bool)

(assert (=> d!1489105 e!2923504))

(declare-fun res!1975853 () Bool)

(assert (=> d!1489105 (=> res!1975853 e!2923504)))

(assert (=> d!1489105 (= res!1975853 e!2923503)))

(declare-fun res!1975852 () Bool)

(assert (=> d!1489105 (=> (not res!1975852) (not e!2923503))))

(assert (=> d!1489105 (= res!1975852 (isEmpty!29079 lt!1845170))))

(assert (=> d!1489105 (= lt!1845170 e!2923505)))

(declare-fun c!801309 () Bool)

(assert (=> d!1489105 (= c!801309 (and ((_ is Cons!52355) lt!1844969) (= (_1!30159 (h!58586 lt!1844969)) key!4653)))))

(assert (=> d!1489105 (noDuplicateKeys!1834 lt!1844969)))

(assert (=> d!1489105 (= (getPair!438 lt!1844969 key!4653) lt!1845170)))

(assert (= (and d!1489105 c!801309) b!4686067))

(assert (= (and d!1489105 (not c!801309)) b!4686061))

(assert (= (and b!4686061 c!801310) b!4686063))

(assert (= (and b!4686061 (not c!801310)) b!4686064))

(assert (= (and d!1489105 res!1975852) b!4686060))

(assert (= (and d!1489105 (not res!1975853)) b!4686066))

(assert (= (and b!4686066 res!1975854) b!4686065))

(assert (= (and b!4686065 res!1975855) b!4686062))

(declare-fun m!5585035 () Bool)

(assert (=> b!4686060 m!5585035))

(declare-fun m!5585037 () Bool)

(assert (=> b!4686063 m!5585037))

(declare-fun m!5585039 () Bool)

(assert (=> b!4686062 m!5585039))

(assert (=> b!4686062 m!5585039))

(declare-fun m!5585041 () Bool)

(assert (=> b!4686062 m!5585041))

(declare-fun m!5585045 () Bool)

(assert (=> b!4686066 m!5585045))

(assert (=> b!4686065 m!5585039))

(declare-fun m!5585049 () Bool)

(assert (=> d!1489105 m!5585049))

(declare-fun m!5585051 () Bool)

(assert (=> d!1489105 m!5585051))

(assert (=> b!4685895 d!1489105))

(declare-fun bs!1084256 () Bool)

(declare-fun d!1489109 () Bool)

(assert (= bs!1084256 (and d!1489109 start!473568)))

(declare-fun lambda!206083 () Int)

(assert (=> bs!1084256 (= lambda!206083 lambda!205979)))

(declare-fun bs!1084257 () Bool)

(assert (= bs!1084257 (and d!1489109 d!1489081)))

(assert (=> bs!1084257 (= lambda!206083 lambda!206055)))

(declare-fun bs!1084258 () Bool)

(assert (= bs!1084258 (and d!1489109 d!1489099)))

(assert (=> bs!1084258 (= lambda!206083 lambda!206060)))

(declare-fun b!4686115 () Bool)

(declare-fun e!2923536 () Bool)

(assert (=> b!4686115 (= e!2923536 (isDefined!9284 (getPair!438 (apply!12317 lm!2023 (hash!4031 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1845239 () Unit!123233)

(assert (=> b!4686115 (= lt!1845239 (forallContained!3394 (toList!5558 lm!2023) lambda!206083 (tuple2!53733 (hash!4031 hashF!1323 key!4653) (apply!12317 lm!2023 (hash!4031 hashF!1323 key!4653)))))))

(declare-fun lt!1845237 () Unit!123233)

(declare-fun lt!1845241 () Unit!123233)

(assert (=> b!4686115 (= lt!1845237 lt!1845241)))

(declare-fun lt!1845242 () (_ BitVec 64))

(declare-fun lt!1845236 () List!52479)

(assert (=> b!4686115 (contains!15521 (toList!5558 lm!2023) (tuple2!53733 lt!1845242 lt!1845236))))

(assert (=> b!4686115 (= lt!1845241 (lemmaGetValueImpliesTupleContained!243 lm!2023 lt!1845242 lt!1845236))))

(declare-fun e!2923535 () Bool)

(assert (=> b!4686115 e!2923535))

(declare-fun res!1975891 () Bool)

(assert (=> b!4686115 (=> (not res!1975891) (not e!2923535))))

(assert (=> b!4686115 (= res!1975891 (contains!15522 lm!2023 lt!1845242))))

(assert (=> b!4686115 (= lt!1845236 (apply!12317 lm!2023 (hash!4031 hashF!1323 key!4653)))))

(assert (=> b!4686115 (= lt!1845242 (hash!4031 hashF!1323 key!4653))))

(declare-fun lt!1845243 () Unit!123233)

(declare-fun lt!1845240 () Unit!123233)

(assert (=> b!4686115 (= lt!1845243 lt!1845240)))

(assert (=> b!4686115 (contains!15522 lm!2023 (hash!4031 hashF!1323 key!4653))))

(assert (=> b!4686115 (= lt!1845240 (lemmaInGenMapThenLongMapContainsHash!644 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1489109 e!2923536))

(declare-fun res!1975890 () Bool)

(assert (=> d!1489109 (=> (not res!1975890) (not e!2923536))))

(assert (=> d!1489109 (= res!1975890 (forall!11287 (toList!5558 lm!2023) lambda!206083))))

(declare-fun lt!1845238 () Unit!123233)

(declare-fun choose!32483 (ListLongMap!4087 K!13735 Hashable!6203) Unit!123233)

(assert (=> d!1489109 (= lt!1845238 (choose!32483 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1489109 (forall!11287 (toList!5558 lm!2023) lambda!206083)))

(assert (=> d!1489109 (= (lemmaInGenMapThenGetPairDefined!234 lm!2023 key!4653 hashF!1323) lt!1845238)))

(declare-fun b!4686116 () Bool)

(declare-datatypes ((Option!12031 0))(
  ( (None!12030) (Some!12030 (v!46421 List!52479)) )
))
(declare-fun getValueByKey!1751 (List!52480 (_ BitVec 64)) Option!12031)

(assert (=> b!4686116 (= e!2923535 (= (getValueByKey!1751 (toList!5558 lm!2023) lt!1845242) (Some!12030 lt!1845236)))))

(declare-fun b!4686114 () Bool)

(declare-fun res!1975888 () Bool)

(assert (=> b!4686114 (=> (not res!1975888) (not e!2923536))))

(assert (=> b!4686114 (= res!1975888 (contains!15520 (extractMap!1860 (toList!5558 lm!2023)) key!4653))))

(declare-fun b!4686113 () Bool)

(declare-fun res!1975889 () Bool)

(assert (=> b!4686113 (=> (not res!1975889) (not e!2923536))))

(assert (=> b!4686113 (= res!1975889 (allKeysSameHashInMap!1748 lm!2023 hashF!1323))))

(assert (= (and d!1489109 res!1975890) b!4686113))

(assert (= (and b!4686113 res!1975889) b!4686114))

(assert (= (and b!4686114 res!1975888) b!4686115))

(assert (= (and b!4686115 res!1975891) b!4686116))

(assert (=> b!4686113 m!5584861))

(declare-fun m!5585167 () Bool)

(assert (=> d!1489109 m!5585167))

(declare-fun m!5585169 () Bool)

(assert (=> d!1489109 m!5585169))

(assert (=> d!1489109 m!5585167))

(assert (=> b!4686115 m!5584819))

(declare-fun m!5585171 () Bool)

(assert (=> b!4686115 m!5585171))

(assert (=> b!4686115 m!5584819))

(assert (=> b!4686115 m!5585017))

(declare-fun m!5585173 () Bool)

(assert (=> b!4686115 m!5585173))

(assert (=> b!4686115 m!5585171))

(declare-fun m!5585175 () Bool)

(assert (=> b!4686115 m!5585175))

(assert (=> b!4686115 m!5585175))

(declare-fun m!5585177 () Bool)

(assert (=> b!4686115 m!5585177))

(declare-fun m!5585179 () Bool)

(assert (=> b!4686115 m!5585179))

(assert (=> b!4686115 m!5584819))

(declare-fun m!5585181 () Bool)

(assert (=> b!4686115 m!5585181))

(declare-fun m!5585183 () Bool)

(assert (=> b!4686115 m!5585183))

(assert (=> b!4686115 m!5584787))

(assert (=> b!4686114 m!5584829))

(assert (=> b!4686114 m!5584829))

(declare-fun m!5585185 () Bool)

(assert (=> b!4686114 m!5585185))

(declare-fun m!5585187 () Bool)

(assert (=> b!4686116 m!5585187))

(assert (=> b!4685895 d!1489109))

(declare-fun d!1489143 () Bool)

(assert (=> d!1489143 (containsKey!3005 oldBucket!34 key!4653)))

(declare-fun lt!1845249 () Unit!123233)

(declare-fun choose!32484 (List!52479 K!13735 Hashable!6203) Unit!123233)

(assert (=> d!1489143 (= lt!1845249 (choose!32484 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1489143 (noDuplicateKeys!1834 oldBucket!34)))

(assert (=> d!1489143 (= (lemmaGetPairDefinedThenContainsKey!186 oldBucket!34 key!4653 hashF!1323) lt!1845249)))

(declare-fun bs!1084259 () Bool)

(assert (= bs!1084259 d!1489143))

(assert (=> bs!1084259 m!5584795))

(declare-fun m!5585189 () Bool)

(assert (=> bs!1084259 m!5585189))

(assert (=> bs!1084259 m!5584839))

(assert (=> b!4685895 d!1489143))

(declare-fun d!1489145 () Bool)

(declare-fun res!1975908 () Bool)

(declare-fun e!2923556 () Bool)

(assert (=> d!1489145 (=> res!1975908 e!2923556)))

(assert (=> d!1489145 (= res!1975908 (and ((_ is Cons!52355) (t!359641 oldBucket!34)) (= (_1!30159 (h!58586 (t!359641 oldBucket!34))) key!4653)))))

(assert (=> d!1489145 (= (containsKey!3005 (t!359641 oldBucket!34) key!4653) e!2923556)))

(declare-fun b!4686145 () Bool)

(declare-fun e!2923557 () Bool)

(assert (=> b!4686145 (= e!2923556 e!2923557)))

(declare-fun res!1975909 () Bool)

(assert (=> b!4686145 (=> (not res!1975909) (not e!2923557))))

(assert (=> b!4686145 (= res!1975909 ((_ is Cons!52355) (t!359641 oldBucket!34)))))

(declare-fun b!4686146 () Bool)

(assert (=> b!4686146 (= e!2923557 (containsKey!3005 (t!359641 (t!359641 oldBucket!34)) key!4653))))

(assert (= (and d!1489145 (not res!1975908)) b!4686145))

(assert (= (and b!4686145 res!1975909) b!4686146))

(declare-fun m!5585205 () Bool)

(assert (=> b!4686146 m!5585205))

(assert (=> b!4685895 d!1489145))

(declare-fun d!1489149 () Bool)

(declare-fun dynLambda!21698 (Int tuple2!53732) Bool)

(assert (=> d!1489149 (dynLambda!21698 lambda!205979 lt!1844959)))

(declare-fun lt!1845255 () Unit!123233)

(declare-fun choose!32485 (List!52480 Int tuple2!53732) Unit!123233)

(assert (=> d!1489149 (= lt!1845255 (choose!32485 (toList!5558 lm!2023) lambda!205979 lt!1844959))))

(declare-fun e!2923560 () Bool)

(assert (=> d!1489149 e!2923560))

(declare-fun res!1975912 () Bool)

(assert (=> d!1489149 (=> (not res!1975912) (not e!2923560))))

(assert (=> d!1489149 (= res!1975912 (forall!11287 (toList!5558 lm!2023) lambda!205979))))

(assert (=> d!1489149 (= (forallContained!3394 (toList!5558 lm!2023) lambda!205979 lt!1844959) lt!1845255)))

(declare-fun b!4686149 () Bool)

(assert (=> b!4686149 (= e!2923560 (contains!15521 (toList!5558 lm!2023) lt!1844959))))

(assert (= (and d!1489149 res!1975912) b!4686149))

(declare-fun b_lambda!176839 () Bool)

(assert (=> (not b_lambda!176839) (not d!1489149)))

(declare-fun m!5585207 () Bool)

(assert (=> d!1489149 m!5585207))

(declare-fun m!5585209 () Bool)

(assert (=> d!1489149 m!5585209))

(assert (=> d!1489149 m!5584783))

(assert (=> b!4686149 m!5584801))

(assert (=> b!4685895 d!1489149))

(declare-fun d!1489151 () Bool)

(declare-fun get!17454 (Option!12031) List!52479)

(assert (=> d!1489151 (= (apply!12317 lm!2023 lt!1844967) (get!17454 (getValueByKey!1751 (toList!5558 lm!2023) lt!1844967)))))

(declare-fun bs!1084268 () Bool)

(assert (= bs!1084268 d!1489151))

(declare-fun m!5585219 () Bool)

(assert (=> bs!1084268 m!5585219))

(assert (=> bs!1084268 m!5585219))

(declare-fun m!5585221 () Bool)

(assert (=> bs!1084268 m!5585221))

(assert (=> b!4685895 d!1489151))

(declare-fun d!1489157 () Bool)

(declare-fun res!1975913 () Bool)

(declare-fun e!2923561 () Bool)

(assert (=> d!1489157 (=> res!1975913 e!2923561)))

(assert (=> d!1489157 (= res!1975913 (and ((_ is Cons!52355) oldBucket!34) (= (_1!30159 (h!58586 oldBucket!34)) key!4653)))))

(assert (=> d!1489157 (= (containsKey!3005 oldBucket!34 key!4653) e!2923561)))

(declare-fun b!4686150 () Bool)

(declare-fun e!2923562 () Bool)

(assert (=> b!4686150 (= e!2923561 e!2923562)))

(declare-fun res!1975914 () Bool)

(assert (=> b!4686150 (=> (not res!1975914) (not e!2923562))))

(assert (=> b!4686150 (= res!1975914 ((_ is Cons!52355) oldBucket!34))))

(declare-fun b!4686151 () Bool)

(assert (=> b!4686151 (= e!2923562 (containsKey!3005 (t!359641 oldBucket!34) key!4653))))

(assert (= (and d!1489157 (not res!1975913)) b!4686150))

(assert (= (and b!4686150 res!1975914) b!4686151))

(assert (=> b!4686151 m!5584793))

(assert (=> b!4685895 d!1489157))

(declare-fun d!1489159 () Bool)

(assert (=> d!1489159 (contains!15521 (toList!5558 lm!2023) (tuple2!53733 lt!1844967 lt!1844969))))

(declare-fun lt!1845261 () Unit!123233)

(declare-fun choose!32486 (ListLongMap!4087 (_ BitVec 64) List!52479) Unit!123233)

(assert (=> d!1489159 (= lt!1845261 (choose!32486 lm!2023 lt!1844967 lt!1844969))))

(assert (=> d!1489159 (contains!15522 lm!2023 lt!1844967)))

(assert (=> d!1489159 (= (lemmaGetValueImpliesTupleContained!243 lm!2023 lt!1844967 lt!1844969) lt!1845261)))

(declare-fun bs!1084269 () Bool)

(assert (= bs!1084269 d!1489159))

(declare-fun m!5585227 () Bool)

(assert (=> bs!1084269 m!5585227))

(declare-fun m!5585229 () Bool)

(assert (=> bs!1084269 m!5585229))

(assert (=> bs!1084269 m!5584797))

(assert (=> b!4685895 d!1489159))

(declare-fun d!1489163 () Bool)

(declare-fun e!2923571 () Bool)

(assert (=> d!1489163 e!2923571))

(declare-fun res!1975920 () Bool)

(assert (=> d!1489163 (=> res!1975920 e!2923571)))

(declare-fun lt!1845271 () Bool)

(assert (=> d!1489163 (= res!1975920 (not lt!1845271))))

(declare-fun lt!1845273 () Bool)

(assert (=> d!1489163 (= lt!1845271 lt!1845273)))

(declare-fun lt!1845272 () Unit!123233)

(declare-fun e!2923570 () Unit!123233)

(assert (=> d!1489163 (= lt!1845272 e!2923570)))

(declare-fun c!801322 () Bool)

(assert (=> d!1489163 (= c!801322 lt!1845273)))

(declare-fun containsKey!3007 (List!52480 (_ BitVec 64)) Bool)

(assert (=> d!1489163 (= lt!1845273 (containsKey!3007 (toList!5558 lm!2023) lt!1844967))))

(assert (=> d!1489163 (= (contains!15522 lm!2023 lt!1844967) lt!1845271)))

(declare-fun b!4686162 () Bool)

(declare-fun lt!1845270 () Unit!123233)

(assert (=> b!4686162 (= e!2923570 lt!1845270)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1643 (List!52480 (_ BitVec 64)) Unit!123233)

(assert (=> b!4686162 (= lt!1845270 (lemmaContainsKeyImpliesGetValueByKeyDefined!1643 (toList!5558 lm!2023) lt!1844967))))

(declare-fun isDefined!9286 (Option!12031) Bool)

(assert (=> b!4686162 (isDefined!9286 (getValueByKey!1751 (toList!5558 lm!2023) lt!1844967))))

(declare-fun b!4686163 () Bool)

(declare-fun Unit!123272 () Unit!123233)

(assert (=> b!4686163 (= e!2923570 Unit!123272)))

(declare-fun b!4686164 () Bool)

(assert (=> b!4686164 (= e!2923571 (isDefined!9286 (getValueByKey!1751 (toList!5558 lm!2023) lt!1844967)))))

(assert (= (and d!1489163 c!801322) b!4686162))

(assert (= (and d!1489163 (not c!801322)) b!4686163))

(assert (= (and d!1489163 (not res!1975920)) b!4686164))

(declare-fun m!5585231 () Bool)

(assert (=> d!1489163 m!5585231))

(declare-fun m!5585233 () Bool)

(assert (=> b!4686162 m!5585233))

(assert (=> b!4686162 m!5585219))

(assert (=> b!4686162 m!5585219))

(declare-fun m!5585235 () Bool)

(assert (=> b!4686162 m!5585235))

(assert (=> b!4686164 m!5585219))

(assert (=> b!4686164 m!5585219))

(assert (=> b!4686164 m!5585235))

(assert (=> b!4685895 d!1489163))

(declare-fun bs!1084270 () Bool)

(declare-fun d!1489165 () Bool)

(assert (= bs!1084270 (and d!1489165 start!473568)))

(declare-fun lambda!206089 () Int)

(assert (=> bs!1084270 (= lambda!206089 lambda!205979)))

(declare-fun bs!1084271 () Bool)

(assert (= bs!1084271 (and d!1489165 d!1489081)))

(assert (=> bs!1084271 (= lambda!206089 lambda!206055)))

(declare-fun bs!1084272 () Bool)

(assert (= bs!1084272 (and d!1489165 d!1489099)))

(assert (=> bs!1084272 (= lambda!206089 lambda!206060)))

(declare-fun bs!1084273 () Bool)

(assert (= bs!1084273 (and d!1489165 d!1489109)))

(assert (=> bs!1084273 (= lambda!206089 lambda!206083)))

(assert (=> d!1489165 (contains!15520 (extractMap!1860 (toList!5558 (ListLongMap!4088 lt!1844965))) key!4653)))

(declare-fun lt!1845276 () Unit!123233)

(declare-fun choose!32487 (ListLongMap!4087 K!13735 Hashable!6203) Unit!123233)

(assert (=> d!1489165 (= lt!1845276 (choose!32487 (ListLongMap!4088 lt!1844965) key!4653 hashF!1323))))

(assert (=> d!1489165 (forall!11287 (toList!5558 (ListLongMap!4088 lt!1844965)) lambda!206089)))

(assert (=> d!1489165 (= (lemmaListContainsThenExtractedMapContains!426 (ListLongMap!4088 lt!1844965) key!4653 hashF!1323) lt!1845276)))

(declare-fun bs!1084274 () Bool)

(assert (= bs!1084274 d!1489165))

(declare-fun m!5585237 () Bool)

(assert (=> bs!1084274 m!5585237))

(assert (=> bs!1084274 m!5585237))

(declare-fun m!5585239 () Bool)

(assert (=> bs!1084274 m!5585239))

(declare-fun m!5585241 () Bool)

(assert (=> bs!1084274 m!5585241))

(declare-fun m!5585243 () Bool)

(assert (=> bs!1084274 m!5585243))

(assert (=> b!4685896 d!1489165))

(declare-fun d!1489167 () Bool)

(declare-fun e!2923574 () Bool)

(assert (=> d!1489167 e!2923574))

(declare-fun res!1975925 () Bool)

(assert (=> d!1489167 (=> (not res!1975925) (not e!2923574))))

(declare-fun lt!1845285 () ListMap!4921)

(assert (=> d!1489167 (= res!1975925 (contains!15520 lt!1845285 (_1!30159 lt!1844968)))))

(declare-fun lt!1845286 () List!52479)

(assert (=> d!1489167 (= lt!1845285 (ListMap!4922 lt!1845286))))

(declare-fun lt!1845288 () Unit!123233)

(declare-fun lt!1845287 () Unit!123233)

(assert (=> d!1489167 (= lt!1845288 lt!1845287)))

(declare-datatypes ((Option!12032 0))(
  ( (None!12031) (Some!12031 (v!46422 V!13981)) )
))
(declare-fun getValueByKey!1752 (List!52479 K!13735) Option!12032)

(assert (=> d!1489167 (= (getValueByKey!1752 lt!1845286 (_1!30159 lt!1844968)) (Some!12031 (_2!30159 lt!1844968)))))

(declare-fun lemmaContainsTupThenGetReturnValue!986 (List!52479 K!13735 V!13981) Unit!123233)

(assert (=> d!1489167 (= lt!1845287 (lemmaContainsTupThenGetReturnValue!986 lt!1845286 (_1!30159 lt!1844968) (_2!30159 lt!1844968)))))

(declare-fun insertNoDuplicatedKeys!494 (List!52479 K!13735 V!13981) List!52479)

(assert (=> d!1489167 (= lt!1845286 (insertNoDuplicatedKeys!494 (toList!5557 (addToMapMapFromBucket!1266 lt!1844957 lt!1844966)) (_1!30159 lt!1844968) (_2!30159 lt!1844968)))))

(assert (=> d!1489167 (= (+!2118 (addToMapMapFromBucket!1266 lt!1844957 lt!1844966) lt!1844968) lt!1845285)))

(declare-fun b!4686169 () Bool)

(declare-fun res!1975926 () Bool)

(assert (=> b!4686169 (=> (not res!1975926) (not e!2923574))))

(assert (=> b!4686169 (= res!1975926 (= (getValueByKey!1752 (toList!5557 lt!1845285) (_1!30159 lt!1844968)) (Some!12031 (_2!30159 lt!1844968))))))

(declare-fun b!4686170 () Bool)

(assert (=> b!4686170 (= e!2923574 (contains!15525 (toList!5557 lt!1845285) lt!1844968))))

(assert (= (and d!1489167 res!1975925) b!4686169))

(assert (= (and b!4686169 res!1975926) b!4686170))

(declare-fun m!5585245 () Bool)

(assert (=> d!1489167 m!5585245))

(declare-fun m!5585247 () Bool)

(assert (=> d!1489167 m!5585247))

(declare-fun m!5585249 () Bool)

(assert (=> d!1489167 m!5585249))

(declare-fun m!5585251 () Bool)

(assert (=> d!1489167 m!5585251))

(declare-fun m!5585253 () Bool)

(assert (=> b!4686169 m!5585253))

(declare-fun m!5585255 () Bool)

(assert (=> b!4686170 m!5585255))

(assert (=> b!4685896 d!1489167))

(declare-fun b!4686201 () Bool)

(declare-fun e!2923598 () Bool)

(declare-datatypes ((List!52482 0))(
  ( (Nil!52358) (Cons!52358 (h!58591 K!13735) (t!359646 List!52482)) )
))
(declare-fun contains!15526 (List!52482 K!13735) Bool)

(declare-fun keys!18679 (ListMap!4921) List!52482)

(assert (=> b!4686201 (= e!2923598 (not (contains!15526 (keys!18679 (extractMap!1860 lt!1844965)) key!4653)))))

(declare-fun b!4686202 () Bool)

(assert (=> b!4686202 false))

(declare-fun lt!1845336 () Unit!123233)

(declare-fun lt!1845329 () Unit!123233)

(assert (=> b!4686202 (= lt!1845336 lt!1845329)))

(declare-fun containsKey!3008 (List!52479 K!13735) Bool)

(assert (=> b!4686202 (containsKey!3008 (toList!5557 (extractMap!1860 lt!1844965)) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!835 (List!52479 K!13735) Unit!123233)

(assert (=> b!4686202 (= lt!1845329 (lemmaInGetKeysListThenContainsKey!835 (toList!5557 (extractMap!1860 lt!1844965)) key!4653))))

(declare-fun e!2923593 () Unit!123233)

(declare-fun Unit!123274 () Unit!123233)

(assert (=> b!4686202 (= e!2923593 Unit!123274)))

(declare-fun d!1489169 () Bool)

(declare-fun e!2923596 () Bool)

(assert (=> d!1489169 e!2923596))

(declare-fun res!1975947 () Bool)

(assert (=> d!1489169 (=> res!1975947 e!2923596)))

(assert (=> d!1489169 (= res!1975947 e!2923598)))

(declare-fun res!1975946 () Bool)

(assert (=> d!1489169 (=> (not res!1975946) (not e!2923598))))

(declare-fun lt!1845335 () Bool)

(assert (=> d!1489169 (= res!1975946 (not lt!1845335))))

(declare-fun lt!1845333 () Bool)

(assert (=> d!1489169 (= lt!1845335 lt!1845333)))

(declare-fun lt!1845331 () Unit!123233)

(declare-fun e!2923594 () Unit!123233)

(assert (=> d!1489169 (= lt!1845331 e!2923594)))

(declare-fun c!801330 () Bool)

(assert (=> d!1489169 (= c!801330 lt!1845333)))

(assert (=> d!1489169 (= lt!1845333 (containsKey!3008 (toList!5557 (extractMap!1860 lt!1844965)) key!4653))))

(assert (=> d!1489169 (= (contains!15520 (extractMap!1860 lt!1844965) key!4653) lt!1845335)))

(declare-fun b!4686203 () Bool)

(declare-fun e!2923595 () Bool)

(assert (=> b!4686203 (= e!2923596 e!2923595)))

(declare-fun res!1975945 () Bool)

(assert (=> b!4686203 (=> (not res!1975945) (not e!2923595))))

(declare-fun isDefined!9287 (Option!12032) Bool)

(assert (=> b!4686203 (= res!1975945 (isDefined!9287 (getValueByKey!1752 (toList!5557 (extractMap!1860 lt!1844965)) key!4653)))))

(declare-fun b!4686204 () Bool)

(declare-fun lt!1845332 () Unit!123233)

(assert (=> b!4686204 (= e!2923594 lt!1845332)))

(declare-fun lt!1845330 () Unit!123233)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1644 (List!52479 K!13735) Unit!123233)

(assert (=> b!4686204 (= lt!1845330 (lemmaContainsKeyImpliesGetValueByKeyDefined!1644 (toList!5557 (extractMap!1860 lt!1844965)) key!4653))))

(assert (=> b!4686204 (isDefined!9287 (getValueByKey!1752 (toList!5557 (extractMap!1860 lt!1844965)) key!4653))))

(declare-fun lt!1845334 () Unit!123233)

(assert (=> b!4686204 (= lt!1845334 lt!1845330)))

(declare-fun lemmaInListThenGetKeysListContains!831 (List!52479 K!13735) Unit!123233)

(assert (=> b!4686204 (= lt!1845332 (lemmaInListThenGetKeysListContains!831 (toList!5557 (extractMap!1860 lt!1844965)) key!4653))))

(declare-fun call!327462 () Bool)

(assert (=> b!4686204 call!327462))

(declare-fun b!4686205 () Bool)

(assert (=> b!4686205 (= e!2923595 (contains!15526 (keys!18679 (extractMap!1860 lt!1844965)) key!4653))))

(declare-fun b!4686206 () Bool)

(assert (=> b!4686206 (= e!2923594 e!2923593)))

(declare-fun c!801331 () Bool)

(assert (=> b!4686206 (= c!801331 call!327462)))

(declare-fun b!4686207 () Bool)

(declare-fun e!2923597 () List!52482)

(assert (=> b!4686207 (= e!2923597 (keys!18679 (extractMap!1860 lt!1844965)))))

(declare-fun bm!327457 () Bool)

(assert (=> bm!327457 (= call!327462 (contains!15526 e!2923597 key!4653))))

(declare-fun c!801329 () Bool)

(assert (=> bm!327457 (= c!801329 c!801330)))

(declare-fun b!4686208 () Bool)

(declare-fun Unit!123284 () Unit!123233)

(assert (=> b!4686208 (= e!2923593 Unit!123284)))

(declare-fun b!4686209 () Bool)

(declare-fun getKeysList!836 (List!52479) List!52482)

(assert (=> b!4686209 (= e!2923597 (getKeysList!836 (toList!5557 (extractMap!1860 lt!1844965))))))

(assert (= (and d!1489169 c!801330) b!4686204))

(assert (= (and d!1489169 (not c!801330)) b!4686206))

(assert (= (and b!4686206 c!801331) b!4686202))

(assert (= (and b!4686206 (not c!801331)) b!4686208))

(assert (= (or b!4686204 b!4686206) bm!327457))

(assert (= (and bm!327457 c!801329) b!4686209))

(assert (= (and bm!327457 (not c!801329)) b!4686207))

(assert (= (and d!1489169 res!1975946) b!4686201))

(assert (= (and d!1489169 (not res!1975947)) b!4686203))

(assert (= (and b!4686203 res!1975945) b!4686205))

(declare-fun m!5585279 () Bool)

(assert (=> b!4686203 m!5585279))

(assert (=> b!4686203 m!5585279))

(declare-fun m!5585281 () Bool)

(assert (=> b!4686203 m!5585281))

(declare-fun m!5585283 () Bool)

(assert (=> b!4686202 m!5585283))

(declare-fun m!5585285 () Bool)

(assert (=> b!4686202 m!5585285))

(assert (=> b!4686201 m!5584847))

(declare-fun m!5585287 () Bool)

(assert (=> b!4686201 m!5585287))

(assert (=> b!4686201 m!5585287))

(declare-fun m!5585289 () Bool)

(assert (=> b!4686201 m!5585289))

(assert (=> b!4686207 m!5584847))

(assert (=> b!4686207 m!5585287))

(assert (=> d!1489169 m!5585283))

(declare-fun m!5585291 () Bool)

(assert (=> b!4686204 m!5585291))

(assert (=> b!4686204 m!5585279))

(assert (=> b!4686204 m!5585279))

(assert (=> b!4686204 m!5585281))

(declare-fun m!5585293 () Bool)

(assert (=> b!4686204 m!5585293))

(declare-fun m!5585295 () Bool)

(assert (=> bm!327457 m!5585295))

(declare-fun m!5585297 () Bool)

(assert (=> b!4686209 m!5585297))

(assert (=> b!4686205 m!5584847))

(assert (=> b!4686205 m!5585287))

(assert (=> b!4686205 m!5585287))

(assert (=> b!4686205 m!5585289))

(assert (=> b!4685896 d!1489169))

(declare-fun d!1489173 () Bool)

(declare-fun content!9137 (List!52479) (InoxSet tuple2!53730))

(assert (=> d!1489173 (= (eq!993 (addToMapMapFromBucket!1266 (Cons!52355 lt!1844968 lt!1844957) lt!1844966) (+!2118 (addToMapMapFromBucket!1266 lt!1844957 lt!1844966) lt!1844968)) (= (content!9137 (toList!5557 (addToMapMapFromBucket!1266 (Cons!52355 lt!1844968 lt!1844957) lt!1844966))) (content!9137 (toList!5557 (+!2118 (addToMapMapFromBucket!1266 lt!1844957 lt!1844966) lt!1844968)))))))

(declare-fun bs!1084282 () Bool)

(assert (= bs!1084282 d!1489173))

(declare-fun m!5585299 () Bool)

(assert (=> bs!1084282 m!5585299))

(declare-fun m!5585301 () Bool)

(assert (=> bs!1084282 m!5585301))

(assert (=> b!4685896 d!1489173))

(declare-fun d!1489175 () Bool)

(assert (=> d!1489175 (= (head!9931 oldBucket!34) (h!58586 oldBucket!34))))

(assert (=> b!4685896 d!1489175))

(declare-fun bs!1084283 () Bool)

(declare-fun b!4686222 () Bool)

(assert (= bs!1084283 (and b!4686222 d!1489061)))

(declare-fun lambda!206097 () Int)

(assert (=> bs!1084283 (not (= lambda!206097 lambda!205982))))

(declare-fun bs!1084284 () Bool)

(assert (= bs!1084284 (and b!4686222 b!4685982)))

(assert (=> bs!1084284 (= lambda!206097 lambda!206033)))

(declare-fun bs!1084285 () Bool)

(assert (= bs!1084285 (and b!4686222 b!4685981)))

(assert (=> bs!1084285 (= (= lt!1844966 lt!1845097) (= lambda!206097 lambda!206037))))

(assert (=> bs!1084285 (= lambda!206097 lambda!206036)))

(declare-fun bs!1084286 () Bool)

(assert (= bs!1084286 (and b!4686222 d!1489091)))

(assert (=> bs!1084286 (not (= lambda!206097 lambda!206056))))

(declare-fun bs!1084287 () Bool)

(assert (= bs!1084287 (and b!4686222 d!1489063)))

(assert (=> bs!1084287 (= (= lt!1844966 lt!1845081) (= lambda!206097 lambda!206042))))

(assert (=> b!4686222 true))

(declare-fun bs!1084288 () Bool)

(declare-fun b!4686221 () Bool)

(assert (= bs!1084288 (and b!4686221 d!1489061)))

(declare-fun lambda!206098 () Int)

(assert (=> bs!1084288 (not (= lambda!206098 lambda!205982))))

(declare-fun bs!1084289 () Bool)

(assert (= bs!1084289 (and b!4686221 b!4685982)))

(assert (=> bs!1084289 (= lambda!206098 lambda!206033)))

(declare-fun bs!1084290 () Bool)

(assert (= bs!1084290 (and b!4686221 b!4685981)))

(assert (=> bs!1084290 (= (= lt!1844966 lt!1845097) (= lambda!206098 lambda!206037))))

(assert (=> bs!1084290 (= lambda!206098 lambda!206036)))

(declare-fun bs!1084292 () Bool)

(assert (= bs!1084292 (and b!4686221 d!1489091)))

(assert (=> bs!1084292 (not (= lambda!206098 lambda!206056))))

(declare-fun bs!1084293 () Bool)

(assert (= bs!1084293 (and b!4686221 b!4686222)))

(assert (=> bs!1084293 (= lambda!206098 lambda!206097)))

(declare-fun bs!1084294 () Bool)

(assert (= bs!1084294 (and b!4686221 d!1489063)))

(assert (=> bs!1084294 (= (= lt!1844966 lt!1845081) (= lambda!206098 lambda!206042))))

(assert (=> b!4686221 true))

(declare-fun lambda!206099 () Int)

(assert (=> bs!1084288 (not (= lambda!206099 lambda!205982))))

(declare-fun lt!1845367 () ListMap!4921)

(assert (=> bs!1084290 (= (= lt!1845367 lt!1845097) (= lambda!206099 lambda!206037))))

(assert (=> bs!1084290 (= (= lt!1845367 lt!1844966) (= lambda!206099 lambda!206036))))

(assert (=> bs!1084292 (not (= lambda!206099 lambda!206056))))

(assert (=> bs!1084293 (= (= lt!1845367 lt!1844966) (= lambda!206099 lambda!206097))))

(assert (=> bs!1084294 (= (= lt!1845367 lt!1845081) (= lambda!206099 lambda!206042))))

(assert (=> bs!1084289 (= (= lt!1845367 lt!1844966) (= lambda!206099 lambda!206033))))

(assert (=> b!4686221 (= (= lt!1845367 lt!1844966) (= lambda!206099 lambda!206098))))

(assert (=> b!4686221 true))

(declare-fun bs!1084295 () Bool)

(declare-fun d!1489179 () Bool)

(assert (= bs!1084295 (and d!1489179 d!1489061)))

(declare-fun lambda!206100 () Int)

(assert (=> bs!1084295 (not (= lambda!206100 lambda!205982))))

(declare-fun bs!1084296 () Bool)

(assert (= bs!1084296 (and d!1489179 b!4685981)))

(declare-fun lt!1845351 () ListMap!4921)

(assert (=> bs!1084296 (= (= lt!1845351 lt!1845097) (= lambda!206100 lambda!206037))))

(declare-fun bs!1084297 () Bool)

(assert (= bs!1084297 (and d!1489179 b!4686221)))

(assert (=> bs!1084297 (= (= lt!1845351 lt!1845367) (= lambda!206100 lambda!206099))))

(assert (=> bs!1084296 (= (= lt!1845351 lt!1844966) (= lambda!206100 lambda!206036))))

(declare-fun bs!1084298 () Bool)

(assert (= bs!1084298 (and d!1489179 d!1489091)))

(assert (=> bs!1084298 (not (= lambda!206100 lambda!206056))))

(declare-fun bs!1084299 () Bool)

(assert (= bs!1084299 (and d!1489179 b!4686222)))

(assert (=> bs!1084299 (= (= lt!1845351 lt!1844966) (= lambda!206100 lambda!206097))))

(declare-fun bs!1084300 () Bool)

(assert (= bs!1084300 (and d!1489179 d!1489063)))

(assert (=> bs!1084300 (= (= lt!1845351 lt!1845081) (= lambda!206100 lambda!206042))))

(declare-fun bs!1084302 () Bool)

(assert (= bs!1084302 (and d!1489179 b!4685982)))

(assert (=> bs!1084302 (= (= lt!1845351 lt!1844966) (= lambda!206100 lambda!206033))))

(assert (=> bs!1084297 (= (= lt!1845351 lt!1844966) (= lambda!206100 lambda!206098))))

(assert (=> d!1489179 true))

(declare-fun bm!327458 () Bool)

(declare-fun c!801335 () Bool)

(declare-fun call!327465 () Bool)

(declare-fun lt!1845350 () ListMap!4921)

(assert (=> bm!327458 (= call!327465 (forall!11288 (ite c!801335 (toList!5557 lt!1844966) (toList!5557 lt!1845350)) (ite c!801335 lambda!206097 lambda!206099)))))

(declare-fun b!4686219 () Bool)

(declare-fun e!2923605 () Bool)

(assert (=> b!4686219 (= e!2923605 (invariantList!1396 (toList!5557 lt!1845351)))))

(declare-fun bm!327459 () Bool)

(declare-fun call!327464 () Bool)

(assert (=> bm!327459 (= call!327464 (forall!11288 (toList!5557 lt!1844966) (ite c!801335 lambda!206097 lambda!206099)))))

(assert (=> d!1489179 e!2923605))

(declare-fun res!1975953 () Bool)

(assert (=> d!1489179 (=> (not res!1975953) (not e!2923605))))

(assert (=> d!1489179 (= res!1975953 (forall!11288 lt!1844957 lambda!206100))))

(declare-fun e!2923606 () ListMap!4921)

(assert (=> d!1489179 (= lt!1845351 e!2923606)))

(assert (=> d!1489179 (= c!801335 ((_ is Nil!52355) lt!1844957))))

(assert (=> d!1489179 (noDuplicateKeys!1834 lt!1844957)))

(assert (=> d!1489179 (= (addToMapMapFromBucket!1266 lt!1844957 lt!1844966) lt!1845351)))

(declare-fun b!4686220 () Bool)

(declare-fun e!2923607 () Bool)

(assert (=> b!4686220 (= e!2923607 (forall!11288 (toList!5557 lt!1844966) lambda!206099))))

(assert (=> b!4686221 (= e!2923606 lt!1845367)))

(assert (=> b!4686221 (= lt!1845350 (+!2118 lt!1844966 (h!58586 lt!1844957)))))

(assert (=> b!4686221 (= lt!1845367 (addToMapMapFromBucket!1266 (t!359641 lt!1844957) (+!2118 lt!1844966 (h!58586 lt!1844957))))))

(declare-fun lt!1845355 () Unit!123233)

(declare-fun call!327463 () Unit!123233)

(assert (=> b!4686221 (= lt!1845355 call!327463)))

(assert (=> b!4686221 (forall!11288 (toList!5557 lt!1844966) lambda!206098)))

(declare-fun lt!1845353 () Unit!123233)

(assert (=> b!4686221 (= lt!1845353 lt!1845355)))

(assert (=> b!4686221 (forall!11288 (toList!5557 lt!1845350) lambda!206099)))

(declare-fun lt!1845366 () Unit!123233)

(declare-fun Unit!123286 () Unit!123233)

(assert (=> b!4686221 (= lt!1845366 Unit!123286)))

(assert (=> b!4686221 (forall!11288 (t!359641 lt!1844957) lambda!206099)))

(declare-fun lt!1845369 () Unit!123233)

(declare-fun Unit!123287 () Unit!123233)

(assert (=> b!4686221 (= lt!1845369 Unit!123287)))

(declare-fun lt!1845356 () Unit!123233)

(declare-fun Unit!123288 () Unit!123233)

(assert (=> b!4686221 (= lt!1845356 Unit!123288)))

(declare-fun lt!1845354 () Unit!123233)

(assert (=> b!4686221 (= lt!1845354 (forallContained!3396 (toList!5557 lt!1845350) lambda!206099 (h!58586 lt!1844957)))))

(assert (=> b!4686221 (contains!15520 lt!1845350 (_1!30159 (h!58586 lt!1844957)))))

(declare-fun lt!1845357 () Unit!123233)

(declare-fun Unit!123289 () Unit!123233)

(assert (=> b!4686221 (= lt!1845357 Unit!123289)))

(assert (=> b!4686221 (contains!15520 lt!1845367 (_1!30159 (h!58586 lt!1844957)))))

(declare-fun lt!1845363 () Unit!123233)

(declare-fun Unit!123290 () Unit!123233)

(assert (=> b!4686221 (= lt!1845363 Unit!123290)))

(assert (=> b!4686221 (forall!11288 lt!1844957 lambda!206099)))

(declare-fun lt!1845361 () Unit!123233)

(declare-fun Unit!123291 () Unit!123233)

(assert (=> b!4686221 (= lt!1845361 Unit!123291)))

(assert (=> b!4686221 call!327465))

(declare-fun lt!1845362 () Unit!123233)

(declare-fun Unit!123292 () Unit!123233)

(assert (=> b!4686221 (= lt!1845362 Unit!123292)))

(declare-fun lt!1845352 () Unit!123233)

(declare-fun Unit!123293 () Unit!123233)

(assert (=> b!4686221 (= lt!1845352 Unit!123293)))

(declare-fun lt!1845365 () Unit!123233)

(assert (=> b!4686221 (= lt!1845365 (addForallContainsKeyThenBeforeAdding!683 lt!1844966 lt!1845367 (_1!30159 (h!58586 lt!1844957)) (_2!30159 (h!58586 lt!1844957))))))

(assert (=> b!4686221 (forall!11288 (toList!5557 lt!1844966) lambda!206099)))

(declare-fun lt!1845360 () Unit!123233)

(assert (=> b!4686221 (= lt!1845360 lt!1845365)))

(assert (=> b!4686221 call!327464))

(declare-fun lt!1845349 () Unit!123233)

(declare-fun Unit!123294 () Unit!123233)

(assert (=> b!4686221 (= lt!1845349 Unit!123294)))

(declare-fun res!1975951 () Bool)

(assert (=> b!4686221 (= res!1975951 (forall!11288 lt!1844957 lambda!206099))))

(assert (=> b!4686221 (=> (not res!1975951) (not e!2923607))))

(assert (=> b!4686221 e!2923607))

(declare-fun lt!1845359 () Unit!123233)

(declare-fun Unit!123295 () Unit!123233)

(assert (=> b!4686221 (= lt!1845359 Unit!123295)))

(assert (=> b!4686222 (= e!2923606 lt!1844966)))

(declare-fun lt!1845368 () Unit!123233)

(assert (=> b!4686222 (= lt!1845368 call!327463)))

(assert (=> b!4686222 call!327465))

(declare-fun lt!1845364 () Unit!123233)

(assert (=> b!4686222 (= lt!1845364 lt!1845368)))

(assert (=> b!4686222 call!327464))

(declare-fun lt!1845358 () Unit!123233)

(declare-fun Unit!123296 () Unit!123233)

(assert (=> b!4686222 (= lt!1845358 Unit!123296)))

(declare-fun b!4686223 () Bool)

(declare-fun res!1975952 () Bool)

(assert (=> b!4686223 (=> (not res!1975952) (not e!2923605))))

(assert (=> b!4686223 (= res!1975952 (forall!11288 (toList!5557 lt!1844966) lambda!206100))))

(declare-fun bm!327460 () Bool)

(assert (=> bm!327460 (= call!327463 (lemmaContainsAllItsOwnKeys!684 lt!1844966))))

(assert (= (and d!1489179 c!801335) b!4686222))

(assert (= (and d!1489179 (not c!801335)) b!4686221))

(assert (= (and b!4686221 res!1975951) b!4686220))

(assert (= (or b!4686222 b!4686221) bm!327460))

(assert (= (or b!4686222 b!4686221) bm!327458))

(assert (= (or b!4686222 b!4686221) bm!327459))

(assert (= (and d!1489179 res!1975953) b!4686223))

(assert (= (and b!4686223 res!1975952) b!4686219))

(declare-fun m!5585325 () Bool)

(assert (=> bm!327459 m!5585325))

(declare-fun m!5585327 () Bool)

(assert (=> b!4686220 m!5585327))

(declare-fun m!5585329 () Bool)

(assert (=> bm!327458 m!5585329))

(declare-fun m!5585331 () Bool)

(assert (=> b!4686219 m!5585331))

(declare-fun m!5585333 () Bool)

(assert (=> b!4686221 m!5585333))

(declare-fun m!5585335 () Bool)

(assert (=> b!4686221 m!5585335))

(declare-fun m!5585337 () Bool)

(assert (=> b!4686221 m!5585337))

(declare-fun m!5585339 () Bool)

(assert (=> b!4686221 m!5585339))

(declare-fun m!5585341 () Bool)

(assert (=> b!4686221 m!5585341))

(assert (=> b!4686221 m!5585333))

(declare-fun m!5585343 () Bool)

(assert (=> b!4686221 m!5585343))

(declare-fun m!5585345 () Bool)

(assert (=> b!4686221 m!5585345))

(assert (=> b!4686221 m!5585327))

(declare-fun m!5585347 () Bool)

(assert (=> b!4686221 m!5585347))

(declare-fun m!5585349 () Bool)

(assert (=> b!4686221 m!5585349))

(declare-fun m!5585351 () Bool)

(assert (=> b!4686221 m!5585351))

(assert (=> b!4686221 m!5585337))

(assert (=> bm!327460 m!5584939))

(declare-fun m!5585353 () Bool)

(assert (=> b!4686223 m!5585353))

(declare-fun m!5585355 () Bool)

(assert (=> d!1489179 m!5585355))

(declare-fun m!5585357 () Bool)

(assert (=> d!1489179 m!5585357))

(assert (=> b!4685896 d!1489179))

(declare-fun bs!1084303 () Bool)

(declare-fun d!1489191 () Bool)

(assert (= bs!1084303 (and d!1489191 d!1489109)))

(declare-fun lambda!206101 () Int)

(assert (=> bs!1084303 (= lambda!206101 lambda!206083)))

(declare-fun bs!1084304 () Bool)

(assert (= bs!1084304 (and d!1489191 d!1489099)))

(assert (=> bs!1084304 (= lambda!206101 lambda!206060)))

(declare-fun bs!1084305 () Bool)

(assert (= bs!1084305 (and d!1489191 d!1489081)))

(assert (=> bs!1084305 (= lambda!206101 lambda!206055)))

(declare-fun bs!1084306 () Bool)

(assert (= bs!1084306 (and d!1489191 start!473568)))

(assert (=> bs!1084306 (= lambda!206101 lambda!205979)))

(declare-fun bs!1084307 () Bool)

(assert (= bs!1084307 (and d!1489191 d!1489165)))

(assert (=> bs!1084307 (= lambda!206101 lambda!206089)))

(declare-fun lt!1845374 () ListMap!4921)

(assert (=> d!1489191 (invariantList!1396 (toList!5557 lt!1845374))))

(declare-fun e!2923624 () ListMap!4921)

(assert (=> d!1489191 (= lt!1845374 e!2923624)))

(declare-fun c!801338 () Bool)

(assert (=> d!1489191 (= c!801338 ((_ is Cons!52356) lt!1844965))))

(assert (=> d!1489191 (forall!11287 lt!1844965 lambda!206101)))

(assert (=> d!1489191 (= (extractMap!1860 lt!1844965) lt!1845374)))

(declare-fun b!4686244 () Bool)

(assert (=> b!4686244 (= e!2923624 (addToMapMapFromBucket!1266 (_2!30160 (h!58587 lt!1844965)) (extractMap!1860 (t!359642 lt!1844965))))))

(declare-fun b!4686245 () Bool)

(assert (=> b!4686245 (= e!2923624 (ListMap!4922 Nil!52355))))

(assert (= (and d!1489191 c!801338) b!4686244))

(assert (= (and d!1489191 (not c!801338)) b!4686245))

(declare-fun m!5585361 () Bool)

(assert (=> d!1489191 m!5585361))

(declare-fun m!5585363 () Bool)

(assert (=> d!1489191 m!5585363))

(declare-fun m!5585365 () Bool)

(assert (=> b!4686244 m!5585365))

(assert (=> b!4686244 m!5585365))

(declare-fun m!5585367 () Bool)

(assert (=> b!4686244 m!5585367))

(assert (=> b!4685896 d!1489191))

(declare-fun bs!1084310 () Bool)

(declare-fun b!4686254 () Bool)

(assert (= bs!1084310 (and b!4686254 d!1489179)))

(declare-fun lambda!206102 () Int)

(assert (=> bs!1084310 (= (= lt!1844966 lt!1845351) (= lambda!206102 lambda!206100))))

(declare-fun bs!1084311 () Bool)

(assert (= bs!1084311 (and b!4686254 d!1489061)))

(assert (=> bs!1084311 (not (= lambda!206102 lambda!205982))))

(declare-fun bs!1084312 () Bool)

(assert (= bs!1084312 (and b!4686254 b!4685981)))

(assert (=> bs!1084312 (= (= lt!1844966 lt!1845097) (= lambda!206102 lambda!206037))))

(declare-fun bs!1084313 () Bool)

(assert (= bs!1084313 (and b!4686254 b!4686221)))

(assert (=> bs!1084313 (= (= lt!1844966 lt!1845367) (= lambda!206102 lambda!206099))))

(assert (=> bs!1084312 (= lambda!206102 lambda!206036)))

(declare-fun bs!1084314 () Bool)

(assert (= bs!1084314 (and b!4686254 d!1489091)))

(assert (=> bs!1084314 (not (= lambda!206102 lambda!206056))))

(declare-fun bs!1084315 () Bool)

(assert (= bs!1084315 (and b!4686254 b!4686222)))

(assert (=> bs!1084315 (= lambda!206102 lambda!206097)))

(declare-fun bs!1084316 () Bool)

(assert (= bs!1084316 (and b!4686254 d!1489063)))

(assert (=> bs!1084316 (= (= lt!1844966 lt!1845081) (= lambda!206102 lambda!206042))))

(declare-fun bs!1084317 () Bool)

(assert (= bs!1084317 (and b!4686254 b!4685982)))

(assert (=> bs!1084317 (= lambda!206102 lambda!206033)))

(assert (=> bs!1084313 (= lambda!206102 lambda!206098)))

(assert (=> b!4686254 true))

(declare-fun bs!1084318 () Bool)

(declare-fun b!4686253 () Bool)

(assert (= bs!1084318 (and b!4686253 d!1489179)))

(declare-fun lambda!206103 () Int)

(assert (=> bs!1084318 (= (= lt!1844966 lt!1845351) (= lambda!206103 lambda!206100))))

(declare-fun bs!1084319 () Bool)

(assert (= bs!1084319 (and b!4686253 d!1489061)))

(assert (=> bs!1084319 (not (= lambda!206103 lambda!205982))))

(declare-fun bs!1084320 () Bool)

(assert (= bs!1084320 (and b!4686253 b!4685981)))

(assert (=> bs!1084320 (= (= lt!1844966 lt!1845097) (= lambda!206103 lambda!206037))))

(declare-fun bs!1084321 () Bool)

(assert (= bs!1084321 (and b!4686253 b!4686221)))

(assert (=> bs!1084321 (= (= lt!1844966 lt!1845367) (= lambda!206103 lambda!206099))))

(declare-fun bs!1084322 () Bool)

(assert (= bs!1084322 (and b!4686253 b!4686254)))

(assert (=> bs!1084322 (= lambda!206103 lambda!206102)))

(assert (=> bs!1084320 (= lambda!206103 lambda!206036)))

(declare-fun bs!1084323 () Bool)

(assert (= bs!1084323 (and b!4686253 d!1489091)))

(assert (=> bs!1084323 (not (= lambda!206103 lambda!206056))))

(declare-fun bs!1084324 () Bool)

(assert (= bs!1084324 (and b!4686253 b!4686222)))

(assert (=> bs!1084324 (= lambda!206103 lambda!206097)))

(declare-fun bs!1084325 () Bool)

(assert (= bs!1084325 (and b!4686253 d!1489063)))

(assert (=> bs!1084325 (= (= lt!1844966 lt!1845081) (= lambda!206103 lambda!206042))))

(declare-fun bs!1084326 () Bool)

(assert (= bs!1084326 (and b!4686253 b!4685982)))

(assert (=> bs!1084326 (= lambda!206103 lambda!206033)))

(assert (=> bs!1084321 (= lambda!206103 lambda!206098)))

(assert (=> b!4686253 true))

(declare-fun lambda!206104 () Int)

(declare-fun lt!1845393 () ListMap!4921)

(assert (=> bs!1084318 (= (= lt!1845393 lt!1845351) (= lambda!206104 lambda!206100))))

(assert (=> bs!1084319 (not (= lambda!206104 lambda!205982))))

(assert (=> bs!1084320 (= (= lt!1845393 lt!1845097) (= lambda!206104 lambda!206037))))

(assert (=> bs!1084321 (= (= lt!1845393 lt!1845367) (= lambda!206104 lambda!206099))))

(assert (=> b!4686253 (= (= lt!1845393 lt!1844966) (= lambda!206104 lambda!206103))))

(assert (=> bs!1084322 (= (= lt!1845393 lt!1844966) (= lambda!206104 lambda!206102))))

(assert (=> bs!1084320 (= (= lt!1845393 lt!1844966) (= lambda!206104 lambda!206036))))

(assert (=> bs!1084323 (not (= lambda!206104 lambda!206056))))

(assert (=> bs!1084324 (= (= lt!1845393 lt!1844966) (= lambda!206104 lambda!206097))))

(assert (=> bs!1084325 (= (= lt!1845393 lt!1845081) (= lambda!206104 lambda!206042))))

(assert (=> bs!1084326 (= (= lt!1845393 lt!1844966) (= lambda!206104 lambda!206033))))

(assert (=> bs!1084321 (= (= lt!1845393 lt!1844966) (= lambda!206104 lambda!206098))))

(assert (=> b!4686253 true))

(declare-fun bs!1084327 () Bool)

(declare-fun d!1489197 () Bool)

(assert (= bs!1084327 (and d!1489197 d!1489179)))

(declare-fun lambda!206105 () Int)

(declare-fun lt!1845377 () ListMap!4921)

(assert (=> bs!1084327 (= (= lt!1845377 lt!1845351) (= lambda!206105 lambda!206100))))

(declare-fun bs!1084328 () Bool)

(assert (= bs!1084328 (and d!1489197 d!1489061)))

(assert (=> bs!1084328 (not (= lambda!206105 lambda!205982))))

(declare-fun bs!1084329 () Bool)

(assert (= bs!1084329 (and d!1489197 b!4685981)))

(assert (=> bs!1084329 (= (= lt!1845377 lt!1845097) (= lambda!206105 lambda!206037))))

(declare-fun bs!1084330 () Bool)

(assert (= bs!1084330 (and d!1489197 b!4686221)))

(assert (=> bs!1084330 (= (= lt!1845377 lt!1845367) (= lambda!206105 lambda!206099))))

(declare-fun bs!1084331 () Bool)

(assert (= bs!1084331 (and d!1489197 b!4686253)))

(assert (=> bs!1084331 (= (= lt!1845377 lt!1844966) (= lambda!206105 lambda!206103))))

(declare-fun bs!1084332 () Bool)

(assert (= bs!1084332 (and d!1489197 b!4686254)))

(assert (=> bs!1084332 (= (= lt!1845377 lt!1844966) (= lambda!206105 lambda!206102))))

(assert (=> bs!1084331 (= (= lt!1845377 lt!1845393) (= lambda!206105 lambda!206104))))

(assert (=> bs!1084329 (= (= lt!1845377 lt!1844966) (= lambda!206105 lambda!206036))))

(declare-fun bs!1084333 () Bool)

(assert (= bs!1084333 (and d!1489197 d!1489091)))

(assert (=> bs!1084333 (not (= lambda!206105 lambda!206056))))

(declare-fun bs!1084334 () Bool)

(assert (= bs!1084334 (and d!1489197 b!4686222)))

(assert (=> bs!1084334 (= (= lt!1845377 lt!1844966) (= lambda!206105 lambda!206097))))

(declare-fun bs!1084335 () Bool)

(assert (= bs!1084335 (and d!1489197 d!1489063)))

(assert (=> bs!1084335 (= (= lt!1845377 lt!1845081) (= lambda!206105 lambda!206042))))

(declare-fun bs!1084336 () Bool)

(assert (= bs!1084336 (and d!1489197 b!4685982)))

(assert (=> bs!1084336 (= (= lt!1845377 lt!1844966) (= lambda!206105 lambda!206033))))

(assert (=> bs!1084330 (= (= lt!1845377 lt!1844966) (= lambda!206105 lambda!206098))))

(assert (=> d!1489197 true))

(declare-fun call!327468 () Bool)

(declare-fun lt!1845376 () ListMap!4921)

(declare-fun bm!327461 () Bool)

(declare-fun c!801339 () Bool)

(assert (=> bm!327461 (= call!327468 (forall!11288 (ite c!801339 (toList!5557 lt!1844966) (toList!5557 lt!1845376)) (ite c!801339 lambda!206102 lambda!206104)))))

(declare-fun b!4686251 () Bool)

(declare-fun e!2923628 () Bool)

(assert (=> b!4686251 (= e!2923628 (invariantList!1396 (toList!5557 lt!1845377)))))

(declare-fun bm!327462 () Bool)

(declare-fun call!327467 () Bool)

(assert (=> bm!327462 (= call!327467 (forall!11288 (toList!5557 lt!1844966) (ite c!801339 lambda!206102 lambda!206104)))))

(assert (=> d!1489197 e!2923628))

(declare-fun res!1975966 () Bool)

(assert (=> d!1489197 (=> (not res!1975966) (not e!2923628))))

(assert (=> d!1489197 (= res!1975966 (forall!11288 (Cons!52355 lt!1844968 lt!1844957) lambda!206105))))

(declare-fun e!2923629 () ListMap!4921)

(assert (=> d!1489197 (= lt!1845377 e!2923629)))

(assert (=> d!1489197 (= c!801339 ((_ is Nil!52355) (Cons!52355 lt!1844968 lt!1844957)))))

(assert (=> d!1489197 (noDuplicateKeys!1834 (Cons!52355 lt!1844968 lt!1844957))))

(assert (=> d!1489197 (= (addToMapMapFromBucket!1266 (Cons!52355 lt!1844968 lt!1844957) lt!1844966) lt!1845377)))

(declare-fun b!4686252 () Bool)

(declare-fun e!2923630 () Bool)

(assert (=> b!4686252 (= e!2923630 (forall!11288 (toList!5557 lt!1844966) lambda!206104))))

(assert (=> b!4686253 (= e!2923629 lt!1845393)))

(assert (=> b!4686253 (= lt!1845376 (+!2118 lt!1844966 (h!58586 (Cons!52355 lt!1844968 lt!1844957))))))

(assert (=> b!4686253 (= lt!1845393 (addToMapMapFromBucket!1266 (t!359641 (Cons!52355 lt!1844968 lt!1844957)) (+!2118 lt!1844966 (h!58586 (Cons!52355 lt!1844968 lt!1844957)))))))

(declare-fun lt!1845381 () Unit!123233)

(declare-fun call!327466 () Unit!123233)

(assert (=> b!4686253 (= lt!1845381 call!327466)))

(assert (=> b!4686253 (forall!11288 (toList!5557 lt!1844966) lambda!206103)))

(declare-fun lt!1845379 () Unit!123233)

(assert (=> b!4686253 (= lt!1845379 lt!1845381)))

(assert (=> b!4686253 (forall!11288 (toList!5557 lt!1845376) lambda!206104)))

(declare-fun lt!1845392 () Unit!123233)

(declare-fun Unit!123297 () Unit!123233)

(assert (=> b!4686253 (= lt!1845392 Unit!123297)))

(assert (=> b!4686253 (forall!11288 (t!359641 (Cons!52355 lt!1844968 lt!1844957)) lambda!206104)))

(declare-fun lt!1845395 () Unit!123233)

(declare-fun Unit!123298 () Unit!123233)

(assert (=> b!4686253 (= lt!1845395 Unit!123298)))

(declare-fun lt!1845382 () Unit!123233)

(declare-fun Unit!123299 () Unit!123233)

(assert (=> b!4686253 (= lt!1845382 Unit!123299)))

(declare-fun lt!1845380 () Unit!123233)

(assert (=> b!4686253 (= lt!1845380 (forallContained!3396 (toList!5557 lt!1845376) lambda!206104 (h!58586 (Cons!52355 lt!1844968 lt!1844957))))))

(assert (=> b!4686253 (contains!15520 lt!1845376 (_1!30159 (h!58586 (Cons!52355 lt!1844968 lt!1844957))))))

(declare-fun lt!1845383 () Unit!123233)

(declare-fun Unit!123300 () Unit!123233)

(assert (=> b!4686253 (= lt!1845383 Unit!123300)))

(assert (=> b!4686253 (contains!15520 lt!1845393 (_1!30159 (h!58586 (Cons!52355 lt!1844968 lt!1844957))))))

(declare-fun lt!1845389 () Unit!123233)

(declare-fun Unit!123301 () Unit!123233)

(assert (=> b!4686253 (= lt!1845389 Unit!123301)))

(assert (=> b!4686253 (forall!11288 (Cons!52355 lt!1844968 lt!1844957) lambda!206104)))

(declare-fun lt!1845387 () Unit!123233)

(declare-fun Unit!123302 () Unit!123233)

(assert (=> b!4686253 (= lt!1845387 Unit!123302)))

(assert (=> b!4686253 call!327468))

(declare-fun lt!1845388 () Unit!123233)

(declare-fun Unit!123303 () Unit!123233)

(assert (=> b!4686253 (= lt!1845388 Unit!123303)))

(declare-fun lt!1845378 () Unit!123233)

(declare-fun Unit!123304 () Unit!123233)

(assert (=> b!4686253 (= lt!1845378 Unit!123304)))

(declare-fun lt!1845391 () Unit!123233)

(assert (=> b!4686253 (= lt!1845391 (addForallContainsKeyThenBeforeAdding!683 lt!1844966 lt!1845393 (_1!30159 (h!58586 (Cons!52355 lt!1844968 lt!1844957))) (_2!30159 (h!58586 (Cons!52355 lt!1844968 lt!1844957)))))))

(assert (=> b!4686253 (forall!11288 (toList!5557 lt!1844966) lambda!206104)))

(declare-fun lt!1845386 () Unit!123233)

(assert (=> b!4686253 (= lt!1845386 lt!1845391)))

(assert (=> b!4686253 call!327467))

(declare-fun lt!1845375 () Unit!123233)

(declare-fun Unit!123305 () Unit!123233)

(assert (=> b!4686253 (= lt!1845375 Unit!123305)))

(declare-fun res!1975964 () Bool)

(assert (=> b!4686253 (= res!1975964 (forall!11288 (Cons!52355 lt!1844968 lt!1844957) lambda!206104))))

(assert (=> b!4686253 (=> (not res!1975964) (not e!2923630))))

(assert (=> b!4686253 e!2923630))

(declare-fun lt!1845385 () Unit!123233)

(declare-fun Unit!123306 () Unit!123233)

(assert (=> b!4686253 (= lt!1845385 Unit!123306)))

(assert (=> b!4686254 (= e!2923629 lt!1844966)))

(declare-fun lt!1845394 () Unit!123233)

(assert (=> b!4686254 (= lt!1845394 call!327466)))

(assert (=> b!4686254 call!327468))

(declare-fun lt!1845390 () Unit!123233)

(assert (=> b!4686254 (= lt!1845390 lt!1845394)))

(assert (=> b!4686254 call!327467))

(declare-fun lt!1845384 () Unit!123233)

(declare-fun Unit!123307 () Unit!123233)

(assert (=> b!4686254 (= lt!1845384 Unit!123307)))

(declare-fun b!4686255 () Bool)

(declare-fun res!1975965 () Bool)

(assert (=> b!4686255 (=> (not res!1975965) (not e!2923628))))

(assert (=> b!4686255 (= res!1975965 (forall!11288 (toList!5557 lt!1844966) lambda!206105))))

(declare-fun bm!327463 () Bool)

(assert (=> bm!327463 (= call!327466 (lemmaContainsAllItsOwnKeys!684 lt!1844966))))

(assert (= (and d!1489197 c!801339) b!4686254))

(assert (= (and d!1489197 (not c!801339)) b!4686253))

(assert (= (and b!4686253 res!1975964) b!4686252))

(assert (= (or b!4686254 b!4686253) bm!327463))

(assert (= (or b!4686254 b!4686253) bm!327461))

(assert (= (or b!4686254 b!4686253) bm!327462))

(assert (= (and d!1489197 res!1975966) b!4686255))

(assert (= (and b!4686255 res!1975965) b!4686251))

(declare-fun m!5585369 () Bool)

(assert (=> bm!327462 m!5585369))

(declare-fun m!5585371 () Bool)

(assert (=> b!4686252 m!5585371))

(declare-fun m!5585373 () Bool)

(assert (=> bm!327461 m!5585373))

(declare-fun m!5585375 () Bool)

(assert (=> b!4686251 m!5585375))

(declare-fun m!5585377 () Bool)

(assert (=> b!4686253 m!5585377))

(declare-fun m!5585379 () Bool)

(assert (=> b!4686253 m!5585379))

(declare-fun m!5585381 () Bool)

(assert (=> b!4686253 m!5585381))

(declare-fun m!5585383 () Bool)

(assert (=> b!4686253 m!5585383))

(declare-fun m!5585385 () Bool)

(assert (=> b!4686253 m!5585385))

(assert (=> b!4686253 m!5585377))

(declare-fun m!5585387 () Bool)

(assert (=> b!4686253 m!5585387))

(declare-fun m!5585389 () Bool)

(assert (=> b!4686253 m!5585389))

(assert (=> b!4686253 m!5585371))

(declare-fun m!5585391 () Bool)

(assert (=> b!4686253 m!5585391))

(declare-fun m!5585393 () Bool)

(assert (=> b!4686253 m!5585393))

(declare-fun m!5585395 () Bool)

(assert (=> b!4686253 m!5585395))

(assert (=> b!4686253 m!5585381))

(assert (=> bm!327463 m!5584939))

(declare-fun m!5585397 () Bool)

(assert (=> b!4686255 m!5585397))

(declare-fun m!5585399 () Bool)

(assert (=> d!1489197 m!5585399))

(declare-fun m!5585401 () Bool)

(assert (=> d!1489197 m!5585401))

(assert (=> b!4685896 d!1489197))

(declare-fun d!1489199 () Bool)

(assert (=> d!1489199 (eq!993 (addToMapMapFromBucket!1266 (Cons!52355 lt!1844968 lt!1844957) lt!1844966) (+!2118 (addToMapMapFromBucket!1266 lt!1844957 lt!1844966) lt!1844968))))

(declare-fun lt!1845398 () Unit!123233)

(declare-fun choose!32492 (tuple2!53730 List!52479 ListMap!4921) Unit!123233)

(assert (=> d!1489199 (= lt!1845398 (choose!32492 lt!1844968 lt!1844957 lt!1844966))))

(assert (=> d!1489199 (noDuplicateKeys!1834 lt!1844957)))

(assert (=> d!1489199 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!242 lt!1844968 lt!1844957 lt!1844966) lt!1845398)))

(declare-fun bs!1084337 () Bool)

(assert (= bs!1084337 d!1489199))

(assert (=> bs!1084337 m!5584843))

(assert (=> bs!1084337 m!5584849))

(assert (=> bs!1084337 m!5584845))

(assert (=> bs!1084337 m!5584851))

(assert (=> bs!1084337 m!5584849))

(assert (=> bs!1084337 m!5584843))

(assert (=> bs!1084337 m!5584845))

(assert (=> bs!1084337 m!5585357))

(declare-fun m!5585403 () Bool)

(assert (=> bs!1084337 m!5585403))

(assert (=> b!4685896 d!1489199))

(declare-fun bs!1084338 () Bool)

(declare-fun d!1489201 () Bool)

(assert (= bs!1084338 (and d!1489201 d!1489109)))

(declare-fun lambda!206108 () Int)

(assert (=> bs!1084338 (not (= lambda!206108 lambda!206083))))

(declare-fun bs!1084339 () Bool)

(assert (= bs!1084339 (and d!1489201 d!1489099)))

(assert (=> bs!1084339 (not (= lambda!206108 lambda!206060))))

(declare-fun bs!1084340 () Bool)

(assert (= bs!1084340 (and d!1489201 d!1489191)))

(assert (=> bs!1084340 (not (= lambda!206108 lambda!206101))))

(declare-fun bs!1084341 () Bool)

(assert (= bs!1084341 (and d!1489201 d!1489081)))

(assert (=> bs!1084341 (not (= lambda!206108 lambda!206055))))

(declare-fun bs!1084342 () Bool)

(assert (= bs!1084342 (and d!1489201 start!473568)))

(assert (=> bs!1084342 (not (= lambda!206108 lambda!205979))))

(declare-fun bs!1084343 () Bool)

(assert (= bs!1084343 (and d!1489201 d!1489165)))

(assert (=> bs!1084343 (not (= lambda!206108 lambda!206089))))

(assert (=> d!1489201 true))

(assert (=> d!1489201 (= (allKeysSameHashInMap!1748 lm!2023 hashF!1323) (forall!11287 (toList!5558 lm!2023) lambda!206108))))

(declare-fun bs!1084344 () Bool)

(assert (= bs!1084344 d!1489201))

(declare-fun m!5585405 () Bool)

(assert (=> bs!1084344 m!5585405))

(assert (=> b!4685897 d!1489201))

(declare-fun d!1489203 () Bool)

(declare-fun res!1975971 () Bool)

(declare-fun e!2923635 () Bool)

(assert (=> d!1489203 (=> res!1975971 e!2923635)))

(assert (=> d!1489203 (= res!1975971 ((_ is Nil!52356) (toList!5558 lm!2023)))))

(assert (=> d!1489203 (= (forall!11287 (toList!5558 lm!2023) lambda!205979) e!2923635)))

(declare-fun b!4686262 () Bool)

(declare-fun e!2923636 () Bool)

(assert (=> b!4686262 (= e!2923635 e!2923636)))

(declare-fun res!1975972 () Bool)

(assert (=> b!4686262 (=> (not res!1975972) (not e!2923636))))

(assert (=> b!4686262 (= res!1975972 (dynLambda!21698 lambda!205979 (h!58587 (toList!5558 lm!2023))))))

(declare-fun b!4686263 () Bool)

(assert (=> b!4686263 (= e!2923636 (forall!11287 (t!359642 (toList!5558 lm!2023)) lambda!205979))))

(assert (= (and d!1489203 (not res!1975971)) b!4686262))

(assert (= (and b!4686262 res!1975972) b!4686263))

(declare-fun b_lambda!176847 () Bool)

(assert (=> (not b_lambda!176847) (not b!4686262)))

(declare-fun m!5585407 () Bool)

(assert (=> b!4686262 m!5585407))

(declare-fun m!5585409 () Bool)

(assert (=> b!4686263 m!5585409))

(assert (=> start!473568 d!1489203))

(declare-fun d!1489205 () Bool)

(declare-fun isStrictlySorted!636 (List!52480) Bool)

(assert (=> d!1489205 (= (inv!67609 lm!2023) (isStrictlySorted!636 (toList!5558 lm!2023)))))

(declare-fun bs!1084345 () Bool)

(assert (= bs!1084345 d!1489205))

(declare-fun m!5585411 () Bool)

(assert (=> bs!1084345 m!5585411))

(assert (=> start!473568 d!1489205))

(declare-fun b!4686264 () Bool)

(declare-fun e!2923638 () List!52479)

(assert (=> b!4686264 (= e!2923638 (t!359641 lt!1844957))))

(declare-fun d!1489207 () Bool)

(declare-fun lt!1845399 () List!52479)

(assert (=> d!1489207 (not (containsKey!3005 lt!1845399 key!4653))))

(assert (=> d!1489207 (= lt!1845399 e!2923638)))

(declare-fun c!801340 () Bool)

(assert (=> d!1489207 (= c!801340 (and ((_ is Cons!52355) lt!1844957) (= (_1!30159 (h!58586 lt!1844957)) key!4653)))))

(assert (=> d!1489207 (noDuplicateKeys!1834 lt!1844957)))

(assert (=> d!1489207 (= (removePairForKey!1429 lt!1844957 key!4653) lt!1845399)))

(declare-fun b!4686266 () Bool)

(declare-fun e!2923637 () List!52479)

(assert (=> b!4686266 (= e!2923637 (Cons!52355 (h!58586 lt!1844957) (removePairForKey!1429 (t!359641 lt!1844957) key!4653)))))

(declare-fun b!4686267 () Bool)

(assert (=> b!4686267 (= e!2923637 Nil!52355)))

(declare-fun b!4686265 () Bool)

(assert (=> b!4686265 (= e!2923638 e!2923637)))

(declare-fun c!801341 () Bool)

(assert (=> b!4686265 (= c!801341 ((_ is Cons!52355) lt!1844957))))

(assert (= (and d!1489207 c!801340) b!4686264))

(assert (= (and d!1489207 (not c!801340)) b!4686265))

(assert (= (and b!4686265 c!801341) b!4686266))

(assert (= (and b!4686265 (not c!801341)) b!4686267))

(declare-fun m!5585413 () Bool)

(assert (=> d!1489207 m!5585413))

(assert (=> d!1489207 m!5585357))

(declare-fun m!5585415 () Bool)

(assert (=> b!4686266 m!5585415))

(assert (=> b!4685898 d!1489207))

(declare-fun d!1489209 () Bool)

(assert (=> d!1489209 (= (tail!8537 newBucket!218) (t!359641 newBucket!218))))

(assert (=> b!4685898 d!1489209))

(declare-fun d!1489211 () Bool)

(assert (=> d!1489211 (= (tail!8537 oldBucket!34) (t!359641 oldBucket!34))))

(assert (=> b!4685898 d!1489211))

(declare-fun d!1489213 () Bool)

(declare-fun res!1975973 () Bool)

(declare-fun e!2923639 () Bool)

(assert (=> d!1489213 (=> res!1975973 e!2923639)))

(assert (=> d!1489213 (= res!1975973 (not ((_ is Cons!52355) newBucket!218)))))

(assert (=> d!1489213 (= (noDuplicateKeys!1834 newBucket!218) e!2923639)))

(declare-fun b!4686268 () Bool)

(declare-fun e!2923640 () Bool)

(assert (=> b!4686268 (= e!2923639 e!2923640)))

(declare-fun res!1975974 () Bool)

(assert (=> b!4686268 (=> (not res!1975974) (not e!2923640))))

(assert (=> b!4686268 (= res!1975974 (not (containsKey!3005 (t!359641 newBucket!218) (_1!30159 (h!58586 newBucket!218)))))))

(declare-fun b!4686269 () Bool)

(assert (=> b!4686269 (= e!2923640 (noDuplicateKeys!1834 (t!359641 newBucket!218)))))

(assert (= (and d!1489213 (not res!1975973)) b!4686268))

(assert (= (and b!4686268 res!1975974) b!4686269))

(declare-fun m!5585417 () Bool)

(assert (=> b!4686268 m!5585417))

(declare-fun m!5585419 () Bool)

(assert (=> b!4686269 m!5585419))

(assert (=> b!4685899 d!1489213))

(declare-fun d!1489215 () Bool)

(declare-fun hash!4033 (Hashable!6203 K!13735) (_ BitVec 64))

(assert (=> d!1489215 (= (hash!4031 hashF!1323 key!4653) (hash!4033 hashF!1323 key!4653))))

(declare-fun bs!1084346 () Bool)

(assert (= bs!1084346 d!1489215))

(declare-fun m!5585421 () Bool)

(assert (=> bs!1084346 m!5585421))

(assert (=> b!4685889 d!1489215))

(declare-fun d!1489217 () Bool)

(assert (=> d!1489217 (= (head!9932 (toList!5558 lm!2023)) (h!58587 (toList!5558 lm!2023)))))

(assert (=> b!4685901 d!1489217))

(declare-fun b!4686270 () Bool)

(declare-fun e!2923646 () Bool)

(assert (=> b!4686270 (= e!2923646 (not (contains!15526 (keys!18679 lt!1844958) key!4653)))))

(declare-fun b!4686271 () Bool)

(assert (=> b!4686271 false))

(declare-fun lt!1845407 () Unit!123233)

(declare-fun lt!1845400 () Unit!123233)

(assert (=> b!4686271 (= lt!1845407 lt!1845400)))

(assert (=> b!4686271 (containsKey!3008 (toList!5557 lt!1844958) key!4653)))

(assert (=> b!4686271 (= lt!1845400 (lemmaInGetKeysListThenContainsKey!835 (toList!5557 lt!1844958) key!4653))))

(declare-fun e!2923641 () Unit!123233)

(declare-fun Unit!123309 () Unit!123233)

(assert (=> b!4686271 (= e!2923641 Unit!123309)))

(declare-fun d!1489219 () Bool)

(declare-fun e!2923644 () Bool)

(assert (=> d!1489219 e!2923644))

(declare-fun res!1975977 () Bool)

(assert (=> d!1489219 (=> res!1975977 e!2923644)))

(assert (=> d!1489219 (= res!1975977 e!2923646)))

(declare-fun res!1975976 () Bool)

(assert (=> d!1489219 (=> (not res!1975976) (not e!2923646))))

(declare-fun lt!1845406 () Bool)

(assert (=> d!1489219 (= res!1975976 (not lt!1845406))))

(declare-fun lt!1845404 () Bool)

(assert (=> d!1489219 (= lt!1845406 lt!1845404)))

(declare-fun lt!1845402 () Unit!123233)

(declare-fun e!2923642 () Unit!123233)

(assert (=> d!1489219 (= lt!1845402 e!2923642)))

(declare-fun c!801343 () Bool)

(assert (=> d!1489219 (= c!801343 lt!1845404)))

(assert (=> d!1489219 (= lt!1845404 (containsKey!3008 (toList!5557 lt!1844958) key!4653))))

(assert (=> d!1489219 (= (contains!15520 lt!1844958 key!4653) lt!1845406)))

(declare-fun b!4686272 () Bool)

(declare-fun e!2923643 () Bool)

(assert (=> b!4686272 (= e!2923644 e!2923643)))

(declare-fun res!1975975 () Bool)

(assert (=> b!4686272 (=> (not res!1975975) (not e!2923643))))

(assert (=> b!4686272 (= res!1975975 (isDefined!9287 (getValueByKey!1752 (toList!5557 lt!1844958) key!4653)))))

(declare-fun b!4686273 () Bool)

(declare-fun lt!1845403 () Unit!123233)

(assert (=> b!4686273 (= e!2923642 lt!1845403)))

(declare-fun lt!1845401 () Unit!123233)

(assert (=> b!4686273 (= lt!1845401 (lemmaContainsKeyImpliesGetValueByKeyDefined!1644 (toList!5557 lt!1844958) key!4653))))

(assert (=> b!4686273 (isDefined!9287 (getValueByKey!1752 (toList!5557 lt!1844958) key!4653))))

(declare-fun lt!1845405 () Unit!123233)

(assert (=> b!4686273 (= lt!1845405 lt!1845401)))

(assert (=> b!4686273 (= lt!1845403 (lemmaInListThenGetKeysListContains!831 (toList!5557 lt!1844958) key!4653))))

(declare-fun call!327469 () Bool)

(assert (=> b!4686273 call!327469))

(declare-fun b!4686274 () Bool)

(assert (=> b!4686274 (= e!2923643 (contains!15526 (keys!18679 lt!1844958) key!4653))))

(declare-fun b!4686275 () Bool)

(assert (=> b!4686275 (= e!2923642 e!2923641)))

(declare-fun c!801344 () Bool)

(assert (=> b!4686275 (= c!801344 call!327469)))

(declare-fun b!4686276 () Bool)

(declare-fun e!2923645 () List!52482)

(assert (=> b!4686276 (= e!2923645 (keys!18679 lt!1844958))))

(declare-fun bm!327464 () Bool)

(assert (=> bm!327464 (= call!327469 (contains!15526 e!2923645 key!4653))))

(declare-fun c!801342 () Bool)

(assert (=> bm!327464 (= c!801342 c!801343)))

(declare-fun b!4686277 () Bool)

(declare-fun Unit!123310 () Unit!123233)

(assert (=> b!4686277 (= e!2923641 Unit!123310)))

(declare-fun b!4686278 () Bool)

(assert (=> b!4686278 (= e!2923645 (getKeysList!836 (toList!5557 lt!1844958)))))

(assert (= (and d!1489219 c!801343) b!4686273))

(assert (= (and d!1489219 (not c!801343)) b!4686275))

(assert (= (and b!4686275 c!801344) b!4686271))

(assert (= (and b!4686275 (not c!801344)) b!4686277))

(assert (= (or b!4686273 b!4686275) bm!327464))

(assert (= (and bm!327464 c!801342) b!4686278))

(assert (= (and bm!327464 (not c!801342)) b!4686276))

(assert (= (and d!1489219 res!1975976) b!4686270))

(assert (= (and d!1489219 (not res!1975977)) b!4686272))

(assert (= (and b!4686272 res!1975975) b!4686274))

(declare-fun m!5585423 () Bool)

(assert (=> b!4686272 m!5585423))

(assert (=> b!4686272 m!5585423))

(declare-fun m!5585425 () Bool)

(assert (=> b!4686272 m!5585425))

(declare-fun m!5585427 () Bool)

(assert (=> b!4686271 m!5585427))

(declare-fun m!5585429 () Bool)

(assert (=> b!4686271 m!5585429))

(declare-fun m!5585431 () Bool)

(assert (=> b!4686270 m!5585431))

(assert (=> b!4686270 m!5585431))

(declare-fun m!5585433 () Bool)

(assert (=> b!4686270 m!5585433))

(assert (=> b!4686276 m!5585431))

(assert (=> d!1489219 m!5585427))

(declare-fun m!5585435 () Bool)

(assert (=> b!4686273 m!5585435))

(assert (=> b!4686273 m!5585423))

(assert (=> b!4686273 m!5585423))

(assert (=> b!4686273 m!5585425))

(declare-fun m!5585437 () Bool)

(assert (=> b!4686273 m!5585437))

(declare-fun m!5585439 () Bool)

(assert (=> bm!327464 m!5585439))

(declare-fun m!5585441 () Bool)

(assert (=> b!4686278 m!5585441))

(assert (=> b!4686274 m!5585431))

(assert (=> b!4686274 m!5585431))

(assert (=> b!4686274 m!5585433))

(assert (=> b!4685891 d!1489219))

(declare-fun bs!1084347 () Bool)

(declare-fun d!1489221 () Bool)

(assert (= bs!1084347 (and d!1489221 d!1489109)))

(declare-fun lambda!206109 () Int)

(assert (=> bs!1084347 (= lambda!206109 lambda!206083)))

(declare-fun bs!1084348 () Bool)

(assert (= bs!1084348 (and d!1489221 d!1489099)))

(assert (=> bs!1084348 (= lambda!206109 lambda!206060)))

(declare-fun bs!1084349 () Bool)

(assert (= bs!1084349 (and d!1489221 d!1489191)))

(assert (=> bs!1084349 (= lambda!206109 lambda!206101)))

(declare-fun bs!1084350 () Bool)

(assert (= bs!1084350 (and d!1489221 d!1489081)))

(assert (=> bs!1084350 (= lambda!206109 lambda!206055)))

(declare-fun bs!1084351 () Bool)

(assert (= bs!1084351 (and d!1489221 start!473568)))

(assert (=> bs!1084351 (= lambda!206109 lambda!205979)))

(declare-fun bs!1084352 () Bool)

(assert (= bs!1084352 (and d!1489221 d!1489201)))

(assert (=> bs!1084352 (not (= lambda!206109 lambda!206108))))

(declare-fun bs!1084353 () Bool)

(assert (= bs!1084353 (and d!1489221 d!1489165)))

(assert (=> bs!1084353 (= lambda!206109 lambda!206089)))

(declare-fun lt!1845408 () ListMap!4921)

(assert (=> d!1489221 (invariantList!1396 (toList!5557 lt!1845408))))

(declare-fun e!2923647 () ListMap!4921)

(assert (=> d!1489221 (= lt!1845408 e!2923647)))

(declare-fun c!801345 () Bool)

(assert (=> d!1489221 (= c!801345 ((_ is Cons!52356) (toList!5558 lm!2023)))))

(assert (=> d!1489221 (forall!11287 (toList!5558 lm!2023) lambda!206109)))

(assert (=> d!1489221 (= (extractMap!1860 (toList!5558 lm!2023)) lt!1845408)))

(declare-fun b!4686279 () Bool)

(assert (=> b!4686279 (= e!2923647 (addToMapMapFromBucket!1266 (_2!30160 (h!58587 (toList!5558 lm!2023))) (extractMap!1860 (t!359642 (toList!5558 lm!2023)))))))

(declare-fun b!4686280 () Bool)

(assert (=> b!4686280 (= e!2923647 (ListMap!4922 Nil!52355))))

(assert (= (and d!1489221 c!801345) b!4686279))

(assert (= (and d!1489221 (not c!801345)) b!4686280))

(declare-fun m!5585443 () Bool)

(assert (=> d!1489221 m!5585443))

(declare-fun m!5585445 () Bool)

(assert (=> d!1489221 m!5585445))

(assert (=> b!4686279 m!5584815))

(assert (=> b!4686279 m!5584815))

(declare-fun m!5585447 () Bool)

(assert (=> b!4686279 m!5585447))

(assert (=> b!4685891 d!1489221))

(declare-fun b!4686285 () Bool)

(declare-fun e!2923650 () Bool)

(declare-fun tp!1345612 () Bool)

(declare-fun tp!1345613 () Bool)

(assert (=> b!4686285 (= e!2923650 (and tp!1345612 tp!1345613))))

(assert (=> b!4685888 (= tp!1345597 e!2923650)))

(assert (= (and b!4685888 ((_ is Cons!52356) (toList!5558 lm!2023))) b!4686285))

(declare-fun tp!1345616 () Bool)

(declare-fun b!4686290 () Bool)

(declare-fun e!2923653 () Bool)

(assert (=> b!4686290 (= e!2923653 (and tp_is_empty!30629 tp_is_empty!30631 tp!1345616))))

(assert (=> b!4685900 (= tp!1345596 e!2923653)))

(assert (= (and b!4685900 ((_ is Cons!52355) (t!359641 newBucket!218))) b!4686290))

(declare-fun b!4686291 () Bool)

(declare-fun e!2923654 () Bool)

(declare-fun tp!1345617 () Bool)

(assert (=> b!4686291 (= e!2923654 (and tp_is_empty!30629 tp_is_empty!30631 tp!1345617))))

(assert (=> b!4685890 (= tp!1345595 e!2923654)))

(assert (= (and b!4685890 ((_ is Cons!52355) (t!359641 oldBucket!34))) b!4686291))

(declare-fun b_lambda!176849 () Bool)

(assert (= b_lambda!176847 (or start!473568 b_lambda!176849)))

(declare-fun bs!1084354 () Bool)

(declare-fun d!1489223 () Bool)

(assert (= bs!1084354 (and d!1489223 start!473568)))

(assert (=> bs!1084354 (= (dynLambda!21698 lambda!205979 (h!58587 (toList!5558 lm!2023))) (noDuplicateKeys!1834 (_2!30160 (h!58587 (toList!5558 lm!2023)))))))

(assert (=> bs!1084354 m!5584945))

(assert (=> b!4686262 d!1489223))

(declare-fun b_lambda!176851 () Bool)

(assert (= b_lambda!176839 (or start!473568 b_lambda!176851)))

(declare-fun bs!1084355 () Bool)

(declare-fun d!1489225 () Bool)

(assert (= bs!1084355 (and d!1489225 start!473568)))

(assert (=> bs!1084355 (= (dynLambda!21698 lambda!205979 lt!1844959) (noDuplicateKeys!1834 (_2!30160 lt!1844959)))))

(declare-fun m!5585449 () Bool)

(assert (=> bs!1084355 m!5585449))

(assert (=> d!1489149 d!1489225))

(check-sat (not b!4686149) (not d!1489221) (not b!4686269) (not d!1489207) (not d!1489085) (not b!4686065) (not d!1489173) (not d!1489063) (not d!1489149) (not b!4686003) (not d!1489201) (not bm!327436) (not b!4686146) (not b!4686279) (not b!4686278) (not b!4686291) (not d!1489199) (not b!4685979) (not b!4686271) (not d!1489089) (not b!4685911) (not bs!1084355) (not b!4686115) (not b!4686169) (not b!4686270) (not d!1489159) (not d!1489097) (not b!4686266) (not b!4686274) (not d!1489061) (not b!4686209) (not bm!327460) (not b!4686203) (not bs!1084354) (not b!4686220) (not b!4685983) (not b_lambda!176851) (not d!1489105) (not b!4686019) (not bm!327438) (not d!1489215) (not d!1489109) (not d!1489165) (not d!1489099) (not b!4686255) (not b!4686221) (not b!4686062) (not b!4686164) (not d!1489179) (not b!4686151) (not d!1489093) (not b!4686114) (not b!4686285) (not bm!327459) (not b_lambda!176849) (not b!4686219) (not b!4686066) (not b!4685910) (not d!1489143) (not b!4686201) (not b!4686276) (not bm!327458) (not d!1489191) (not d!1489087) (not bm!327463) (not d!1489169) (not b!4686251) (not d!1489197) (not bm!327437) (not b!4686252) (not bm!327457) (not bm!327462) (not d!1489167) (not d!1489091) (not b!4686015) (not b!4685980) (not b!4686272) (not d!1489163) (not d!1489081) tp_is_empty!30631 (not bm!327464) (not b!4686290) (not b!4686026) tp_is_empty!30629 (not b!4686244) (not b!4686273) (not b!4686060) (not bm!327461) (not d!1489205) (not b!4686263) (not b!4686268) (not d!1489219) (not b!4686170) (not b!4686202) (not b!4686162) (not b!4686063) (not d!1489151) (not b!4685981) (not b!4686253) (not b!4686204) (not b!4686113) (not b!4686116) (not b!4686205) (not b!4686207) (not b!4686223))
(check-sat)
