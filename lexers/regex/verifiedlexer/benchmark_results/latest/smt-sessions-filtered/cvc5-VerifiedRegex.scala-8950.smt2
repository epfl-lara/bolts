; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!480214 () Bool)

(assert start!480214)

(declare-fun b!4718770 () Bool)

(declare-fun res!1995815 () Bool)

(declare-fun e!2942929 () Bool)

(assert (=> b!4718770 (=> (not res!1995815) (not e!2942929))))

(declare-datatypes ((K!14153 0))(
  ( (K!14154 (val!19593 Int)) )
))
(declare-datatypes ((V!14399 0))(
  ( (V!14400 (val!19594 Int)) )
))
(declare-datatypes ((tuple2!54398 0))(
  ( (tuple2!54399 (_1!30493 K!14153) (_2!30493 V!14399)) )
))
(declare-datatypes ((List!52919 0))(
  ( (Nil!52795) (Cons!52795 (h!59132 tuple2!54398) (t!360175 List!52919)) )
))
(declare-fun newBucket!218 () List!52919)

(declare-fun noDuplicateKeys!2001 (List!52919) Bool)

(assert (=> b!4718770 (= res!1995815 (noDuplicateKeys!2001 newBucket!218))))

(declare-fun b!4718771 () Bool)

(declare-fun e!2942928 () Bool)

(declare-datatypes ((ListMap!5255 0))(
  ( (ListMap!5256 (toList!5891 List!52919)) )
))
(declare-fun lt!1884153 () ListMap!5255)

(declare-datatypes ((tuple2!54400 0))(
  ( (tuple2!54401 (_1!30494 (_ BitVec 64)) (_2!30494 List!52919)) )
))
(declare-datatypes ((List!52920 0))(
  ( (Nil!52796) (Cons!52796 (h!59133 tuple2!54400) (t!360176 List!52920)) )
))
(declare-datatypes ((ListLongMap!4421 0))(
  ( (ListLongMap!4422 (toList!5892 List!52920)) )
))
(declare-fun lm!2023 () ListLongMap!4421)

(declare-fun addToMapMapFromBucket!1431 (List!52919 ListMap!5255) ListMap!5255)

(declare-fun extractMap!2027 (List!52920) ListMap!5255)

(assert (=> b!4718771 (= e!2942928 (not (= lt!1884153 (addToMapMapFromBucket!1431 (_2!30494 (h!59133 (toList!5892 lm!2023))) (extractMap!2027 (t!360176 (toList!5892 lm!2023)))))))))

(declare-fun tail!8969 (ListLongMap!4421) ListLongMap!4421)

(assert (=> b!4718771 (= (t!360176 (toList!5892 lm!2023)) (toList!5892 (tail!8969 lm!2023)))))

(declare-fun b!4718772 () Bool)

(assert (=> b!4718772 (= e!2942929 e!2942928)))

(declare-fun res!1995816 () Bool)

(assert (=> b!4718772 (=> (not res!1995816) (not e!2942928))))

(declare-fun key!4653 () K!14153)

(declare-fun contains!16146 (ListMap!5255 K!14153) Bool)

(assert (=> b!4718772 (= res!1995816 (contains!16146 lt!1884153 key!4653))))

(assert (=> b!4718772 (= lt!1884153 (extractMap!2027 (toList!5892 lm!2023)))))

(declare-fun res!1995808 () Bool)

(assert (=> start!480214 (=> (not res!1995808) (not e!2942929))))

(declare-fun lambda!214664 () Int)

(declare-fun forall!11562 (List!52920 Int) Bool)

(assert (=> start!480214 (= res!1995808 (forall!11562 (toList!5892 lm!2023) lambda!214664))))

(assert (=> start!480214 e!2942929))

(declare-fun e!2942931 () Bool)

(declare-fun inv!68028 (ListLongMap!4421) Bool)

(assert (=> start!480214 (and (inv!68028 lm!2023) e!2942931)))

(declare-fun tp_is_empty!31297 () Bool)

(assert (=> start!480214 tp_is_empty!31297))

(declare-fun e!2942927 () Bool)

(assert (=> start!480214 e!2942927))

(assert (=> start!480214 true))

(declare-fun e!2942930 () Bool)

(assert (=> start!480214 e!2942930))

(declare-fun b!4718773 () Bool)

(declare-fun res!1995811 () Bool)

(assert (=> b!4718773 (=> (not res!1995811) (not e!2942929))))

(declare-datatypes ((Hashable!6370 0))(
  ( (HashableExt!6369 (__x!32073 Int)) )
))
(declare-fun hashF!1323 () Hashable!6370)

(declare-fun oldBucket!34 () List!52919)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1827 (List!52919 (_ BitVec 64) Hashable!6370) Bool)

(assert (=> b!4718773 (= res!1995811 (allKeysSameHash!1827 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4718774 () Bool)

(declare-fun tp!1348168 () Bool)

(assert (=> b!4718774 (= e!2942931 tp!1348168)))

(declare-fun b!4718775 () Bool)

(declare-fun res!1995809 () Bool)

(assert (=> b!4718775 (=> (not res!1995809) (not e!2942928))))

(declare-fun allKeysSameHashInMap!1915 (ListLongMap!4421 Hashable!6370) Bool)

(assert (=> b!4718775 (= res!1995809 (allKeysSameHashInMap!1915 lm!2023 hashF!1323))))

(declare-fun tp_is_empty!31299 () Bool)

(declare-fun b!4718776 () Bool)

(declare-fun tp!1348170 () Bool)

(assert (=> b!4718776 (= e!2942927 (and tp_is_empty!31297 tp_is_empty!31299 tp!1348170))))

(declare-fun b!4718777 () Bool)

(declare-fun res!1995810 () Bool)

(assert (=> b!4718777 (=> (not res!1995810) (not e!2942928))))

(declare-fun hash!4362 (Hashable!6370 K!14153) (_ BitVec 64))

(assert (=> b!4718777 (= res!1995810 (= (hash!4362 hashF!1323 key!4653) hash!405))))

(declare-fun b!4718778 () Bool)

(declare-fun res!1995817 () Bool)

(assert (=> b!4718778 (=> (not res!1995817) (not e!2942929))))

(assert (=> b!4718778 (= res!1995817 (noDuplicateKeys!2001 oldBucket!34))))

(declare-fun b!4718779 () Bool)

(declare-fun tp!1348169 () Bool)

(assert (=> b!4718779 (= e!2942930 (and tp_is_empty!31297 tp_is_empty!31299 tp!1348169))))

(declare-fun b!4718780 () Bool)

(declare-fun res!1995813 () Bool)

(assert (=> b!4718780 (=> (not res!1995813) (not e!2942929))))

(declare-fun removePairForKey!1596 (List!52919 K!14153) List!52919)

(assert (=> b!4718780 (= res!1995813 (= (removePairForKey!1596 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4718781 () Bool)

(declare-fun res!1995818 () Bool)

(assert (=> b!4718781 (=> (not res!1995818) (not e!2942928))))

(assert (=> b!4718781 (= res!1995818 (is-Cons!52796 (toList!5892 lm!2023)))))

(declare-fun b!4718782 () Bool)

(declare-fun res!1995812 () Bool)

(assert (=> b!4718782 (=> (not res!1995812) (not e!2942928))))

(assert (=> b!4718782 (= res!1995812 (allKeysSameHash!1827 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4718783 () Bool)

(declare-fun res!1995814 () Bool)

(assert (=> b!4718783 (=> (not res!1995814) (not e!2942928))))

(declare-fun head!10227 (List!52920) tuple2!54400)

(assert (=> b!4718783 (= res!1995814 (= (head!10227 (toList!5892 lm!2023)) (tuple2!54401 hash!405 oldBucket!34)))))

(assert (= (and start!480214 res!1995808) b!4718778))

(assert (= (and b!4718778 res!1995817) b!4718770))

(assert (= (and b!4718770 res!1995815) b!4718780))

(assert (= (and b!4718780 res!1995813) b!4718773))

(assert (= (and b!4718773 res!1995811) b!4718772))

(assert (= (and b!4718772 res!1995816) b!4718777))

(assert (= (and b!4718777 res!1995810) b!4718782))

(assert (= (and b!4718782 res!1995812) b!4718775))

(assert (= (and b!4718775 res!1995809) b!4718783))

(assert (= (and b!4718783 res!1995814) b!4718781))

(assert (= (and b!4718781 res!1995818) b!4718771))

(assert (= start!480214 b!4718774))

(assert (= (and start!480214 (is-Cons!52795 oldBucket!34)) b!4718776))

(assert (= (and start!480214 (is-Cons!52795 newBucket!218)) b!4718779))

(declare-fun m!5650745 () Bool)

(assert (=> b!4718772 m!5650745))

(declare-fun m!5650747 () Bool)

(assert (=> b!4718772 m!5650747))

(declare-fun m!5650749 () Bool)

(assert (=> start!480214 m!5650749))

(declare-fun m!5650751 () Bool)

(assert (=> start!480214 m!5650751))

(declare-fun m!5650753 () Bool)

(assert (=> b!4718778 m!5650753))

(declare-fun m!5650755 () Bool)

(assert (=> b!4718780 m!5650755))

(declare-fun m!5650757 () Bool)

(assert (=> b!4718782 m!5650757))

(declare-fun m!5650759 () Bool)

(assert (=> b!4718777 m!5650759))

(declare-fun m!5650761 () Bool)

(assert (=> b!4718771 m!5650761))

(assert (=> b!4718771 m!5650761))

(declare-fun m!5650763 () Bool)

(assert (=> b!4718771 m!5650763))

(declare-fun m!5650765 () Bool)

(assert (=> b!4718771 m!5650765))

(declare-fun m!5650767 () Bool)

(assert (=> b!4718783 m!5650767))

(declare-fun m!5650769 () Bool)

(assert (=> b!4718773 m!5650769))

(declare-fun m!5650771 () Bool)

(assert (=> b!4718770 m!5650771))

(declare-fun m!5650773 () Bool)

(assert (=> b!4718775 m!5650773))

(push 1)

(assert tp_is_empty!31299)

(assert (not b!4718780))

(assert (not start!480214))

(assert (not b!4718777))

(assert (not b!4718782))

(assert (not b!4718776))

(assert (not b!4718770))

(assert (not b!4718773))

(assert (not b!4718778))

(assert (not b!4718783))

(assert (not b!4718779))

(assert (not b!4718772))

(assert tp_is_empty!31297)

(assert (not b!4718775))

(assert (not b!4718771))

(assert (not b!4718774))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1501799 () Bool)

(declare-fun hash!4364 (Hashable!6370 K!14153) (_ BitVec 64))

(assert (=> d!1501799 (= (hash!4362 hashF!1323 key!4653) (hash!4364 hashF!1323 key!4653))))

(declare-fun bs!1106226 () Bool)

(assert (= bs!1106226 d!1501799))

(declare-fun m!5650805 () Bool)

(assert (=> bs!1106226 m!5650805))

(assert (=> b!4718777 d!1501799))

(declare-fun b!4718848 () Bool)

(declare-datatypes ((List!52923 0))(
  ( (Nil!52799) (Cons!52799 (h!59138 K!14153) (t!360179 List!52923)) )
))
(declare-fun e!2942963 () List!52923)

(declare-fun keys!18952 (ListMap!5255) List!52923)

(assert (=> b!4718848 (= e!2942963 (keys!18952 lt!1884153))))

(declare-fun b!4718849 () Bool)

(declare-fun e!2942960 () Bool)

(declare-fun contains!16148 (List!52923 K!14153) Bool)

(assert (=> b!4718849 (= e!2942960 (contains!16148 (keys!18952 lt!1884153) key!4653))))

(declare-fun b!4718850 () Bool)

(declare-fun e!2942964 () Bool)

(assert (=> b!4718850 (= e!2942964 (not (contains!16148 (keys!18952 lt!1884153) key!4653)))))

(declare-fun b!4718851 () Bool)

(declare-datatypes ((Unit!129161 0))(
  ( (Unit!129162) )
))
(declare-fun e!2942961 () Unit!129161)

(declare-fun lt!1884176 () Unit!129161)

(assert (=> b!4718851 (= e!2942961 lt!1884176)))

(declare-fun lt!1884173 () Unit!129161)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1836 (List!52919 K!14153) Unit!129161)

(assert (=> b!4718851 (= lt!1884173 (lemmaContainsKeyImpliesGetValueByKeyDefined!1836 (toList!5891 lt!1884153) key!4653))))

(declare-datatypes ((Option!12349 0))(
  ( (None!12348) (Some!12348 (v!46917 V!14399)) )
))
(declare-fun isDefined!9603 (Option!12349) Bool)

(declare-fun getValueByKey!1945 (List!52919 K!14153) Option!12349)

(assert (=> b!4718851 (isDefined!9603 (getValueByKey!1945 (toList!5891 lt!1884153) key!4653))))

(declare-fun lt!1884174 () Unit!129161)

(assert (=> b!4718851 (= lt!1884174 lt!1884173)))

(declare-fun lemmaInListThenGetKeysListContains!936 (List!52919 K!14153) Unit!129161)

(assert (=> b!4718851 (= lt!1884176 (lemmaInListThenGetKeysListContains!936 (toList!5891 lt!1884153) key!4653))))

(declare-fun call!329884 () Bool)

(assert (=> b!4718851 call!329884))

(declare-fun b!4718852 () Bool)

(declare-fun e!2942962 () Unit!129161)

(declare-fun Unit!129163 () Unit!129161)

(assert (=> b!4718852 (= e!2942962 Unit!129163)))

(declare-fun d!1501801 () Bool)

(declare-fun e!2942959 () Bool)

(assert (=> d!1501801 e!2942959))

(declare-fun res!1995859 () Bool)

(assert (=> d!1501801 (=> res!1995859 e!2942959)))

(assert (=> d!1501801 (= res!1995859 e!2942964)))

(declare-fun res!1995860 () Bool)

(assert (=> d!1501801 (=> (not res!1995860) (not e!2942964))))

(declare-fun lt!1884179 () Bool)

(assert (=> d!1501801 (= res!1995860 (not lt!1884179))))

(declare-fun lt!1884177 () Bool)

(assert (=> d!1501801 (= lt!1884179 lt!1884177)))

(declare-fun lt!1884175 () Unit!129161)

(assert (=> d!1501801 (= lt!1884175 e!2942961)))

(declare-fun c!805888 () Bool)

(assert (=> d!1501801 (= c!805888 lt!1884177)))

(declare-fun containsKey!3350 (List!52919 K!14153) Bool)

(assert (=> d!1501801 (= lt!1884177 (containsKey!3350 (toList!5891 lt!1884153) key!4653))))

(assert (=> d!1501801 (= (contains!16146 lt!1884153 key!4653) lt!1884179)))

(declare-fun bm!329879 () Bool)

(assert (=> bm!329879 (= call!329884 (contains!16148 e!2942963 key!4653))))

(declare-fun c!805889 () Bool)

(assert (=> bm!329879 (= c!805889 c!805888)))

(declare-fun b!4718853 () Bool)

(assert (=> b!4718853 false))

(declare-fun lt!1884180 () Unit!129161)

(declare-fun lt!1884178 () Unit!129161)

(assert (=> b!4718853 (= lt!1884180 lt!1884178)))

(assert (=> b!4718853 (containsKey!3350 (toList!5891 lt!1884153) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!940 (List!52919 K!14153) Unit!129161)

(assert (=> b!4718853 (= lt!1884178 (lemmaInGetKeysListThenContainsKey!940 (toList!5891 lt!1884153) key!4653))))

(declare-fun Unit!129164 () Unit!129161)

(assert (=> b!4718853 (= e!2942962 Unit!129164)))

(declare-fun b!4718854 () Bool)

(assert (=> b!4718854 (= e!2942959 e!2942960)))

(declare-fun res!1995858 () Bool)

(assert (=> b!4718854 (=> (not res!1995858) (not e!2942960))))

(assert (=> b!4718854 (= res!1995858 (isDefined!9603 (getValueByKey!1945 (toList!5891 lt!1884153) key!4653)))))

(declare-fun b!4718855 () Bool)

(assert (=> b!4718855 (= e!2942961 e!2942962)))

(declare-fun c!805890 () Bool)

(assert (=> b!4718855 (= c!805890 call!329884)))

(declare-fun b!4718856 () Bool)

(declare-fun getKeysList!941 (List!52919) List!52923)

(assert (=> b!4718856 (= e!2942963 (getKeysList!941 (toList!5891 lt!1884153)))))

(assert (= (and d!1501801 c!805888) b!4718851))

(assert (= (and d!1501801 (not c!805888)) b!4718855))

(assert (= (and b!4718855 c!805890) b!4718853))

(assert (= (and b!4718855 (not c!805890)) b!4718852))

(assert (= (or b!4718851 b!4718855) bm!329879))

(assert (= (and bm!329879 c!805889) b!4718856))

(assert (= (and bm!329879 (not c!805889)) b!4718848))

(assert (= (and d!1501801 res!1995860) b!4718850))

(assert (= (and d!1501801 (not res!1995859)) b!4718854))

(assert (= (and b!4718854 res!1995858) b!4718849))

(declare-fun m!5650809 () Bool)

(assert (=> b!4718856 m!5650809))

(declare-fun m!5650811 () Bool)

(assert (=> b!4718854 m!5650811))

(assert (=> b!4718854 m!5650811))

(declare-fun m!5650813 () Bool)

(assert (=> b!4718854 m!5650813))

(declare-fun m!5650815 () Bool)

(assert (=> b!4718848 m!5650815))

(declare-fun m!5650817 () Bool)

(assert (=> d!1501801 m!5650817))

(assert (=> b!4718849 m!5650815))

(assert (=> b!4718849 m!5650815))

(declare-fun m!5650819 () Bool)

(assert (=> b!4718849 m!5650819))

(assert (=> b!4718853 m!5650817))

(declare-fun m!5650821 () Bool)

(assert (=> b!4718853 m!5650821))

(declare-fun m!5650823 () Bool)

(assert (=> b!4718851 m!5650823))

(assert (=> b!4718851 m!5650811))

(assert (=> b!4718851 m!5650811))

(assert (=> b!4718851 m!5650813))

(declare-fun m!5650825 () Bool)

(assert (=> b!4718851 m!5650825))

(assert (=> b!4718850 m!5650815))

(assert (=> b!4718850 m!5650815))

(assert (=> b!4718850 m!5650819))

(declare-fun m!5650827 () Bool)

(assert (=> bm!329879 m!5650827))

(assert (=> b!4718772 d!1501801))

(declare-fun bs!1106228 () Bool)

(declare-fun d!1501809 () Bool)

(assert (= bs!1106228 (and d!1501809 start!480214)))

(declare-fun lambda!214673 () Int)

(assert (=> bs!1106228 (= lambda!214673 lambda!214664)))

(declare-fun lt!1884183 () ListMap!5255)

(declare-fun invariantList!1501 (List!52919) Bool)

(assert (=> d!1501809 (invariantList!1501 (toList!5891 lt!1884183))))

(declare-fun e!2942967 () ListMap!5255)

(assert (=> d!1501809 (= lt!1884183 e!2942967)))

(declare-fun c!805893 () Bool)

(assert (=> d!1501809 (= c!805893 (is-Cons!52796 (toList!5892 lm!2023)))))

(assert (=> d!1501809 (forall!11562 (toList!5892 lm!2023) lambda!214673)))

(assert (=> d!1501809 (= (extractMap!2027 (toList!5892 lm!2023)) lt!1884183)))

(declare-fun b!4718861 () Bool)

(assert (=> b!4718861 (= e!2942967 (addToMapMapFromBucket!1431 (_2!30494 (h!59133 (toList!5892 lm!2023))) (extractMap!2027 (t!360176 (toList!5892 lm!2023)))))))

(declare-fun b!4718862 () Bool)

(assert (=> b!4718862 (= e!2942967 (ListMap!5256 Nil!52795))))

(assert (= (and d!1501809 c!805893) b!4718861))

(assert (= (and d!1501809 (not c!805893)) b!4718862))

(declare-fun m!5650829 () Bool)

(assert (=> d!1501809 m!5650829))

(declare-fun m!5650831 () Bool)

(assert (=> d!1501809 m!5650831))

(assert (=> b!4718861 m!5650761))

(assert (=> b!4718861 m!5650761))

(assert (=> b!4718861 m!5650763))

(assert (=> b!4718772 d!1501809))

(declare-fun b!4718912 () Bool)

(assert (=> b!4718912 true))

(declare-fun bs!1106232 () Bool)

(declare-fun b!4718913 () Bool)

(assert (= bs!1106232 (and b!4718913 b!4718912)))

(declare-fun lambda!214706 () Int)

(declare-fun lambda!214705 () Int)

(assert (=> bs!1106232 (= lambda!214706 lambda!214705)))

(assert (=> b!4718913 true))

(declare-fun lt!1884255 () ListMap!5255)

(declare-fun lambda!214707 () Int)

(assert (=> bs!1106232 (= (= lt!1884255 (extractMap!2027 (t!360176 (toList!5892 lm!2023)))) (= lambda!214707 lambda!214705))))

(assert (=> b!4718913 (= (= lt!1884255 (extractMap!2027 (t!360176 (toList!5892 lm!2023)))) (= lambda!214707 lambda!214706))))

(assert (=> b!4718913 true))

(declare-fun bs!1106233 () Bool)

(declare-fun d!1501811 () Bool)

(assert (= bs!1106233 (and d!1501811 b!4718912)))

(declare-fun lambda!214708 () Int)

(declare-fun lt!1884254 () ListMap!5255)

(assert (=> bs!1106233 (= (= lt!1884254 (extractMap!2027 (t!360176 (toList!5892 lm!2023)))) (= lambda!214708 lambda!214705))))

(declare-fun bs!1106234 () Bool)

(assert (= bs!1106234 (and d!1501811 b!4718913)))

(assert (=> bs!1106234 (= (= lt!1884254 (extractMap!2027 (t!360176 (toList!5892 lm!2023)))) (= lambda!214708 lambda!214706))))

(assert (=> bs!1106234 (= (= lt!1884254 lt!1884255) (= lambda!214708 lambda!214707))))

(assert (=> d!1501811 true))

(declare-fun e!2943002 () ListMap!5255)

(assert (=> b!4718912 (= e!2943002 (extractMap!2027 (t!360176 (toList!5892 lm!2023))))))

(declare-fun lt!1884271 () Unit!129161)

(declare-fun call!329895 () Unit!129161)

(assert (=> b!4718912 (= lt!1884271 call!329895)))

(declare-fun call!329894 () Bool)

(assert (=> b!4718912 call!329894))

(declare-fun lt!1884258 () Unit!129161)

(assert (=> b!4718912 (= lt!1884258 lt!1884271)))

(declare-fun call!329896 () Bool)

(assert (=> b!4718912 call!329896))

(declare-fun lt!1884265 () Unit!129161)

(declare-fun Unit!129165 () Unit!129161)

(assert (=> b!4718912 (= lt!1884265 Unit!129165)))

(declare-fun lt!1884260 () ListMap!5255)

(declare-fun bm!329889 () Bool)

(declare-fun c!805908 () Bool)

(declare-fun forall!11564 (List!52919 Int) Bool)

(assert (=> bm!329889 (= call!329894 (forall!11564 (ite c!805908 (toList!5891 (extractMap!2027 (t!360176 (toList!5892 lm!2023)))) (toList!5891 lt!1884260)) (ite c!805908 lambda!214705 lambda!214707)))))

(declare-fun b!4718914 () Bool)

(declare-fun res!1995884 () Bool)

(declare-fun e!2943001 () Bool)

(assert (=> b!4718914 (=> (not res!1995884) (not e!2943001))))

(assert (=> b!4718914 (= res!1995884 (forall!11564 (toList!5891 (extractMap!2027 (t!360176 (toList!5892 lm!2023)))) lambda!214708))))

(declare-fun b!4718915 () Bool)

(declare-fun e!2943003 () Bool)

(assert (=> b!4718915 (= e!2943003 (forall!11564 (toList!5891 (extractMap!2027 (t!360176 (toList!5892 lm!2023)))) lambda!214707))))

(declare-fun bm!329890 () Bool)

(assert (=> bm!329890 (= call!329896 (forall!11564 (ite c!805908 (toList!5891 (extractMap!2027 (t!360176 (toList!5892 lm!2023)))) (_2!30494 (h!59133 (toList!5892 lm!2023)))) (ite c!805908 lambda!214705 lambda!214707)))))

(assert (=> d!1501811 e!2943001))

(declare-fun res!1995882 () Bool)

(assert (=> d!1501811 (=> (not res!1995882) (not e!2943001))))

(assert (=> d!1501811 (= res!1995882 (forall!11564 (_2!30494 (h!59133 (toList!5892 lm!2023))) lambda!214708))))

(assert (=> d!1501811 (= lt!1884254 e!2943002)))

(assert (=> d!1501811 (= c!805908 (is-Nil!52795 (_2!30494 (h!59133 (toList!5892 lm!2023)))))))

(assert (=> d!1501811 (noDuplicateKeys!2001 (_2!30494 (h!59133 (toList!5892 lm!2023))))))

(assert (=> d!1501811 (= (addToMapMapFromBucket!1431 (_2!30494 (h!59133 (toList!5892 lm!2023))) (extractMap!2027 (t!360176 (toList!5892 lm!2023)))) lt!1884254)))

(assert (=> b!4718913 (= e!2943002 lt!1884255)))

(declare-fun +!2259 (ListMap!5255 tuple2!54398) ListMap!5255)

(assert (=> b!4718913 (= lt!1884260 (+!2259 (extractMap!2027 (t!360176 (toList!5892 lm!2023))) (h!59132 (_2!30494 (h!59133 (toList!5892 lm!2023))))))))

(assert (=> b!4718913 (= lt!1884255 (addToMapMapFromBucket!1431 (t!360175 (_2!30494 (h!59133 (toList!5892 lm!2023)))) (+!2259 (extractMap!2027 (t!360176 (toList!5892 lm!2023))) (h!59132 (_2!30494 (h!59133 (toList!5892 lm!2023)))))))))

(declare-fun lt!1884270 () Unit!129161)

(assert (=> b!4718913 (= lt!1884270 call!329895)))

(assert (=> b!4718913 (forall!11564 (toList!5891 (extractMap!2027 (t!360176 (toList!5892 lm!2023)))) lambda!214706)))

(declare-fun lt!1884261 () Unit!129161)

(assert (=> b!4718913 (= lt!1884261 lt!1884270)))

(assert (=> b!4718913 (forall!11564 (toList!5891 lt!1884260) lambda!214707)))

(declare-fun lt!1884253 () Unit!129161)

(declare-fun Unit!129166 () Unit!129161)

(assert (=> b!4718913 (= lt!1884253 Unit!129166)))

(assert (=> b!4718913 (forall!11564 (t!360175 (_2!30494 (h!59133 (toList!5892 lm!2023)))) lambda!214707)))

(declare-fun lt!1884263 () Unit!129161)

(declare-fun Unit!129167 () Unit!129161)

(assert (=> b!4718913 (= lt!1884263 Unit!129167)))

(declare-fun lt!1884267 () Unit!129161)

(declare-fun Unit!129168 () Unit!129161)

(assert (=> b!4718913 (= lt!1884267 Unit!129168)))

(declare-fun lt!1884259 () Unit!129161)

(declare-fun forallContained!3625 (List!52919 Int tuple2!54398) Unit!129161)

(assert (=> b!4718913 (= lt!1884259 (forallContained!3625 (toList!5891 lt!1884260) lambda!214707 (h!59132 (_2!30494 (h!59133 (toList!5892 lm!2023))))))))

(assert (=> b!4718913 (contains!16146 lt!1884260 (_1!30493 (h!59132 (_2!30494 (h!59133 (toList!5892 lm!2023))))))))

(declare-fun lt!1884268 () Unit!129161)

(declare-fun Unit!129169 () Unit!129161)

(assert (=> b!4718913 (= lt!1884268 Unit!129169)))

(assert (=> b!4718913 (contains!16146 lt!1884255 (_1!30493 (h!59132 (_2!30494 (h!59133 (toList!5892 lm!2023))))))))

(declare-fun lt!1884269 () Unit!129161)

(declare-fun Unit!129170 () Unit!129161)

(assert (=> b!4718913 (= lt!1884269 Unit!129170)))

(assert (=> b!4718913 (forall!11564 (_2!30494 (h!59133 (toList!5892 lm!2023))) lambda!214707)))

(declare-fun lt!1884264 () Unit!129161)

(declare-fun Unit!129171 () Unit!129161)

(assert (=> b!4718913 (= lt!1884264 Unit!129171)))

(assert (=> b!4718913 call!329894))

(declare-fun lt!1884272 () Unit!129161)

(declare-fun Unit!129172 () Unit!129161)

(assert (=> b!4718913 (= lt!1884272 Unit!129172)))

(declare-fun lt!1884262 () Unit!129161)

(declare-fun Unit!129173 () Unit!129161)

(assert (=> b!4718913 (= lt!1884262 Unit!129173)))

(declare-fun lt!1884273 () Unit!129161)

(declare-fun addForallContainsKeyThenBeforeAdding!786 (ListMap!5255 ListMap!5255 K!14153 V!14399) Unit!129161)

(assert (=> b!4718913 (= lt!1884273 (addForallContainsKeyThenBeforeAdding!786 (extractMap!2027 (t!360176 (toList!5892 lm!2023))) lt!1884255 (_1!30493 (h!59132 (_2!30494 (h!59133 (toList!5892 lm!2023))))) (_2!30493 (h!59132 (_2!30494 (h!59133 (toList!5892 lm!2023)))))))))

(assert (=> b!4718913 (forall!11564 (toList!5891 (extractMap!2027 (t!360176 (toList!5892 lm!2023)))) lambda!214707)))

(declare-fun lt!1884257 () Unit!129161)

(assert (=> b!4718913 (= lt!1884257 lt!1884273)))

(assert (=> b!4718913 (forall!11564 (toList!5891 (extractMap!2027 (t!360176 (toList!5892 lm!2023)))) lambda!214707)))

(declare-fun lt!1884266 () Unit!129161)

(declare-fun Unit!129174 () Unit!129161)

(assert (=> b!4718913 (= lt!1884266 Unit!129174)))

(declare-fun res!1995883 () Bool)

(assert (=> b!4718913 (= res!1995883 call!329896)))

(assert (=> b!4718913 (=> (not res!1995883) (not e!2943003))))

(assert (=> b!4718913 e!2943003))

(declare-fun lt!1884256 () Unit!129161)

(declare-fun Unit!129175 () Unit!129161)

(assert (=> b!4718913 (= lt!1884256 Unit!129175)))

(declare-fun bm!329891 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!787 (ListMap!5255) Unit!129161)

(assert (=> bm!329891 (= call!329895 (lemmaContainsAllItsOwnKeys!787 (extractMap!2027 (t!360176 (toList!5892 lm!2023)))))))

(declare-fun b!4718916 () Bool)

(assert (=> b!4718916 (= e!2943001 (invariantList!1501 (toList!5891 lt!1884254)))))

(assert (= (and d!1501811 c!805908) b!4718912))

(assert (= (and d!1501811 (not c!805908)) b!4718913))

(assert (= (and b!4718913 res!1995883) b!4718915))

(assert (= (or b!4718912 b!4718913) bm!329891))

(assert (= (or b!4718912 b!4718913) bm!329889))

(assert (= (or b!4718912 b!4718913) bm!329890))

(assert (= (and d!1501811 res!1995882) b!4718914))

(assert (= (and b!4718914 res!1995884) b!4718916))

(declare-fun m!5650865 () Bool)

(assert (=> b!4718916 m!5650865))

(declare-fun m!5650867 () Bool)

(assert (=> d!1501811 m!5650867))

(declare-fun m!5650869 () Bool)

(assert (=> d!1501811 m!5650869))

(declare-fun m!5650871 () Bool)

(assert (=> b!4718914 m!5650871))

(declare-fun m!5650873 () Bool)

(assert (=> b!4718913 m!5650873))

(declare-fun m!5650875 () Bool)

(assert (=> b!4718913 m!5650875))

(declare-fun m!5650877 () Bool)

(assert (=> b!4718913 m!5650877))

(declare-fun m!5650879 () Bool)

(assert (=> b!4718913 m!5650879))

(declare-fun m!5650881 () Bool)

(assert (=> b!4718913 m!5650881))

(declare-fun m!5650883 () Bool)

(assert (=> b!4718913 m!5650883))

(declare-fun m!5650885 () Bool)

(assert (=> b!4718913 m!5650885))

(declare-fun m!5650887 () Bool)

(assert (=> b!4718913 m!5650887))

(declare-fun m!5650889 () Bool)

(assert (=> b!4718913 m!5650889))

(assert (=> b!4718913 m!5650761))

(assert (=> b!4718913 m!5650873))

(declare-fun m!5650891 () Bool)

(assert (=> b!4718913 m!5650891))

(assert (=> b!4718913 m!5650761))

(declare-fun m!5650893 () Bool)

(assert (=> b!4718913 m!5650893))

(assert (=> b!4718913 m!5650885))

(assert (=> b!4718915 m!5650885))

(declare-fun m!5650895 () Bool)

(assert (=> bm!329890 m!5650895))

(declare-fun m!5650897 () Bool)

(assert (=> bm!329889 m!5650897))

(assert (=> bm!329891 m!5650761))

(declare-fun m!5650899 () Bool)

(assert (=> bm!329891 m!5650899))

(assert (=> b!4718771 d!1501811))

(declare-fun bs!1106235 () Bool)

(declare-fun d!1501823 () Bool)

(assert (= bs!1106235 (and d!1501823 start!480214)))

(declare-fun lambda!214709 () Int)

(assert (=> bs!1106235 (= lambda!214709 lambda!214664)))

(declare-fun bs!1106236 () Bool)

(assert (= bs!1106236 (and d!1501823 d!1501809)))

(assert (=> bs!1106236 (= lambda!214709 lambda!214673)))

(declare-fun lt!1884274 () ListMap!5255)

(assert (=> d!1501823 (invariantList!1501 (toList!5891 lt!1884274))))

(declare-fun e!2943004 () ListMap!5255)

(assert (=> d!1501823 (= lt!1884274 e!2943004)))

(declare-fun c!805909 () Bool)

(assert (=> d!1501823 (= c!805909 (is-Cons!52796 (t!360176 (toList!5892 lm!2023))))))

(assert (=> d!1501823 (forall!11562 (t!360176 (toList!5892 lm!2023)) lambda!214709)))

(assert (=> d!1501823 (= (extractMap!2027 (t!360176 (toList!5892 lm!2023))) lt!1884274)))

(declare-fun b!4718919 () Bool)

(assert (=> b!4718919 (= e!2943004 (addToMapMapFromBucket!1431 (_2!30494 (h!59133 (t!360176 (toList!5892 lm!2023)))) (extractMap!2027 (t!360176 (t!360176 (toList!5892 lm!2023))))))))

(declare-fun b!4718920 () Bool)

(assert (=> b!4718920 (= e!2943004 (ListMap!5256 Nil!52795))))

(assert (= (and d!1501823 c!805909) b!4718919))

(assert (= (and d!1501823 (not c!805909)) b!4718920))

(declare-fun m!5650901 () Bool)

(assert (=> d!1501823 m!5650901))

(declare-fun m!5650903 () Bool)

(assert (=> d!1501823 m!5650903))

(declare-fun m!5650905 () Bool)

(assert (=> b!4718919 m!5650905))

(assert (=> b!4718919 m!5650905))

(declare-fun m!5650907 () Bool)

(assert (=> b!4718919 m!5650907))

(assert (=> b!4718771 d!1501823))

(declare-fun d!1501825 () Bool)

(declare-fun tail!8971 (List!52920) List!52920)

(assert (=> d!1501825 (= (tail!8969 lm!2023) (ListLongMap!4422 (tail!8971 (toList!5892 lm!2023))))))

(declare-fun bs!1106237 () Bool)

(assert (= bs!1106237 d!1501825))

(declare-fun m!5650909 () Bool)

(assert (=> bs!1106237 m!5650909))

(assert (=> b!4718771 d!1501825))

(declare-fun bs!1106238 () Bool)

(declare-fun d!1501827 () Bool)

(assert (= bs!1106238 (and d!1501827 b!4718912)))

(declare-fun lambda!214712 () Int)

(assert (=> bs!1106238 (not (= lambda!214712 lambda!214705))))

(declare-fun bs!1106239 () Bool)

(assert (= bs!1106239 (and d!1501827 b!4718913)))

(assert (=> bs!1106239 (not (= lambda!214712 lambda!214706))))

(assert (=> bs!1106239 (not (= lambda!214712 lambda!214707))))

(declare-fun bs!1106240 () Bool)

(assert (= bs!1106240 (and d!1501827 d!1501811)))

(assert (=> bs!1106240 (not (= lambda!214712 lambda!214708))))

(assert (=> d!1501827 true))

(assert (=> d!1501827 true))

(assert (=> d!1501827 (= (allKeysSameHash!1827 newBucket!218 hash!405 hashF!1323) (forall!11564 newBucket!218 lambda!214712))))

(declare-fun bs!1106241 () Bool)

(assert (= bs!1106241 d!1501827))

(declare-fun m!5650911 () Bool)

(assert (=> bs!1106241 m!5650911))

(assert (=> b!4718782 d!1501827))

(declare-fun bs!1106242 () Bool)

(declare-fun d!1501829 () Bool)

(assert (= bs!1106242 (and d!1501829 b!4718913)))

(declare-fun lambda!214713 () Int)

(assert (=> bs!1106242 (not (= lambda!214713 lambda!214706))))

(declare-fun bs!1106243 () Bool)

(assert (= bs!1106243 (and d!1501829 b!4718912)))

(assert (=> bs!1106243 (not (= lambda!214713 lambda!214705))))

(declare-fun bs!1106244 () Bool)

(assert (= bs!1106244 (and d!1501829 d!1501811)))

(assert (=> bs!1106244 (not (= lambda!214713 lambda!214708))))

(assert (=> bs!1106242 (not (= lambda!214713 lambda!214707))))

(declare-fun bs!1106245 () Bool)

(assert (= bs!1106245 (and d!1501829 d!1501827)))

(assert (=> bs!1106245 (= lambda!214713 lambda!214712)))

(assert (=> d!1501829 true))

(assert (=> d!1501829 true))

(assert (=> d!1501829 (= (allKeysSameHash!1827 oldBucket!34 hash!405 hashF!1323) (forall!11564 oldBucket!34 lambda!214713))))

(declare-fun bs!1106246 () Bool)

(assert (= bs!1106246 d!1501829))

(declare-fun m!5650913 () Bool)

(assert (=> bs!1106246 m!5650913))

(assert (=> b!4718773 d!1501829))

(declare-fun d!1501831 () Bool)

(assert (=> d!1501831 (= (head!10227 (toList!5892 lm!2023)) (h!59133 (toList!5892 lm!2023)))))

(assert (=> b!4718783 d!1501831))

(declare-fun d!1501833 () Bool)

(declare-fun res!1995889 () Bool)

(declare-fun e!2943009 () Bool)

(assert (=> d!1501833 (=> res!1995889 e!2943009)))

(assert (=> d!1501833 (= res!1995889 (not (is-Cons!52795 oldBucket!34)))))

(assert (=> d!1501833 (= (noDuplicateKeys!2001 oldBucket!34) e!2943009)))

(declare-fun b!4718929 () Bool)

(declare-fun e!2943010 () Bool)

(assert (=> b!4718929 (= e!2943009 e!2943010)))

(declare-fun res!1995890 () Bool)

(assert (=> b!4718929 (=> (not res!1995890) (not e!2943010))))

(declare-fun containsKey!3351 (List!52919 K!14153) Bool)

(assert (=> b!4718929 (= res!1995890 (not (containsKey!3351 (t!360175 oldBucket!34) (_1!30493 (h!59132 oldBucket!34)))))))

(declare-fun b!4718930 () Bool)

(assert (=> b!4718930 (= e!2943010 (noDuplicateKeys!2001 (t!360175 oldBucket!34)))))

(assert (= (and d!1501833 (not res!1995889)) b!4718929))

(assert (= (and b!4718929 res!1995890) b!4718930))

(declare-fun m!5650915 () Bool)

(assert (=> b!4718929 m!5650915))

(declare-fun m!5650917 () Bool)

(assert (=> b!4718930 m!5650917))

(assert (=> b!4718778 d!1501833))

(declare-fun b!4718942 () Bool)

(declare-fun e!2943015 () List!52919)

(assert (=> b!4718942 (= e!2943015 Nil!52795)))

(declare-fun b!4718940 () Bool)

(declare-fun e!2943016 () List!52919)

(assert (=> b!4718940 (= e!2943016 e!2943015)))

(declare-fun c!805914 () Bool)

(assert (=> b!4718940 (= c!805914 (is-Cons!52795 oldBucket!34))))

(declare-fun b!4718941 () Bool)

(assert (=> b!4718941 (= e!2943015 (Cons!52795 (h!59132 oldBucket!34) (removePairForKey!1596 (t!360175 oldBucket!34) key!4653)))))

(declare-fun d!1501835 () Bool)

(declare-fun lt!1884277 () List!52919)

(assert (=> d!1501835 (not (containsKey!3351 lt!1884277 key!4653))))

(assert (=> d!1501835 (= lt!1884277 e!2943016)))

(declare-fun c!805915 () Bool)

(assert (=> d!1501835 (= c!805915 (and (is-Cons!52795 oldBucket!34) (= (_1!30493 (h!59132 oldBucket!34)) key!4653)))))

(assert (=> d!1501835 (noDuplicateKeys!2001 oldBucket!34)))

(assert (=> d!1501835 (= (removePairForKey!1596 oldBucket!34 key!4653) lt!1884277)))

(declare-fun b!4718939 () Bool)

(assert (=> b!4718939 (= e!2943016 (t!360175 oldBucket!34))))

(assert (= (and d!1501835 c!805915) b!4718939))

(assert (= (and d!1501835 (not c!805915)) b!4718940))

(assert (= (and b!4718940 c!805914) b!4718941))

(assert (= (and b!4718940 (not c!805914)) b!4718942))

(declare-fun m!5650919 () Bool)

(assert (=> b!4718941 m!5650919))

(declare-fun m!5650921 () Bool)

(assert (=> d!1501835 m!5650921))

(assert (=> d!1501835 m!5650753))

(assert (=> b!4718780 d!1501835))

(declare-fun d!1501837 () Bool)

(declare-fun res!1995895 () Bool)

(declare-fun e!2943021 () Bool)

(assert (=> d!1501837 (=> res!1995895 e!2943021)))

(assert (=> d!1501837 (= res!1995895 (is-Nil!52796 (toList!5892 lm!2023)))))

(assert (=> d!1501837 (= (forall!11562 (toList!5892 lm!2023) lambda!214664) e!2943021)))

(declare-fun b!4718947 () Bool)

(declare-fun e!2943022 () Bool)

(assert (=> b!4718947 (= e!2943021 e!2943022)))

(declare-fun res!1995896 () Bool)

(assert (=> b!4718947 (=> (not res!1995896) (not e!2943022))))

(declare-fun dynLambda!21806 (Int tuple2!54400) Bool)

(assert (=> b!4718947 (= res!1995896 (dynLambda!21806 lambda!214664 (h!59133 (toList!5892 lm!2023))))))

(declare-fun b!4718948 () Bool)

(assert (=> b!4718948 (= e!2943022 (forall!11562 (t!360176 (toList!5892 lm!2023)) lambda!214664))))

(assert (= (and d!1501837 (not res!1995895)) b!4718947))

(assert (= (and b!4718947 res!1995896) b!4718948))

(declare-fun b_lambda!177879 () Bool)

(assert (=> (not b_lambda!177879) (not b!4718947)))

(declare-fun m!5650923 () Bool)

(assert (=> b!4718947 m!5650923))

(declare-fun m!5650925 () Bool)

(assert (=> b!4718948 m!5650925))

(assert (=> start!480214 d!1501837))

(declare-fun d!1501839 () Bool)

(declare-fun isStrictlySorted!740 (List!52920) Bool)

(assert (=> d!1501839 (= (inv!68028 lm!2023) (isStrictlySorted!740 (toList!5892 lm!2023)))))

(declare-fun bs!1106247 () Bool)

(assert (= bs!1106247 d!1501839))

(declare-fun m!5650927 () Bool)

(assert (=> bs!1106247 m!5650927))

(assert (=> start!480214 d!1501839))

(declare-fun bs!1106248 () Bool)

(declare-fun d!1501841 () Bool)

(assert (= bs!1106248 (and d!1501841 start!480214)))

(declare-fun lambda!214716 () Int)

(assert (=> bs!1106248 (not (= lambda!214716 lambda!214664))))

(declare-fun bs!1106249 () Bool)

(assert (= bs!1106249 (and d!1501841 d!1501809)))

(assert (=> bs!1106249 (not (= lambda!214716 lambda!214673))))

(declare-fun bs!1106250 () Bool)

(assert (= bs!1106250 (and d!1501841 d!1501823)))

(assert (=> bs!1106250 (not (= lambda!214716 lambda!214709))))

(assert (=> d!1501841 true))

(assert (=> d!1501841 (= (allKeysSameHashInMap!1915 lm!2023 hashF!1323) (forall!11562 (toList!5892 lm!2023) lambda!214716))))

(declare-fun bs!1106251 () Bool)

(assert (= bs!1106251 d!1501841))

(declare-fun m!5650929 () Bool)

(assert (=> bs!1106251 m!5650929))

(assert (=> b!4718775 d!1501841))

(declare-fun d!1501843 () Bool)

(declare-fun res!1995897 () Bool)

(declare-fun e!2943023 () Bool)

(assert (=> d!1501843 (=> res!1995897 e!2943023)))

(assert (=> d!1501843 (= res!1995897 (not (is-Cons!52795 newBucket!218)))))

(assert (=> d!1501843 (= (noDuplicateKeys!2001 newBucket!218) e!2943023)))

(declare-fun b!4718951 () Bool)

(declare-fun e!2943024 () Bool)

(assert (=> b!4718951 (= e!2943023 e!2943024)))

(declare-fun res!1995898 () Bool)

(assert (=> b!4718951 (=> (not res!1995898) (not e!2943024))))

(assert (=> b!4718951 (= res!1995898 (not (containsKey!3351 (t!360175 newBucket!218) (_1!30493 (h!59132 newBucket!218)))))))

(declare-fun b!4718952 () Bool)

(assert (=> b!4718952 (= e!2943024 (noDuplicateKeys!2001 (t!360175 newBucket!218)))))

(assert (= (and d!1501843 (not res!1995897)) b!4718951))

(assert (= (and b!4718951 res!1995898) b!4718952))

(declare-fun m!5650931 () Bool)

(assert (=> b!4718951 m!5650931))

(declare-fun m!5650933 () Bool)

(assert (=> b!4718952 m!5650933))

(assert (=> b!4718770 d!1501843))

(declare-fun e!2943027 () Bool)

(declare-fun tp!1348182 () Bool)

(declare-fun b!4718957 () Bool)

(assert (=> b!4718957 (= e!2943027 (and tp_is_empty!31297 tp_is_empty!31299 tp!1348182))))

(assert (=> b!4718779 (= tp!1348169 e!2943027)))

(assert (= (and b!4718779 (is-Cons!52795 (t!360175 newBucket!218))) b!4718957))

(declare-fun b!4718962 () Bool)

(declare-fun e!2943030 () Bool)

(declare-fun tp!1348187 () Bool)

(declare-fun tp!1348188 () Bool)

(assert (=> b!4718962 (= e!2943030 (and tp!1348187 tp!1348188))))

(assert (=> b!4718774 (= tp!1348168 e!2943030)))

(assert (= (and b!4718774 (is-Cons!52796 (toList!5892 lm!2023))) b!4718962))

(declare-fun b!4718963 () Bool)

(declare-fun tp!1348189 () Bool)

(declare-fun e!2943031 () Bool)

(assert (=> b!4718963 (= e!2943031 (and tp_is_empty!31297 tp_is_empty!31299 tp!1348189))))

(assert (=> b!4718776 (= tp!1348170 e!2943031)))

(assert (= (and b!4718776 (is-Cons!52795 (t!360175 oldBucket!34))) b!4718963))

(declare-fun b_lambda!177881 () Bool)

(assert (= b_lambda!177879 (or start!480214 b_lambda!177881)))

(declare-fun bs!1106252 () Bool)

(declare-fun d!1501845 () Bool)

(assert (= bs!1106252 (and d!1501845 start!480214)))

(assert (=> bs!1106252 (= (dynLambda!21806 lambda!214664 (h!59133 (toList!5892 lm!2023))) (noDuplicateKeys!2001 (_2!30494 (h!59133 (toList!5892 lm!2023)))))))

(assert (=> bs!1106252 m!5650869))

(assert (=> b!4718947 d!1501845))

(push 1)

(assert tp_is_empty!31299)

(assert (not b!4718854))

(assert (not b!4718915))

(assert (not d!1501829))

(assert (not b!4718952))

(assert (not d!1501841))

(assert (not b!4718849))

(assert (not b!4718919))

(assert (not b!4718851))

(assert (not b_lambda!177881))

(assert (not d!1501839))

(assert (not b!4718929))

(assert (not bm!329890))

(assert (not d!1501825))

(assert (not b!4718962))

(assert (not b!4718948))

(assert (not b!4718856))

(assert (not bm!329891))

(assert (not d!1501809))

(assert (not d!1501799))

(assert (not d!1501811))

(assert (not b!4718951))

(assert (not d!1501835))

(assert (not b!4718848))

(assert (not b!4718930))

(assert (not bm!329879))

(assert (not d!1501823))

(assert (not bm!329889))

(assert (not bs!1106252))

(assert (not b!4718914))

(assert (not b!4718916))

(assert (not b!4718853))

(assert (not b!4718850))

(assert (not b!4718963))

(assert (not b!4718957))

(assert (not b!4718861))

(assert (not d!1501801))

(assert (not d!1501827))

(assert tp_is_empty!31297)

(assert (not b!4718941))

(assert (not b!4718913))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

