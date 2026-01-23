; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!425822 () Bool)

(assert start!425822)

(declare-fun b!4385691 () Bool)

(declare-fun e!2730335 () Bool)

(declare-datatypes ((K!10533 0))(
  ( (K!10534 (val!16697 Int)) )
))
(declare-datatypes ((V!10779 0))(
  ( (V!10780 (val!16698 Int)) )
))
(declare-datatypes ((tuple2!48714 0))(
  ( (tuple2!48715 (_1!27651 K!10533) (_2!27651 V!10779)) )
))
(declare-datatypes ((List!49300 0))(
  ( (Nil!49176) (Cons!49176 (h!54779 tuple2!48714) (t!356230 List!49300)) )
))
(declare-datatypes ((ListMap!2399 0))(
  ( (ListMap!2400 (toList!3155 List!49300)) )
))
(declare-fun lt!1595005 () ListMap!2399)

(declare-fun lt!1595004 () ListMap!2399)

(declare-fun eq!324 (ListMap!2399 ListMap!2399) Bool)

(assert (=> b!4385691 (= e!2730335 (eq!324 lt!1595005 lt!1595004))))

(declare-fun b!4385692 () Bool)

(declare-fun res!1806933 () Bool)

(declare-fun e!2730331 () Bool)

(assert (=> b!4385692 (=> (not res!1806933) (not e!2730331))))

(declare-fun newBucket!200 () List!49300)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4978 0))(
  ( (HashableExt!4977 (__x!30681 Int)) )
))
(declare-fun hashF!1247 () Hashable!4978)

(declare-fun allKeysSameHash!544 (List!49300 (_ BitVec 64) Hashable!4978) Bool)

(assert (=> b!4385692 (= res!1806933 (allKeysSameHash!544 newBucket!200 hash!377 hashF!1247))))

(declare-datatypes ((tuple2!48716 0))(
  ( (tuple2!48717 (_1!27652 (_ BitVec 64)) (_2!27652 List!49300)) )
))
(declare-datatypes ((List!49301 0))(
  ( (Nil!49177) (Cons!49177 (h!54780 tuple2!48716) (t!356231 List!49301)) )
))
(declare-datatypes ((ListLongMap!1805 0))(
  ( (ListLongMap!1806 (toList!3156 List!49301)) )
))
(declare-fun lt!1595019 () ListLongMap!1805)

(declare-fun lm!1707 () ListLongMap!1805)

(declare-fun lt!1595017 () tuple2!48716)

(declare-fun e!2730332 () Bool)

(declare-fun b!4385693 () Bool)

(assert (=> b!4385693 (= e!2730332 (or (not (is-Cons!49177 (toList!3156 lm!1707))) (not (= (_1!27652 (h!54780 (toList!3156 lm!1707))) hash!377)) (= lt!1595019 (ListLongMap!1806 (Cons!49177 lt!1595017 (t!356231 (toList!3156 lm!1707)))))))))

(declare-fun b!4385694 () Bool)

(declare-fun res!1806945 () Bool)

(declare-fun e!2730336 () Bool)

(assert (=> b!4385694 (=> (not res!1806945) (not e!2730336))))

(declare-fun contains!11520 (ListLongMap!1805 (_ BitVec 64)) Bool)

(assert (=> b!4385694 (= res!1806945 (contains!11520 lm!1707 hash!377))))

(declare-fun lt!1595006 () List!49300)

(declare-fun b!4385695 () Bool)

(declare-fun lt!1595023 () tuple2!48714)

(declare-fun e!2730334 () Bool)

(declare-fun lt!1594998 () Bool)

(assert (=> b!4385695 (= e!2730334 (or (and lt!1594998 (= newBucket!200 (Cons!49176 lt!1595023 lt!1595006))) (and (not lt!1594998) (= newBucket!200 (Cons!49176 lt!1595023 Nil!49176)))))))

(declare-fun lt!1595020 () ListLongMap!1805)

(assert (=> b!4385695 (= lt!1594998 (contains!11520 lt!1595020 hash!377))))

(declare-fun b!4385696 () Bool)

(declare-fun res!1806936 () Bool)

(assert (=> b!4385696 (=> (not res!1806936) (not e!2730331))))

(declare-fun allKeysSameHashInMap!690 (ListLongMap!1805 Hashable!4978) Bool)

(assert (=> b!4385696 (= res!1806936 (allKeysSameHashInMap!690 lm!1707 hashF!1247))))

(declare-fun b!4385697 () Bool)

(declare-fun res!1806943 () Bool)

(assert (=> b!4385697 (=> (not res!1806943) (not e!2730331))))

(declare-fun key!3918 () K!10533)

(declare-fun hash!1769 (Hashable!4978 K!10533) (_ BitVec 64))

(assert (=> b!4385697 (= res!1806943 (= (hash!1769 hashF!1247 key!3918) hash!377))))

(declare-fun b!4385698 () Bool)

(declare-fun res!1806935 () Bool)

(assert (=> b!4385698 (=> (not res!1806935) (not e!2730332))))

(declare-fun lambda!146250 () Int)

(declare-fun forall!9288 (List!49301 Int) Bool)

(assert (=> b!4385698 (= res!1806935 (forall!9288 (toList!3156 lt!1595019) lambda!146250))))

(declare-fun res!1806940 () Bool)

(assert (=> start!425822 (=> (not res!1806940) (not e!2730331))))

(assert (=> start!425822 (= res!1806940 (forall!9288 (toList!3156 lm!1707) lambda!146250))))

(assert (=> start!425822 e!2730331))

(declare-fun e!2730329 () Bool)

(assert (=> start!425822 e!2730329))

(assert (=> start!425822 true))

(declare-fun e!2730337 () Bool)

(declare-fun inv!64720 (ListLongMap!1805) Bool)

(assert (=> start!425822 (and (inv!64720 lm!1707) e!2730337)))

(declare-fun tp_is_empty!25581 () Bool)

(assert (=> start!425822 tp_is_empty!25581))

(declare-fun tp_is_empty!25583 () Bool)

(assert (=> start!425822 tp_is_empty!25583))

(declare-fun b!4385699 () Bool)

(declare-fun e!2730330 () Bool)

(declare-fun e!2730333 () Bool)

(assert (=> b!4385699 (= e!2730330 e!2730333)))

(declare-fun res!1806932 () Bool)

(assert (=> b!4385699 (=> res!1806932 e!2730333)))

(assert (=> b!4385699 (= res!1806932 (or (not (is-Cons!49177 (toList!3156 lm!1707))) (not (= (_1!27652 (h!54780 (toList!3156 lm!1707))) hash!377))))))

(assert (=> b!4385699 e!2730332))

(declare-fun res!1806942 () Bool)

(assert (=> b!4385699 (=> (not res!1806942) (not e!2730332))))

(assert (=> b!4385699 (= res!1806942 (forall!9288 (toList!3156 lt!1595019) lambda!146250))))

(declare-fun +!803 (ListLongMap!1805 tuple2!48716) ListLongMap!1805)

(assert (=> b!4385699 (= lt!1595019 (+!803 lm!1707 lt!1595017))))

(assert (=> b!4385699 (= lt!1595017 (tuple2!48717 hash!377 newBucket!200))))

(declare-datatypes ((Unit!76736 0))(
  ( (Unit!76737) )
))
(declare-fun lt!1595012 () Unit!76736)

(declare-fun addValidProp!232 (ListLongMap!1805 Int (_ BitVec 64) List!49300) Unit!76736)

(assert (=> b!4385699 (= lt!1595012 (addValidProp!232 lm!1707 lambda!146250 hash!377 newBucket!200))))

(assert (=> b!4385699 (forall!9288 (toList!3156 lm!1707) lambda!146250)))

(declare-fun b!4385700 () Bool)

(assert (=> b!4385700 (= e!2730336 (not e!2730330))))

(declare-fun res!1806939 () Bool)

(assert (=> b!4385700 (=> res!1806939 e!2730330)))

(declare-fun lt!1595011 () List!49300)

(assert (=> b!4385700 (= res!1806939 (not (= newBucket!200 lt!1595011)))))

(declare-fun lt!1595018 () List!49300)

(assert (=> b!4385700 (= lt!1595011 (Cons!49176 lt!1595023 lt!1595018))))

(declare-fun lt!1595000 () List!49300)

(declare-fun removePairForKey!554 (List!49300 K!10533) List!49300)

(assert (=> b!4385700 (= lt!1595018 (removePairForKey!554 lt!1595000 key!3918))))

(declare-fun newValue!99 () V!10779)

(assert (=> b!4385700 (= lt!1595023 (tuple2!48715 key!3918 newValue!99))))

(declare-fun lt!1595015 () Unit!76736)

(declare-fun lt!1595007 () tuple2!48716)

(declare-fun forallContained!1926 (List!49301 Int tuple2!48716) Unit!76736)

(assert (=> b!4385700 (= lt!1595015 (forallContained!1926 (toList!3156 lm!1707) lambda!146250 lt!1595007))))

(declare-fun contains!11521 (List!49301 tuple2!48716) Bool)

(assert (=> b!4385700 (contains!11521 (toList!3156 lm!1707) lt!1595007)))

(assert (=> b!4385700 (= lt!1595007 (tuple2!48717 hash!377 lt!1595000))))

(declare-fun lt!1595008 () Unit!76736)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!431 (List!49301 (_ BitVec 64) List!49300) Unit!76736)

(assert (=> b!4385700 (= lt!1595008 (lemmaGetValueByKeyImpliesContainsTuple!431 (toList!3156 lm!1707) hash!377 lt!1595000))))

(declare-fun apply!11438 (ListLongMap!1805 (_ BitVec 64)) List!49300)

(assert (=> b!4385700 (= lt!1595000 (apply!11438 lm!1707 hash!377))))

(declare-fun b!4385701 () Bool)

(declare-fun tp!1331301 () Bool)

(assert (=> b!4385701 (= e!2730337 tp!1331301)))

(declare-fun b!4385702 () Bool)

(declare-fun res!1806938 () Bool)

(assert (=> b!4385702 (=> res!1806938 e!2730334)))

(assert (=> b!4385702 (= res!1806938 (not (forall!9288 (toList!3156 lt!1595020) lambda!146250)))))

(declare-fun b!4385703 () Bool)

(declare-fun res!1806944 () Bool)

(assert (=> b!4385703 (=> res!1806944 e!2730330)))

(declare-fun noDuplicateKeys!586 (List!49300) Bool)

(assert (=> b!4385703 (= res!1806944 (not (noDuplicateKeys!586 newBucket!200)))))

(declare-fun b!4385704 () Bool)

(declare-fun res!1806934 () Bool)

(assert (=> b!4385704 (=> res!1806934 e!2730334)))

(assert (=> b!4385704 (= res!1806934 (not (allKeysSameHashInMap!690 lt!1595020 hashF!1247)))))

(declare-fun b!4385705 () Bool)

(assert (=> b!4385705 (= e!2730333 e!2730334)))

(declare-fun res!1806941 () Bool)

(assert (=> b!4385705 (=> res!1806941 e!2730334)))

(declare-fun lt!1595022 () Bool)

(assert (=> b!4385705 (= res!1806941 lt!1595022)))

(declare-fun lt!1595003 () List!49300)

(assert (=> b!4385705 (= lt!1595006 lt!1595003)))

(assert (=> b!4385705 (= lt!1595006 (apply!11438 lt!1595020 hash!377))))

(declare-fun lt!1595001 () ListMap!2399)

(declare-fun contains!11522 (ListMap!2399 K!10533) Bool)

(assert (=> b!4385705 (= lt!1595022 (contains!11522 lt!1595001 key!3918))))

(declare-fun lt!1595021 () ListMap!2399)

(assert (=> b!4385705 (= lt!1595022 (contains!11522 lt!1595021 key!3918))))

(declare-fun lt!1595014 () Unit!76736)

(declare-fun lemmaEquivalentThenSameContains!111 (ListMap!2399 ListMap!2399 K!10533) Unit!76736)

(assert (=> b!4385705 (= lt!1595014 (lemmaEquivalentThenSameContains!111 lt!1595021 lt!1595001 key!3918))))

(assert (=> b!4385705 (eq!324 lt!1595021 lt!1595001)))

(declare-fun lt!1595002 () ListMap!2399)

(declare-fun -!261 (ListMap!2399 K!10533) ListMap!2399)

(assert (=> b!4385705 (= lt!1595001 (-!261 lt!1595002 key!3918))))

(declare-fun lt!1595010 () Unit!76736)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!76 (ListLongMap!1805 (_ BitVec 64) List!49300 K!10533 Hashable!4978) Unit!76736)

(assert (=> b!4385705 (= lt!1595010 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!76 lm!1707 hash!377 lt!1595003 key!3918 hashF!1247))))

(declare-fun lt!1595009 () ListMap!2399)

(assert (=> b!4385705 (= lt!1595009 lt!1595021)))

(declare-fun extractMap!645 (List!49301) ListMap!2399)

(assert (=> b!4385705 (= lt!1595021 (extractMap!645 (toList!3156 lt!1595020)))))

(assert (=> b!4385705 (= lt!1595003 lt!1595018)))

(assert (=> b!4385705 (= lt!1595020 (+!803 lm!1707 (tuple2!48717 hash!377 lt!1595003)))))

(declare-fun tail!7079 (List!49300) List!49300)

(assert (=> b!4385705 (= lt!1595003 (tail!7079 newBucket!200))))

(assert (=> b!4385705 e!2730335))

(declare-fun res!1806937 () Bool)

(assert (=> b!4385705 (=> (not res!1806937) (not e!2730335))))

(declare-fun lt!1595016 () ListMap!2399)

(assert (=> b!4385705 (= res!1806937 (eq!324 lt!1595016 lt!1595004))))

(declare-fun +!804 (ListMap!2399 tuple2!48714) ListMap!2399)

(assert (=> b!4385705 (= lt!1595004 (+!804 lt!1595009 lt!1595023))))

(declare-fun lt!1594999 () ListMap!2399)

(declare-fun addToMapMapFromBucket!267 (List!49300 ListMap!2399) ListMap!2399)

(assert (=> b!4385705 (= lt!1595009 (addToMapMapFromBucket!267 lt!1595018 lt!1594999))))

(declare-fun lt!1595013 () Unit!76736)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!133 (ListMap!2399 K!10533 V!10779 List!49300) Unit!76736)

(assert (=> b!4385705 (= lt!1595013 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!133 lt!1594999 key!3918 newValue!99 lt!1595018))))

(assert (=> b!4385705 (= lt!1595005 lt!1595016)))

(assert (=> b!4385705 (= lt!1595016 (addToMapMapFromBucket!267 lt!1595018 (+!804 lt!1594999 lt!1595023)))))

(declare-fun lt!1594997 () ListMap!2399)

(assert (=> b!4385705 (= lt!1594997 lt!1595005)))

(assert (=> b!4385705 (= lt!1595005 (addToMapMapFromBucket!267 lt!1595011 lt!1594999))))

(assert (=> b!4385705 (= lt!1594997 (addToMapMapFromBucket!267 newBucket!200 lt!1594999))))

(assert (=> b!4385705 (= lt!1594997 (extractMap!645 (toList!3156 lt!1595019)))))

(assert (=> b!4385705 (= lt!1594999 (extractMap!645 (t!356231 (toList!3156 lm!1707))))))

(declare-fun tp!1331302 () Bool)

(declare-fun b!4385706 () Bool)

(assert (=> b!4385706 (= e!2730329 (and tp_is_empty!25581 tp_is_empty!25583 tp!1331302))))

(declare-fun b!4385707 () Bool)

(assert (=> b!4385707 (= e!2730331 e!2730336)))

(declare-fun res!1806946 () Bool)

(assert (=> b!4385707 (=> (not res!1806946) (not e!2730336))))

(assert (=> b!4385707 (= res!1806946 (contains!11522 lt!1595002 key!3918))))

(assert (=> b!4385707 (= lt!1595002 (extractMap!645 (toList!3156 lm!1707)))))

(assert (= (and start!425822 res!1806940) b!4385696))

(assert (= (and b!4385696 res!1806936) b!4385697))

(assert (= (and b!4385697 res!1806943) b!4385692))

(assert (= (and b!4385692 res!1806933) b!4385707))

(assert (= (and b!4385707 res!1806946) b!4385694))

(assert (= (and b!4385694 res!1806945) b!4385700))

(assert (= (and b!4385700 (not res!1806939)) b!4385703))

(assert (= (and b!4385703 (not res!1806944)) b!4385699))

(assert (= (and b!4385699 res!1806942) b!4385698))

(assert (= (and b!4385698 res!1806935) b!4385693))

(assert (= (and b!4385699 (not res!1806932)) b!4385705))

(assert (= (and b!4385705 res!1806937) b!4385691))

(assert (= (and b!4385705 (not res!1806941)) b!4385702))

(assert (= (and b!4385702 (not res!1806938)) b!4385704))

(assert (= (and b!4385704 (not res!1806934)) b!4385695))

(assert (= (and start!425822 (is-Cons!49176 newBucket!200)) b!4385706))

(assert (= start!425822 b!4385701))

(declare-fun m!5033127 () Bool)

(assert (=> b!4385705 m!5033127))

(declare-fun m!5033129 () Bool)

(assert (=> b!4385705 m!5033129))

(declare-fun m!5033131 () Bool)

(assert (=> b!4385705 m!5033131))

(declare-fun m!5033133 () Bool)

(assert (=> b!4385705 m!5033133))

(declare-fun m!5033135 () Bool)

(assert (=> b!4385705 m!5033135))

(declare-fun m!5033137 () Bool)

(assert (=> b!4385705 m!5033137))

(declare-fun m!5033139 () Bool)

(assert (=> b!4385705 m!5033139))

(declare-fun m!5033141 () Bool)

(assert (=> b!4385705 m!5033141))

(declare-fun m!5033143 () Bool)

(assert (=> b!4385705 m!5033143))

(declare-fun m!5033145 () Bool)

(assert (=> b!4385705 m!5033145))

(declare-fun m!5033147 () Bool)

(assert (=> b!4385705 m!5033147))

(declare-fun m!5033149 () Bool)

(assert (=> b!4385705 m!5033149))

(declare-fun m!5033151 () Bool)

(assert (=> b!4385705 m!5033151))

(declare-fun m!5033153 () Bool)

(assert (=> b!4385705 m!5033153))

(declare-fun m!5033155 () Bool)

(assert (=> b!4385705 m!5033155))

(declare-fun m!5033157 () Bool)

(assert (=> b!4385705 m!5033157))

(assert (=> b!4385705 m!5033133))

(declare-fun m!5033159 () Bool)

(assert (=> b!4385705 m!5033159))

(declare-fun m!5033161 () Bool)

(assert (=> b!4385705 m!5033161))

(declare-fun m!5033163 () Bool)

(assert (=> b!4385705 m!5033163))

(declare-fun m!5033165 () Bool)

(assert (=> b!4385705 m!5033165))

(declare-fun m!5033167 () Bool)

(assert (=> b!4385703 m!5033167))

(declare-fun m!5033169 () Bool)

(assert (=> b!4385694 m!5033169))

(declare-fun m!5033171 () Bool)

(assert (=> b!4385692 m!5033171))

(declare-fun m!5033173 () Bool)

(assert (=> b!4385700 m!5033173))

(declare-fun m!5033175 () Bool)

(assert (=> b!4385700 m!5033175))

(declare-fun m!5033177 () Bool)

(assert (=> b!4385700 m!5033177))

(declare-fun m!5033179 () Bool)

(assert (=> b!4385700 m!5033179))

(declare-fun m!5033181 () Bool)

(assert (=> b!4385700 m!5033181))

(declare-fun m!5033183 () Bool)

(assert (=> b!4385699 m!5033183))

(declare-fun m!5033185 () Bool)

(assert (=> b!4385699 m!5033185))

(declare-fun m!5033187 () Bool)

(assert (=> b!4385699 m!5033187))

(declare-fun m!5033189 () Bool)

(assert (=> b!4385699 m!5033189))

(assert (=> b!4385698 m!5033183))

(assert (=> start!425822 m!5033189))

(declare-fun m!5033191 () Bool)

(assert (=> start!425822 m!5033191))

(declare-fun m!5033193 () Bool)

(assert (=> b!4385695 m!5033193))

(declare-fun m!5033195 () Bool)

(assert (=> b!4385707 m!5033195))

(declare-fun m!5033197 () Bool)

(assert (=> b!4385707 m!5033197))

(declare-fun m!5033199 () Bool)

(assert (=> b!4385702 m!5033199))

(declare-fun m!5033201 () Bool)

(assert (=> b!4385697 m!5033201))

(declare-fun m!5033203 () Bool)

(assert (=> b!4385696 m!5033203))

(declare-fun m!5033205 () Bool)

(assert (=> b!4385704 m!5033205))

(declare-fun m!5033207 () Bool)

(assert (=> b!4385691 m!5033207))

(push 1)

(assert (not b!4385704))

(assert (not b!4385695))

(assert (not b!4385697))

(assert (not b!4385696))

(assert (not b!4385706))

(assert tp_is_empty!25583)

(assert (not b!4385707))

(assert (not b!4385702))

(assert (not b!4385691))

(assert (not b!4385705))

(assert (not b!4385699))

(assert (not b!4385700))

(assert (not start!425822))

(assert (not b!4385701))

(assert tp_is_empty!25581)

(assert (not b!4385698))

(assert (not b!4385692))

(assert (not b!4385694))

(assert (not b!4385703))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!688921 () Bool)

(declare-fun d!1313133 () Bool)

(assert (= bs!688921 (and d!1313133 start!425822)))

(declare-fun lambda!146266 () Int)

(assert (=> bs!688921 (not (= lambda!146266 lambda!146250))))

(assert (=> d!1313133 true))

(assert (=> d!1313133 (= (allKeysSameHashInMap!690 lm!1707 hashF!1247) (forall!9288 (toList!3156 lm!1707) lambda!146266))))

(declare-fun bs!688922 () Bool)

(assert (= bs!688922 d!1313133))

(declare-fun m!5033291 () Bool)

(assert (=> bs!688922 m!5033291))

(assert (=> b!4385696 d!1313133))

(declare-fun b!4385779 () Bool)

(declare-fun e!2730377 () Unit!76736)

(declare-fun Unit!76740 () Unit!76736)

(assert (=> b!4385779 (= e!2730377 Unit!76740)))

(declare-fun bm!305187 () Bool)

(declare-fun call!305192 () Bool)

(declare-datatypes ((List!49304 0))(
  ( (Nil!49180) (Cons!49180 (h!54784 K!10533) (t!356234 List!49304)) )
))
(declare-fun e!2730381 () List!49304)

(declare-fun contains!11526 (List!49304 K!10533) Bool)

(assert (=> bm!305187 (= call!305192 (contains!11526 e!2730381 key!3918))))

(declare-fun c!746201 () Bool)

(declare-fun c!746203 () Bool)

(assert (=> bm!305187 (= c!746201 c!746203)))

(declare-fun b!4385780 () Bool)

(assert (=> b!4385780 false))

(declare-fun lt!1595127 () Unit!76736)

(declare-fun lt!1595121 () Unit!76736)

(assert (=> b!4385780 (= lt!1595127 lt!1595121)))

(declare-fun containsKey!864 (List!49300 K!10533) Bool)

(assert (=> b!4385780 (containsKey!864 (toList!3155 lt!1595002) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!174 (List!49300 K!10533) Unit!76736)

(assert (=> b!4385780 (= lt!1595121 (lemmaInGetKeysListThenContainsKey!174 (toList!3155 lt!1595002) key!3918))))

(declare-fun Unit!76741 () Unit!76736)

(assert (=> b!4385780 (= e!2730377 Unit!76741)))

(declare-fun b!4385781 () Bool)

(declare-fun e!2730379 () Bool)

(declare-fun keys!16684 (ListMap!2399) List!49304)

(assert (=> b!4385781 (= e!2730379 (contains!11526 (keys!16684 lt!1595002) key!3918))))

(declare-fun d!1313137 () Bool)

(declare-fun e!2730378 () Bool)

(assert (=> d!1313137 e!2730378))

(declare-fun res!1806998 () Bool)

(assert (=> d!1313137 (=> res!1806998 e!2730378)))

(declare-fun e!2730380 () Bool)

(assert (=> d!1313137 (= res!1806998 e!2730380)))

(declare-fun res!1807000 () Bool)

(assert (=> d!1313137 (=> (not res!1807000) (not e!2730380))))

(declare-fun lt!1595124 () Bool)

(assert (=> d!1313137 (= res!1807000 (not lt!1595124))))

(declare-fun lt!1595125 () Bool)

(assert (=> d!1313137 (= lt!1595124 lt!1595125)))

(declare-fun lt!1595126 () Unit!76736)

(declare-fun e!2730382 () Unit!76736)

(assert (=> d!1313137 (= lt!1595126 e!2730382)))

(assert (=> d!1313137 (= c!746203 lt!1595125)))

(assert (=> d!1313137 (= lt!1595125 (containsKey!864 (toList!3155 lt!1595002) key!3918))))

(assert (=> d!1313137 (= (contains!11522 lt!1595002 key!3918) lt!1595124)))

(declare-fun b!4385782 () Bool)

(assert (=> b!4385782 (= e!2730378 e!2730379)))

(declare-fun res!1806999 () Bool)

(assert (=> b!4385782 (=> (not res!1806999) (not e!2730379))))

(declare-datatypes ((Option!10569 0))(
  ( (None!10568) (Some!10568 (v!43594 V!10779)) )
))
(declare-fun isDefined!7863 (Option!10569) Bool)

(declare-fun getValueByKey!555 (List!49300 K!10533) Option!10569)

(assert (=> b!4385782 (= res!1806999 (isDefined!7863 (getValueByKey!555 (toList!3155 lt!1595002) key!3918)))))

(declare-fun b!4385783 () Bool)

(assert (=> b!4385783 (= e!2730381 (keys!16684 lt!1595002))))

(declare-fun b!4385784 () Bool)

(declare-fun getKeysList!176 (List!49300) List!49304)

(assert (=> b!4385784 (= e!2730381 (getKeysList!176 (toList!3155 lt!1595002)))))

(declare-fun b!4385785 () Bool)

(assert (=> b!4385785 (= e!2730380 (not (contains!11526 (keys!16684 lt!1595002) key!3918)))))

(declare-fun b!4385786 () Bool)

(assert (=> b!4385786 (= e!2730382 e!2730377)))

(declare-fun c!746202 () Bool)

(assert (=> b!4385786 (= c!746202 call!305192)))

(declare-fun b!4385787 () Bool)

(declare-fun lt!1595122 () Unit!76736)

(assert (=> b!4385787 (= e!2730382 lt!1595122)))

(declare-fun lt!1595128 () Unit!76736)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!466 (List!49300 K!10533) Unit!76736)

(assert (=> b!4385787 (= lt!1595128 (lemmaContainsKeyImpliesGetValueByKeyDefined!466 (toList!3155 lt!1595002) key!3918))))

(assert (=> b!4385787 (isDefined!7863 (getValueByKey!555 (toList!3155 lt!1595002) key!3918))))

(declare-fun lt!1595123 () Unit!76736)

(assert (=> b!4385787 (= lt!1595123 lt!1595128)))

(declare-fun lemmaInListThenGetKeysListContains!173 (List!49300 K!10533) Unit!76736)

(assert (=> b!4385787 (= lt!1595122 (lemmaInListThenGetKeysListContains!173 (toList!3155 lt!1595002) key!3918))))

(assert (=> b!4385787 call!305192))

(assert (= (and d!1313137 c!746203) b!4385787))

(assert (= (and d!1313137 (not c!746203)) b!4385786))

(assert (= (and b!4385786 c!746202) b!4385780))

(assert (= (and b!4385786 (not c!746202)) b!4385779))

(assert (= (or b!4385787 b!4385786) bm!305187))

(assert (= (and bm!305187 c!746201) b!4385784))

(assert (= (and bm!305187 (not c!746201)) b!4385783))

(assert (= (and d!1313137 res!1807000) b!4385785))

(assert (= (and d!1313137 (not res!1806998)) b!4385782))

(assert (= (and b!4385782 res!1806999) b!4385781))

(declare-fun m!5033293 () Bool)

(assert (=> b!4385787 m!5033293))

(declare-fun m!5033295 () Bool)

(assert (=> b!4385787 m!5033295))

(assert (=> b!4385787 m!5033295))

(declare-fun m!5033297 () Bool)

(assert (=> b!4385787 m!5033297))

(declare-fun m!5033299 () Bool)

(assert (=> b!4385787 m!5033299))

(declare-fun m!5033301 () Bool)

(assert (=> b!4385785 m!5033301))

(assert (=> b!4385785 m!5033301))

(declare-fun m!5033303 () Bool)

(assert (=> b!4385785 m!5033303))

(assert (=> b!4385782 m!5033295))

(assert (=> b!4385782 m!5033295))

(assert (=> b!4385782 m!5033297))

(assert (=> b!4385783 m!5033301))

(assert (=> b!4385781 m!5033301))

(assert (=> b!4385781 m!5033301))

(assert (=> b!4385781 m!5033303))

(declare-fun m!5033305 () Bool)

(assert (=> d!1313137 m!5033305))

(declare-fun m!5033307 () Bool)

(assert (=> bm!305187 m!5033307))

(assert (=> b!4385780 m!5033305))

(declare-fun m!5033309 () Bool)

(assert (=> b!4385780 m!5033309))

(declare-fun m!5033311 () Bool)

(assert (=> b!4385784 m!5033311))

(assert (=> b!4385707 d!1313137))

(declare-fun bs!688923 () Bool)

(declare-fun d!1313139 () Bool)

(assert (= bs!688923 (and d!1313139 start!425822)))

(declare-fun lambda!146269 () Int)

(assert (=> bs!688923 (= lambda!146269 lambda!146250)))

(declare-fun bs!688924 () Bool)

(assert (= bs!688924 (and d!1313139 d!1313133)))

(assert (=> bs!688924 (not (= lambda!146269 lambda!146266))))

(declare-fun lt!1595147 () ListMap!2399)

(declare-fun invariantList!728 (List!49300) Bool)

(assert (=> d!1313139 (invariantList!728 (toList!3155 lt!1595147))))

(declare-fun e!2730389 () ListMap!2399)

(assert (=> d!1313139 (= lt!1595147 e!2730389)))

(declare-fun c!746210 () Bool)

(assert (=> d!1313139 (= c!746210 (is-Cons!49177 (toList!3156 lm!1707)))))

(assert (=> d!1313139 (forall!9288 (toList!3156 lm!1707) lambda!146269)))

(assert (=> d!1313139 (= (extractMap!645 (toList!3156 lm!1707)) lt!1595147)))

(declare-fun b!4385800 () Bool)

(assert (=> b!4385800 (= e!2730389 (addToMapMapFromBucket!267 (_2!27652 (h!54780 (toList!3156 lm!1707))) (extractMap!645 (t!356231 (toList!3156 lm!1707)))))))

(declare-fun b!4385801 () Bool)

(assert (=> b!4385801 (= e!2730389 (ListMap!2400 Nil!49176))))

(assert (= (and d!1313139 c!746210) b!4385800))

(assert (= (and d!1313139 (not c!746210)) b!4385801))

(declare-fun m!5033313 () Bool)

(assert (=> d!1313139 m!5033313))

(declare-fun m!5033315 () Bool)

(assert (=> d!1313139 m!5033315))

(assert (=> b!4385800 m!5033153))

(assert (=> b!4385800 m!5033153))

(declare-fun m!5033317 () Bool)

(assert (=> b!4385800 m!5033317))

(assert (=> b!4385707 d!1313139))

(declare-fun d!1313141 () Bool)

(declare-fun hash!1773 (Hashable!4978 K!10533) (_ BitVec 64))

(assert (=> d!1313141 (= (hash!1769 hashF!1247 key!3918) (hash!1773 hashF!1247 key!3918))))

(declare-fun bs!688925 () Bool)

(assert (= bs!688925 d!1313141))

(declare-fun m!5033319 () Bool)

(assert (=> bs!688925 m!5033319))

(assert (=> b!4385697 d!1313141))

(declare-fun d!1313143 () Bool)

(declare-fun res!1807011 () Bool)

(declare-fun e!2730402 () Bool)

(assert (=> d!1313143 (=> res!1807011 e!2730402)))

(assert (=> d!1313143 (= res!1807011 (is-Nil!49177 (toList!3156 lt!1595019)))))

(assert (=> d!1313143 (= (forall!9288 (toList!3156 lt!1595019) lambda!146250) e!2730402)))

(declare-fun b!4385816 () Bool)

(declare-fun e!2730403 () Bool)

(assert (=> b!4385816 (= e!2730402 e!2730403)))

(declare-fun res!1807012 () Bool)

(assert (=> b!4385816 (=> (not res!1807012) (not e!2730403))))

(declare-fun dynLambda!20722 (Int tuple2!48716) Bool)

(assert (=> b!4385816 (= res!1807012 (dynLambda!20722 lambda!146250 (h!54780 (toList!3156 lt!1595019))))))

(declare-fun b!4385817 () Bool)

(assert (=> b!4385817 (= e!2730403 (forall!9288 (t!356231 (toList!3156 lt!1595019)) lambda!146250))))

(assert (= (and d!1313143 (not res!1807011)) b!4385816))

(assert (= (and b!4385816 res!1807012) b!4385817))

(declare-fun b_lambda!137081 () Bool)

(assert (=> (not b_lambda!137081) (not b!4385816)))

(declare-fun m!5033321 () Bool)

(assert (=> b!4385816 m!5033321))

(declare-fun m!5033323 () Bool)

(assert (=> b!4385817 m!5033323))

(assert (=> b!4385698 d!1313143))

(declare-fun bs!688926 () Bool)

(declare-fun d!1313145 () Bool)

(assert (= bs!688926 (and d!1313145 start!425822)))

(declare-fun lambda!146270 () Int)

(assert (=> bs!688926 (not (= lambda!146270 lambda!146250))))

(declare-fun bs!688927 () Bool)

(assert (= bs!688927 (and d!1313145 d!1313133)))

(assert (=> bs!688927 (= lambda!146270 lambda!146266)))

(declare-fun bs!688928 () Bool)

(assert (= bs!688928 (and d!1313145 d!1313139)))

(assert (=> bs!688928 (not (= lambda!146270 lambda!146269))))

(assert (=> d!1313145 true))

(assert (=> d!1313145 (= (allKeysSameHashInMap!690 lt!1595020 hashF!1247) (forall!9288 (toList!3156 lt!1595020) lambda!146270))))

(declare-fun bs!688929 () Bool)

(assert (= bs!688929 d!1313145))

(declare-fun m!5033325 () Bool)

(assert (=> bs!688929 m!5033325))

(assert (=> b!4385704 d!1313145))

(declare-fun d!1313147 () Bool)

(declare-fun e!2730415 () Bool)

(assert (=> d!1313147 e!2730415))

(declare-fun res!1807018 () Bool)

(assert (=> d!1313147 (=> res!1807018 e!2730415)))

(declare-fun lt!1595166 () Bool)

(assert (=> d!1313147 (= res!1807018 (not lt!1595166))))

(declare-fun lt!1595164 () Bool)

(assert (=> d!1313147 (= lt!1595166 lt!1595164)))

(declare-fun lt!1595167 () Unit!76736)

(declare-fun e!2730414 () Unit!76736)

(assert (=> d!1313147 (= lt!1595167 e!2730414)))

(declare-fun c!746218 () Bool)

(assert (=> d!1313147 (= c!746218 lt!1595164)))

(declare-fun containsKey!865 (List!49301 (_ BitVec 64)) Bool)

(assert (=> d!1313147 (= lt!1595164 (containsKey!865 (toList!3156 lm!1707) hash!377))))

(assert (=> d!1313147 (= (contains!11520 lm!1707 hash!377) lt!1595166)))

(declare-fun b!4385833 () Bool)

(declare-fun lt!1595165 () Unit!76736)

(assert (=> b!4385833 (= e!2730414 lt!1595165)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!467 (List!49301 (_ BitVec 64)) Unit!76736)

(assert (=> b!4385833 (= lt!1595165 (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!3156 lm!1707) hash!377))))

(declare-datatypes ((Option!10570 0))(
  ( (None!10569) (Some!10569 (v!43595 List!49300)) )
))
(declare-fun isDefined!7864 (Option!10570) Bool)

(declare-fun getValueByKey!556 (List!49301 (_ BitVec 64)) Option!10570)

(assert (=> b!4385833 (isDefined!7864 (getValueByKey!556 (toList!3156 lm!1707) hash!377))))

(declare-fun b!4385834 () Bool)

(declare-fun Unit!76742 () Unit!76736)

(assert (=> b!4385834 (= e!2730414 Unit!76742)))

(declare-fun b!4385835 () Bool)

(assert (=> b!4385835 (= e!2730415 (isDefined!7864 (getValueByKey!556 (toList!3156 lm!1707) hash!377)))))

(assert (= (and d!1313147 c!746218) b!4385833))

(assert (= (and d!1313147 (not c!746218)) b!4385834))

(assert (= (and d!1313147 (not res!1807018)) b!4385835))

(declare-fun m!5033327 () Bool)

(assert (=> d!1313147 m!5033327))

(declare-fun m!5033329 () Bool)

(assert (=> b!4385833 m!5033329))

(declare-fun m!5033331 () Bool)

(assert (=> b!4385833 m!5033331))

(assert (=> b!4385833 m!5033331))

(declare-fun m!5033333 () Bool)

(assert (=> b!4385833 m!5033333))

(assert (=> b!4385835 m!5033331))

(assert (=> b!4385835 m!5033331))

(assert (=> b!4385835 m!5033333))

(assert (=> b!4385694 d!1313147))

(declare-fun bs!688930 () Bool)

(declare-fun d!1313149 () Bool)

(assert (= bs!688930 (and d!1313149 start!425822)))

(declare-fun lambda!146273 () Int)

(assert (=> bs!688930 (= lambda!146273 lambda!146250)))

(declare-fun bs!688931 () Bool)

(assert (= bs!688931 (and d!1313149 d!1313133)))

(assert (=> bs!688931 (not (= lambda!146273 lambda!146266))))

(declare-fun bs!688932 () Bool)

(assert (= bs!688932 (and d!1313149 d!1313139)))

(assert (=> bs!688932 (= lambda!146273 lambda!146269)))

(declare-fun bs!688933 () Bool)

(assert (= bs!688933 (and d!1313149 d!1313145)))

(assert (=> bs!688933 (not (= lambda!146273 lambda!146270))))

(assert (=> d!1313149 (eq!324 (extractMap!645 (toList!3156 (+!803 lm!1707 (tuple2!48717 hash!377 lt!1595003)))) (-!261 (extractMap!645 (toList!3156 lm!1707)) key!3918))))

(declare-fun lt!1595170 () Unit!76736)

(declare-fun choose!27375 (ListLongMap!1805 (_ BitVec 64) List!49300 K!10533 Hashable!4978) Unit!76736)

(assert (=> d!1313149 (= lt!1595170 (choose!27375 lm!1707 hash!377 lt!1595003 key!3918 hashF!1247))))

(assert (=> d!1313149 (forall!9288 (toList!3156 lm!1707) lambda!146273)))

(assert (=> d!1313149 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!76 lm!1707 hash!377 lt!1595003 key!3918 hashF!1247) lt!1595170)))

(declare-fun bs!688934 () Bool)

(assert (= bs!688934 d!1313149))

(declare-fun m!5033355 () Bool)

(assert (=> bs!688934 m!5033355))

(declare-fun m!5033357 () Bool)

(assert (=> bs!688934 m!5033357))

(assert (=> bs!688934 m!5033355))

(declare-fun m!5033359 () Bool)

(assert (=> bs!688934 m!5033359))

(declare-fun m!5033361 () Bool)

(assert (=> bs!688934 m!5033361))

(declare-fun m!5033363 () Bool)

(assert (=> bs!688934 m!5033363))

(assert (=> bs!688934 m!5033197))

(assert (=> bs!688934 m!5033127))

(assert (=> bs!688934 m!5033197))

(assert (=> bs!688934 m!5033359))

(assert (=> b!4385705 d!1313149))

(declare-fun d!1313153 () Bool)

(declare-fun e!2730420 () Bool)

(assert (=> d!1313153 e!2730420))

(declare-fun res!1807023 () Bool)

(assert (=> d!1313153 (=> (not res!1807023) (not e!2730420))))

(declare-fun lt!1595181 () ListMap!2399)

(assert (=> d!1313153 (= res!1807023 (contains!11522 lt!1595181 (_1!27651 lt!1595023)))))

(declare-fun lt!1595184 () List!49300)

(assert (=> d!1313153 (= lt!1595181 (ListMap!2400 lt!1595184))))

(declare-fun lt!1595183 () Unit!76736)

(declare-fun lt!1595182 () Unit!76736)

(assert (=> d!1313153 (= lt!1595183 lt!1595182)))

(assert (=> d!1313153 (= (getValueByKey!555 lt!1595184 (_1!27651 lt!1595023)) (Some!10568 (_2!27651 lt!1595023)))))

(declare-fun lemmaContainsTupThenGetReturnValue!319 (List!49300 K!10533 V!10779) Unit!76736)

(assert (=> d!1313153 (= lt!1595182 (lemmaContainsTupThenGetReturnValue!319 lt!1595184 (_1!27651 lt!1595023) (_2!27651 lt!1595023)))))

(declare-fun insertNoDuplicatedKeys!146 (List!49300 K!10533 V!10779) List!49300)

(assert (=> d!1313153 (= lt!1595184 (insertNoDuplicatedKeys!146 (toList!3155 lt!1594999) (_1!27651 lt!1595023) (_2!27651 lt!1595023)))))

(assert (=> d!1313153 (= (+!804 lt!1594999 lt!1595023) lt!1595181)))

(declare-fun b!4385844 () Bool)

(declare-fun res!1807024 () Bool)

(assert (=> b!4385844 (=> (not res!1807024) (not e!2730420))))

(assert (=> b!4385844 (= res!1807024 (= (getValueByKey!555 (toList!3155 lt!1595181) (_1!27651 lt!1595023)) (Some!10568 (_2!27651 lt!1595023))))))

(declare-fun b!4385845 () Bool)

(declare-fun contains!11527 (List!49300 tuple2!48714) Bool)

(assert (=> b!4385845 (= e!2730420 (contains!11527 (toList!3155 lt!1595181) lt!1595023))))

(assert (= (and d!1313153 res!1807023) b!4385844))

(assert (= (and b!4385844 res!1807024) b!4385845))

(declare-fun m!5033365 () Bool)

(assert (=> d!1313153 m!5033365))

(declare-fun m!5033367 () Bool)

(assert (=> d!1313153 m!5033367))

(declare-fun m!5033369 () Bool)

(assert (=> d!1313153 m!5033369))

(declare-fun m!5033371 () Bool)

(assert (=> d!1313153 m!5033371))

(declare-fun m!5033373 () Bool)

(assert (=> b!4385844 m!5033373))

(declare-fun m!5033375 () Bool)

(assert (=> b!4385845 m!5033375))

(assert (=> b!4385705 d!1313153))

(declare-fun b!4385846 () Bool)

(declare-fun e!2730421 () Unit!76736)

(declare-fun Unit!76743 () Unit!76736)

(assert (=> b!4385846 (= e!2730421 Unit!76743)))

(declare-fun bm!305191 () Bool)

(declare-fun call!305196 () Bool)

(declare-fun e!2730425 () List!49304)

(assert (=> bm!305191 (= call!305196 (contains!11526 e!2730425 key!3918))))

(declare-fun c!746221 () Bool)

(declare-fun c!746223 () Bool)

(assert (=> bm!305191 (= c!746221 c!746223)))

(declare-fun b!4385847 () Bool)

(assert (=> b!4385847 false))

(declare-fun lt!1595191 () Unit!76736)

(declare-fun lt!1595185 () Unit!76736)

(assert (=> b!4385847 (= lt!1595191 lt!1595185)))

(assert (=> b!4385847 (containsKey!864 (toList!3155 lt!1595021) key!3918)))

(assert (=> b!4385847 (= lt!1595185 (lemmaInGetKeysListThenContainsKey!174 (toList!3155 lt!1595021) key!3918))))

(declare-fun Unit!76744 () Unit!76736)

(assert (=> b!4385847 (= e!2730421 Unit!76744)))

(declare-fun b!4385848 () Bool)

(declare-fun e!2730423 () Bool)

(assert (=> b!4385848 (= e!2730423 (contains!11526 (keys!16684 lt!1595021) key!3918))))

(declare-fun d!1313155 () Bool)

(declare-fun e!2730422 () Bool)

(assert (=> d!1313155 e!2730422))

(declare-fun res!1807025 () Bool)

(assert (=> d!1313155 (=> res!1807025 e!2730422)))

(declare-fun e!2730424 () Bool)

(assert (=> d!1313155 (= res!1807025 e!2730424)))

(declare-fun res!1807027 () Bool)

(assert (=> d!1313155 (=> (not res!1807027) (not e!2730424))))

(declare-fun lt!1595188 () Bool)

(assert (=> d!1313155 (= res!1807027 (not lt!1595188))))

(declare-fun lt!1595189 () Bool)

(assert (=> d!1313155 (= lt!1595188 lt!1595189)))

(declare-fun lt!1595190 () Unit!76736)

(declare-fun e!2730426 () Unit!76736)

(assert (=> d!1313155 (= lt!1595190 e!2730426)))

(assert (=> d!1313155 (= c!746223 lt!1595189)))

(assert (=> d!1313155 (= lt!1595189 (containsKey!864 (toList!3155 lt!1595021) key!3918))))

(assert (=> d!1313155 (= (contains!11522 lt!1595021 key!3918) lt!1595188)))

(declare-fun b!4385849 () Bool)

(assert (=> b!4385849 (= e!2730422 e!2730423)))

(declare-fun res!1807026 () Bool)

(assert (=> b!4385849 (=> (not res!1807026) (not e!2730423))))

(assert (=> b!4385849 (= res!1807026 (isDefined!7863 (getValueByKey!555 (toList!3155 lt!1595021) key!3918)))))

(declare-fun b!4385850 () Bool)

(assert (=> b!4385850 (= e!2730425 (keys!16684 lt!1595021))))

(declare-fun b!4385851 () Bool)

(assert (=> b!4385851 (= e!2730425 (getKeysList!176 (toList!3155 lt!1595021)))))

(declare-fun b!4385852 () Bool)

(assert (=> b!4385852 (= e!2730424 (not (contains!11526 (keys!16684 lt!1595021) key!3918)))))

(declare-fun b!4385853 () Bool)

(assert (=> b!4385853 (= e!2730426 e!2730421)))

(declare-fun c!746222 () Bool)

(assert (=> b!4385853 (= c!746222 call!305196)))

(declare-fun b!4385854 () Bool)

(declare-fun lt!1595186 () Unit!76736)

(assert (=> b!4385854 (= e!2730426 lt!1595186)))

(declare-fun lt!1595192 () Unit!76736)

(assert (=> b!4385854 (= lt!1595192 (lemmaContainsKeyImpliesGetValueByKeyDefined!466 (toList!3155 lt!1595021) key!3918))))

(assert (=> b!4385854 (isDefined!7863 (getValueByKey!555 (toList!3155 lt!1595021) key!3918))))

(declare-fun lt!1595187 () Unit!76736)

(assert (=> b!4385854 (= lt!1595187 lt!1595192)))

(assert (=> b!4385854 (= lt!1595186 (lemmaInListThenGetKeysListContains!173 (toList!3155 lt!1595021) key!3918))))

(assert (=> b!4385854 call!305196))

(assert (= (and d!1313155 c!746223) b!4385854))

(assert (= (and d!1313155 (not c!746223)) b!4385853))

(assert (= (and b!4385853 c!746222) b!4385847))

(assert (= (and b!4385853 (not c!746222)) b!4385846))

(assert (= (or b!4385854 b!4385853) bm!305191))

(assert (= (and bm!305191 c!746221) b!4385851))

(assert (= (and bm!305191 (not c!746221)) b!4385850))

(assert (= (and d!1313155 res!1807027) b!4385852))

(assert (= (and d!1313155 (not res!1807025)) b!4385849))

(assert (= (and b!4385849 res!1807026) b!4385848))

(declare-fun m!5033377 () Bool)

(assert (=> b!4385854 m!5033377))

(declare-fun m!5033379 () Bool)

(assert (=> b!4385854 m!5033379))

(assert (=> b!4385854 m!5033379))

(declare-fun m!5033381 () Bool)

(assert (=> b!4385854 m!5033381))

(declare-fun m!5033383 () Bool)

(assert (=> b!4385854 m!5033383))

(declare-fun m!5033385 () Bool)

(assert (=> b!4385852 m!5033385))

(assert (=> b!4385852 m!5033385))

(declare-fun m!5033387 () Bool)

(assert (=> b!4385852 m!5033387))

(assert (=> b!4385849 m!5033379))

(assert (=> b!4385849 m!5033379))

(assert (=> b!4385849 m!5033381))

(assert (=> b!4385850 m!5033385))

(assert (=> b!4385848 m!5033385))

(assert (=> b!4385848 m!5033385))

(assert (=> b!4385848 m!5033387))

(declare-fun m!5033389 () Bool)

(assert (=> d!1313155 m!5033389))

(declare-fun m!5033391 () Bool)

(assert (=> bm!305191 m!5033391))

(assert (=> b!4385847 m!5033389))

(declare-fun m!5033393 () Bool)

(assert (=> b!4385847 m!5033393))

(declare-fun m!5033395 () Bool)

(assert (=> b!4385851 m!5033395))

(assert (=> b!4385705 d!1313155))

(declare-fun d!1313157 () Bool)

(declare-fun content!7827 (List!49300) (Set tuple2!48714))

(assert (=> d!1313157 (= (eq!324 lt!1595016 lt!1595004) (= (content!7827 (toList!3155 lt!1595016)) (content!7827 (toList!3155 lt!1595004))))))

(declare-fun bs!688936 () Bool)

(assert (= bs!688936 d!1313157))

(declare-fun m!5033397 () Bool)

(assert (=> bs!688936 m!5033397))

(declare-fun m!5033399 () Bool)

(assert (=> bs!688936 m!5033399))

(assert (=> b!4385705 d!1313157))

(declare-fun bs!688937 () Bool)

(declare-fun d!1313159 () Bool)

(assert (= bs!688937 (and d!1313159 d!1313149)))

(declare-fun lambda!146277 () Int)

(assert (=> bs!688937 (= lambda!146277 lambda!146273)))

(declare-fun bs!688938 () Bool)

(assert (= bs!688938 (and d!1313159 d!1313145)))

(assert (=> bs!688938 (not (= lambda!146277 lambda!146270))))

(declare-fun bs!688939 () Bool)

(assert (= bs!688939 (and d!1313159 d!1313133)))

(assert (=> bs!688939 (not (= lambda!146277 lambda!146266))))

(declare-fun bs!688940 () Bool)

(assert (= bs!688940 (and d!1313159 start!425822)))

(assert (=> bs!688940 (= lambda!146277 lambda!146250)))

(declare-fun bs!688941 () Bool)

(assert (= bs!688941 (and d!1313159 d!1313139)))

(assert (=> bs!688941 (= lambda!146277 lambda!146269)))

(declare-fun lt!1595194 () ListMap!2399)

(assert (=> d!1313159 (invariantList!728 (toList!3155 lt!1595194))))

(declare-fun e!2730428 () ListMap!2399)

(assert (=> d!1313159 (= lt!1595194 e!2730428)))

(declare-fun c!746225 () Bool)

(assert (=> d!1313159 (= c!746225 (is-Cons!49177 (t!356231 (toList!3156 lm!1707))))))

(assert (=> d!1313159 (forall!9288 (t!356231 (toList!3156 lm!1707)) lambda!146277)))

(assert (=> d!1313159 (= (extractMap!645 (t!356231 (toList!3156 lm!1707))) lt!1595194)))

(declare-fun b!4385857 () Bool)

(assert (=> b!4385857 (= e!2730428 (addToMapMapFromBucket!267 (_2!27652 (h!54780 (t!356231 (toList!3156 lm!1707)))) (extractMap!645 (t!356231 (t!356231 (toList!3156 lm!1707))))))))

(declare-fun b!4385858 () Bool)

(assert (=> b!4385858 (= e!2730428 (ListMap!2400 Nil!49176))))

(assert (= (and d!1313159 c!746225) b!4385857))

(assert (= (and d!1313159 (not c!746225)) b!4385858))

(declare-fun m!5033407 () Bool)

(assert (=> d!1313159 m!5033407))

(declare-fun m!5033409 () Bool)

(assert (=> d!1313159 m!5033409))

(declare-fun m!5033411 () Bool)

(assert (=> b!4385857 m!5033411))

(assert (=> b!4385857 m!5033411))

(declare-fun m!5033413 () Bool)

(assert (=> b!4385857 m!5033413))

(assert (=> b!4385705 d!1313159))

(declare-fun d!1313163 () Bool)

(declare-fun get!15998 (Option!10570) List!49300)

(assert (=> d!1313163 (= (apply!11438 lt!1595020 hash!377) (get!15998 (getValueByKey!556 (toList!3156 lt!1595020) hash!377)))))

(declare-fun bs!688942 () Bool)

(assert (= bs!688942 d!1313163))

(declare-fun m!5033415 () Bool)

(assert (=> bs!688942 m!5033415))

(assert (=> bs!688942 m!5033415))

(declare-fun m!5033417 () Bool)

(assert (=> bs!688942 m!5033417))

(assert (=> b!4385705 d!1313163))

(declare-fun b!4385875 () Bool)

(assert (=> b!4385875 true))

(declare-fun bs!688947 () Bool)

(declare-fun b!4385874 () Bool)

(assert (= bs!688947 (and b!4385874 b!4385875)))

(declare-fun lambda!146310 () Int)

(declare-fun lambda!146309 () Int)

(assert (=> bs!688947 (= lambda!146310 lambda!146309)))

(assert (=> b!4385874 true))

(declare-fun lt!1595252 () ListMap!2399)

(declare-fun lambda!146311 () Int)

(assert (=> bs!688947 (= (= lt!1595252 (+!804 lt!1594999 lt!1595023)) (= lambda!146311 lambda!146309))))

(assert (=> b!4385874 (= (= lt!1595252 (+!804 lt!1594999 lt!1595023)) (= lambda!146311 lambda!146310))))

(assert (=> b!4385874 true))

(declare-fun bs!688948 () Bool)

(declare-fun d!1313165 () Bool)

(assert (= bs!688948 (and d!1313165 b!4385875)))

(declare-fun lt!1595245 () ListMap!2399)

(declare-fun lambda!146312 () Int)

(assert (=> bs!688948 (= (= lt!1595245 (+!804 lt!1594999 lt!1595023)) (= lambda!146312 lambda!146309))))

(declare-fun bs!688949 () Bool)

(assert (= bs!688949 (and d!1313165 b!4385874)))

(assert (=> bs!688949 (= (= lt!1595245 (+!804 lt!1594999 lt!1595023)) (= lambda!146312 lambda!146310))))

(assert (=> bs!688949 (= (= lt!1595245 lt!1595252) (= lambda!146312 lambda!146311))))

(assert (=> d!1313165 true))

(declare-fun b!4385871 () Bool)

(declare-fun e!2730436 () Bool)

(assert (=> b!4385871 (= e!2730436 (invariantList!728 (toList!3155 lt!1595245)))))

(declare-fun bm!305198 () Bool)

(declare-fun call!305203 () Unit!76736)

(declare-fun lemmaContainsAllItsOwnKeys!110 (ListMap!2399) Unit!76736)

(assert (=> bm!305198 (= call!305203 (lemmaContainsAllItsOwnKeys!110 (+!804 lt!1594999 lt!1595023)))))

(declare-fun b!4385872 () Bool)

(declare-fun res!1807034 () Bool)

(assert (=> b!4385872 (=> (not res!1807034) (not e!2730436))))

(declare-fun forall!9290 (List!49300 Int) Bool)

(assert (=> b!4385872 (= res!1807034 (forall!9290 (toList!3155 (+!804 lt!1594999 lt!1595023)) lambda!146312))))

(declare-fun b!4385873 () Bool)

(declare-fun e!2730437 () Bool)

(declare-fun call!305204 () Bool)

(assert (=> b!4385873 (= e!2730437 call!305204)))

(declare-fun call!305205 () Bool)

(declare-fun bm!305199 () Bool)

(declare-fun c!746228 () Bool)

(assert (=> bm!305199 (= call!305205 (forall!9290 (toList!3155 (+!804 lt!1594999 lt!1595023)) (ite c!746228 lambda!146309 lambda!146311)))))

(assert (=> d!1313165 e!2730436))

(declare-fun res!1807035 () Bool)

(assert (=> d!1313165 (=> (not res!1807035) (not e!2730436))))

(assert (=> d!1313165 (= res!1807035 (forall!9290 lt!1595018 lambda!146312))))

(declare-fun e!2730435 () ListMap!2399)

(assert (=> d!1313165 (= lt!1595245 e!2730435)))

(assert (=> d!1313165 (= c!746228 (is-Nil!49176 lt!1595018))))

(assert (=> d!1313165 (noDuplicateKeys!586 lt!1595018)))

(assert (=> d!1313165 (= (addToMapMapFromBucket!267 lt!1595018 (+!804 lt!1594999 lt!1595023)) lt!1595245)))

(declare-fun bm!305200 () Bool)

(assert (=> bm!305200 (= call!305204 (forall!9290 (toList!3155 (+!804 lt!1594999 lt!1595023)) (ite c!746228 lambda!146309 lambda!146311)))))

(assert (=> b!4385874 (= e!2730435 lt!1595252)))

(declare-fun lt!1595238 () ListMap!2399)

(assert (=> b!4385874 (= lt!1595238 (+!804 (+!804 lt!1594999 lt!1595023) (h!54779 lt!1595018)))))

(assert (=> b!4385874 (= lt!1595252 (addToMapMapFromBucket!267 (t!356230 lt!1595018) (+!804 (+!804 lt!1594999 lt!1595023) (h!54779 lt!1595018))))))

(declare-fun lt!1595239 () Unit!76736)

(assert (=> b!4385874 (= lt!1595239 call!305203)))

(assert (=> b!4385874 (forall!9290 (toList!3155 (+!804 lt!1594999 lt!1595023)) lambda!146310)))

(declare-fun lt!1595247 () Unit!76736)

(assert (=> b!4385874 (= lt!1595247 lt!1595239)))

(assert (=> b!4385874 (forall!9290 (toList!3155 lt!1595238) lambda!146311)))

(declare-fun lt!1595254 () Unit!76736)

(declare-fun Unit!76745 () Unit!76736)

(assert (=> b!4385874 (= lt!1595254 Unit!76745)))

(assert (=> b!4385874 (forall!9290 (t!356230 lt!1595018) lambda!146311)))

(declare-fun lt!1595250 () Unit!76736)

(declare-fun Unit!76746 () Unit!76736)

(assert (=> b!4385874 (= lt!1595250 Unit!76746)))

(declare-fun lt!1595251 () Unit!76736)

(declare-fun Unit!76747 () Unit!76736)

(assert (=> b!4385874 (= lt!1595251 Unit!76747)))

(declare-fun lt!1595241 () Unit!76736)

(declare-fun forallContained!1928 (List!49300 Int tuple2!48714) Unit!76736)

(assert (=> b!4385874 (= lt!1595241 (forallContained!1928 (toList!3155 lt!1595238) lambda!146311 (h!54779 lt!1595018)))))

(assert (=> b!4385874 (contains!11522 lt!1595238 (_1!27651 (h!54779 lt!1595018)))))

(declare-fun lt!1595256 () Unit!76736)

(declare-fun Unit!76748 () Unit!76736)

(assert (=> b!4385874 (= lt!1595256 Unit!76748)))

(assert (=> b!4385874 (contains!11522 lt!1595252 (_1!27651 (h!54779 lt!1595018)))))

(declare-fun lt!1595257 () Unit!76736)

(declare-fun Unit!76749 () Unit!76736)

(assert (=> b!4385874 (= lt!1595257 Unit!76749)))

(assert (=> b!4385874 (forall!9290 lt!1595018 lambda!146311)))

(declare-fun lt!1595255 () Unit!76736)

(declare-fun Unit!76750 () Unit!76736)

(assert (=> b!4385874 (= lt!1595255 Unit!76750)))

(assert (=> b!4385874 (forall!9290 (toList!3155 lt!1595238) lambda!146311)))

(declare-fun lt!1595237 () Unit!76736)

(declare-fun Unit!76751 () Unit!76736)

(assert (=> b!4385874 (= lt!1595237 Unit!76751)))

(declare-fun lt!1595242 () Unit!76736)

(declare-fun Unit!76752 () Unit!76736)

(assert (=> b!4385874 (= lt!1595242 Unit!76752)))

(declare-fun lt!1595249 () Unit!76736)

(declare-fun addForallContainsKeyThenBeforeAdding!110 (ListMap!2399 ListMap!2399 K!10533 V!10779) Unit!76736)

(assert (=> b!4385874 (= lt!1595249 (addForallContainsKeyThenBeforeAdding!110 (+!804 lt!1594999 lt!1595023) lt!1595252 (_1!27651 (h!54779 lt!1595018)) (_2!27651 (h!54779 lt!1595018))))))

(assert (=> b!4385874 call!305205))

(declare-fun lt!1595248 () Unit!76736)

(assert (=> b!4385874 (= lt!1595248 lt!1595249)))

(assert (=> b!4385874 (forall!9290 (toList!3155 (+!804 lt!1594999 lt!1595023)) lambda!146311)))

(declare-fun lt!1595244 () Unit!76736)

(declare-fun Unit!76754 () Unit!76736)

(assert (=> b!4385874 (= lt!1595244 Unit!76754)))

(declare-fun res!1807036 () Bool)

(assert (=> b!4385874 (= res!1807036 (forall!9290 lt!1595018 lambda!146311))))

(assert (=> b!4385874 (=> (not res!1807036) (not e!2730437))))

(assert (=> b!4385874 e!2730437))

(declare-fun lt!1595240 () Unit!76736)

(declare-fun Unit!76756 () Unit!76736)

(assert (=> b!4385874 (= lt!1595240 Unit!76756)))

(assert (=> b!4385875 (= e!2730435 (+!804 lt!1594999 lt!1595023))))

(declare-fun lt!1595253 () Unit!76736)

(assert (=> b!4385875 (= lt!1595253 call!305203)))

(assert (=> b!4385875 call!305205))

(declare-fun lt!1595243 () Unit!76736)

(assert (=> b!4385875 (= lt!1595243 lt!1595253)))

(assert (=> b!4385875 call!305204))

(declare-fun lt!1595246 () Unit!76736)

(declare-fun Unit!76757 () Unit!76736)

(assert (=> b!4385875 (= lt!1595246 Unit!76757)))

(assert (= (and d!1313165 c!746228) b!4385875))

(assert (= (and d!1313165 (not c!746228)) b!4385874))

(assert (= (and b!4385874 res!1807036) b!4385873))

(assert (= (or b!4385875 b!4385874) bm!305198))

(assert (= (or b!4385875 b!4385873) bm!305200))

(assert (= (or b!4385875 b!4385874) bm!305199))

(assert (= (and d!1313165 res!1807035) b!4385872))

(assert (= (and b!4385872 res!1807034) b!4385871))

(declare-fun m!5033425 () Bool)

(assert (=> d!1313165 m!5033425))

(declare-fun m!5033427 () Bool)

(assert (=> d!1313165 m!5033427))

(declare-fun m!5033429 () Bool)

(assert (=> b!4385874 m!5033429))

(assert (=> b!4385874 m!5033133))

(declare-fun m!5033431 () Bool)

(assert (=> b!4385874 m!5033431))

(declare-fun m!5033433 () Bool)

(assert (=> b!4385874 m!5033433))

(assert (=> b!4385874 m!5033133))

(declare-fun m!5033435 () Bool)

(assert (=> b!4385874 m!5033435))

(declare-fun m!5033437 () Bool)

(assert (=> b!4385874 m!5033437))

(declare-fun m!5033439 () Bool)

(assert (=> b!4385874 m!5033439))

(assert (=> b!4385874 m!5033433))

(declare-fun m!5033441 () Bool)

(assert (=> b!4385874 m!5033441))

(declare-fun m!5033443 () Bool)

(assert (=> b!4385874 m!5033443))

(declare-fun m!5033445 () Bool)

(assert (=> b!4385874 m!5033445))

(declare-fun m!5033447 () Bool)

(assert (=> b!4385874 m!5033447))

(assert (=> b!4385874 m!5033435))

(declare-fun m!5033449 () Bool)

(assert (=> b!4385874 m!5033449))

(assert (=> b!4385874 m!5033429))

(assert (=> bm!305198 m!5033133))

(declare-fun m!5033451 () Bool)

(assert (=> bm!305198 m!5033451))

(declare-fun m!5033453 () Bool)

(assert (=> b!4385872 m!5033453))

(declare-fun m!5033455 () Bool)

(assert (=> b!4385871 m!5033455))

(declare-fun m!5033457 () Bool)

(assert (=> bm!305199 m!5033457))

(assert (=> bm!305200 m!5033457))

(assert (=> b!4385705 d!1313165))

(declare-fun bs!688950 () Bool)

(declare-fun b!4385882 () Bool)

(assert (= bs!688950 (and b!4385882 b!4385875)))

(declare-fun lambda!146313 () Int)

(assert (=> bs!688950 (= (= lt!1594999 (+!804 lt!1594999 lt!1595023)) (= lambda!146313 lambda!146309))))

(declare-fun bs!688951 () Bool)

(assert (= bs!688951 (and b!4385882 b!4385874)))

(assert (=> bs!688951 (= (= lt!1594999 (+!804 lt!1594999 lt!1595023)) (= lambda!146313 lambda!146310))))

(assert (=> bs!688951 (= (= lt!1594999 lt!1595252) (= lambda!146313 lambda!146311))))

(declare-fun bs!688952 () Bool)

(assert (= bs!688952 (and b!4385882 d!1313165)))

(assert (=> bs!688952 (= (= lt!1594999 lt!1595245) (= lambda!146313 lambda!146312))))

(assert (=> b!4385882 true))

(declare-fun bs!688953 () Bool)

(declare-fun b!4385881 () Bool)

(assert (= bs!688953 (and b!4385881 b!4385882)))

(declare-fun lambda!146314 () Int)

(assert (=> bs!688953 (= lambda!146314 lambda!146313)))

(declare-fun bs!688954 () Bool)

(assert (= bs!688954 (and b!4385881 b!4385875)))

(assert (=> bs!688954 (= (= lt!1594999 (+!804 lt!1594999 lt!1595023)) (= lambda!146314 lambda!146309))))

(declare-fun bs!688955 () Bool)

(assert (= bs!688955 (and b!4385881 b!4385874)))

(assert (=> bs!688955 (= (= lt!1594999 lt!1595252) (= lambda!146314 lambda!146311))))

(assert (=> bs!688955 (= (= lt!1594999 (+!804 lt!1594999 lt!1595023)) (= lambda!146314 lambda!146310))))

(declare-fun bs!688956 () Bool)

(assert (= bs!688956 (and b!4385881 d!1313165)))

(assert (=> bs!688956 (= (= lt!1594999 lt!1595245) (= lambda!146314 lambda!146312))))

(assert (=> b!4385881 true))

(declare-fun lambda!146315 () Int)

(declare-fun lt!1595273 () ListMap!2399)

(assert (=> bs!688953 (= (= lt!1595273 lt!1594999) (= lambda!146315 lambda!146313))))

(assert (=> bs!688954 (= (= lt!1595273 (+!804 lt!1594999 lt!1595023)) (= lambda!146315 lambda!146309))))

(assert (=> b!4385881 (= (= lt!1595273 lt!1594999) (= lambda!146315 lambda!146314))))

(assert (=> bs!688955 (= (= lt!1595273 lt!1595252) (= lambda!146315 lambda!146311))))

(assert (=> bs!688955 (= (= lt!1595273 (+!804 lt!1594999 lt!1595023)) (= lambda!146315 lambda!146310))))

(assert (=> bs!688956 (= (= lt!1595273 lt!1595245) (= lambda!146315 lambda!146312))))

(assert (=> b!4385881 true))

(declare-fun bs!688957 () Bool)

(declare-fun d!1313171 () Bool)

(assert (= bs!688957 (and d!1313171 b!4385882)))

(declare-fun lambda!146316 () Int)

(declare-fun lt!1595266 () ListMap!2399)

(assert (=> bs!688957 (= (= lt!1595266 lt!1594999) (= lambda!146316 lambda!146313))))

(declare-fun bs!688958 () Bool)

(assert (= bs!688958 (and d!1313171 b!4385875)))

(assert (=> bs!688958 (= (= lt!1595266 (+!804 lt!1594999 lt!1595023)) (= lambda!146316 lambda!146309))))

(declare-fun bs!688959 () Bool)

(assert (= bs!688959 (and d!1313171 b!4385881)))

(assert (=> bs!688959 (= (= lt!1595266 lt!1595273) (= lambda!146316 lambda!146315))))

(assert (=> bs!688959 (= (= lt!1595266 lt!1594999) (= lambda!146316 lambda!146314))))

(declare-fun bs!688960 () Bool)

(assert (= bs!688960 (and d!1313171 b!4385874)))

(assert (=> bs!688960 (= (= lt!1595266 lt!1595252) (= lambda!146316 lambda!146311))))

(assert (=> bs!688960 (= (= lt!1595266 (+!804 lt!1594999 lt!1595023)) (= lambda!146316 lambda!146310))))

(declare-fun bs!688961 () Bool)

(assert (= bs!688961 (and d!1313171 d!1313165)))

(assert (=> bs!688961 (= (= lt!1595266 lt!1595245) (= lambda!146316 lambda!146312))))

(assert (=> d!1313171 true))

(declare-fun b!4385878 () Bool)

(declare-fun e!2730439 () Bool)

(assert (=> b!4385878 (= e!2730439 (invariantList!728 (toList!3155 lt!1595266)))))

(declare-fun bm!305201 () Bool)

(declare-fun call!305206 () Unit!76736)

(assert (=> bm!305201 (= call!305206 (lemmaContainsAllItsOwnKeys!110 lt!1594999))))

(declare-fun b!4385879 () Bool)

(declare-fun res!1807037 () Bool)

(assert (=> b!4385879 (=> (not res!1807037) (not e!2730439))))

(assert (=> b!4385879 (= res!1807037 (forall!9290 (toList!3155 lt!1594999) lambda!146316))))

(declare-fun b!4385880 () Bool)

(declare-fun e!2730440 () Bool)

(declare-fun call!305207 () Bool)

(assert (=> b!4385880 (= e!2730440 call!305207)))

(declare-fun c!746229 () Bool)

(declare-fun bm!305202 () Bool)

(declare-fun call!305208 () Bool)

(assert (=> bm!305202 (= call!305208 (forall!9290 (toList!3155 lt!1594999) (ite c!746229 lambda!146313 lambda!146315)))))

(assert (=> d!1313171 e!2730439))

(declare-fun res!1807038 () Bool)

(assert (=> d!1313171 (=> (not res!1807038) (not e!2730439))))

(assert (=> d!1313171 (= res!1807038 (forall!9290 lt!1595018 lambda!146316))))

(declare-fun e!2730438 () ListMap!2399)

(assert (=> d!1313171 (= lt!1595266 e!2730438)))

(assert (=> d!1313171 (= c!746229 (is-Nil!49176 lt!1595018))))

(assert (=> d!1313171 (noDuplicateKeys!586 lt!1595018)))

(assert (=> d!1313171 (= (addToMapMapFromBucket!267 lt!1595018 lt!1594999) lt!1595266)))

(declare-fun bm!305203 () Bool)

(assert (=> bm!305203 (= call!305207 (forall!9290 (toList!3155 lt!1594999) (ite c!746229 lambda!146313 lambda!146315)))))

(assert (=> b!4385881 (= e!2730438 lt!1595273)))

(declare-fun lt!1595259 () ListMap!2399)

(assert (=> b!4385881 (= lt!1595259 (+!804 lt!1594999 (h!54779 lt!1595018)))))

(assert (=> b!4385881 (= lt!1595273 (addToMapMapFromBucket!267 (t!356230 lt!1595018) (+!804 lt!1594999 (h!54779 lt!1595018))))))

(declare-fun lt!1595260 () Unit!76736)

(assert (=> b!4385881 (= lt!1595260 call!305206)))

(assert (=> b!4385881 (forall!9290 (toList!3155 lt!1594999) lambda!146314)))

(declare-fun lt!1595268 () Unit!76736)

(assert (=> b!4385881 (= lt!1595268 lt!1595260)))

(assert (=> b!4385881 (forall!9290 (toList!3155 lt!1595259) lambda!146315)))

(declare-fun lt!1595275 () Unit!76736)

(declare-fun Unit!76759 () Unit!76736)

(assert (=> b!4385881 (= lt!1595275 Unit!76759)))

(assert (=> b!4385881 (forall!9290 (t!356230 lt!1595018) lambda!146315)))

(declare-fun lt!1595271 () Unit!76736)

(declare-fun Unit!76760 () Unit!76736)

(assert (=> b!4385881 (= lt!1595271 Unit!76760)))

(declare-fun lt!1595272 () Unit!76736)

(declare-fun Unit!76762 () Unit!76736)

(assert (=> b!4385881 (= lt!1595272 Unit!76762)))

(declare-fun lt!1595262 () Unit!76736)

(assert (=> b!4385881 (= lt!1595262 (forallContained!1928 (toList!3155 lt!1595259) lambda!146315 (h!54779 lt!1595018)))))

(assert (=> b!4385881 (contains!11522 lt!1595259 (_1!27651 (h!54779 lt!1595018)))))

(declare-fun lt!1595277 () Unit!76736)

(declare-fun Unit!76765 () Unit!76736)

(assert (=> b!4385881 (= lt!1595277 Unit!76765)))

(assert (=> b!4385881 (contains!11522 lt!1595273 (_1!27651 (h!54779 lt!1595018)))))

(declare-fun lt!1595278 () Unit!76736)

(declare-fun Unit!76767 () Unit!76736)

(assert (=> b!4385881 (= lt!1595278 Unit!76767)))

(assert (=> b!4385881 (forall!9290 lt!1595018 lambda!146315)))

(declare-fun lt!1595276 () Unit!76736)

(declare-fun Unit!76769 () Unit!76736)

(assert (=> b!4385881 (= lt!1595276 Unit!76769)))

(assert (=> b!4385881 (forall!9290 (toList!3155 lt!1595259) lambda!146315)))

(declare-fun lt!1595258 () Unit!76736)

(declare-fun Unit!76770 () Unit!76736)

(assert (=> b!4385881 (= lt!1595258 Unit!76770)))

(declare-fun lt!1595263 () Unit!76736)

(declare-fun Unit!76772 () Unit!76736)

(assert (=> b!4385881 (= lt!1595263 Unit!76772)))

(declare-fun lt!1595270 () Unit!76736)

(assert (=> b!4385881 (= lt!1595270 (addForallContainsKeyThenBeforeAdding!110 lt!1594999 lt!1595273 (_1!27651 (h!54779 lt!1595018)) (_2!27651 (h!54779 lt!1595018))))))

(assert (=> b!4385881 call!305208))

(declare-fun lt!1595269 () Unit!76736)

(assert (=> b!4385881 (= lt!1595269 lt!1595270)))

(assert (=> b!4385881 (forall!9290 (toList!3155 lt!1594999) lambda!146315)))

(declare-fun lt!1595265 () Unit!76736)

(declare-fun Unit!76775 () Unit!76736)

(assert (=> b!4385881 (= lt!1595265 Unit!76775)))

(declare-fun res!1807039 () Bool)

(assert (=> b!4385881 (= res!1807039 (forall!9290 lt!1595018 lambda!146315))))

(assert (=> b!4385881 (=> (not res!1807039) (not e!2730440))))

(assert (=> b!4385881 e!2730440))

(declare-fun lt!1595261 () Unit!76736)

(declare-fun Unit!76777 () Unit!76736)

(assert (=> b!4385881 (= lt!1595261 Unit!76777)))

(assert (=> b!4385882 (= e!2730438 lt!1594999)))

(declare-fun lt!1595274 () Unit!76736)

(assert (=> b!4385882 (= lt!1595274 call!305206)))

(assert (=> b!4385882 call!305208))

(declare-fun lt!1595264 () Unit!76736)

(assert (=> b!4385882 (= lt!1595264 lt!1595274)))

(assert (=> b!4385882 call!305207))

(declare-fun lt!1595267 () Unit!76736)

(declare-fun Unit!76779 () Unit!76736)

(assert (=> b!4385882 (= lt!1595267 Unit!76779)))

(assert (= (and d!1313171 c!746229) b!4385882))

(assert (= (and d!1313171 (not c!746229)) b!4385881))

(assert (= (and b!4385881 res!1807039) b!4385880))

(assert (= (or b!4385882 b!4385881) bm!305201))

(assert (= (or b!4385882 b!4385880) bm!305203))

(assert (= (or b!4385882 b!4385881) bm!305202))

(assert (= (and d!1313171 res!1807038) b!4385879))

(assert (= (and b!4385879 res!1807037) b!4385878))

(declare-fun m!5033459 () Bool)

(assert (=> d!1313171 m!5033459))

(assert (=> d!1313171 m!5033427))

(declare-fun m!5033461 () Bool)

(assert (=> b!4385881 m!5033461))

(declare-fun m!5033463 () Bool)

(assert (=> b!4385881 m!5033463))

(declare-fun m!5033465 () Bool)

(assert (=> b!4385881 m!5033465))

(declare-fun m!5033467 () Bool)

(assert (=> b!4385881 m!5033467))

(declare-fun m!5033469 () Bool)

(assert (=> b!4385881 m!5033469))

(declare-fun m!5033471 () Bool)

(assert (=> b!4385881 m!5033471))

(assert (=> b!4385881 m!5033465))

(declare-fun m!5033473 () Bool)

(assert (=> b!4385881 m!5033473))

(declare-fun m!5033475 () Bool)

(assert (=> b!4385881 m!5033475))

(declare-fun m!5033477 () Bool)

(assert (=> b!4385881 m!5033477))

(declare-fun m!5033479 () Bool)

(assert (=> b!4385881 m!5033479))

(assert (=> b!4385881 m!5033467))

(declare-fun m!5033481 () Bool)

(assert (=> b!4385881 m!5033481))

(assert (=> b!4385881 m!5033461))

(declare-fun m!5033483 () Bool)

(assert (=> bm!305201 m!5033483))

(declare-fun m!5033485 () Bool)

(assert (=> b!4385879 m!5033485))

(declare-fun m!5033487 () Bool)

(assert (=> b!4385878 m!5033487))

(declare-fun m!5033489 () Bool)

(assert (=> bm!305202 m!5033489))

(assert (=> bm!305203 m!5033489))

(assert (=> b!4385705 d!1313171))

(declare-fun d!1313173 () Bool)

(assert (=> d!1313173 (= (contains!11522 lt!1595021 key!3918) (contains!11522 lt!1595001 key!3918))))

(declare-fun lt!1595281 () Unit!76736)

(declare-fun choose!27376 (ListMap!2399 ListMap!2399 K!10533) Unit!76736)

(assert (=> d!1313173 (= lt!1595281 (choose!27376 lt!1595021 lt!1595001 key!3918))))

(assert (=> d!1313173 (eq!324 lt!1595021 lt!1595001)))

(assert (=> d!1313173 (= (lemmaEquivalentThenSameContains!111 lt!1595021 lt!1595001 key!3918) lt!1595281)))

(declare-fun bs!688962 () Bool)

(assert (= bs!688962 d!1313173))

(assert (=> bs!688962 m!5033155))

(assert (=> bs!688962 m!5033143))

(declare-fun m!5033491 () Bool)

(assert (=> bs!688962 m!5033491))

(assert (=> bs!688962 m!5033163))

(assert (=> b!4385705 d!1313173))

(declare-fun b!4385883 () Bool)

(declare-fun e!2730441 () Unit!76736)

(declare-fun Unit!76780 () Unit!76736)

(assert (=> b!4385883 (= e!2730441 Unit!76780)))

(declare-fun bm!305204 () Bool)

(declare-fun call!305209 () Bool)

(declare-fun e!2730445 () List!49304)

(assert (=> bm!305204 (= call!305209 (contains!11526 e!2730445 key!3918))))

(declare-fun c!746230 () Bool)

(declare-fun c!746232 () Bool)

(assert (=> bm!305204 (= c!746230 c!746232)))

(declare-fun b!4385884 () Bool)

(assert (=> b!4385884 false))

(declare-fun lt!1595288 () Unit!76736)

(declare-fun lt!1595282 () Unit!76736)

(assert (=> b!4385884 (= lt!1595288 lt!1595282)))

(assert (=> b!4385884 (containsKey!864 (toList!3155 lt!1595001) key!3918)))

(assert (=> b!4385884 (= lt!1595282 (lemmaInGetKeysListThenContainsKey!174 (toList!3155 lt!1595001) key!3918))))

(declare-fun Unit!76781 () Unit!76736)

(assert (=> b!4385884 (= e!2730441 Unit!76781)))

(declare-fun b!4385885 () Bool)

(declare-fun e!2730443 () Bool)

(assert (=> b!4385885 (= e!2730443 (contains!11526 (keys!16684 lt!1595001) key!3918))))

(declare-fun d!1313175 () Bool)

(declare-fun e!2730442 () Bool)

(assert (=> d!1313175 e!2730442))

(declare-fun res!1807040 () Bool)

(assert (=> d!1313175 (=> res!1807040 e!2730442)))

(declare-fun e!2730444 () Bool)

(assert (=> d!1313175 (= res!1807040 e!2730444)))

(declare-fun res!1807042 () Bool)

(assert (=> d!1313175 (=> (not res!1807042) (not e!2730444))))

(declare-fun lt!1595285 () Bool)

(assert (=> d!1313175 (= res!1807042 (not lt!1595285))))

(declare-fun lt!1595286 () Bool)

(assert (=> d!1313175 (= lt!1595285 lt!1595286)))

(declare-fun lt!1595287 () Unit!76736)

(declare-fun e!2730446 () Unit!76736)

(assert (=> d!1313175 (= lt!1595287 e!2730446)))

(assert (=> d!1313175 (= c!746232 lt!1595286)))

(assert (=> d!1313175 (= lt!1595286 (containsKey!864 (toList!3155 lt!1595001) key!3918))))

(assert (=> d!1313175 (= (contains!11522 lt!1595001 key!3918) lt!1595285)))

(declare-fun b!4385886 () Bool)

(assert (=> b!4385886 (= e!2730442 e!2730443)))

(declare-fun res!1807041 () Bool)

(assert (=> b!4385886 (=> (not res!1807041) (not e!2730443))))

(assert (=> b!4385886 (= res!1807041 (isDefined!7863 (getValueByKey!555 (toList!3155 lt!1595001) key!3918)))))

(declare-fun b!4385887 () Bool)

(assert (=> b!4385887 (= e!2730445 (keys!16684 lt!1595001))))

(declare-fun b!4385888 () Bool)

(assert (=> b!4385888 (= e!2730445 (getKeysList!176 (toList!3155 lt!1595001)))))

(declare-fun b!4385889 () Bool)

(assert (=> b!4385889 (= e!2730444 (not (contains!11526 (keys!16684 lt!1595001) key!3918)))))

(declare-fun b!4385890 () Bool)

(assert (=> b!4385890 (= e!2730446 e!2730441)))

(declare-fun c!746231 () Bool)

(assert (=> b!4385890 (= c!746231 call!305209)))

(declare-fun b!4385891 () Bool)

(declare-fun lt!1595283 () Unit!76736)

(assert (=> b!4385891 (= e!2730446 lt!1595283)))

(declare-fun lt!1595289 () Unit!76736)

(assert (=> b!4385891 (= lt!1595289 (lemmaContainsKeyImpliesGetValueByKeyDefined!466 (toList!3155 lt!1595001) key!3918))))

(assert (=> b!4385891 (isDefined!7863 (getValueByKey!555 (toList!3155 lt!1595001) key!3918))))

(declare-fun lt!1595284 () Unit!76736)

(assert (=> b!4385891 (= lt!1595284 lt!1595289)))

(assert (=> b!4385891 (= lt!1595283 (lemmaInListThenGetKeysListContains!173 (toList!3155 lt!1595001) key!3918))))

(assert (=> b!4385891 call!305209))

(assert (= (and d!1313175 c!746232) b!4385891))

(assert (= (and d!1313175 (not c!746232)) b!4385890))

(assert (= (and b!4385890 c!746231) b!4385884))

(assert (= (and b!4385890 (not c!746231)) b!4385883))

(assert (= (or b!4385891 b!4385890) bm!305204))

(assert (= (and bm!305204 c!746230) b!4385888))

(assert (= (and bm!305204 (not c!746230)) b!4385887))

(assert (= (and d!1313175 res!1807042) b!4385889))

(assert (= (and d!1313175 (not res!1807040)) b!4385886))

(assert (= (and b!4385886 res!1807041) b!4385885))

(declare-fun m!5033493 () Bool)

(assert (=> b!4385891 m!5033493))

(declare-fun m!5033495 () Bool)

(assert (=> b!4385891 m!5033495))

(assert (=> b!4385891 m!5033495))

(declare-fun m!5033497 () Bool)

(assert (=> b!4385891 m!5033497))

(declare-fun m!5033499 () Bool)

(assert (=> b!4385891 m!5033499))

(declare-fun m!5033501 () Bool)

(assert (=> b!4385889 m!5033501))

(assert (=> b!4385889 m!5033501))

(declare-fun m!5033503 () Bool)

(assert (=> b!4385889 m!5033503))

(assert (=> b!4385886 m!5033495))

(assert (=> b!4385886 m!5033495))

(assert (=> b!4385886 m!5033497))

(assert (=> b!4385887 m!5033501))

(assert (=> b!4385885 m!5033501))

(assert (=> b!4385885 m!5033501))

(assert (=> b!4385885 m!5033503))

(declare-fun m!5033505 () Bool)

(assert (=> d!1313175 m!5033505))

(declare-fun m!5033507 () Bool)

(assert (=> bm!305204 m!5033507))

(assert (=> b!4385884 m!5033505))

(declare-fun m!5033509 () Bool)

(assert (=> b!4385884 m!5033509))

(declare-fun m!5033511 () Bool)

(assert (=> b!4385888 m!5033511))

(assert (=> b!4385705 d!1313175))

(declare-fun bs!688963 () Bool)

(declare-fun b!4385896 () Bool)

(assert (= bs!688963 (and b!4385896 b!4385882)))

(declare-fun lambda!146317 () Int)

(assert (=> bs!688963 (= lambda!146317 lambda!146313)))

(declare-fun bs!688964 () Bool)

(assert (= bs!688964 (and b!4385896 b!4385875)))

(assert (=> bs!688964 (= (= lt!1594999 (+!804 lt!1594999 lt!1595023)) (= lambda!146317 lambda!146309))))

(declare-fun bs!688965 () Bool)

(assert (= bs!688965 (and b!4385896 d!1313171)))

(assert (=> bs!688965 (= (= lt!1594999 lt!1595266) (= lambda!146317 lambda!146316))))

(declare-fun bs!688966 () Bool)

(assert (= bs!688966 (and b!4385896 b!4385881)))

(assert (=> bs!688966 (= (= lt!1594999 lt!1595273) (= lambda!146317 lambda!146315))))

(assert (=> bs!688966 (= lambda!146317 lambda!146314)))

(declare-fun bs!688967 () Bool)

(assert (= bs!688967 (and b!4385896 b!4385874)))

(assert (=> bs!688967 (= (= lt!1594999 lt!1595252) (= lambda!146317 lambda!146311))))

(assert (=> bs!688967 (= (= lt!1594999 (+!804 lt!1594999 lt!1595023)) (= lambda!146317 lambda!146310))))

(declare-fun bs!688968 () Bool)

(assert (= bs!688968 (and b!4385896 d!1313165)))

(assert (=> bs!688968 (= (= lt!1594999 lt!1595245) (= lambda!146317 lambda!146312))))

(assert (=> b!4385896 true))

(declare-fun bs!688969 () Bool)

(declare-fun b!4385895 () Bool)

(assert (= bs!688969 (and b!4385895 b!4385882)))

(declare-fun lambda!146318 () Int)

(assert (=> bs!688969 (= lambda!146318 lambda!146313)))

(declare-fun bs!688970 () Bool)

(assert (= bs!688970 (and b!4385895 b!4385875)))

(assert (=> bs!688970 (= (= lt!1594999 (+!804 lt!1594999 lt!1595023)) (= lambda!146318 lambda!146309))))

(declare-fun bs!688971 () Bool)

(assert (= bs!688971 (and b!4385895 d!1313171)))

(assert (=> bs!688971 (= (= lt!1594999 lt!1595266) (= lambda!146318 lambda!146316))))

(declare-fun bs!688972 () Bool)

(assert (= bs!688972 (and b!4385895 b!4385881)))

(assert (=> bs!688972 (= (= lt!1594999 lt!1595273) (= lambda!146318 lambda!146315))))

(assert (=> bs!688972 (= lambda!146318 lambda!146314)))

(declare-fun bs!688973 () Bool)

(assert (= bs!688973 (and b!4385895 b!4385896)))

(assert (=> bs!688973 (= lambda!146318 lambda!146317)))

(declare-fun bs!688974 () Bool)

(assert (= bs!688974 (and b!4385895 b!4385874)))

(assert (=> bs!688974 (= (= lt!1594999 lt!1595252) (= lambda!146318 lambda!146311))))

(assert (=> bs!688974 (= (= lt!1594999 (+!804 lt!1594999 lt!1595023)) (= lambda!146318 lambda!146310))))

(declare-fun bs!688975 () Bool)

(assert (= bs!688975 (and b!4385895 d!1313165)))

(assert (=> bs!688975 (= (= lt!1594999 lt!1595245) (= lambda!146318 lambda!146312))))

(assert (=> b!4385895 true))

(declare-fun lt!1595305 () ListMap!2399)

(declare-fun lambda!146321 () Int)

(assert (=> bs!688969 (= (= lt!1595305 lt!1594999) (= lambda!146321 lambda!146313))))

(assert (=> bs!688970 (= (= lt!1595305 (+!804 lt!1594999 lt!1595023)) (= lambda!146321 lambda!146309))))

(assert (=> bs!688971 (= (= lt!1595305 lt!1595266) (= lambda!146321 lambda!146316))))

(assert (=> bs!688972 (= (= lt!1595305 lt!1595273) (= lambda!146321 lambda!146315))))

(assert (=> bs!688972 (= (= lt!1595305 lt!1594999) (= lambda!146321 lambda!146314))))

(assert (=> bs!688973 (= (= lt!1595305 lt!1594999) (= lambda!146321 lambda!146317))))

(assert (=> b!4385895 (= (= lt!1595305 lt!1594999) (= lambda!146321 lambda!146318))))

(assert (=> bs!688974 (= (= lt!1595305 lt!1595252) (= lambda!146321 lambda!146311))))

(assert (=> bs!688974 (= (= lt!1595305 (+!804 lt!1594999 lt!1595023)) (= lambda!146321 lambda!146310))))

(assert (=> bs!688975 (= (= lt!1595305 lt!1595245) (= lambda!146321 lambda!146312))))

(assert (=> b!4385895 true))

(declare-fun bs!688976 () Bool)

(declare-fun d!1313177 () Bool)

(assert (= bs!688976 (and d!1313177 b!4385882)))

(declare-fun lt!1595298 () ListMap!2399)

(declare-fun lambda!146324 () Int)

(assert (=> bs!688976 (= (= lt!1595298 lt!1594999) (= lambda!146324 lambda!146313))))

(declare-fun bs!688977 () Bool)

(assert (= bs!688977 (and d!1313177 b!4385895)))

(assert (=> bs!688977 (= (= lt!1595298 lt!1595305) (= lambda!146324 lambda!146321))))

(declare-fun bs!688978 () Bool)

(assert (= bs!688978 (and d!1313177 b!4385875)))

(assert (=> bs!688978 (= (= lt!1595298 (+!804 lt!1594999 lt!1595023)) (= lambda!146324 lambda!146309))))

(declare-fun bs!688979 () Bool)

(assert (= bs!688979 (and d!1313177 d!1313171)))

(assert (=> bs!688979 (= (= lt!1595298 lt!1595266) (= lambda!146324 lambda!146316))))

(declare-fun bs!688980 () Bool)

(assert (= bs!688980 (and d!1313177 b!4385881)))

(assert (=> bs!688980 (= (= lt!1595298 lt!1595273) (= lambda!146324 lambda!146315))))

(assert (=> bs!688980 (= (= lt!1595298 lt!1594999) (= lambda!146324 lambda!146314))))

(declare-fun bs!688981 () Bool)

(assert (= bs!688981 (and d!1313177 b!4385896)))

(assert (=> bs!688981 (= (= lt!1595298 lt!1594999) (= lambda!146324 lambda!146317))))

(assert (=> bs!688977 (= (= lt!1595298 lt!1594999) (= lambda!146324 lambda!146318))))

(declare-fun bs!688982 () Bool)

(assert (= bs!688982 (and d!1313177 b!4385874)))

(assert (=> bs!688982 (= (= lt!1595298 lt!1595252) (= lambda!146324 lambda!146311))))

(assert (=> bs!688982 (= (= lt!1595298 (+!804 lt!1594999 lt!1595023)) (= lambda!146324 lambda!146310))))

(declare-fun bs!688983 () Bool)

(assert (= bs!688983 (and d!1313177 d!1313165)))

(assert (=> bs!688983 (= (= lt!1595298 lt!1595245) (= lambda!146324 lambda!146312))))

(assert (=> d!1313177 true))

(declare-fun b!4385892 () Bool)

(declare-fun e!2730448 () Bool)

(assert (=> b!4385892 (= e!2730448 (invariantList!728 (toList!3155 lt!1595298)))))

(declare-fun bm!305205 () Bool)

(declare-fun call!305210 () Unit!76736)

(assert (=> bm!305205 (= call!305210 (lemmaContainsAllItsOwnKeys!110 lt!1594999))))

(declare-fun b!4385893 () Bool)

(declare-fun res!1807043 () Bool)

(assert (=> b!4385893 (=> (not res!1807043) (not e!2730448))))

(assert (=> b!4385893 (= res!1807043 (forall!9290 (toList!3155 lt!1594999) lambda!146324))))

(declare-fun b!4385894 () Bool)

(declare-fun e!2730449 () Bool)

(declare-fun call!305211 () Bool)

(assert (=> b!4385894 (= e!2730449 call!305211)))

(declare-fun call!305212 () Bool)

(declare-fun c!746233 () Bool)

(declare-fun bm!305206 () Bool)

(assert (=> bm!305206 (= call!305212 (forall!9290 (toList!3155 lt!1594999) (ite c!746233 lambda!146317 lambda!146321)))))

(assert (=> d!1313177 e!2730448))

(declare-fun res!1807044 () Bool)

(assert (=> d!1313177 (=> (not res!1807044) (not e!2730448))))

(assert (=> d!1313177 (= res!1807044 (forall!9290 newBucket!200 lambda!146324))))

(declare-fun e!2730447 () ListMap!2399)

(assert (=> d!1313177 (= lt!1595298 e!2730447)))

(assert (=> d!1313177 (= c!746233 (is-Nil!49176 newBucket!200))))

(assert (=> d!1313177 (noDuplicateKeys!586 newBucket!200)))

(assert (=> d!1313177 (= (addToMapMapFromBucket!267 newBucket!200 lt!1594999) lt!1595298)))

(declare-fun bm!305207 () Bool)

(assert (=> bm!305207 (= call!305211 (forall!9290 (toList!3155 lt!1594999) (ite c!746233 lambda!146317 lambda!146321)))))

(assert (=> b!4385895 (= e!2730447 lt!1595305)))

(declare-fun lt!1595291 () ListMap!2399)

(assert (=> b!4385895 (= lt!1595291 (+!804 lt!1594999 (h!54779 newBucket!200)))))

(assert (=> b!4385895 (= lt!1595305 (addToMapMapFromBucket!267 (t!356230 newBucket!200) (+!804 lt!1594999 (h!54779 newBucket!200))))))

(declare-fun lt!1595292 () Unit!76736)

(assert (=> b!4385895 (= lt!1595292 call!305210)))

(assert (=> b!4385895 (forall!9290 (toList!3155 lt!1594999) lambda!146318)))

(declare-fun lt!1595300 () Unit!76736)

(assert (=> b!4385895 (= lt!1595300 lt!1595292)))

(assert (=> b!4385895 (forall!9290 (toList!3155 lt!1595291) lambda!146321)))

(declare-fun lt!1595307 () Unit!76736)

(declare-fun Unit!76793 () Unit!76736)

(assert (=> b!4385895 (= lt!1595307 Unit!76793)))

(assert (=> b!4385895 (forall!9290 (t!356230 newBucket!200) lambda!146321)))

(declare-fun lt!1595303 () Unit!76736)

(declare-fun Unit!76794 () Unit!76736)

(assert (=> b!4385895 (= lt!1595303 Unit!76794)))

(declare-fun lt!1595304 () Unit!76736)

(declare-fun Unit!76795 () Unit!76736)

(assert (=> b!4385895 (= lt!1595304 Unit!76795)))

(declare-fun lt!1595294 () Unit!76736)

(assert (=> b!4385895 (= lt!1595294 (forallContained!1928 (toList!3155 lt!1595291) lambda!146321 (h!54779 newBucket!200)))))

(assert (=> b!4385895 (contains!11522 lt!1595291 (_1!27651 (h!54779 newBucket!200)))))

(declare-fun lt!1595309 () Unit!76736)

(declare-fun Unit!76797 () Unit!76736)

(assert (=> b!4385895 (= lt!1595309 Unit!76797)))

(assert (=> b!4385895 (contains!11522 lt!1595305 (_1!27651 (h!54779 newBucket!200)))))

(declare-fun lt!1595310 () Unit!76736)

(declare-fun Unit!76798 () Unit!76736)

(assert (=> b!4385895 (= lt!1595310 Unit!76798)))

(assert (=> b!4385895 (forall!9290 newBucket!200 lambda!146321)))

(declare-fun lt!1595308 () Unit!76736)

(declare-fun Unit!76800 () Unit!76736)

(assert (=> b!4385895 (= lt!1595308 Unit!76800)))

(assert (=> b!4385895 (forall!9290 (toList!3155 lt!1595291) lambda!146321)))

(declare-fun lt!1595290 () Unit!76736)

(declare-fun Unit!76801 () Unit!76736)

(assert (=> b!4385895 (= lt!1595290 Unit!76801)))

(declare-fun lt!1595295 () Unit!76736)

(declare-fun Unit!76802 () Unit!76736)

(assert (=> b!4385895 (= lt!1595295 Unit!76802)))

(declare-fun lt!1595302 () Unit!76736)

(assert (=> b!4385895 (= lt!1595302 (addForallContainsKeyThenBeforeAdding!110 lt!1594999 lt!1595305 (_1!27651 (h!54779 newBucket!200)) (_2!27651 (h!54779 newBucket!200))))))

(assert (=> b!4385895 call!305212))

(declare-fun lt!1595301 () Unit!76736)

(assert (=> b!4385895 (= lt!1595301 lt!1595302)))

(assert (=> b!4385895 (forall!9290 (toList!3155 lt!1594999) lambda!146321)))

(declare-fun lt!1595297 () Unit!76736)

(declare-fun Unit!76803 () Unit!76736)

(assert (=> b!4385895 (= lt!1595297 Unit!76803)))

(declare-fun res!1807045 () Bool)

(assert (=> b!4385895 (= res!1807045 (forall!9290 newBucket!200 lambda!146321))))

(assert (=> b!4385895 (=> (not res!1807045) (not e!2730449))))

(assert (=> b!4385895 e!2730449))

(declare-fun lt!1595293 () Unit!76736)

(declare-fun Unit!76804 () Unit!76736)

(assert (=> b!4385895 (= lt!1595293 Unit!76804)))

(assert (=> b!4385896 (= e!2730447 lt!1594999)))

(declare-fun lt!1595306 () Unit!76736)

(assert (=> b!4385896 (= lt!1595306 call!305210)))

(assert (=> b!4385896 call!305212))

(declare-fun lt!1595296 () Unit!76736)

(assert (=> b!4385896 (= lt!1595296 lt!1595306)))

(assert (=> b!4385896 call!305211))

(declare-fun lt!1595299 () Unit!76736)

(declare-fun Unit!76805 () Unit!76736)

(assert (=> b!4385896 (= lt!1595299 Unit!76805)))

(assert (= (and d!1313177 c!746233) b!4385896))

(assert (= (and d!1313177 (not c!746233)) b!4385895))

(assert (= (and b!4385895 res!1807045) b!4385894))

(assert (= (or b!4385896 b!4385895) bm!305205))

(assert (= (or b!4385896 b!4385894) bm!305207))

(assert (= (or b!4385896 b!4385895) bm!305206))

(assert (= (and d!1313177 res!1807044) b!4385893))

(assert (= (and b!4385893 res!1807043) b!4385892))

(declare-fun m!5033513 () Bool)

(assert (=> d!1313177 m!5033513))

(assert (=> d!1313177 m!5033167))

(declare-fun m!5033515 () Bool)

(assert (=> b!4385895 m!5033515))

(declare-fun m!5033517 () Bool)

(assert (=> b!4385895 m!5033517))

(declare-fun m!5033519 () Bool)

(assert (=> b!4385895 m!5033519))

(declare-fun m!5033521 () Bool)

(assert (=> b!4385895 m!5033521))

(declare-fun m!5033523 () Bool)

(assert (=> b!4385895 m!5033523))

(declare-fun m!5033525 () Bool)

(assert (=> b!4385895 m!5033525))

(assert (=> b!4385895 m!5033519))

(declare-fun m!5033527 () Bool)

(assert (=> b!4385895 m!5033527))

(declare-fun m!5033529 () Bool)

(assert (=> b!4385895 m!5033529))

(declare-fun m!5033531 () Bool)

(assert (=> b!4385895 m!5033531))

(declare-fun m!5033533 () Bool)

(assert (=> b!4385895 m!5033533))

(assert (=> b!4385895 m!5033521))

(declare-fun m!5033535 () Bool)

(assert (=> b!4385895 m!5033535))

(assert (=> b!4385895 m!5033515))

(assert (=> bm!305205 m!5033483))

(declare-fun m!5033537 () Bool)

(assert (=> b!4385893 m!5033537))

(declare-fun m!5033539 () Bool)

(assert (=> b!4385892 m!5033539))

(declare-fun m!5033541 () Bool)

(assert (=> bm!305206 m!5033541))

(assert (=> bm!305207 m!5033541))

(assert (=> b!4385705 d!1313177))

(declare-fun d!1313179 () Bool)

(declare-fun e!2730456 () Bool)

(assert (=> d!1313179 e!2730456))

(declare-fun res!1807053 () Bool)

(assert (=> d!1313179 (=> (not res!1807053) (not e!2730456))))

(declare-fun lt!1595363 () ListLongMap!1805)

(assert (=> d!1313179 (= res!1807053 (contains!11520 lt!1595363 (_1!27652 (tuple2!48717 hash!377 lt!1595003))))))

(declare-fun lt!1595364 () List!49301)

(assert (=> d!1313179 (= lt!1595363 (ListLongMap!1806 lt!1595364))))

(declare-fun lt!1595361 () Unit!76736)

(declare-fun lt!1595362 () Unit!76736)

(assert (=> d!1313179 (= lt!1595361 lt!1595362)))

(assert (=> d!1313179 (= (getValueByKey!556 lt!1595364 (_1!27652 (tuple2!48717 hash!377 lt!1595003))) (Some!10569 (_2!27652 (tuple2!48717 hash!377 lt!1595003))))))

(declare-fun lemmaContainsTupThenGetReturnValue!321 (List!49301 (_ BitVec 64) List!49300) Unit!76736)

(assert (=> d!1313179 (= lt!1595362 (lemmaContainsTupThenGetReturnValue!321 lt!1595364 (_1!27652 (tuple2!48717 hash!377 lt!1595003)) (_2!27652 (tuple2!48717 hash!377 lt!1595003))))))

(declare-fun insertStrictlySorted!182 (List!49301 (_ BitVec 64) List!49300) List!49301)

(assert (=> d!1313179 (= lt!1595364 (insertStrictlySorted!182 (toList!3156 lm!1707) (_1!27652 (tuple2!48717 hash!377 lt!1595003)) (_2!27652 (tuple2!48717 hash!377 lt!1595003))))))

(assert (=> d!1313179 (= (+!803 lm!1707 (tuple2!48717 hash!377 lt!1595003)) lt!1595363)))

(declare-fun b!4385907 () Bool)

(declare-fun res!1807052 () Bool)

(assert (=> b!4385907 (=> (not res!1807052) (not e!2730456))))

(assert (=> b!4385907 (= res!1807052 (= (getValueByKey!556 (toList!3156 lt!1595363) (_1!27652 (tuple2!48717 hash!377 lt!1595003))) (Some!10569 (_2!27652 (tuple2!48717 hash!377 lt!1595003)))))))

(declare-fun b!4385908 () Bool)

(assert (=> b!4385908 (= e!2730456 (contains!11521 (toList!3156 lt!1595363) (tuple2!48717 hash!377 lt!1595003)))))

(assert (= (and d!1313179 res!1807053) b!4385907))

(assert (= (and b!4385907 res!1807052) b!4385908))

(declare-fun m!5033543 () Bool)

(assert (=> d!1313179 m!5033543))

(declare-fun m!5033545 () Bool)

(assert (=> d!1313179 m!5033545))

(declare-fun m!5033547 () Bool)

(assert (=> d!1313179 m!5033547))

(declare-fun m!5033549 () Bool)

(assert (=> d!1313179 m!5033549))

(declare-fun m!5033551 () Bool)

(assert (=> b!4385907 m!5033551))

(declare-fun m!5033553 () Bool)

(assert (=> b!4385908 m!5033553))

(assert (=> b!4385705 d!1313179))

(declare-fun d!1313181 () Bool)

(assert (=> d!1313181 (= (tail!7079 newBucket!200) (t!356230 newBucket!200))))

(assert (=> b!4385705 d!1313181))

(declare-fun d!1313183 () Bool)

(assert (=> d!1313183 (eq!324 (addToMapMapFromBucket!267 lt!1595018 (+!804 lt!1594999 (tuple2!48715 key!3918 newValue!99))) (+!804 (addToMapMapFromBucket!267 lt!1595018 lt!1594999) (tuple2!48715 key!3918 newValue!99)))))

(declare-fun lt!1595388 () Unit!76736)

(declare-fun choose!27378 (ListMap!2399 K!10533 V!10779 List!49300) Unit!76736)

(assert (=> d!1313183 (= lt!1595388 (choose!27378 lt!1594999 key!3918 newValue!99 lt!1595018))))

(declare-fun containsKey!867 (List!49300 K!10533) Bool)

(assert (=> d!1313183 (not (containsKey!867 lt!1595018 key!3918))))

(assert (=> d!1313183 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!133 lt!1594999 key!3918 newValue!99 lt!1595018) lt!1595388)))

(declare-fun bs!688987 () Bool)

(assert (= bs!688987 d!1313183))

(declare-fun m!5033559 () Bool)

(assert (=> bs!688987 m!5033559))

(assert (=> bs!688987 m!5033157))

(declare-fun m!5033565 () Bool)

(assert (=> bs!688987 m!5033565))

(assert (=> bs!688987 m!5033157))

(declare-fun m!5033567 () Bool)

(assert (=> bs!688987 m!5033567))

(declare-fun m!5033577 () Bool)

(assert (=> bs!688987 m!5033577))

(assert (=> bs!688987 m!5033565))

(declare-fun m!5033579 () Bool)

(assert (=> bs!688987 m!5033579))

(assert (=> bs!688987 m!5033559))

(assert (=> bs!688987 m!5033577))

(declare-fun m!5033585 () Bool)

(assert (=> bs!688987 m!5033585))

(assert (=> b!4385705 d!1313183))

(declare-fun d!1313185 () Bool)

(declare-fun e!2730468 () Bool)

(assert (=> d!1313185 e!2730468))

(declare-fun res!1807066 () Bool)

(assert (=> d!1313185 (=> (not res!1807066) (not e!2730468))))

(declare-fun lt!1595413 () ListMap!2399)

(assert (=> d!1313185 (= res!1807066 (not (contains!11522 lt!1595413 key!3918)))))

(declare-fun removePresrvNoDuplicatedKeys!44 (List!49300 K!10533) List!49300)

(assert (=> d!1313185 (= lt!1595413 (ListMap!2400 (removePresrvNoDuplicatedKeys!44 (toList!3155 lt!1595002) key!3918)))))

(assert (=> d!1313185 (= (-!261 lt!1595002 key!3918) lt!1595413)))

(declare-fun b!4385929 () Bool)

(declare-fun content!7829 (List!49304) (Set K!10533))

(assert (=> b!4385929 (= e!2730468 (= (set.minus (content!7829 (keys!16684 lt!1595002)) (set.insert key!3918 (as set.empty (Set K!10533)))) (content!7829 (keys!16684 lt!1595413))))))

(assert (= (and d!1313185 res!1807066) b!4385929))

(declare-fun m!5033641 () Bool)

(assert (=> d!1313185 m!5033641))

(declare-fun m!5033643 () Bool)

(assert (=> d!1313185 m!5033643))

(declare-fun m!5033645 () Bool)

(assert (=> b!4385929 m!5033645))

(assert (=> b!4385929 m!5033301))

(declare-fun m!5033647 () Bool)

(assert (=> b!4385929 m!5033647))

(declare-fun m!5033649 () Bool)

(assert (=> b!4385929 m!5033649))

(assert (=> b!4385929 m!5033645))

(declare-fun m!5033651 () Bool)

(assert (=> b!4385929 m!5033651))

(assert (=> b!4385929 m!5033301))

(assert (=> b!4385705 d!1313185))

(declare-fun bs!689003 () Bool)

(declare-fun d!1313193 () Bool)

(assert (= bs!689003 (and d!1313193 d!1313149)))

(declare-fun lambda!146358 () Int)

(assert (=> bs!689003 (= lambda!146358 lambda!146273)))

(declare-fun bs!689004 () Bool)

(assert (= bs!689004 (and d!1313193 d!1313133)))

(assert (=> bs!689004 (not (= lambda!146358 lambda!146266))))

(declare-fun bs!689005 () Bool)

(assert (= bs!689005 (and d!1313193 start!425822)))

(assert (=> bs!689005 (= lambda!146358 lambda!146250)))

(declare-fun bs!689006 () Bool)

(assert (= bs!689006 (and d!1313193 d!1313139)))

(assert (=> bs!689006 (= lambda!146358 lambda!146269)))

(declare-fun bs!689007 () Bool)

(assert (= bs!689007 (and d!1313193 d!1313159)))

(assert (=> bs!689007 (= lambda!146358 lambda!146277)))

(declare-fun bs!689008 () Bool)

(assert (= bs!689008 (and d!1313193 d!1313145)))

(assert (=> bs!689008 (not (= lambda!146358 lambda!146270))))

(declare-fun lt!1595414 () ListMap!2399)

(assert (=> d!1313193 (invariantList!728 (toList!3155 lt!1595414))))

(declare-fun e!2730469 () ListMap!2399)

(assert (=> d!1313193 (= lt!1595414 e!2730469)))

(declare-fun c!746239 () Bool)

(assert (=> d!1313193 (= c!746239 (is-Cons!49177 (toList!3156 lt!1595020)))))

(assert (=> d!1313193 (forall!9288 (toList!3156 lt!1595020) lambda!146358)))

(assert (=> d!1313193 (= (extractMap!645 (toList!3156 lt!1595020)) lt!1595414)))

(declare-fun b!4385930 () Bool)

(assert (=> b!4385930 (= e!2730469 (addToMapMapFromBucket!267 (_2!27652 (h!54780 (toList!3156 lt!1595020))) (extractMap!645 (t!356231 (toList!3156 lt!1595020)))))))

(declare-fun b!4385931 () Bool)

(assert (=> b!4385931 (= e!2730469 (ListMap!2400 Nil!49176))))

(assert (= (and d!1313193 c!746239) b!4385930))

(assert (= (and d!1313193 (not c!746239)) b!4385931))

(declare-fun m!5033653 () Bool)

(assert (=> d!1313193 m!5033653))

(declare-fun m!5033655 () Bool)

(assert (=> d!1313193 m!5033655))

(declare-fun m!5033657 () Bool)

(assert (=> b!4385930 m!5033657))

(assert (=> b!4385930 m!5033657))

(declare-fun m!5033659 () Bool)

(assert (=> b!4385930 m!5033659))

(assert (=> b!4385705 d!1313193))

(declare-fun bs!689009 () Bool)

(declare-fun d!1313195 () Bool)

(assert (= bs!689009 (and d!1313195 d!1313149)))

(declare-fun lambda!146359 () Int)

(assert (=> bs!689009 (= lambda!146359 lambda!146273)))

(declare-fun bs!689010 () Bool)

(assert (= bs!689010 (and d!1313195 d!1313193)))

(assert (=> bs!689010 (= lambda!146359 lambda!146358)))

(declare-fun bs!689011 () Bool)

(assert (= bs!689011 (and d!1313195 d!1313133)))

(assert (=> bs!689011 (not (= lambda!146359 lambda!146266))))

(declare-fun bs!689012 () Bool)

(assert (= bs!689012 (and d!1313195 start!425822)))

(assert (=> bs!689012 (= lambda!146359 lambda!146250)))

(declare-fun bs!689013 () Bool)

(assert (= bs!689013 (and d!1313195 d!1313139)))

(assert (=> bs!689013 (= lambda!146359 lambda!146269)))

(declare-fun bs!689014 () Bool)

(assert (= bs!689014 (and d!1313195 d!1313159)))

(assert (=> bs!689014 (= lambda!146359 lambda!146277)))

(declare-fun bs!689015 () Bool)

(assert (= bs!689015 (and d!1313195 d!1313145)))

(assert (=> bs!689015 (not (= lambda!146359 lambda!146270))))

(declare-fun lt!1595415 () ListMap!2399)

(assert (=> d!1313195 (invariantList!728 (toList!3155 lt!1595415))))

(declare-fun e!2730470 () ListMap!2399)

(assert (=> d!1313195 (= lt!1595415 e!2730470)))

(declare-fun c!746240 () Bool)

(assert (=> d!1313195 (= c!746240 (is-Cons!49177 (toList!3156 lt!1595019)))))

(assert (=> d!1313195 (forall!9288 (toList!3156 lt!1595019) lambda!146359)))

(assert (=> d!1313195 (= (extractMap!645 (toList!3156 lt!1595019)) lt!1595415)))

(declare-fun b!4385932 () Bool)

(assert (=> b!4385932 (= e!2730470 (addToMapMapFromBucket!267 (_2!27652 (h!54780 (toList!3156 lt!1595019))) (extractMap!645 (t!356231 (toList!3156 lt!1595019)))))))

(declare-fun b!4385933 () Bool)

(assert (=> b!4385933 (= e!2730470 (ListMap!2400 Nil!49176))))

(assert (= (and d!1313195 c!746240) b!4385932))

(assert (= (and d!1313195 (not c!746240)) b!4385933))

(declare-fun m!5033661 () Bool)

(assert (=> d!1313195 m!5033661))

(declare-fun m!5033663 () Bool)

(assert (=> d!1313195 m!5033663))

(declare-fun m!5033665 () Bool)

(assert (=> b!4385932 m!5033665))

(assert (=> b!4385932 m!5033665))

(declare-fun m!5033667 () Bool)

(assert (=> b!4385932 m!5033667))

(assert (=> b!4385705 d!1313195))

(declare-fun bs!689016 () Bool)

(declare-fun b!4385938 () Bool)

(assert (= bs!689016 (and b!4385938 d!1313177)))

(declare-fun lambda!146360 () Int)

(assert (=> bs!689016 (= (= lt!1594999 lt!1595298) (= lambda!146360 lambda!146324))))

(declare-fun bs!689017 () Bool)

(assert (= bs!689017 (and b!4385938 b!4385882)))

(assert (=> bs!689017 (= lambda!146360 lambda!146313)))

(declare-fun bs!689018 () Bool)

(assert (= bs!689018 (and b!4385938 b!4385895)))

(assert (=> bs!689018 (= (= lt!1594999 lt!1595305) (= lambda!146360 lambda!146321))))

(declare-fun bs!689019 () Bool)

(assert (= bs!689019 (and b!4385938 b!4385875)))

(assert (=> bs!689019 (= (= lt!1594999 (+!804 lt!1594999 lt!1595023)) (= lambda!146360 lambda!146309))))

(declare-fun bs!689020 () Bool)

(assert (= bs!689020 (and b!4385938 d!1313171)))

(assert (=> bs!689020 (= (= lt!1594999 lt!1595266) (= lambda!146360 lambda!146316))))

(declare-fun bs!689021 () Bool)

(assert (= bs!689021 (and b!4385938 b!4385881)))

(assert (=> bs!689021 (= (= lt!1594999 lt!1595273) (= lambda!146360 lambda!146315))))

(assert (=> bs!689021 (= lambda!146360 lambda!146314)))

(declare-fun bs!689022 () Bool)

(assert (= bs!689022 (and b!4385938 b!4385896)))

(assert (=> bs!689022 (= lambda!146360 lambda!146317)))

(assert (=> bs!689018 (= lambda!146360 lambda!146318)))

(declare-fun bs!689023 () Bool)

(assert (= bs!689023 (and b!4385938 b!4385874)))

(assert (=> bs!689023 (= (= lt!1594999 lt!1595252) (= lambda!146360 lambda!146311))))

(assert (=> bs!689023 (= (= lt!1594999 (+!804 lt!1594999 lt!1595023)) (= lambda!146360 lambda!146310))))

(declare-fun bs!689024 () Bool)

(assert (= bs!689024 (and b!4385938 d!1313165)))

(assert (=> bs!689024 (= (= lt!1594999 lt!1595245) (= lambda!146360 lambda!146312))))

(assert (=> b!4385938 true))

(declare-fun bs!689025 () Bool)

(declare-fun b!4385937 () Bool)

(assert (= bs!689025 (and b!4385937 b!4385938)))

(declare-fun lambda!146361 () Int)

(assert (=> bs!689025 (= lambda!146361 lambda!146360)))

(declare-fun bs!689026 () Bool)

(assert (= bs!689026 (and b!4385937 d!1313177)))

(assert (=> bs!689026 (= (= lt!1594999 lt!1595298) (= lambda!146361 lambda!146324))))

(declare-fun bs!689027 () Bool)

(assert (= bs!689027 (and b!4385937 b!4385882)))

(assert (=> bs!689027 (= lambda!146361 lambda!146313)))

(declare-fun bs!689029 () Bool)

(assert (= bs!689029 (and b!4385937 b!4385895)))

(assert (=> bs!689029 (= (= lt!1594999 lt!1595305) (= lambda!146361 lambda!146321))))

(declare-fun bs!689030 () Bool)

(assert (= bs!689030 (and b!4385937 b!4385875)))

(assert (=> bs!689030 (= (= lt!1594999 (+!804 lt!1594999 lt!1595023)) (= lambda!146361 lambda!146309))))

(declare-fun bs!689031 () Bool)

(assert (= bs!689031 (and b!4385937 d!1313171)))

(assert (=> bs!689031 (= (= lt!1594999 lt!1595266) (= lambda!146361 lambda!146316))))

(declare-fun bs!689032 () Bool)

(assert (= bs!689032 (and b!4385937 b!4385881)))

(assert (=> bs!689032 (= (= lt!1594999 lt!1595273) (= lambda!146361 lambda!146315))))

(assert (=> bs!689032 (= lambda!146361 lambda!146314)))

(declare-fun bs!689033 () Bool)

(assert (= bs!689033 (and b!4385937 b!4385896)))

(assert (=> bs!689033 (= lambda!146361 lambda!146317)))

(assert (=> bs!689029 (= lambda!146361 lambda!146318)))

(declare-fun bs!689034 () Bool)

(assert (= bs!689034 (and b!4385937 b!4385874)))

(assert (=> bs!689034 (= (= lt!1594999 lt!1595252) (= lambda!146361 lambda!146311))))

(assert (=> bs!689034 (= (= lt!1594999 (+!804 lt!1594999 lt!1595023)) (= lambda!146361 lambda!146310))))

(declare-fun bs!689035 () Bool)

(assert (= bs!689035 (and b!4385937 d!1313165)))

(assert (=> bs!689035 (= (= lt!1594999 lt!1595245) (= lambda!146361 lambda!146312))))

(assert (=> b!4385937 true))

(declare-fun lambda!146362 () Int)

(declare-fun lt!1595431 () ListMap!2399)

(assert (=> bs!689025 (= (= lt!1595431 lt!1594999) (= lambda!146362 lambda!146360))))

(assert (=> bs!689026 (= (= lt!1595431 lt!1595298) (= lambda!146362 lambda!146324))))

(assert (=> bs!689027 (= (= lt!1595431 lt!1594999) (= lambda!146362 lambda!146313))))

(assert (=> bs!689030 (= (= lt!1595431 (+!804 lt!1594999 lt!1595023)) (= lambda!146362 lambda!146309))))

(assert (=> bs!689031 (= (= lt!1595431 lt!1595266) (= lambda!146362 lambda!146316))))

(assert (=> bs!689032 (= (= lt!1595431 lt!1595273) (= lambda!146362 lambda!146315))))

(assert (=> bs!689032 (= (= lt!1595431 lt!1594999) (= lambda!146362 lambda!146314))))

(assert (=> bs!689033 (= (= lt!1595431 lt!1594999) (= lambda!146362 lambda!146317))))

(assert (=> bs!689029 (= (= lt!1595431 lt!1594999) (= lambda!146362 lambda!146318))))

(assert (=> bs!689034 (= (= lt!1595431 lt!1595252) (= lambda!146362 lambda!146311))))

(assert (=> bs!689034 (= (= lt!1595431 (+!804 lt!1594999 lt!1595023)) (= lambda!146362 lambda!146310))))

(assert (=> bs!689035 (= (= lt!1595431 lt!1595245) (= lambda!146362 lambda!146312))))

(assert (=> bs!689029 (= (= lt!1595431 lt!1595305) (= lambda!146362 lambda!146321))))

(assert (=> b!4385937 (= (= lt!1595431 lt!1594999) (= lambda!146362 lambda!146361))))

(assert (=> b!4385937 true))

(declare-fun bs!689036 () Bool)

(declare-fun d!1313197 () Bool)

(assert (= bs!689036 (and d!1313197 b!4385938)))

(declare-fun lambda!146363 () Int)

(declare-fun lt!1595424 () ListMap!2399)

(assert (=> bs!689036 (= (= lt!1595424 lt!1594999) (= lambda!146363 lambda!146360))))

(declare-fun bs!689037 () Bool)

(assert (= bs!689037 (and d!1313197 d!1313177)))

(assert (=> bs!689037 (= (= lt!1595424 lt!1595298) (= lambda!146363 lambda!146324))))

(declare-fun bs!689038 () Bool)

(assert (= bs!689038 (and d!1313197 b!4385882)))

(assert (=> bs!689038 (= (= lt!1595424 lt!1594999) (= lambda!146363 lambda!146313))))

(declare-fun bs!689039 () Bool)

(assert (= bs!689039 (and d!1313197 b!4385875)))

(assert (=> bs!689039 (= (= lt!1595424 (+!804 lt!1594999 lt!1595023)) (= lambda!146363 lambda!146309))))

(declare-fun bs!689040 () Bool)

(assert (= bs!689040 (and d!1313197 d!1313171)))

(assert (=> bs!689040 (= (= lt!1595424 lt!1595266) (= lambda!146363 lambda!146316))))

(declare-fun bs!689041 () Bool)

(assert (= bs!689041 (and d!1313197 b!4385881)))

(assert (=> bs!689041 (= (= lt!1595424 lt!1595273) (= lambda!146363 lambda!146315))))

(assert (=> bs!689041 (= (= lt!1595424 lt!1594999) (= lambda!146363 lambda!146314))))

(declare-fun bs!689042 () Bool)

(assert (= bs!689042 (and d!1313197 b!4385896)))

(assert (=> bs!689042 (= (= lt!1595424 lt!1594999) (= lambda!146363 lambda!146317))))

(declare-fun bs!689043 () Bool)

(assert (= bs!689043 (and d!1313197 b!4385937)))

(assert (=> bs!689043 (= (= lt!1595424 lt!1595431) (= lambda!146363 lambda!146362))))

(declare-fun bs!689044 () Bool)

(assert (= bs!689044 (and d!1313197 b!4385895)))

(assert (=> bs!689044 (= (= lt!1595424 lt!1594999) (= lambda!146363 lambda!146318))))

(declare-fun bs!689045 () Bool)

(assert (= bs!689045 (and d!1313197 b!4385874)))

(assert (=> bs!689045 (= (= lt!1595424 lt!1595252) (= lambda!146363 lambda!146311))))

(assert (=> bs!689045 (= (= lt!1595424 (+!804 lt!1594999 lt!1595023)) (= lambda!146363 lambda!146310))))

(declare-fun bs!689046 () Bool)

(assert (= bs!689046 (and d!1313197 d!1313165)))

(assert (=> bs!689046 (= (= lt!1595424 lt!1595245) (= lambda!146363 lambda!146312))))

(assert (=> bs!689044 (= (= lt!1595424 lt!1595305) (= lambda!146363 lambda!146321))))

(assert (=> bs!689043 (= (= lt!1595424 lt!1594999) (= lambda!146363 lambda!146361))))

(assert (=> d!1313197 true))

(declare-fun b!4385934 () Bool)

(declare-fun e!2730472 () Bool)

(assert (=> b!4385934 (= e!2730472 (invariantList!728 (toList!3155 lt!1595424)))))

(declare-fun bm!305220 () Bool)

(declare-fun call!305225 () Unit!76736)

(assert (=> bm!305220 (= call!305225 (lemmaContainsAllItsOwnKeys!110 lt!1594999))))

(declare-fun b!4385935 () Bool)

(declare-fun res!1807067 () Bool)

(assert (=> b!4385935 (=> (not res!1807067) (not e!2730472))))

(assert (=> b!4385935 (= res!1807067 (forall!9290 (toList!3155 lt!1594999) lambda!146363))))

(declare-fun b!4385936 () Bool)

(declare-fun e!2730473 () Bool)

(declare-fun call!305226 () Bool)

(assert (=> b!4385936 (= e!2730473 call!305226)))

(declare-fun c!746241 () Bool)

(declare-fun bm!305221 () Bool)

(declare-fun call!305227 () Bool)

(assert (=> bm!305221 (= call!305227 (forall!9290 (toList!3155 lt!1594999) (ite c!746241 lambda!146360 lambda!146362)))))

(assert (=> d!1313197 e!2730472))

(declare-fun res!1807068 () Bool)

(assert (=> d!1313197 (=> (not res!1807068) (not e!2730472))))

(assert (=> d!1313197 (= res!1807068 (forall!9290 lt!1595011 lambda!146363))))

(declare-fun e!2730471 () ListMap!2399)

(assert (=> d!1313197 (= lt!1595424 e!2730471)))

(assert (=> d!1313197 (= c!746241 (is-Nil!49176 lt!1595011))))

(assert (=> d!1313197 (noDuplicateKeys!586 lt!1595011)))

(assert (=> d!1313197 (= (addToMapMapFromBucket!267 lt!1595011 lt!1594999) lt!1595424)))

(declare-fun bm!305222 () Bool)

(assert (=> bm!305222 (= call!305226 (forall!9290 (toList!3155 lt!1594999) (ite c!746241 lambda!146360 lambda!146362)))))

(assert (=> b!4385937 (= e!2730471 lt!1595431)))

(declare-fun lt!1595417 () ListMap!2399)

(assert (=> b!4385937 (= lt!1595417 (+!804 lt!1594999 (h!54779 lt!1595011)))))

(assert (=> b!4385937 (= lt!1595431 (addToMapMapFromBucket!267 (t!356230 lt!1595011) (+!804 lt!1594999 (h!54779 lt!1595011))))))

(declare-fun lt!1595418 () Unit!76736)

(assert (=> b!4385937 (= lt!1595418 call!305225)))

(assert (=> b!4385937 (forall!9290 (toList!3155 lt!1594999) lambda!146361)))

(declare-fun lt!1595426 () Unit!76736)

(assert (=> b!4385937 (= lt!1595426 lt!1595418)))

(assert (=> b!4385937 (forall!9290 (toList!3155 lt!1595417) lambda!146362)))

(declare-fun lt!1595433 () Unit!76736)

(declare-fun Unit!76816 () Unit!76736)

(assert (=> b!4385937 (= lt!1595433 Unit!76816)))

(assert (=> b!4385937 (forall!9290 (t!356230 lt!1595011) lambda!146362)))

(declare-fun lt!1595429 () Unit!76736)

(declare-fun Unit!76818 () Unit!76736)

(assert (=> b!4385937 (= lt!1595429 Unit!76818)))

(declare-fun lt!1595430 () Unit!76736)

(declare-fun Unit!76819 () Unit!76736)

(assert (=> b!4385937 (= lt!1595430 Unit!76819)))

(declare-fun lt!1595420 () Unit!76736)

(assert (=> b!4385937 (= lt!1595420 (forallContained!1928 (toList!3155 lt!1595417) lambda!146362 (h!54779 lt!1595011)))))

(assert (=> b!4385937 (contains!11522 lt!1595417 (_1!27651 (h!54779 lt!1595011)))))

(declare-fun lt!1595435 () Unit!76736)

(declare-fun Unit!76820 () Unit!76736)

(assert (=> b!4385937 (= lt!1595435 Unit!76820)))

(assert (=> b!4385937 (contains!11522 lt!1595431 (_1!27651 (h!54779 lt!1595011)))))

(declare-fun lt!1595436 () Unit!76736)

(declare-fun Unit!76821 () Unit!76736)

(assert (=> b!4385937 (= lt!1595436 Unit!76821)))

(assert (=> b!4385937 (forall!9290 lt!1595011 lambda!146362)))

(declare-fun lt!1595434 () Unit!76736)

(declare-fun Unit!76822 () Unit!76736)

(assert (=> b!4385937 (= lt!1595434 Unit!76822)))

(assert (=> b!4385937 (forall!9290 (toList!3155 lt!1595417) lambda!146362)))

(declare-fun lt!1595416 () Unit!76736)

(declare-fun Unit!76823 () Unit!76736)

(assert (=> b!4385937 (= lt!1595416 Unit!76823)))

(declare-fun lt!1595421 () Unit!76736)

(declare-fun Unit!76824 () Unit!76736)

(assert (=> b!4385937 (= lt!1595421 Unit!76824)))

(declare-fun lt!1595428 () Unit!76736)

(assert (=> b!4385937 (= lt!1595428 (addForallContainsKeyThenBeforeAdding!110 lt!1594999 lt!1595431 (_1!27651 (h!54779 lt!1595011)) (_2!27651 (h!54779 lt!1595011))))))

(assert (=> b!4385937 call!305227))

(declare-fun lt!1595427 () Unit!76736)

(assert (=> b!4385937 (= lt!1595427 lt!1595428)))

(assert (=> b!4385937 (forall!9290 (toList!3155 lt!1594999) lambda!146362)))

(declare-fun lt!1595423 () Unit!76736)

(declare-fun Unit!76825 () Unit!76736)

(assert (=> b!4385937 (= lt!1595423 Unit!76825)))

(declare-fun res!1807069 () Bool)

(assert (=> b!4385937 (= res!1807069 (forall!9290 lt!1595011 lambda!146362))))

(assert (=> b!4385937 (=> (not res!1807069) (not e!2730473))))

(assert (=> b!4385937 e!2730473))

(declare-fun lt!1595419 () Unit!76736)

(declare-fun Unit!76826 () Unit!76736)

(assert (=> b!4385937 (= lt!1595419 Unit!76826)))

(assert (=> b!4385938 (= e!2730471 lt!1594999)))

(declare-fun lt!1595432 () Unit!76736)

(assert (=> b!4385938 (= lt!1595432 call!305225)))

(assert (=> b!4385938 call!305227))

(declare-fun lt!1595422 () Unit!76736)

(assert (=> b!4385938 (= lt!1595422 lt!1595432)))

(assert (=> b!4385938 call!305226))

(declare-fun lt!1595425 () Unit!76736)

(declare-fun Unit!76827 () Unit!76736)

(assert (=> b!4385938 (= lt!1595425 Unit!76827)))

(assert (= (and d!1313197 c!746241) b!4385938))

(assert (= (and d!1313197 (not c!746241)) b!4385937))

(assert (= (and b!4385937 res!1807069) b!4385936))

(assert (= (or b!4385938 b!4385937) bm!305220))

(assert (= (or b!4385938 b!4385936) bm!305222))

(assert (= (or b!4385938 b!4385937) bm!305221))

(assert (= (and d!1313197 res!1807068) b!4385935))

(assert (= (and b!4385935 res!1807067) b!4385934))

(declare-fun m!5033691 () Bool)

(assert (=> d!1313197 m!5033691))

(declare-fun m!5033693 () Bool)

(assert (=> d!1313197 m!5033693))

(declare-fun m!5033695 () Bool)

(assert (=> b!4385937 m!5033695))

(declare-fun m!5033697 () Bool)

(assert (=> b!4385937 m!5033697))

(declare-fun m!5033699 () Bool)

(assert (=> b!4385937 m!5033699))

(declare-fun m!5033701 () Bool)

(assert (=> b!4385937 m!5033701))

(declare-fun m!5033703 () Bool)

(assert (=> b!4385937 m!5033703))

(declare-fun m!5033705 () Bool)

(assert (=> b!4385937 m!5033705))

(assert (=> b!4385937 m!5033699))

(declare-fun m!5033707 () Bool)

(assert (=> b!4385937 m!5033707))

(declare-fun m!5033709 () Bool)

(assert (=> b!4385937 m!5033709))

(declare-fun m!5033711 () Bool)

(assert (=> b!4385937 m!5033711))

(declare-fun m!5033713 () Bool)

(assert (=> b!4385937 m!5033713))

(assert (=> b!4385937 m!5033701))

(declare-fun m!5033715 () Bool)

(assert (=> b!4385937 m!5033715))

(assert (=> b!4385937 m!5033695))

(assert (=> bm!305220 m!5033483))

(declare-fun m!5033717 () Bool)

(assert (=> b!4385935 m!5033717))

(declare-fun m!5033719 () Bool)

(assert (=> b!4385934 m!5033719))

(declare-fun m!5033721 () Bool)

(assert (=> bm!305221 m!5033721))

(assert (=> bm!305222 m!5033721))

(assert (=> b!4385705 d!1313197))

(declare-fun d!1313205 () Bool)

(declare-fun e!2730480 () Bool)

(assert (=> d!1313205 e!2730480))

(declare-fun res!1807073 () Bool)

(assert (=> d!1313205 (=> (not res!1807073) (not e!2730480))))

(declare-fun lt!1595448 () ListMap!2399)

(assert (=> d!1313205 (= res!1807073 (contains!11522 lt!1595448 (_1!27651 lt!1595023)))))

(declare-fun lt!1595451 () List!49300)

(assert (=> d!1313205 (= lt!1595448 (ListMap!2400 lt!1595451))))

(declare-fun lt!1595450 () Unit!76736)

(declare-fun lt!1595449 () Unit!76736)

(assert (=> d!1313205 (= lt!1595450 lt!1595449)))

(assert (=> d!1313205 (= (getValueByKey!555 lt!1595451 (_1!27651 lt!1595023)) (Some!10568 (_2!27651 lt!1595023)))))

(assert (=> d!1313205 (= lt!1595449 (lemmaContainsTupThenGetReturnValue!319 lt!1595451 (_1!27651 lt!1595023) (_2!27651 lt!1595023)))))

(assert (=> d!1313205 (= lt!1595451 (insertNoDuplicatedKeys!146 (toList!3155 lt!1595009) (_1!27651 lt!1595023) (_2!27651 lt!1595023)))))

(assert (=> d!1313205 (= (+!804 lt!1595009 lt!1595023) lt!1595448)))

(declare-fun b!4385948 () Bool)

(declare-fun res!1807074 () Bool)

(assert (=> b!4385948 (=> (not res!1807074) (not e!2730480))))

(assert (=> b!4385948 (= res!1807074 (= (getValueByKey!555 (toList!3155 lt!1595448) (_1!27651 lt!1595023)) (Some!10568 (_2!27651 lt!1595023))))))

(declare-fun b!4385949 () Bool)

(assert (=> b!4385949 (= e!2730480 (contains!11527 (toList!3155 lt!1595448) lt!1595023))))

(assert (= (and d!1313205 res!1807073) b!4385948))

(assert (= (and b!4385948 res!1807074) b!4385949))

(declare-fun m!5033723 () Bool)

(assert (=> d!1313205 m!5033723))

(declare-fun m!5033725 () Bool)

(assert (=> d!1313205 m!5033725))

(declare-fun m!5033727 () Bool)

(assert (=> d!1313205 m!5033727))

(declare-fun m!5033729 () Bool)

(assert (=> d!1313205 m!5033729))

(declare-fun m!5033731 () Bool)

(assert (=> b!4385948 m!5033731))

(declare-fun m!5033733 () Bool)

(assert (=> b!4385949 m!5033733))

(assert (=> b!4385705 d!1313205))

(declare-fun d!1313207 () Bool)

(assert (=> d!1313207 (= (eq!324 lt!1595021 lt!1595001) (= (content!7827 (toList!3155 lt!1595021)) (content!7827 (toList!3155 lt!1595001))))))

(declare-fun bs!689047 () Bool)

(assert (= bs!689047 d!1313207))

(declare-fun m!5033735 () Bool)

(assert (=> bs!689047 m!5033735))

(declare-fun m!5033737 () Bool)

(assert (=> bs!689047 m!5033737))

(assert (=> b!4385705 d!1313207))

(declare-fun d!1313209 () Bool)

(declare-fun e!2730482 () Bool)

(assert (=> d!1313209 e!2730482))

(declare-fun res!1807075 () Bool)

(assert (=> d!1313209 (=> res!1807075 e!2730482)))

(declare-fun lt!1595454 () Bool)

(assert (=> d!1313209 (= res!1807075 (not lt!1595454))))

(declare-fun lt!1595452 () Bool)

(assert (=> d!1313209 (= lt!1595454 lt!1595452)))

(declare-fun lt!1595455 () Unit!76736)

(declare-fun e!2730481 () Unit!76736)

(assert (=> d!1313209 (= lt!1595455 e!2730481)))

(declare-fun c!746245 () Bool)

(assert (=> d!1313209 (= c!746245 lt!1595452)))

(assert (=> d!1313209 (= lt!1595452 (containsKey!865 (toList!3156 lt!1595020) hash!377))))

(assert (=> d!1313209 (= (contains!11520 lt!1595020 hash!377) lt!1595454)))

(declare-fun b!4385950 () Bool)

(declare-fun lt!1595453 () Unit!76736)

(assert (=> b!4385950 (= e!2730481 lt!1595453)))

(assert (=> b!4385950 (= lt!1595453 (lemmaContainsKeyImpliesGetValueByKeyDefined!467 (toList!3156 lt!1595020) hash!377))))

(assert (=> b!4385950 (isDefined!7864 (getValueByKey!556 (toList!3156 lt!1595020) hash!377))))

(declare-fun b!4385951 () Bool)

(declare-fun Unit!76830 () Unit!76736)

(assert (=> b!4385951 (= e!2730481 Unit!76830)))

(declare-fun b!4385952 () Bool)

(assert (=> b!4385952 (= e!2730482 (isDefined!7864 (getValueByKey!556 (toList!3156 lt!1595020) hash!377)))))

(assert (= (and d!1313209 c!746245) b!4385950))

(assert (= (and d!1313209 (not c!746245)) b!4385951))

(assert (= (and d!1313209 (not res!1807075)) b!4385952))

(declare-fun m!5033739 () Bool)

(assert (=> d!1313209 m!5033739))

(declare-fun m!5033741 () Bool)

(assert (=> b!4385950 m!5033741))

(assert (=> b!4385950 m!5033415))

(assert (=> b!4385950 m!5033415))

(declare-fun m!5033743 () Bool)

(assert (=> b!4385950 m!5033743))

(assert (=> b!4385952 m!5033415))

(assert (=> b!4385952 m!5033415))

(assert (=> b!4385952 m!5033743))

(assert (=> b!4385695 d!1313209))

(declare-fun d!1313211 () Bool)

(declare-fun res!1807076 () Bool)

(declare-fun e!2730483 () Bool)

(assert (=> d!1313211 (=> res!1807076 e!2730483)))

(assert (=> d!1313211 (= res!1807076 (is-Nil!49177 (toList!3156 lt!1595020)))))

(assert (=> d!1313211 (= (forall!9288 (toList!3156 lt!1595020) lambda!146250) e!2730483)))

(declare-fun b!4385953 () Bool)

(declare-fun e!2730484 () Bool)

(assert (=> b!4385953 (= e!2730483 e!2730484)))

(declare-fun res!1807077 () Bool)

(assert (=> b!4385953 (=> (not res!1807077) (not e!2730484))))

(assert (=> b!4385953 (= res!1807077 (dynLambda!20722 lambda!146250 (h!54780 (toList!3156 lt!1595020))))))

(declare-fun b!4385954 () Bool)

(assert (=> b!4385954 (= e!2730484 (forall!9288 (t!356231 (toList!3156 lt!1595020)) lambda!146250))))

(assert (= (and d!1313211 (not res!1807076)) b!4385953))

(assert (= (and b!4385953 res!1807077) b!4385954))

(declare-fun b_lambda!137083 () Bool)

(assert (=> (not b_lambda!137083) (not b!4385953)))

(declare-fun m!5033745 () Bool)

(assert (=> b!4385953 m!5033745))

(declare-fun m!5033747 () Bool)

(assert (=> b!4385954 m!5033747))

(assert (=> b!4385702 d!1313211))

(declare-fun d!1313213 () Bool)

(assert (=> d!1313213 (= (eq!324 lt!1595005 lt!1595004) (= (content!7827 (toList!3155 lt!1595005)) (content!7827 (toList!3155 lt!1595004))))))

(declare-fun bs!689048 () Bool)

(assert (= bs!689048 d!1313213))

(declare-fun m!5033749 () Bool)

(assert (=> bs!689048 m!5033749))

(assert (=> bs!689048 m!5033399))

(assert (=> b!4385691 d!1313213))

(declare-fun bs!689049 () Bool)

(declare-fun d!1313215 () Bool)

(assert (= bs!689049 (and d!1313215 b!4385938)))

(declare-fun lambda!146366 () Int)

(assert (=> bs!689049 (not (= lambda!146366 lambda!146360))))

(declare-fun bs!689050 () Bool)

(assert (= bs!689050 (and d!1313215 d!1313177)))

(assert (=> bs!689050 (not (= lambda!146366 lambda!146324))))

(declare-fun bs!689051 () Bool)

(assert (= bs!689051 (and d!1313215 b!4385882)))

(assert (=> bs!689051 (not (= lambda!146366 lambda!146313))))

(declare-fun bs!689052 () Bool)

(assert (= bs!689052 (and d!1313215 b!4385875)))

(assert (=> bs!689052 (not (= lambda!146366 lambda!146309))))

(declare-fun bs!689053 () Bool)

(assert (= bs!689053 (and d!1313215 d!1313171)))

(assert (=> bs!689053 (not (= lambda!146366 lambda!146316))))

(declare-fun bs!689054 () Bool)

(assert (= bs!689054 (and d!1313215 b!4385881)))

(assert (=> bs!689054 (not (= lambda!146366 lambda!146315))))

(assert (=> bs!689054 (not (= lambda!146366 lambda!146314))))

(declare-fun bs!689055 () Bool)

(assert (= bs!689055 (and d!1313215 b!4385896)))

(assert (=> bs!689055 (not (= lambda!146366 lambda!146317))))

(declare-fun bs!689056 () Bool)

(assert (= bs!689056 (and d!1313215 b!4385937)))

(assert (=> bs!689056 (not (= lambda!146366 lambda!146362))))

(declare-fun bs!689057 () Bool)

(assert (= bs!689057 (and d!1313215 b!4385895)))

(assert (=> bs!689057 (not (= lambda!146366 lambda!146318))))

(declare-fun bs!689058 () Bool)

(assert (= bs!689058 (and d!1313215 b!4385874)))

(assert (=> bs!689058 (not (= lambda!146366 lambda!146311))))

(assert (=> bs!689058 (not (= lambda!146366 lambda!146310))))

(assert (=> bs!689057 (not (= lambda!146366 lambda!146321))))

(assert (=> bs!689056 (not (= lambda!146366 lambda!146361))))

(declare-fun bs!689059 () Bool)

(assert (= bs!689059 (and d!1313215 d!1313165)))

(assert (=> bs!689059 (not (= lambda!146366 lambda!146312))))

(declare-fun bs!689060 () Bool)

(assert (= bs!689060 (and d!1313215 d!1313197)))

(assert (=> bs!689060 (not (= lambda!146366 lambda!146363))))

(assert (=> d!1313215 true))

(assert (=> d!1313215 true))

(assert (=> d!1313215 (= (allKeysSameHash!544 newBucket!200 hash!377 hashF!1247) (forall!9290 newBucket!200 lambda!146366))))

(declare-fun bs!689061 () Bool)

(assert (= bs!689061 d!1313215))

(declare-fun m!5033759 () Bool)

(assert (=> bs!689061 m!5033759))

(assert (=> b!4385692 d!1313215))

(declare-fun d!1313217 () Bool)

(declare-fun res!1807088 () Bool)

(declare-fun e!2730493 () Bool)

(assert (=> d!1313217 (=> res!1807088 e!2730493)))

(assert (=> d!1313217 (= res!1807088 (not (is-Cons!49176 newBucket!200)))))

(assert (=> d!1313217 (= (noDuplicateKeys!586 newBucket!200) e!2730493)))

(declare-fun b!4385971 () Bool)

(declare-fun e!2730494 () Bool)

(assert (=> b!4385971 (= e!2730493 e!2730494)))

(declare-fun res!1807089 () Bool)

(assert (=> b!4385971 (=> (not res!1807089) (not e!2730494))))

(assert (=> b!4385971 (= res!1807089 (not (containsKey!867 (t!356230 newBucket!200) (_1!27651 (h!54779 newBucket!200)))))))

(declare-fun b!4385972 () Bool)

(assert (=> b!4385972 (= e!2730494 (noDuplicateKeys!586 (t!356230 newBucket!200)))))

(assert (= (and d!1313217 (not res!1807088)) b!4385971))

(assert (= (and b!4385971 res!1807089) b!4385972))

(declare-fun m!5033769 () Bool)

(assert (=> b!4385971 m!5033769))

(declare-fun m!5033771 () Bool)

(assert (=> b!4385972 m!5033771))

(assert (=> b!4385703 d!1313217))

(declare-fun d!1313223 () Bool)

(declare-fun res!1807090 () Bool)

(declare-fun e!2730495 () Bool)

(assert (=> d!1313223 (=> res!1807090 e!2730495)))

(assert (=> d!1313223 (= res!1807090 (is-Nil!49177 (toList!3156 lm!1707)))))

(assert (=> d!1313223 (= (forall!9288 (toList!3156 lm!1707) lambda!146250) e!2730495)))

(declare-fun b!4385973 () Bool)

(declare-fun e!2730496 () Bool)

(assert (=> b!4385973 (= e!2730495 e!2730496)))

(declare-fun res!1807091 () Bool)

(assert (=> b!4385973 (=> (not res!1807091) (not e!2730496))))

(assert (=> b!4385973 (= res!1807091 (dynLambda!20722 lambda!146250 (h!54780 (toList!3156 lm!1707))))))

(declare-fun b!4385974 () Bool)

(assert (=> b!4385974 (= e!2730496 (forall!9288 (t!356231 (toList!3156 lm!1707)) lambda!146250))))

(assert (= (and d!1313223 (not res!1807090)) b!4385973))

(assert (= (and b!4385973 res!1807091) b!4385974))

(declare-fun b_lambda!137085 () Bool)

(assert (=> (not b_lambda!137085) (not b!4385973)))

(declare-fun m!5033773 () Bool)

(assert (=> b!4385973 m!5033773))

(declare-fun m!5033775 () Bool)

(assert (=> b!4385974 m!5033775))

(assert (=> start!425822 d!1313223))

(declare-fun d!1313225 () Bool)

(declare-fun isStrictlySorted!155 (List!49301) Bool)

(assert (=> d!1313225 (= (inv!64720 lm!1707) (isStrictlySorted!155 (toList!3156 lm!1707)))))

(declare-fun bs!689067 () Bool)

(assert (= bs!689067 d!1313225))

(declare-fun m!5033785 () Bool)

(assert (=> bs!689067 m!5033785))

(assert (=> start!425822 d!1313225))

(assert (=> b!4385699 d!1313143))

(declare-fun d!1313229 () Bool)

(declare-fun e!2730497 () Bool)

(assert (=> d!1313229 e!2730497))

(declare-fun res!1807093 () Bool)

(assert (=> d!1313229 (=> (not res!1807093) (not e!2730497))))

(declare-fun lt!1595471 () ListLongMap!1805)

(assert (=> d!1313229 (= res!1807093 (contains!11520 lt!1595471 (_1!27652 lt!1595017)))))

(declare-fun lt!1595472 () List!49301)

(assert (=> d!1313229 (= lt!1595471 (ListLongMap!1806 lt!1595472))))

(declare-fun lt!1595469 () Unit!76736)

(declare-fun lt!1595470 () Unit!76736)

(assert (=> d!1313229 (= lt!1595469 lt!1595470)))

(assert (=> d!1313229 (= (getValueByKey!556 lt!1595472 (_1!27652 lt!1595017)) (Some!10569 (_2!27652 lt!1595017)))))

(assert (=> d!1313229 (= lt!1595470 (lemmaContainsTupThenGetReturnValue!321 lt!1595472 (_1!27652 lt!1595017) (_2!27652 lt!1595017)))))

(assert (=> d!1313229 (= lt!1595472 (insertStrictlySorted!182 (toList!3156 lm!1707) (_1!27652 lt!1595017) (_2!27652 lt!1595017)))))

(assert (=> d!1313229 (= (+!803 lm!1707 lt!1595017) lt!1595471)))

(declare-fun b!4385975 () Bool)

(declare-fun res!1807092 () Bool)

(assert (=> b!4385975 (=> (not res!1807092) (not e!2730497))))

(assert (=> b!4385975 (= res!1807092 (= (getValueByKey!556 (toList!3156 lt!1595471) (_1!27652 lt!1595017)) (Some!10569 (_2!27652 lt!1595017))))))

(declare-fun b!4385976 () Bool)

(assert (=> b!4385976 (= e!2730497 (contains!11521 (toList!3156 lt!1595471) lt!1595017))))

(assert (= (and d!1313229 res!1807093) b!4385975))

(assert (= (and b!4385975 res!1807092) b!4385976))

(declare-fun m!5033787 () Bool)

(assert (=> d!1313229 m!5033787))

(declare-fun m!5033789 () Bool)

(assert (=> d!1313229 m!5033789))

(declare-fun m!5033791 () Bool)

(assert (=> d!1313229 m!5033791))

(declare-fun m!5033793 () Bool)

(assert (=> d!1313229 m!5033793))

(declare-fun m!5033795 () Bool)

(assert (=> b!4385975 m!5033795))

(declare-fun m!5033797 () Bool)

(assert (=> b!4385976 m!5033797))

(assert (=> b!4385699 d!1313229))

(declare-fun d!1313231 () Bool)

(assert (=> d!1313231 (forall!9288 (toList!3156 (+!803 lm!1707 (tuple2!48717 hash!377 newBucket!200))) lambda!146250)))

(declare-fun lt!1595475 () Unit!76736)

(declare-fun choose!27381 (ListLongMap!1805 Int (_ BitVec 64) List!49300) Unit!76736)

(assert (=> d!1313231 (= lt!1595475 (choose!27381 lm!1707 lambda!146250 hash!377 newBucket!200))))

(declare-fun e!2730500 () Bool)

(assert (=> d!1313231 e!2730500))

(declare-fun res!1807096 () Bool)

(assert (=> d!1313231 (=> (not res!1807096) (not e!2730500))))

(assert (=> d!1313231 (= res!1807096 (forall!9288 (toList!3156 lm!1707) lambda!146250))))

(assert (=> d!1313231 (= (addValidProp!232 lm!1707 lambda!146250 hash!377 newBucket!200) lt!1595475)))

(declare-fun b!4385980 () Bool)

(assert (=> b!4385980 (= e!2730500 (dynLambda!20722 lambda!146250 (tuple2!48717 hash!377 newBucket!200)))))

(assert (= (and d!1313231 res!1807096) b!4385980))

(declare-fun b_lambda!137087 () Bool)

(assert (=> (not b_lambda!137087) (not b!4385980)))

(declare-fun m!5033799 () Bool)

(assert (=> d!1313231 m!5033799))

(declare-fun m!5033801 () Bool)

(assert (=> d!1313231 m!5033801))

(declare-fun m!5033803 () Bool)

(assert (=> d!1313231 m!5033803))

(assert (=> d!1313231 m!5033189))

(declare-fun m!5033805 () Bool)

(assert (=> b!4385980 m!5033805))

(assert (=> b!4385699 d!1313231))

(assert (=> b!4385699 d!1313223))

(declare-fun d!1313233 () Bool)

(assert (=> d!1313233 (dynLambda!20722 lambda!146250 lt!1595007)))

(declare-fun lt!1595478 () Unit!76736)

(declare-fun choose!27382 (List!49301 Int tuple2!48716) Unit!76736)

(assert (=> d!1313233 (= lt!1595478 (choose!27382 (toList!3156 lm!1707) lambda!146250 lt!1595007))))

(declare-fun e!2730503 () Bool)

(assert (=> d!1313233 e!2730503))

(declare-fun res!1807099 () Bool)

(assert (=> d!1313233 (=> (not res!1807099) (not e!2730503))))

(assert (=> d!1313233 (= res!1807099 (forall!9288 (toList!3156 lm!1707) lambda!146250))))

(assert (=> d!1313233 (= (forallContained!1926 (toList!3156 lm!1707) lambda!146250 lt!1595007) lt!1595478)))

(declare-fun b!4385983 () Bool)

(assert (=> b!4385983 (= e!2730503 (contains!11521 (toList!3156 lm!1707) lt!1595007))))

(assert (= (and d!1313233 res!1807099) b!4385983))

(declare-fun b_lambda!137089 () Bool)

(assert (=> (not b_lambda!137089) (not d!1313233)))

(declare-fun m!5033807 () Bool)

(assert (=> d!1313233 m!5033807))

(declare-fun m!5033809 () Bool)

(assert (=> d!1313233 m!5033809))

(assert (=> d!1313233 m!5033189))

(assert (=> b!4385983 m!5033173))

(assert (=> b!4385700 d!1313233))

(declare-fun b!4385993 () Bool)

(declare-fun e!2730508 () List!49300)

(declare-fun e!2730509 () List!49300)

(assert (=> b!4385993 (= e!2730508 e!2730509)))

(declare-fun c!746252 () Bool)

(assert (=> b!4385993 (= c!746252 (is-Cons!49176 lt!1595000))))

(declare-fun b!4385995 () Bool)

(assert (=> b!4385995 (= e!2730509 Nil!49176)))

(declare-fun b!4385994 () Bool)

(assert (=> b!4385994 (= e!2730509 (Cons!49176 (h!54779 lt!1595000) (removePairForKey!554 (t!356230 lt!1595000) key!3918)))))

(declare-fun b!4385992 () Bool)

(assert (=> b!4385992 (= e!2730508 (t!356230 lt!1595000))))

(declare-fun d!1313235 () Bool)

(declare-fun lt!1595481 () List!49300)

(assert (=> d!1313235 (not (containsKey!867 lt!1595481 key!3918))))

(assert (=> d!1313235 (= lt!1595481 e!2730508)))

(declare-fun c!746251 () Bool)

(assert (=> d!1313235 (= c!746251 (and (is-Cons!49176 lt!1595000) (= (_1!27651 (h!54779 lt!1595000)) key!3918)))))

(assert (=> d!1313235 (noDuplicateKeys!586 lt!1595000)))

(assert (=> d!1313235 (= (removePairForKey!554 lt!1595000 key!3918) lt!1595481)))

(assert (= (and d!1313235 c!746251) b!4385992))

(assert (= (and d!1313235 (not c!746251)) b!4385993))

(assert (= (and b!4385993 c!746252) b!4385994))

(assert (= (and b!4385993 (not c!746252)) b!4385995))

(declare-fun m!5033811 () Bool)

(assert (=> b!4385994 m!5033811))

(declare-fun m!5033813 () Bool)

(assert (=> d!1313235 m!5033813))

(declare-fun m!5033815 () Bool)

(assert (=> d!1313235 m!5033815))

(assert (=> b!4385700 d!1313235))

(declare-fun d!1313237 () Bool)

(declare-fun lt!1595487 () Bool)

(declare-fun content!7830 (List!49301) (Set tuple2!48716))

(assert (=> d!1313237 (= lt!1595487 (set.member lt!1595007 (content!7830 (toList!3156 lm!1707))))))

(declare-fun e!2730515 () Bool)

(assert (=> d!1313237 (= lt!1595487 e!2730515)))

(declare-fun res!1807104 () Bool)

(assert (=> d!1313237 (=> (not res!1807104) (not e!2730515))))

(assert (=> d!1313237 (= res!1807104 (is-Cons!49177 (toList!3156 lm!1707)))))

(assert (=> d!1313237 (= (contains!11521 (toList!3156 lm!1707) lt!1595007) lt!1595487)))

(declare-fun b!4386000 () Bool)

(declare-fun e!2730514 () Bool)

(assert (=> b!4386000 (= e!2730515 e!2730514)))

(declare-fun res!1807105 () Bool)

(assert (=> b!4386000 (=> res!1807105 e!2730514)))

(assert (=> b!4386000 (= res!1807105 (= (h!54780 (toList!3156 lm!1707)) lt!1595007))))

(declare-fun b!4386001 () Bool)

(assert (=> b!4386001 (= e!2730514 (contains!11521 (t!356231 (toList!3156 lm!1707)) lt!1595007))))

(assert (= (and d!1313237 res!1807104) b!4386000))

(assert (= (and b!4386000 (not res!1807105)) b!4386001))

(declare-fun m!5033829 () Bool)

(assert (=> d!1313237 m!5033829))

(declare-fun m!5033831 () Bool)

(assert (=> d!1313237 m!5033831))

(declare-fun m!5033833 () Bool)

(assert (=> b!4386001 m!5033833))

(assert (=> b!4385700 d!1313237))

(declare-fun d!1313243 () Bool)

(assert (=> d!1313243 (contains!11521 (toList!3156 lm!1707) (tuple2!48717 hash!377 lt!1595000))))

(declare-fun lt!1595511 () Unit!76736)

(declare-fun choose!27383 (List!49301 (_ BitVec 64) List!49300) Unit!76736)

(assert (=> d!1313243 (= lt!1595511 (choose!27383 (toList!3156 lm!1707) hash!377 lt!1595000))))

(declare-fun e!2730521 () Bool)

(assert (=> d!1313243 e!2730521))

(declare-fun res!1807111 () Bool)

(assert (=> d!1313243 (=> (not res!1807111) (not e!2730521))))

(assert (=> d!1313243 (= res!1807111 (isStrictlySorted!155 (toList!3156 lm!1707)))))

(assert (=> d!1313243 (= (lemmaGetValueByKeyImpliesContainsTuple!431 (toList!3156 lm!1707) hash!377 lt!1595000) lt!1595511)))

(declare-fun b!4386009 () Bool)

(assert (=> b!4386009 (= e!2730521 (= (getValueByKey!556 (toList!3156 lm!1707) hash!377) (Some!10569 lt!1595000)))))

(assert (= (and d!1313243 res!1807111) b!4386009))

(declare-fun m!5033835 () Bool)

(assert (=> d!1313243 m!5033835))

(declare-fun m!5033837 () Bool)

(assert (=> d!1313243 m!5033837))

(assert (=> d!1313243 m!5033785))

(assert (=> b!4386009 m!5033331))

(assert (=> b!4385700 d!1313243))

(declare-fun d!1313245 () Bool)

(assert (=> d!1313245 (= (apply!11438 lm!1707 hash!377) (get!15998 (getValueByKey!556 (toList!3156 lm!1707) hash!377)))))

(declare-fun bs!689088 () Bool)

(assert (= bs!689088 d!1313245))

(assert (=> bs!689088 m!5033331))

(assert (=> bs!689088 m!5033331))

(declare-fun m!5033839 () Bool)

(assert (=> bs!689088 m!5033839))

(assert (=> b!4385700 d!1313245))

(declare-fun b!4386014 () Bool)

(declare-fun e!2730524 () Bool)

(declare-fun tp!1331313 () Bool)

(declare-fun tp!1331314 () Bool)

(assert (=> b!4386014 (= e!2730524 (and tp!1331313 tp!1331314))))

(assert (=> b!4385701 (= tp!1331301 e!2730524)))

(assert (= (and b!4385701 (is-Cons!49177 (toList!3156 lm!1707))) b!4386014))

(declare-fun b!4386019 () Bool)

(declare-fun e!2730527 () Bool)

(declare-fun tp!1331317 () Bool)

(assert (=> b!4386019 (= e!2730527 (and tp_is_empty!25581 tp_is_empty!25583 tp!1331317))))

(assert (=> b!4385706 (= tp!1331302 e!2730527)))

(assert (= (and b!4385706 (is-Cons!49176 (t!356230 newBucket!200))) b!4386019))

(declare-fun b_lambda!137091 () Bool)

(assert (= b_lambda!137087 (or start!425822 b_lambda!137091)))

(declare-fun bs!689097 () Bool)

(declare-fun d!1313247 () Bool)

(assert (= bs!689097 (and d!1313247 start!425822)))

(assert (=> bs!689097 (= (dynLambda!20722 lambda!146250 (tuple2!48717 hash!377 newBucket!200)) (noDuplicateKeys!586 (_2!27652 (tuple2!48717 hash!377 newBucket!200))))))

(declare-fun m!5033841 () Bool)

(assert (=> bs!689097 m!5033841))

(assert (=> b!4385980 d!1313247))

(declare-fun b_lambda!137093 () Bool)

(assert (= b_lambda!137083 (or start!425822 b_lambda!137093)))

(declare-fun bs!689098 () Bool)

(declare-fun d!1313249 () Bool)

(assert (= bs!689098 (and d!1313249 start!425822)))

(assert (=> bs!689098 (= (dynLambda!20722 lambda!146250 (h!54780 (toList!3156 lt!1595020))) (noDuplicateKeys!586 (_2!27652 (h!54780 (toList!3156 lt!1595020)))))))

(declare-fun m!5033843 () Bool)

(assert (=> bs!689098 m!5033843))

(assert (=> b!4385953 d!1313249))

(declare-fun b_lambda!137095 () Bool)

(assert (= b_lambda!137081 (or start!425822 b_lambda!137095)))

(declare-fun bs!689099 () Bool)

(declare-fun d!1313251 () Bool)

(assert (= bs!689099 (and d!1313251 start!425822)))

(assert (=> bs!689099 (= (dynLambda!20722 lambda!146250 (h!54780 (toList!3156 lt!1595019))) (noDuplicateKeys!586 (_2!27652 (h!54780 (toList!3156 lt!1595019)))))))

(declare-fun m!5033845 () Bool)

(assert (=> bs!689099 m!5033845))

(assert (=> b!4385816 d!1313251))

(declare-fun b_lambda!137097 () Bool)

(assert (= b_lambda!137089 (or start!425822 b_lambda!137097)))

(declare-fun bs!689100 () Bool)

(declare-fun d!1313253 () Bool)

(assert (= bs!689100 (and d!1313253 start!425822)))

(assert (=> bs!689100 (= (dynLambda!20722 lambda!146250 lt!1595007) (noDuplicateKeys!586 (_2!27652 lt!1595007)))))

(declare-fun m!5033847 () Bool)

(assert (=> bs!689100 m!5033847))

(assert (=> d!1313233 d!1313253))

(declare-fun b_lambda!137099 () Bool)

(assert (= b_lambda!137085 (or start!425822 b_lambda!137099)))

(declare-fun bs!689101 () Bool)

(declare-fun d!1313255 () Bool)

(assert (= bs!689101 (and d!1313255 start!425822)))

(assert (=> bs!689101 (= (dynLambda!20722 lambda!146250 (h!54780 (toList!3156 lm!1707))) (noDuplicateKeys!586 (_2!27652 (h!54780 (toList!3156 lm!1707)))))))

(declare-fun m!5033849 () Bool)

(assert (=> bs!689101 m!5033849))

(assert (=> b!4385973 d!1313255))

(push 1)

(assert (not d!1313177))

(assert (not b!4385849))

(assert (not d!1313171))

(assert (not b!4385857))

(assert (not d!1313207))

(assert (not b!4385854))

(assert (not d!1313137))

(assert (not b!4385895))

(assert (not d!1313149))

(assert (not b!4385835))

(assert (not d!1313153))

(assert (not b!4385972))

(assert (not d!1313173))

(assert (not b_lambda!137099))

(assert (not d!1313147))

(assert (not bm!305207))

(assert (not d!1313133))

(assert (not d!1313231))

(assert (not b!4385845))

(assert (not b!4385932))

(assert (not d!1313175))

(assert (not b!4385878))

(assert (not b_lambda!137095))

(assert (not bm!305203))

(assert (not bm!305201))

(assert (not b!4385850))

(assert (not b!4385974))

(assert (not d!1313141))

(assert (not b!4385781))

(assert (not b!4385976))

(assert (not d!1313233))

(assert (not d!1313243))

(assert (not b!4385892))

(assert (not b_lambda!137097))

(assert (not d!1313215))

(assert (not b!4385783))

(assert (not b!4385948))

(assert (not d!1313197))

(assert (not bs!689098))

(assert (not b!4385930))

(assert (not bs!689097))

(assert (not b!4385884))

(assert (not b!4385975))

(assert (not d!1313225))

(assert (not b!4385817))

(assert (not d!1313237))

(assert (not b!4385872))

(assert (not b!4385887))

(assert (not b!4385852))

(assert (not d!1313235))

(assert (not bs!689099))

(assert (not b!4385949))

(assert (not b!4385847))

(assert (not b!4385785))

(assert (not b_lambda!137093))

(assert (not b!4385879))

(assert (not b!4385787))

(assert tp_is_empty!25583)

(assert (not b!4385935))

(assert (not d!1313155))

(assert (not b!4386001))

(assert (not bs!689100))

(assert (not b!4385886))

(assert (not b!4385833))

(assert (not b!4385881))

(assert (not b!4385954))

(assert (not b!4385891))

(assert tp_is_empty!25581)

(assert (not b!4385874))

(assert (not d!1313205))

(assert (not d!1313163))

(assert (not d!1313179))

(assert (not b!4385908))

(assert (not b!4385934))

(assert (not b!4385784))

(assert (not bm!305222))

(assert (not d!1313193))

(assert (not b!4385780))

(assert (not b!4385871))

(assert (not d!1313145))

(assert (not b!4385848))

(assert (not d!1313185))

(assert (not d!1313229))

(assert (not b!4385893))

(assert (not bm!305220))

(assert (not d!1313159))

(assert (not bm!305202))

(assert (not d!1313245))

(assert (not bm!305204))

(assert (not bm!305199))

(assert (not bm!305221))

(assert (not b!4385983))

(assert (not b!4386019))

(assert (not b!4385889))

(assert (not bm!305187))

(assert (not b!4385885))

(assert (not d!1313139))

(assert (not bm!305191))

(assert (not bm!305198))

(assert (not b!4385950))

(assert (not b!4385907))

(assert (not d!1313165))

(assert (not bm!305205))

(assert (not b!4385994))

(assert (not b!4385800))

(assert (not b_lambda!137091))

(assert (not bs!689101))

(assert (not b!4386009))

(assert (not d!1313195))

(assert (not b!4385888))

(assert (not b!4385844))

(assert (not bm!305206))

(assert (not b!4385937))

(assert (not d!1313183))

(assert (not b!4385929))

(assert (not b!4385971))

(assert (not bm!305200))

(assert (not d!1313157))

(assert (not b!4385952))

(assert (not d!1313213))

(assert (not d!1313209))

(assert (not b!4386014))

(assert (not b!4385782))

(assert (not b!4385851))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

