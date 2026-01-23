; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504354 () Bool)

(assert start!504354)

(declare-fun b!4844230 () Bool)

(assert (=> b!4844230 true))

(declare-fun b!4844227 () Bool)

(declare-fun e!3027630 () Bool)

(declare-fun e!3027632 () Bool)

(assert (=> b!4844227 (= e!3027630 (not e!3027632))))

(declare-fun res!2066015 () Bool)

(assert (=> b!4844227 (=> res!2066015 e!3027632)))

(declare-datatypes ((K!17192 0))(
  ( (K!17193 (val!22059 Int)) )
))
(declare-datatypes ((V!17438 0))(
  ( (V!17439 (val!22060 Int)) )
))
(declare-datatypes ((tuple2!58990 0))(
  ( (tuple2!58991 (_1!32789 K!17192) (_2!32789 V!17438)) )
))
(declare-datatypes ((List!55549 0))(
  ( (Nil!55425) (Cons!55425 (h!61862 tuple2!58990) (t!363045 List!55549)) )
))
(declare-datatypes ((tuple2!58992 0))(
  ( (tuple2!58993 (_1!32790 (_ BitVec 64)) (_2!32790 List!55549)) )
))
(declare-datatypes ((List!55550 0))(
  ( (Nil!55426) (Cons!55426 (h!61863 tuple2!58992) (t!363046 List!55550)) )
))
(declare-datatypes ((ListLongMap!6361 0))(
  ( (ListLongMap!6362 (toList!7805 List!55550)) )
))
(declare-fun lm!2671 () ListLongMap!6361)

(declare-fun key!6540 () K!17192)

(declare-fun containsKeyBiggerList!733 (List!55550 K!17192) Bool)

(assert (=> b!4844227 (= res!2066015 (not (containsKeyBiggerList!733 (t!363046 (toList!7805 lm!2671)) key!6540)))))

(declare-fun tail!9517 (List!55550) List!55550)

(assert (=> b!4844227 (containsKeyBiggerList!733 (tail!9517 (toList!7805 lm!2671)) key!6540)))

(declare-datatypes ((Unit!145577 0))(
  ( (Unit!145578) )
))
(declare-fun lt!1987551 () Unit!145577)

(declare-datatypes ((Hashable!7449 0))(
  ( (HashableExt!7448 (__x!33724 Int)) )
))
(declare-fun hashF!1662 () Hashable!7449)

(declare-fun lemmaInBiggerListButNotHeadThenTail!65 (ListLongMap!6361 K!17192 Hashable!7449) Unit!145577)

(assert (=> b!4844227 (= lt!1987551 (lemmaInBiggerListButNotHeadThenTail!65 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4844228 () Bool)

(declare-fun res!2066019 () Bool)

(declare-fun e!3027631 () Bool)

(assert (=> b!4844228 (=> (not res!2066019) (not e!3027631))))

(declare-fun allKeysSameHashInMap!2765 (ListLongMap!6361 Hashable!7449) Bool)

(assert (=> b!4844228 (= res!2066019 (allKeysSameHashInMap!2765 lm!2671 hashF!1662))))

(declare-fun b!4844229 () Bool)

(declare-fun e!3027629 () Bool)

(declare-fun tp!1364075 () Bool)

(assert (=> b!4844229 (= e!3027629 tp!1364075)))

(declare-fun e!3027628 () Bool)

(declare-datatypes ((ListMap!7143 0))(
  ( (ListMap!7144 (toList!7806 List!55549)) )
))
(declare-fun lt!1987548 () ListMap!7143)

(declare-fun contains!19127 (ListMap!7143 K!17192) Bool)

(assert (=> b!4844230 (= e!3027628 (contains!19127 lt!1987548 key!6540))))

(declare-fun lt!1987553 () Unit!145577)

(declare-fun lt!1987554 () tuple2!58990)

(declare-fun lt!1987555 () ListMap!7143)

(declare-fun lambda!242038 () Int)

(declare-fun forallContained!4508 (List!55549 Int tuple2!58990) Unit!145577)

(assert (=> b!4844230 (= lt!1987553 (forallContained!4508 (toList!7806 lt!1987555) lambda!242038 lt!1987554))))

(declare-fun contains!19128 (List!55549 tuple2!58990) Bool)

(assert (=> b!4844230 (contains!19128 (toList!7806 lt!1987555) lt!1987554)))

(declare-fun lt!1987552 () V!17438)

(assert (=> b!4844230 (= lt!1987554 (tuple2!58991 key!6540 lt!1987552))))

(declare-fun lt!1987550 () Unit!145577)

(declare-fun lemmaGetValueImpliesTupleContained!734 (ListMap!7143 K!17192 V!17438) Unit!145577)

(assert (=> b!4844230 (= lt!1987550 (lemmaGetValueImpliesTupleContained!734 lt!1987555 key!6540 lt!1987552))))

(declare-datatypes ((Option!13621 0))(
  ( (None!13620) (Some!13620 (v!49362 V!17438)) )
))
(declare-fun get!18972 (Option!13621) V!17438)

(declare-fun getValueByKey!2715 (List!55549 K!17192) Option!13621)

(assert (=> b!4844230 (= lt!1987552 (get!18972 (getValueByKey!2715 (toList!7806 lt!1987555) key!6540)))))

(declare-fun b!4844231 () Bool)

(assert (=> b!4844231 (= e!3027631 e!3027630)))

(declare-fun res!2066023 () Bool)

(assert (=> b!4844231 (=> (not res!2066023) (not e!3027630))))

(declare-fun addToMapMapFromBucket!1931 (List!55549 ListMap!7143) ListMap!7143)

(assert (=> b!4844231 (= res!2066023 (= lt!1987548 (addToMapMapFromBucket!1931 (_2!32790 (h!61863 (toList!7805 lm!2671))) lt!1987555)))))

(declare-fun extractMap!2791 (List!55550) ListMap!7143)

(assert (=> b!4844231 (= lt!1987548 (extractMap!2791 (toList!7805 lm!2671)))))

(assert (=> b!4844231 (= lt!1987555 (extractMap!2791 (t!363046 (toList!7805 lm!2671))))))

(declare-fun b!4844232 () Bool)

(declare-fun res!2066016 () Bool)

(assert (=> b!4844232 (=> (not res!2066016) (not e!3027631))))

(assert (=> b!4844232 (= res!2066016 (is-Cons!55426 (toList!7805 lm!2671)))))

(declare-fun res!2066020 () Bool)

(assert (=> start!504354 (=> (not res!2066020) (not e!3027631))))

(declare-fun lambda!242037 () Int)

(declare-fun forall!12886 (List!55550 Int) Bool)

(assert (=> start!504354 (= res!2066020 (forall!12886 (toList!7805 lm!2671) lambda!242037))))

(assert (=> start!504354 e!3027631))

(declare-fun inv!71093 (ListLongMap!6361) Bool)

(assert (=> start!504354 (and (inv!71093 lm!2671) e!3027629)))

(assert (=> start!504354 true))

(declare-fun tp_is_empty!35009 () Bool)

(assert (=> start!504354 tp_is_empty!35009))

(declare-fun b!4844233 () Bool)

(assert (=> b!4844233 (= e!3027632 e!3027628)))

(declare-fun res!2066017 () Bool)

(assert (=> b!4844233 (=> res!2066017 e!3027628)))

(assert (=> b!4844233 (= res!2066017 (not (contains!19127 lt!1987555 key!6540)))))

(declare-fun lt!1987549 () ListLongMap!6361)

(assert (=> b!4844233 (contains!19127 (extractMap!2791 (toList!7805 lt!1987549)) key!6540)))

(declare-fun lt!1987556 () Unit!145577)

(declare-fun lemmaListContainsThenExtractedMapContains!755 (ListLongMap!6361 K!17192 Hashable!7449) Unit!145577)

(assert (=> b!4844233 (= lt!1987556 (lemmaListContainsThenExtractedMapContains!755 lt!1987549 key!6540 hashF!1662))))

(declare-fun tail!9518 (ListLongMap!6361) ListLongMap!6361)

(assert (=> b!4844233 (= lt!1987549 (tail!9518 lm!2671))))

(declare-fun b!4844234 () Bool)

(declare-fun e!3027633 () Bool)

(declare-fun containsKey!4620 (List!55549 K!17192) Bool)

(assert (=> b!4844234 (= e!3027633 (not (containsKey!4620 (_2!32790 (h!61863 (toList!7805 lm!2671))) key!6540)))))

(declare-fun b!4844235 () Bool)

(declare-fun res!2066022 () Bool)

(assert (=> b!4844235 (=> (not res!2066022) (not e!3027631))))

(assert (=> b!4844235 (= res!2066022 e!3027633)))

(declare-fun res!2066018 () Bool)

(assert (=> b!4844235 (=> res!2066018 e!3027633)))

(assert (=> b!4844235 (= res!2066018 (not (is-Cons!55426 (toList!7805 lm!2671))))))

(declare-fun b!4844236 () Bool)

(declare-fun res!2066021 () Bool)

(assert (=> b!4844236 (=> (not res!2066021) (not e!3027631))))

(assert (=> b!4844236 (= res!2066021 (containsKeyBiggerList!733 (toList!7805 lm!2671) key!6540))))

(assert (= (and start!504354 res!2066020) b!4844228))

(assert (= (and b!4844228 res!2066019) b!4844236))

(assert (= (and b!4844236 res!2066021) b!4844235))

(assert (= (and b!4844235 (not res!2066018)) b!4844234))

(assert (= (and b!4844235 res!2066022) b!4844232))

(assert (= (and b!4844232 res!2066016) b!4844231))

(assert (= (and b!4844231 res!2066023) b!4844227))

(assert (= (and b!4844227 (not res!2066015)) b!4844233))

(assert (= (and b!4844233 (not res!2066017)) b!4844230))

(assert (= start!504354 b!4844229))

(declare-fun m!5842736 () Bool)

(assert (=> b!4844227 m!5842736))

(declare-fun m!5842738 () Bool)

(assert (=> b!4844227 m!5842738))

(assert (=> b!4844227 m!5842738))

(declare-fun m!5842740 () Bool)

(assert (=> b!4844227 m!5842740))

(declare-fun m!5842742 () Bool)

(assert (=> b!4844227 m!5842742))

(declare-fun m!5842744 () Bool)

(assert (=> b!4844236 m!5842744))

(declare-fun m!5842746 () Bool)

(assert (=> b!4844231 m!5842746))

(declare-fun m!5842748 () Bool)

(assert (=> b!4844231 m!5842748))

(declare-fun m!5842750 () Bool)

(assert (=> b!4844231 m!5842750))

(declare-fun m!5842752 () Bool)

(assert (=> b!4844234 m!5842752))

(declare-fun m!5842754 () Bool)

(assert (=> b!4844233 m!5842754))

(declare-fun m!5842756 () Bool)

(assert (=> b!4844233 m!5842756))

(declare-fun m!5842758 () Bool)

(assert (=> b!4844233 m!5842758))

(assert (=> b!4844233 m!5842758))

(declare-fun m!5842760 () Bool)

(assert (=> b!4844233 m!5842760))

(declare-fun m!5842762 () Bool)

(assert (=> b!4844233 m!5842762))

(declare-fun m!5842764 () Bool)

(assert (=> b!4844228 m!5842764))

(declare-fun m!5842766 () Bool)

(assert (=> b!4844230 m!5842766))

(declare-fun m!5842768 () Bool)

(assert (=> b!4844230 m!5842768))

(declare-fun m!5842770 () Bool)

(assert (=> b!4844230 m!5842770))

(declare-fun m!5842772 () Bool)

(assert (=> b!4844230 m!5842772))

(declare-fun m!5842774 () Bool)

(assert (=> b!4844230 m!5842774))

(declare-fun m!5842776 () Bool)

(assert (=> b!4844230 m!5842776))

(assert (=> b!4844230 m!5842772))

(declare-fun m!5842778 () Bool)

(assert (=> start!504354 m!5842778))

(declare-fun m!5842780 () Bool)

(assert (=> start!504354 m!5842780))

(push 1)

(assert (not b!4844233))

(assert (not start!504354))

(assert (not b!4844236))

(assert (not b!4844231))

(assert (not b!4844229))

(assert tp_is_empty!35009)

(assert (not b!4844228))

(assert (not b!4844230))

(assert (not b!4844234))

(assert (not b!4844227))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1554156 () Bool)

(declare-fun lt!1987586 () Bool)

(declare-fun content!9860 (List!55549) (Set tuple2!58990))

(assert (=> d!1554156 (= lt!1987586 (set.member lt!1987554 (content!9860 (toList!7806 lt!1987555))))))

(declare-fun e!3027657 () Bool)

(assert (=> d!1554156 (= lt!1987586 e!3027657)))

(declare-fun res!2066055 () Bool)

(assert (=> d!1554156 (=> (not res!2066055) (not e!3027657))))

(assert (=> d!1554156 (= res!2066055 (is-Cons!55425 (toList!7806 lt!1987555)))))

(assert (=> d!1554156 (= (contains!19128 (toList!7806 lt!1987555) lt!1987554) lt!1987586)))

(declare-fun b!4844275 () Bool)

(declare-fun e!3027656 () Bool)

(assert (=> b!4844275 (= e!3027657 e!3027656)))

(declare-fun res!2066056 () Bool)

(assert (=> b!4844275 (=> res!2066056 e!3027656)))

(assert (=> b!4844275 (= res!2066056 (= (h!61862 (toList!7806 lt!1987555)) lt!1987554))))

(declare-fun b!4844276 () Bool)

(assert (=> b!4844276 (= e!3027656 (contains!19128 (t!363045 (toList!7806 lt!1987555)) lt!1987554))))

(assert (= (and d!1554156 res!2066055) b!4844275))

(assert (= (and b!4844275 (not res!2066056)) b!4844276))

(declare-fun m!5842828 () Bool)

(assert (=> d!1554156 m!5842828))

(declare-fun m!5842830 () Bool)

(assert (=> d!1554156 m!5842830))

(declare-fun m!5842832 () Bool)

(assert (=> b!4844276 m!5842832))

(assert (=> b!4844230 d!1554156))

(declare-fun d!1554158 () Bool)

(assert (=> d!1554158 (= (get!18972 (getValueByKey!2715 (toList!7806 lt!1987555) key!6540)) (v!49362 (getValueByKey!2715 (toList!7806 lt!1987555) key!6540)))))

(assert (=> b!4844230 d!1554158))

(declare-fun d!1554160 () Bool)

(assert (=> d!1554160 (contains!19128 (toList!7806 lt!1987555) (tuple2!58991 key!6540 lt!1987552))))

(declare-fun lt!1987589 () Unit!145577)

(declare-fun choose!35408 (ListMap!7143 K!17192 V!17438) Unit!145577)

(assert (=> d!1554160 (= lt!1987589 (choose!35408 lt!1987555 key!6540 lt!1987552))))

(assert (=> d!1554160 (contains!19127 lt!1987555 key!6540)))

(assert (=> d!1554160 (= (lemmaGetValueImpliesTupleContained!734 lt!1987555 key!6540 lt!1987552) lt!1987589)))

(declare-fun bs!1172134 () Bool)

(assert (= bs!1172134 d!1554160))

(declare-fun m!5842834 () Bool)

(assert (=> bs!1172134 m!5842834))

(declare-fun m!5842836 () Bool)

(assert (=> bs!1172134 m!5842836))

(assert (=> bs!1172134 m!5842762))

(assert (=> b!4844230 d!1554160))

(declare-fun d!1554162 () Bool)

(declare-fun dynLambda!22319 (Int tuple2!58990) Bool)

(assert (=> d!1554162 (dynLambda!22319 lambda!242038 lt!1987554)))

(declare-fun lt!1987592 () Unit!145577)

(declare-fun choose!35409 (List!55549 Int tuple2!58990) Unit!145577)

(assert (=> d!1554162 (= lt!1987592 (choose!35409 (toList!7806 lt!1987555) lambda!242038 lt!1987554))))

(declare-fun e!3027660 () Bool)

(assert (=> d!1554162 e!3027660))

(declare-fun res!2066059 () Bool)

(assert (=> d!1554162 (=> (not res!2066059) (not e!3027660))))

(declare-fun forall!12888 (List!55549 Int) Bool)

(assert (=> d!1554162 (= res!2066059 (forall!12888 (toList!7806 lt!1987555) lambda!242038))))

(assert (=> d!1554162 (= (forallContained!4508 (toList!7806 lt!1987555) lambda!242038 lt!1987554) lt!1987592)))

(declare-fun b!4844280 () Bool)

(assert (=> b!4844280 (= e!3027660 (contains!19128 (toList!7806 lt!1987555) lt!1987554))))

(assert (= (and d!1554162 res!2066059) b!4844280))

(declare-fun b_lambda!192219 () Bool)

(assert (=> (not b_lambda!192219) (not d!1554162)))

(declare-fun m!5842838 () Bool)

(assert (=> d!1554162 m!5842838))

(declare-fun m!5842840 () Bool)

(assert (=> d!1554162 m!5842840))

(declare-fun m!5842842 () Bool)

(assert (=> d!1554162 m!5842842))

(assert (=> b!4844280 m!5842776))

(assert (=> b!4844230 d!1554162))

(declare-fun b!4844289 () Bool)

(declare-fun e!3027665 () Option!13621)

(assert (=> b!4844289 (= e!3027665 (Some!13620 (_2!32789 (h!61862 (toList!7806 lt!1987555)))))))

(declare-fun d!1554164 () Bool)

(declare-fun c!824837 () Bool)

(assert (=> d!1554164 (= c!824837 (and (is-Cons!55425 (toList!7806 lt!1987555)) (= (_1!32789 (h!61862 (toList!7806 lt!1987555))) key!6540)))))

(assert (=> d!1554164 (= (getValueByKey!2715 (toList!7806 lt!1987555) key!6540) e!3027665)))

(declare-fun b!4844292 () Bool)

(declare-fun e!3027666 () Option!13621)

(assert (=> b!4844292 (= e!3027666 None!13620)))

(declare-fun b!4844290 () Bool)

(assert (=> b!4844290 (= e!3027665 e!3027666)))

(declare-fun c!824838 () Bool)

(assert (=> b!4844290 (= c!824838 (and (is-Cons!55425 (toList!7806 lt!1987555)) (not (= (_1!32789 (h!61862 (toList!7806 lt!1987555))) key!6540))))))

(declare-fun b!4844291 () Bool)

(assert (=> b!4844291 (= e!3027666 (getValueByKey!2715 (t!363045 (toList!7806 lt!1987555)) key!6540))))

(assert (= (and d!1554164 c!824837) b!4844289))

(assert (= (and d!1554164 (not c!824837)) b!4844290))

(assert (= (and b!4844290 c!824838) b!4844291))

(assert (= (and b!4844290 (not c!824838)) b!4844292))

(declare-fun m!5842844 () Bool)

(assert (=> b!4844291 m!5842844))

(assert (=> b!4844230 d!1554164))

(declare-fun b!4844319 () Bool)

(declare-fun e!3027690 () Unit!145577)

(declare-fun e!3027693 () Unit!145577)

(assert (=> b!4844319 (= e!3027690 e!3027693)))

(declare-fun c!824847 () Bool)

(declare-fun call!337650 () Bool)

(assert (=> b!4844319 (= c!824847 call!337650)))

(declare-fun b!4844321 () Bool)

(assert (=> b!4844321 false))

(declare-fun lt!1987615 () Unit!145577)

(declare-fun lt!1987610 () Unit!145577)

(assert (=> b!4844321 (= lt!1987615 lt!1987610)))

(declare-fun containsKey!4622 (List!55549 K!17192) Bool)

(assert (=> b!4844321 (containsKey!4622 (toList!7806 lt!1987548) key!6540)))

(declare-fun lemmaInGetKeysListThenContainsKey!1214 (List!55549 K!17192) Unit!145577)

(assert (=> b!4844321 (= lt!1987610 (lemmaInGetKeysListThenContainsKey!1214 (toList!7806 lt!1987548) key!6540))))

(declare-fun Unit!145581 () Unit!145577)

(assert (=> b!4844321 (= e!3027693 Unit!145581)))

(declare-fun b!4844322 () Bool)

(declare-fun e!3027685 () Bool)

(declare-datatypes ((List!55553 0))(
  ( (Nil!55429) (Cons!55429 (h!61866 K!17192) (t!363049 List!55553)) )
))
(declare-fun contains!19131 (List!55553 K!17192) Bool)

(declare-fun keys!20499 (ListMap!7143) List!55553)

(assert (=> b!4844322 (= e!3027685 (not (contains!19131 (keys!20499 lt!1987548) key!6540)))))

(declare-fun b!4844323 () Bool)

(declare-fun e!3027686 () List!55553)

(declare-fun getKeysList!1214 (List!55549) List!55553)

(assert (=> b!4844323 (= e!3027686 (getKeysList!1214 (toList!7806 lt!1987548)))))

(declare-fun b!4844324 () Bool)

(declare-fun e!3027687 () Bool)

(assert (=> b!4844324 (= e!3027687 (contains!19131 (keys!20499 lt!1987548) key!6540))))

(declare-fun b!4844325 () Bool)

(assert (=> b!4844325 (= e!3027686 (keys!20499 lt!1987548))))

(declare-fun d!1554166 () Bool)

(declare-fun e!3027689 () Bool)

(assert (=> d!1554166 e!3027689))

(declare-fun res!2066076 () Bool)

(assert (=> d!1554166 (=> res!2066076 e!3027689)))

(assert (=> d!1554166 (= res!2066076 e!3027685)))

(declare-fun res!2066072 () Bool)

(assert (=> d!1554166 (=> (not res!2066072) (not e!3027685))))

(declare-fun lt!1987609 () Bool)

(assert (=> d!1554166 (= res!2066072 (not lt!1987609))))

(declare-fun lt!1987612 () Bool)

(assert (=> d!1554166 (= lt!1987609 lt!1987612)))

(declare-fun lt!1987613 () Unit!145577)

(assert (=> d!1554166 (= lt!1987613 e!3027690)))

(declare-fun c!824845 () Bool)

(assert (=> d!1554166 (= c!824845 lt!1987612)))

(assert (=> d!1554166 (= lt!1987612 (containsKey!4622 (toList!7806 lt!1987548) key!6540))))

(assert (=> d!1554166 (= (contains!19127 lt!1987548 key!6540) lt!1987609)))

(declare-fun b!4844326 () Bool)

(declare-fun lt!1987616 () Unit!145577)

(assert (=> b!4844326 (= e!3027690 lt!1987616)))

(declare-fun lt!1987614 () Unit!145577)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2487 (List!55549 K!17192) Unit!145577)

(assert (=> b!4844326 (= lt!1987614 (lemmaContainsKeyImpliesGetValueByKeyDefined!2487 (toList!7806 lt!1987548) key!6540))))

(declare-fun isDefined!10714 (Option!13621) Bool)

(assert (=> b!4844326 (isDefined!10714 (getValueByKey!2715 (toList!7806 lt!1987548) key!6540))))

(declare-fun lt!1987611 () Unit!145577)

(assert (=> b!4844326 (= lt!1987611 lt!1987614)))

(declare-fun lemmaInListThenGetKeysListContains!1209 (List!55549 K!17192) Unit!145577)

(assert (=> b!4844326 (= lt!1987616 (lemmaInListThenGetKeysListContains!1209 (toList!7806 lt!1987548) key!6540))))

(assert (=> b!4844326 call!337650))

(declare-fun bm!337645 () Bool)

(assert (=> bm!337645 (= call!337650 (contains!19131 e!3027686 key!6540))))

(declare-fun c!824846 () Bool)

(assert (=> bm!337645 (= c!824846 c!824845)))

(declare-fun b!4844327 () Bool)

(assert (=> b!4844327 (= e!3027689 e!3027687)))

(declare-fun res!2066075 () Bool)

(assert (=> b!4844327 (=> (not res!2066075) (not e!3027687))))

(assert (=> b!4844327 (= res!2066075 (isDefined!10714 (getValueByKey!2715 (toList!7806 lt!1987548) key!6540)))))

(declare-fun b!4844328 () Bool)

(declare-fun Unit!145582 () Unit!145577)

(assert (=> b!4844328 (= e!3027693 Unit!145582)))

(assert (= (and d!1554166 c!824845) b!4844326))

(assert (= (and d!1554166 (not c!824845)) b!4844319))

(assert (= (and b!4844319 c!824847) b!4844321))

(assert (= (and b!4844319 (not c!824847)) b!4844328))

(assert (= (or b!4844326 b!4844319) bm!337645))

(assert (= (and bm!337645 c!824846) b!4844323))

(assert (= (and bm!337645 (not c!824846)) b!4844325))

(assert (= (and d!1554166 res!2066072) b!4844322))

(assert (= (and d!1554166 (not res!2066076)) b!4844327))

(assert (= (and b!4844327 res!2066075) b!4844324))

(declare-fun m!5842848 () Bool)

(assert (=> b!4844326 m!5842848))

(declare-fun m!5842850 () Bool)

(assert (=> b!4844326 m!5842850))

(assert (=> b!4844326 m!5842850))

(declare-fun m!5842852 () Bool)

(assert (=> b!4844326 m!5842852))

(declare-fun m!5842854 () Bool)

(assert (=> b!4844326 m!5842854))

(assert (=> b!4844327 m!5842850))

(assert (=> b!4844327 m!5842850))

(assert (=> b!4844327 m!5842852))

(declare-fun m!5842858 () Bool)

(assert (=> b!4844321 m!5842858))

(declare-fun m!5842860 () Bool)

(assert (=> b!4844321 m!5842860))

(declare-fun m!5842862 () Bool)

(assert (=> b!4844325 m!5842862))

(declare-fun m!5842864 () Bool)

(assert (=> b!4844323 m!5842864))

(assert (=> d!1554166 m!5842858))

(assert (=> b!4844322 m!5842862))

(assert (=> b!4844322 m!5842862))

(declare-fun m!5842866 () Bool)

(assert (=> b!4844322 m!5842866))

(declare-fun m!5842868 () Bool)

(assert (=> bm!337645 m!5842868))

(assert (=> b!4844324 m!5842862))

(assert (=> b!4844324 m!5842862))

(assert (=> b!4844324 m!5842866))

(assert (=> b!4844230 d!1554166))

(declare-fun d!1554172 () Bool)

(declare-fun res!2066088 () Bool)

(declare-fun e!3027704 () Bool)

(assert (=> d!1554172 (=> res!2066088 e!3027704)))

(declare-fun e!3027703 () Bool)

(assert (=> d!1554172 (= res!2066088 e!3027703)))

(declare-fun res!2066087 () Bool)

(assert (=> d!1554172 (=> (not res!2066087) (not e!3027703))))

(assert (=> d!1554172 (= res!2066087 (is-Cons!55426 (toList!7805 lm!2671)))))

(assert (=> d!1554172 (= (containsKeyBiggerList!733 (toList!7805 lm!2671) key!6540) e!3027704)))

(declare-fun b!4844338 () Bool)

(assert (=> b!4844338 (= e!3027703 (containsKey!4620 (_2!32790 (h!61863 (toList!7805 lm!2671))) key!6540))))

(declare-fun b!4844339 () Bool)

(declare-fun e!3027705 () Bool)

(assert (=> b!4844339 (= e!3027704 e!3027705)))

(declare-fun res!2066089 () Bool)

(assert (=> b!4844339 (=> (not res!2066089) (not e!3027705))))

(assert (=> b!4844339 (= res!2066089 (is-Cons!55426 (toList!7805 lm!2671)))))

(declare-fun b!4844340 () Bool)

(assert (=> b!4844340 (= e!3027705 (containsKeyBiggerList!733 (t!363046 (toList!7805 lm!2671)) key!6540))))

(assert (= (and d!1554172 res!2066087) b!4844338))

(assert (= (and d!1554172 (not res!2066088)) b!4844339))

(assert (= (and b!4844339 res!2066089) b!4844340))

(assert (=> b!4844338 m!5842752))

(assert (=> b!4844340 m!5842736))

(assert (=> b!4844236 d!1554172))

(declare-fun bs!1172137 () Bool)

(declare-fun b!4844351 () Bool)

(assert (= bs!1172137 (and b!4844351 b!4844230)))

(declare-fun lambda!242076 () Int)

(assert (=> bs!1172137 (= (= lt!1987555 lt!1987548) (= lambda!242076 lambda!242038))))

(assert (=> b!4844351 true))

(declare-fun bs!1172138 () Bool)

(declare-fun b!4844355 () Bool)

(assert (= bs!1172138 (and b!4844355 b!4844230)))

(declare-fun lambda!242077 () Int)

(assert (=> bs!1172138 (= (= lt!1987555 lt!1987548) (= lambda!242077 lambda!242038))))

(declare-fun bs!1172139 () Bool)

(assert (= bs!1172139 (and b!4844355 b!4844351)))

(assert (=> bs!1172139 (= lambda!242077 lambda!242076)))

(assert (=> b!4844355 true))

(declare-fun lt!1987679 () ListMap!7143)

(declare-fun lambda!242078 () Int)

(assert (=> bs!1172138 (= (= lt!1987679 lt!1987548) (= lambda!242078 lambda!242038))))

(assert (=> bs!1172139 (= (= lt!1987679 lt!1987555) (= lambda!242078 lambda!242076))))

(assert (=> b!4844355 (= (= lt!1987679 lt!1987555) (= lambda!242078 lambda!242077))))

(assert (=> b!4844355 true))

(declare-fun bs!1172140 () Bool)

(declare-fun d!1554178 () Bool)

(assert (= bs!1172140 (and d!1554178 b!4844230)))

(declare-fun lambda!242079 () Int)

(declare-fun lt!1987665 () ListMap!7143)

(assert (=> bs!1172140 (= (= lt!1987665 lt!1987548) (= lambda!242079 lambda!242038))))

(declare-fun bs!1172141 () Bool)

(assert (= bs!1172141 (and d!1554178 b!4844351)))

(assert (=> bs!1172141 (= (= lt!1987665 lt!1987555) (= lambda!242079 lambda!242076))))

(declare-fun bs!1172142 () Bool)

(assert (= bs!1172142 (and d!1554178 b!4844355)))

(assert (=> bs!1172142 (= (= lt!1987665 lt!1987555) (= lambda!242079 lambda!242077))))

(assert (=> bs!1172142 (= (= lt!1987665 lt!1987679) (= lambda!242079 lambda!242078))))

(assert (=> d!1554178 true))

(declare-fun c!824850 () Bool)

(declare-fun call!337658 () Bool)

(declare-fun bm!337652 () Bool)

(assert (=> bm!337652 (= call!337658 (forall!12888 (toList!7806 lt!1987555) (ite c!824850 lambda!242076 lambda!242078)))))

(declare-fun e!3027712 () ListMap!7143)

(assert (=> b!4844351 (= e!3027712 lt!1987555)))

(declare-fun lt!1987678 () Unit!145577)

(declare-fun call!337657 () Unit!145577)

(assert (=> b!4844351 (= lt!1987678 call!337657)))

(assert (=> b!4844351 call!337658))

(declare-fun lt!1987670 () Unit!145577)

(assert (=> b!4844351 (= lt!1987670 lt!1987678)))

(declare-fun call!337659 () Bool)

(assert (=> b!4844351 call!337659))

(declare-fun lt!1987681 () Unit!145577)

(declare-fun Unit!145583 () Unit!145577)

(assert (=> b!4844351 (= lt!1987681 Unit!145583)))

(declare-fun b!4844352 () Bool)

(declare-fun res!2066096 () Bool)

(declare-fun e!3027714 () Bool)

(assert (=> b!4844352 (=> (not res!2066096) (not e!3027714))))

(assert (=> b!4844352 (= res!2066096 (forall!12888 (toList!7806 lt!1987555) lambda!242079))))

(declare-fun b!4844353 () Bool)

(declare-fun invariantList!1888 (List!55549) Bool)

(assert (=> b!4844353 (= e!3027714 (invariantList!1888 (toList!7806 lt!1987665)))))

(declare-fun b!4844354 () Bool)

(declare-fun e!3027713 () Bool)

(assert (=> b!4844354 (= e!3027713 (forall!12888 (toList!7806 lt!1987555) lambda!242078))))

(assert (=> b!4844355 (= e!3027712 lt!1987679)))

(declare-fun lt!1987671 () ListMap!7143)

(declare-fun +!2622 (ListMap!7143 tuple2!58990) ListMap!7143)

(assert (=> b!4844355 (= lt!1987671 (+!2622 lt!1987555 (h!61862 (_2!32790 (h!61863 (toList!7805 lm!2671))))))))

(assert (=> b!4844355 (= lt!1987679 (addToMapMapFromBucket!1931 (t!363045 (_2!32790 (h!61863 (toList!7805 lm!2671)))) (+!2622 lt!1987555 (h!61862 (_2!32790 (h!61863 (toList!7805 lm!2671)))))))))

(declare-fun lt!1987663 () Unit!145577)

(assert (=> b!4844355 (= lt!1987663 call!337657)))

(assert (=> b!4844355 (forall!12888 (toList!7806 lt!1987555) lambda!242077)))

(declare-fun lt!1987674 () Unit!145577)

(assert (=> b!4844355 (= lt!1987674 lt!1987663)))

(assert (=> b!4844355 (forall!12888 (toList!7806 lt!1987671) lambda!242078)))

(declare-fun lt!1987672 () Unit!145577)

(declare-fun Unit!145584 () Unit!145577)

(assert (=> b!4844355 (= lt!1987672 Unit!145584)))

(assert (=> b!4844355 (forall!12888 (t!363045 (_2!32790 (h!61863 (toList!7805 lm!2671)))) lambda!242078)))

(declare-fun lt!1987673 () Unit!145577)

(declare-fun Unit!145585 () Unit!145577)

(assert (=> b!4844355 (= lt!1987673 Unit!145585)))

(declare-fun lt!1987675 () Unit!145577)

(declare-fun Unit!145586 () Unit!145577)

(assert (=> b!4844355 (= lt!1987675 Unit!145586)))

(declare-fun lt!1987664 () Unit!145577)

(assert (=> b!4844355 (= lt!1987664 (forallContained!4508 (toList!7806 lt!1987671) lambda!242078 (h!61862 (_2!32790 (h!61863 (toList!7805 lm!2671))))))))

(assert (=> b!4844355 (contains!19127 lt!1987671 (_1!32789 (h!61862 (_2!32790 (h!61863 (toList!7805 lm!2671))))))))

(declare-fun lt!1987676 () Unit!145577)

(declare-fun Unit!145587 () Unit!145577)

(assert (=> b!4844355 (= lt!1987676 Unit!145587)))

(assert (=> b!4844355 (contains!19127 lt!1987679 (_1!32789 (h!61862 (_2!32790 (h!61863 (toList!7805 lm!2671))))))))

(declare-fun lt!1987662 () Unit!145577)

(declare-fun Unit!145588 () Unit!145577)

(assert (=> b!4844355 (= lt!1987662 Unit!145588)))

(assert (=> b!4844355 (forall!12888 (_2!32790 (h!61863 (toList!7805 lm!2671))) lambda!242078)))

(declare-fun lt!1987668 () Unit!145577)

(declare-fun Unit!145589 () Unit!145577)

(assert (=> b!4844355 (= lt!1987668 Unit!145589)))

(assert (=> b!4844355 call!337659))

(declare-fun lt!1987677 () Unit!145577)

(declare-fun Unit!145590 () Unit!145577)

(assert (=> b!4844355 (= lt!1987677 Unit!145590)))

(declare-fun lt!1987667 () Unit!145577)

(declare-fun Unit!145591 () Unit!145577)

(assert (=> b!4844355 (= lt!1987667 Unit!145591)))

(declare-fun lt!1987680 () Unit!145577)

(declare-fun addForallContainsKeyThenBeforeAdding!1060 (ListMap!7143 ListMap!7143 K!17192 V!17438) Unit!145577)

(assert (=> b!4844355 (= lt!1987680 (addForallContainsKeyThenBeforeAdding!1060 lt!1987555 lt!1987679 (_1!32789 (h!61862 (_2!32790 (h!61863 (toList!7805 lm!2671))))) (_2!32789 (h!61862 (_2!32790 (h!61863 (toList!7805 lm!2671)))))))))

(assert (=> b!4844355 (forall!12888 (toList!7806 lt!1987555) lambda!242078)))

(declare-fun lt!1987669 () Unit!145577)

(assert (=> b!4844355 (= lt!1987669 lt!1987680)))

(assert (=> b!4844355 call!337658))

(declare-fun lt!1987682 () Unit!145577)

(declare-fun Unit!145592 () Unit!145577)

(assert (=> b!4844355 (= lt!1987682 Unit!145592)))

(declare-fun res!2066098 () Bool)

(assert (=> b!4844355 (= res!2066098 (forall!12888 (_2!32790 (h!61863 (toList!7805 lm!2671))) lambda!242078))))

(assert (=> b!4844355 (=> (not res!2066098) (not e!3027713))))

(assert (=> b!4844355 e!3027713))

(declare-fun lt!1987666 () Unit!145577)

(declare-fun Unit!145593 () Unit!145577)

(assert (=> b!4844355 (= lt!1987666 Unit!145593)))

(assert (=> d!1554178 e!3027714))

(declare-fun res!2066097 () Bool)

(assert (=> d!1554178 (=> (not res!2066097) (not e!3027714))))

(assert (=> d!1554178 (= res!2066097 (forall!12888 (_2!32790 (h!61863 (toList!7805 lm!2671))) lambda!242079))))

(assert (=> d!1554178 (= lt!1987665 e!3027712)))

(assert (=> d!1554178 (= c!824850 (is-Nil!55425 (_2!32790 (h!61863 (toList!7805 lm!2671)))))))

(declare-fun noDuplicateKeys!2556 (List!55549) Bool)

(assert (=> d!1554178 (noDuplicateKeys!2556 (_2!32790 (h!61863 (toList!7805 lm!2671))))))

(assert (=> d!1554178 (= (addToMapMapFromBucket!1931 (_2!32790 (h!61863 (toList!7805 lm!2671))) lt!1987555) lt!1987665)))

(declare-fun bm!337653 () Bool)

(assert (=> bm!337653 (= call!337659 (forall!12888 (ite c!824850 (toList!7806 lt!1987555) (toList!7806 lt!1987671)) (ite c!824850 lambda!242076 lambda!242078)))))

(declare-fun bm!337654 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1062 (ListMap!7143) Unit!145577)

(assert (=> bm!337654 (= call!337657 (lemmaContainsAllItsOwnKeys!1062 lt!1987555))))

(assert (= (and d!1554178 c!824850) b!4844351))

(assert (= (and d!1554178 (not c!824850)) b!4844355))

(assert (= (and b!4844355 res!2066098) b!4844354))

(assert (= (or b!4844351 b!4844355) bm!337654))

(assert (= (or b!4844351 b!4844355) bm!337652))

(assert (= (or b!4844351 b!4844355) bm!337653))

(assert (= (and d!1554178 res!2066097) b!4844352))

(assert (= (and b!4844352 res!2066096) b!4844353))

(declare-fun m!5842878 () Bool)

(assert (=> bm!337653 m!5842878))

(declare-fun m!5842880 () Bool)

(assert (=> b!4844353 m!5842880))

(declare-fun m!5842882 () Bool)

(assert (=> b!4844352 m!5842882))

(declare-fun m!5842884 () Bool)

(assert (=> bm!337652 m!5842884))

(declare-fun m!5842886 () Bool)

(assert (=> bm!337654 m!5842886))

(declare-fun m!5842888 () Bool)

(assert (=> b!4844355 m!5842888))

(declare-fun m!5842890 () Bool)

(assert (=> b!4844355 m!5842890))

(declare-fun m!5842892 () Bool)

(assert (=> b!4844355 m!5842892))

(declare-fun m!5842894 () Bool)

(assert (=> b!4844355 m!5842894))

(declare-fun m!5842896 () Bool)

(assert (=> b!4844355 m!5842896))

(declare-fun m!5842898 () Bool)

(assert (=> b!4844355 m!5842898))

(declare-fun m!5842900 () Bool)

(assert (=> b!4844355 m!5842900))

(declare-fun m!5842902 () Bool)

(assert (=> b!4844355 m!5842902))

(declare-fun m!5842904 () Bool)

(assert (=> b!4844355 m!5842904))

(declare-fun m!5842906 () Bool)

(assert (=> b!4844355 m!5842906))

(declare-fun m!5842908 () Bool)

(assert (=> b!4844355 m!5842908))

(assert (=> b!4844355 m!5842904))

(assert (=> b!4844355 m!5842908))

(assert (=> b!4844354 m!5842902))

(declare-fun m!5842910 () Bool)

(assert (=> d!1554178 m!5842910))

(declare-fun m!5842912 () Bool)

(assert (=> d!1554178 m!5842912))

(assert (=> b!4844231 d!1554178))

(declare-fun bs!1172143 () Bool)

(declare-fun d!1554182 () Bool)

(assert (= bs!1172143 (and d!1554182 start!504354)))

(declare-fun lambda!242082 () Int)

(assert (=> bs!1172143 (= lambda!242082 lambda!242037)))

(declare-fun lt!1987685 () ListMap!7143)

(assert (=> d!1554182 (invariantList!1888 (toList!7806 lt!1987685))))

(declare-fun e!3027717 () ListMap!7143)

(assert (=> d!1554182 (= lt!1987685 e!3027717)))

(declare-fun c!824853 () Bool)

(assert (=> d!1554182 (= c!824853 (is-Cons!55426 (toList!7805 lm!2671)))))

(assert (=> d!1554182 (forall!12886 (toList!7805 lm!2671) lambda!242082)))

(assert (=> d!1554182 (= (extractMap!2791 (toList!7805 lm!2671)) lt!1987685)))

(declare-fun b!4844360 () Bool)

(assert (=> b!4844360 (= e!3027717 (addToMapMapFromBucket!1931 (_2!32790 (h!61863 (toList!7805 lm!2671))) (extractMap!2791 (t!363046 (toList!7805 lm!2671)))))))

(declare-fun b!4844361 () Bool)

(assert (=> b!4844361 (= e!3027717 (ListMap!7144 Nil!55425))))

(assert (= (and d!1554182 c!824853) b!4844360))

(assert (= (and d!1554182 (not c!824853)) b!4844361))

(declare-fun m!5842914 () Bool)

(assert (=> d!1554182 m!5842914))

(declare-fun m!5842916 () Bool)

(assert (=> d!1554182 m!5842916))

(assert (=> b!4844360 m!5842750))

(assert (=> b!4844360 m!5842750))

(declare-fun m!5842918 () Bool)

(assert (=> b!4844360 m!5842918))

(assert (=> b!4844231 d!1554182))

(declare-fun bs!1172144 () Bool)

(declare-fun d!1554184 () Bool)

(assert (= bs!1172144 (and d!1554184 start!504354)))

(declare-fun lambda!242083 () Int)

(assert (=> bs!1172144 (= lambda!242083 lambda!242037)))

(declare-fun bs!1172145 () Bool)

(assert (= bs!1172145 (and d!1554184 d!1554182)))

(assert (=> bs!1172145 (= lambda!242083 lambda!242082)))

(declare-fun lt!1987686 () ListMap!7143)

(assert (=> d!1554184 (invariantList!1888 (toList!7806 lt!1987686))))

(declare-fun e!3027718 () ListMap!7143)

(assert (=> d!1554184 (= lt!1987686 e!3027718)))

(declare-fun c!824854 () Bool)

(assert (=> d!1554184 (= c!824854 (is-Cons!55426 (t!363046 (toList!7805 lm!2671))))))

(assert (=> d!1554184 (forall!12886 (t!363046 (toList!7805 lm!2671)) lambda!242083)))

(assert (=> d!1554184 (= (extractMap!2791 (t!363046 (toList!7805 lm!2671))) lt!1987686)))

(declare-fun b!4844362 () Bool)

(assert (=> b!4844362 (= e!3027718 (addToMapMapFromBucket!1931 (_2!32790 (h!61863 (t!363046 (toList!7805 lm!2671)))) (extractMap!2791 (t!363046 (t!363046 (toList!7805 lm!2671))))))))

(declare-fun b!4844363 () Bool)

(assert (=> b!4844363 (= e!3027718 (ListMap!7144 Nil!55425))))

(assert (= (and d!1554184 c!824854) b!4844362))

(assert (= (and d!1554184 (not c!824854)) b!4844363))

(declare-fun m!5842920 () Bool)

(assert (=> d!1554184 m!5842920))

(declare-fun m!5842922 () Bool)

(assert (=> d!1554184 m!5842922))

(declare-fun m!5842924 () Bool)

(assert (=> b!4844362 m!5842924))

(assert (=> b!4844362 m!5842924))

(declare-fun m!5842926 () Bool)

(assert (=> b!4844362 m!5842926))

(assert (=> b!4844231 d!1554184))

(declare-fun d!1554186 () Bool)

(declare-fun res!2066103 () Bool)

(declare-fun e!3027723 () Bool)

(assert (=> d!1554186 (=> res!2066103 e!3027723)))

(assert (=> d!1554186 (= res!2066103 (and (is-Cons!55425 (_2!32790 (h!61863 (toList!7805 lm!2671)))) (= (_1!32789 (h!61862 (_2!32790 (h!61863 (toList!7805 lm!2671))))) key!6540)))))

(assert (=> d!1554186 (= (containsKey!4620 (_2!32790 (h!61863 (toList!7805 lm!2671))) key!6540) e!3027723)))

(declare-fun b!4844368 () Bool)

(declare-fun e!3027724 () Bool)

(assert (=> b!4844368 (= e!3027723 e!3027724)))

(declare-fun res!2066104 () Bool)

(assert (=> b!4844368 (=> (not res!2066104) (not e!3027724))))

(assert (=> b!4844368 (= res!2066104 (is-Cons!55425 (_2!32790 (h!61863 (toList!7805 lm!2671)))))))

(declare-fun b!4844369 () Bool)

(assert (=> b!4844369 (= e!3027724 (containsKey!4620 (t!363045 (_2!32790 (h!61863 (toList!7805 lm!2671)))) key!6540))))

(assert (= (and d!1554186 (not res!2066103)) b!4844368))

(assert (= (and b!4844368 res!2066104) b!4844369))

(declare-fun m!5842928 () Bool)

(assert (=> b!4844369 m!5842928))

(assert (=> b!4844234 d!1554186))

(declare-fun d!1554188 () Bool)

(declare-fun res!2066109 () Bool)

(declare-fun e!3027729 () Bool)

(assert (=> d!1554188 (=> res!2066109 e!3027729)))

(assert (=> d!1554188 (= res!2066109 (is-Nil!55426 (toList!7805 lm!2671)))))

(assert (=> d!1554188 (= (forall!12886 (toList!7805 lm!2671) lambda!242037) e!3027729)))

(declare-fun b!4844374 () Bool)

(declare-fun e!3027730 () Bool)

(assert (=> b!4844374 (= e!3027729 e!3027730)))

(declare-fun res!2066110 () Bool)

(assert (=> b!4844374 (=> (not res!2066110) (not e!3027730))))

(declare-fun dynLambda!22320 (Int tuple2!58992) Bool)

(assert (=> b!4844374 (= res!2066110 (dynLambda!22320 lambda!242037 (h!61863 (toList!7805 lm!2671))))))

(declare-fun b!4844375 () Bool)

(assert (=> b!4844375 (= e!3027730 (forall!12886 (t!363046 (toList!7805 lm!2671)) lambda!242037))))

(assert (= (and d!1554188 (not res!2066109)) b!4844374))

(assert (= (and b!4844374 res!2066110) b!4844375))

(declare-fun b_lambda!192221 () Bool)

(assert (=> (not b_lambda!192221) (not b!4844374)))

(declare-fun m!5842930 () Bool)

(assert (=> b!4844374 m!5842930))

(declare-fun m!5842932 () Bool)

(assert (=> b!4844375 m!5842932))

(assert (=> start!504354 d!1554188))

(declare-fun d!1554190 () Bool)

(declare-fun isStrictlySorted!1055 (List!55550) Bool)

(assert (=> d!1554190 (= (inv!71093 lm!2671) (isStrictlySorted!1055 (toList!7805 lm!2671)))))

(declare-fun bs!1172146 () Bool)

(assert (= bs!1172146 d!1554190))

(declare-fun m!5842934 () Bool)

(assert (=> bs!1172146 m!5842934))

(assert (=> start!504354 d!1554190))

(declare-fun bs!1172147 () Bool)

(declare-fun d!1554192 () Bool)

(assert (= bs!1172147 (and d!1554192 start!504354)))

(declare-fun lambda!242086 () Int)

(assert (=> bs!1172147 (= lambda!242086 lambda!242037)))

(declare-fun bs!1172148 () Bool)

(assert (= bs!1172148 (and d!1554192 d!1554182)))

(assert (=> bs!1172148 (= lambda!242086 lambda!242082)))

(declare-fun bs!1172149 () Bool)

(assert (= bs!1172149 (and d!1554192 d!1554184)))

(assert (=> bs!1172149 (= lambda!242086 lambda!242083)))

(assert (=> d!1554192 (contains!19127 (extractMap!2791 (toList!7805 lt!1987549)) key!6540)))

(declare-fun lt!1987689 () Unit!145577)

(declare-fun choose!35410 (ListLongMap!6361 K!17192 Hashable!7449) Unit!145577)

(assert (=> d!1554192 (= lt!1987689 (choose!35410 lt!1987549 key!6540 hashF!1662))))

(assert (=> d!1554192 (forall!12886 (toList!7805 lt!1987549) lambda!242086)))

(assert (=> d!1554192 (= (lemmaListContainsThenExtractedMapContains!755 lt!1987549 key!6540 hashF!1662) lt!1987689)))

(declare-fun bs!1172150 () Bool)

(assert (= bs!1172150 d!1554192))

(assert (=> bs!1172150 m!5842758))

(assert (=> bs!1172150 m!5842758))

(assert (=> bs!1172150 m!5842760))

(declare-fun m!5842936 () Bool)

(assert (=> bs!1172150 m!5842936))

(declare-fun m!5842938 () Bool)

(assert (=> bs!1172150 m!5842938))

(assert (=> b!4844233 d!1554192))

(declare-fun bs!1172151 () Bool)

(declare-fun d!1554194 () Bool)

(assert (= bs!1172151 (and d!1554194 start!504354)))

(declare-fun lambda!242087 () Int)

(assert (=> bs!1172151 (= lambda!242087 lambda!242037)))

(declare-fun bs!1172152 () Bool)

(assert (= bs!1172152 (and d!1554194 d!1554182)))

(assert (=> bs!1172152 (= lambda!242087 lambda!242082)))

(declare-fun bs!1172153 () Bool)

(assert (= bs!1172153 (and d!1554194 d!1554184)))

(assert (=> bs!1172153 (= lambda!242087 lambda!242083)))

(declare-fun bs!1172154 () Bool)

(assert (= bs!1172154 (and d!1554194 d!1554192)))

(assert (=> bs!1172154 (= lambda!242087 lambda!242086)))

(declare-fun lt!1987690 () ListMap!7143)

(assert (=> d!1554194 (invariantList!1888 (toList!7806 lt!1987690))))

(declare-fun e!3027731 () ListMap!7143)

(assert (=> d!1554194 (= lt!1987690 e!3027731)))

(declare-fun c!824855 () Bool)

(assert (=> d!1554194 (= c!824855 (is-Cons!55426 (toList!7805 lt!1987549)))))

(assert (=> d!1554194 (forall!12886 (toList!7805 lt!1987549) lambda!242087)))

(assert (=> d!1554194 (= (extractMap!2791 (toList!7805 lt!1987549)) lt!1987690)))

(declare-fun b!4844376 () Bool)

(assert (=> b!4844376 (= e!3027731 (addToMapMapFromBucket!1931 (_2!32790 (h!61863 (toList!7805 lt!1987549))) (extractMap!2791 (t!363046 (toList!7805 lt!1987549)))))))

(declare-fun b!4844377 () Bool)

(assert (=> b!4844377 (= e!3027731 (ListMap!7144 Nil!55425))))

(assert (= (and d!1554194 c!824855) b!4844376))

(assert (= (and d!1554194 (not c!824855)) b!4844377))

(declare-fun m!5842940 () Bool)

(assert (=> d!1554194 m!5842940))

(declare-fun m!5842942 () Bool)

(assert (=> d!1554194 m!5842942))

(declare-fun m!5842944 () Bool)

(assert (=> b!4844376 m!5842944))

(assert (=> b!4844376 m!5842944))

(declare-fun m!5842946 () Bool)

(assert (=> b!4844376 m!5842946))

(assert (=> b!4844233 d!1554194))

(declare-fun d!1554196 () Bool)

(assert (=> d!1554196 (= (tail!9518 lm!2671) (ListLongMap!6362 (tail!9517 (toList!7805 lm!2671))))))

(declare-fun bs!1172155 () Bool)

(assert (= bs!1172155 d!1554196))

(assert (=> bs!1172155 m!5842738))

(assert (=> b!4844233 d!1554196))

(declare-fun b!4844378 () Bool)

(declare-fun e!3027736 () Unit!145577)

(declare-fun e!3027737 () Unit!145577)

(assert (=> b!4844378 (= e!3027736 e!3027737)))

(declare-fun c!824858 () Bool)

(declare-fun call!337660 () Bool)

(assert (=> b!4844378 (= c!824858 call!337660)))

(declare-fun b!4844379 () Bool)

(assert (=> b!4844379 false))

(declare-fun lt!1987697 () Unit!145577)

(declare-fun lt!1987692 () Unit!145577)

(assert (=> b!4844379 (= lt!1987697 lt!1987692)))

(assert (=> b!4844379 (containsKey!4622 (toList!7806 lt!1987555) key!6540)))

(assert (=> b!4844379 (= lt!1987692 (lemmaInGetKeysListThenContainsKey!1214 (toList!7806 lt!1987555) key!6540))))

(declare-fun Unit!145594 () Unit!145577)

(assert (=> b!4844379 (= e!3027737 Unit!145594)))

(declare-fun b!4844380 () Bool)

(declare-fun e!3027732 () Bool)

(assert (=> b!4844380 (= e!3027732 (not (contains!19131 (keys!20499 lt!1987555) key!6540)))))

(declare-fun b!4844381 () Bool)

(declare-fun e!3027733 () List!55553)

(assert (=> b!4844381 (= e!3027733 (getKeysList!1214 (toList!7806 lt!1987555)))))

(declare-fun b!4844382 () Bool)

(declare-fun e!3027734 () Bool)

(assert (=> b!4844382 (= e!3027734 (contains!19131 (keys!20499 lt!1987555) key!6540))))

(declare-fun b!4844383 () Bool)

(assert (=> b!4844383 (= e!3027733 (keys!20499 lt!1987555))))

(declare-fun d!1554198 () Bool)

(declare-fun e!3027735 () Bool)

(assert (=> d!1554198 e!3027735))

(declare-fun res!2066113 () Bool)

(assert (=> d!1554198 (=> res!2066113 e!3027735)))

(assert (=> d!1554198 (= res!2066113 e!3027732)))

(declare-fun res!2066111 () Bool)

(assert (=> d!1554198 (=> (not res!2066111) (not e!3027732))))

(declare-fun lt!1987691 () Bool)

(assert (=> d!1554198 (= res!2066111 (not lt!1987691))))

(declare-fun lt!1987694 () Bool)

(assert (=> d!1554198 (= lt!1987691 lt!1987694)))

(declare-fun lt!1987695 () Unit!145577)

(assert (=> d!1554198 (= lt!1987695 e!3027736)))

(declare-fun c!824856 () Bool)

(assert (=> d!1554198 (= c!824856 lt!1987694)))

(assert (=> d!1554198 (= lt!1987694 (containsKey!4622 (toList!7806 lt!1987555) key!6540))))

(assert (=> d!1554198 (= (contains!19127 lt!1987555 key!6540) lt!1987691)))

(declare-fun b!4844384 () Bool)

(declare-fun lt!1987698 () Unit!145577)

(assert (=> b!4844384 (= e!3027736 lt!1987698)))

(declare-fun lt!1987696 () Unit!145577)

(assert (=> b!4844384 (= lt!1987696 (lemmaContainsKeyImpliesGetValueByKeyDefined!2487 (toList!7806 lt!1987555) key!6540))))

(assert (=> b!4844384 (isDefined!10714 (getValueByKey!2715 (toList!7806 lt!1987555) key!6540))))

(declare-fun lt!1987693 () Unit!145577)

(assert (=> b!4844384 (= lt!1987693 lt!1987696)))

(assert (=> b!4844384 (= lt!1987698 (lemmaInListThenGetKeysListContains!1209 (toList!7806 lt!1987555) key!6540))))

(assert (=> b!4844384 call!337660))

(declare-fun bm!337655 () Bool)

(assert (=> bm!337655 (= call!337660 (contains!19131 e!3027733 key!6540))))

(declare-fun c!824857 () Bool)

(assert (=> bm!337655 (= c!824857 c!824856)))

(declare-fun b!4844385 () Bool)

(assert (=> b!4844385 (= e!3027735 e!3027734)))

(declare-fun res!2066112 () Bool)

(assert (=> b!4844385 (=> (not res!2066112) (not e!3027734))))

(assert (=> b!4844385 (= res!2066112 (isDefined!10714 (getValueByKey!2715 (toList!7806 lt!1987555) key!6540)))))

(declare-fun b!4844386 () Bool)

(declare-fun Unit!145595 () Unit!145577)

(assert (=> b!4844386 (= e!3027737 Unit!145595)))

(assert (= (and d!1554198 c!824856) b!4844384))

(assert (= (and d!1554198 (not c!824856)) b!4844378))

(assert (= (and b!4844378 c!824858) b!4844379))

(assert (= (and b!4844378 (not c!824858)) b!4844386))

(assert (= (or b!4844384 b!4844378) bm!337655))

(assert (= (and bm!337655 c!824857) b!4844381))

(assert (= (and bm!337655 (not c!824857)) b!4844383))

(assert (= (and d!1554198 res!2066111) b!4844380))

(assert (= (and d!1554198 (not res!2066113)) b!4844385))

(assert (= (and b!4844385 res!2066112) b!4844382))

(declare-fun m!5842948 () Bool)

(assert (=> b!4844384 m!5842948))

(assert (=> b!4844384 m!5842772))

(assert (=> b!4844384 m!5842772))

(declare-fun m!5842950 () Bool)

(assert (=> b!4844384 m!5842950))

(declare-fun m!5842952 () Bool)

(assert (=> b!4844384 m!5842952))

(assert (=> b!4844385 m!5842772))

(assert (=> b!4844385 m!5842772))

(assert (=> b!4844385 m!5842950))

(declare-fun m!5842954 () Bool)

(assert (=> b!4844379 m!5842954))

(declare-fun m!5842956 () Bool)

(assert (=> b!4844379 m!5842956))

(declare-fun m!5842958 () Bool)

(assert (=> b!4844383 m!5842958))

(declare-fun m!5842960 () Bool)

(assert (=> b!4844381 m!5842960))

(assert (=> d!1554198 m!5842954))

(assert (=> b!4844380 m!5842958))

(assert (=> b!4844380 m!5842958))

(declare-fun m!5842962 () Bool)

(assert (=> b!4844380 m!5842962))

(declare-fun m!5842964 () Bool)

(assert (=> bm!337655 m!5842964))

(assert (=> b!4844382 m!5842958))

(assert (=> b!4844382 m!5842958))

(assert (=> b!4844382 m!5842962))

(assert (=> b!4844233 d!1554198))

(declare-fun b!4844387 () Bool)

(declare-fun e!3027742 () Unit!145577)

(declare-fun e!3027743 () Unit!145577)

(assert (=> b!4844387 (= e!3027742 e!3027743)))

(declare-fun c!824861 () Bool)

(declare-fun call!337661 () Bool)

(assert (=> b!4844387 (= c!824861 call!337661)))

(declare-fun b!4844388 () Bool)

(assert (=> b!4844388 false))

(declare-fun lt!1987705 () Unit!145577)

(declare-fun lt!1987700 () Unit!145577)

(assert (=> b!4844388 (= lt!1987705 lt!1987700)))

(assert (=> b!4844388 (containsKey!4622 (toList!7806 (extractMap!2791 (toList!7805 lt!1987549))) key!6540)))

(assert (=> b!4844388 (= lt!1987700 (lemmaInGetKeysListThenContainsKey!1214 (toList!7806 (extractMap!2791 (toList!7805 lt!1987549))) key!6540))))

(declare-fun Unit!145596 () Unit!145577)

(assert (=> b!4844388 (= e!3027743 Unit!145596)))

(declare-fun b!4844389 () Bool)

(declare-fun e!3027738 () Bool)

(assert (=> b!4844389 (= e!3027738 (not (contains!19131 (keys!20499 (extractMap!2791 (toList!7805 lt!1987549))) key!6540)))))

(declare-fun b!4844390 () Bool)

(declare-fun e!3027739 () List!55553)

(assert (=> b!4844390 (= e!3027739 (getKeysList!1214 (toList!7806 (extractMap!2791 (toList!7805 lt!1987549)))))))

(declare-fun b!4844391 () Bool)

(declare-fun e!3027740 () Bool)

(assert (=> b!4844391 (= e!3027740 (contains!19131 (keys!20499 (extractMap!2791 (toList!7805 lt!1987549))) key!6540))))

(declare-fun b!4844392 () Bool)

(assert (=> b!4844392 (= e!3027739 (keys!20499 (extractMap!2791 (toList!7805 lt!1987549))))))

(declare-fun d!1554200 () Bool)

(declare-fun e!3027741 () Bool)

(assert (=> d!1554200 e!3027741))

(declare-fun res!2066116 () Bool)

(assert (=> d!1554200 (=> res!2066116 e!3027741)))

(assert (=> d!1554200 (= res!2066116 e!3027738)))

(declare-fun res!2066114 () Bool)

(assert (=> d!1554200 (=> (not res!2066114) (not e!3027738))))

(declare-fun lt!1987699 () Bool)

(assert (=> d!1554200 (= res!2066114 (not lt!1987699))))

(declare-fun lt!1987702 () Bool)

(assert (=> d!1554200 (= lt!1987699 lt!1987702)))

(declare-fun lt!1987703 () Unit!145577)

(assert (=> d!1554200 (= lt!1987703 e!3027742)))

(declare-fun c!824859 () Bool)

(assert (=> d!1554200 (= c!824859 lt!1987702)))

(assert (=> d!1554200 (= lt!1987702 (containsKey!4622 (toList!7806 (extractMap!2791 (toList!7805 lt!1987549))) key!6540))))

(assert (=> d!1554200 (= (contains!19127 (extractMap!2791 (toList!7805 lt!1987549)) key!6540) lt!1987699)))

(declare-fun b!4844393 () Bool)

(declare-fun lt!1987706 () Unit!145577)

(assert (=> b!4844393 (= e!3027742 lt!1987706)))

(declare-fun lt!1987704 () Unit!145577)

(assert (=> b!4844393 (= lt!1987704 (lemmaContainsKeyImpliesGetValueByKeyDefined!2487 (toList!7806 (extractMap!2791 (toList!7805 lt!1987549))) key!6540))))

(assert (=> b!4844393 (isDefined!10714 (getValueByKey!2715 (toList!7806 (extractMap!2791 (toList!7805 lt!1987549))) key!6540))))

(declare-fun lt!1987701 () Unit!145577)

(assert (=> b!4844393 (= lt!1987701 lt!1987704)))

(assert (=> b!4844393 (= lt!1987706 (lemmaInListThenGetKeysListContains!1209 (toList!7806 (extractMap!2791 (toList!7805 lt!1987549))) key!6540))))

(assert (=> b!4844393 call!337661))

(declare-fun bm!337656 () Bool)

(assert (=> bm!337656 (= call!337661 (contains!19131 e!3027739 key!6540))))

(declare-fun c!824860 () Bool)

(assert (=> bm!337656 (= c!824860 c!824859)))

(declare-fun b!4844394 () Bool)

(assert (=> b!4844394 (= e!3027741 e!3027740)))

(declare-fun res!2066115 () Bool)

(assert (=> b!4844394 (=> (not res!2066115) (not e!3027740))))

(assert (=> b!4844394 (= res!2066115 (isDefined!10714 (getValueByKey!2715 (toList!7806 (extractMap!2791 (toList!7805 lt!1987549))) key!6540)))))

(declare-fun b!4844395 () Bool)

(declare-fun Unit!145597 () Unit!145577)

(assert (=> b!4844395 (= e!3027743 Unit!145597)))

(assert (= (and d!1554200 c!824859) b!4844393))

(assert (= (and d!1554200 (not c!824859)) b!4844387))

(assert (= (and b!4844387 c!824861) b!4844388))

(assert (= (and b!4844387 (not c!824861)) b!4844395))

(assert (= (or b!4844393 b!4844387) bm!337656))

(assert (= (and bm!337656 c!824860) b!4844390))

(assert (= (and bm!337656 (not c!824860)) b!4844392))

(assert (= (and d!1554200 res!2066114) b!4844389))

(assert (= (and d!1554200 (not res!2066116)) b!4844394))

(assert (= (and b!4844394 res!2066115) b!4844391))

(declare-fun m!5842966 () Bool)

(assert (=> b!4844393 m!5842966))

(declare-fun m!5842968 () Bool)

(assert (=> b!4844393 m!5842968))

(assert (=> b!4844393 m!5842968))

(declare-fun m!5842970 () Bool)

(assert (=> b!4844393 m!5842970))

(declare-fun m!5842972 () Bool)

(assert (=> b!4844393 m!5842972))

(assert (=> b!4844394 m!5842968))

(assert (=> b!4844394 m!5842968))

(assert (=> b!4844394 m!5842970))

(declare-fun m!5842974 () Bool)

(assert (=> b!4844388 m!5842974))

(declare-fun m!5842976 () Bool)

(assert (=> b!4844388 m!5842976))

(assert (=> b!4844392 m!5842758))

(declare-fun m!5842978 () Bool)

(assert (=> b!4844392 m!5842978))

(declare-fun m!5842980 () Bool)

(assert (=> b!4844390 m!5842980))

(assert (=> d!1554200 m!5842974))

(assert (=> b!4844389 m!5842758))

(assert (=> b!4844389 m!5842978))

(assert (=> b!4844389 m!5842978))

(declare-fun m!5842982 () Bool)

(assert (=> b!4844389 m!5842982))

(declare-fun m!5842984 () Bool)

(assert (=> bm!337656 m!5842984))

(assert (=> b!4844391 m!5842758))

(assert (=> b!4844391 m!5842978))

(assert (=> b!4844391 m!5842978))

(assert (=> b!4844391 m!5842982))

(assert (=> b!4844233 d!1554200))

(declare-fun bs!1172156 () Bool)

(declare-fun d!1554202 () Bool)

(assert (= bs!1172156 (and d!1554202 d!1554184)))

(declare-fun lambda!242090 () Int)

(assert (=> bs!1172156 (not (= lambda!242090 lambda!242083))))

(declare-fun bs!1172157 () Bool)

(assert (= bs!1172157 (and d!1554202 start!504354)))

(assert (=> bs!1172157 (not (= lambda!242090 lambda!242037))))

(declare-fun bs!1172158 () Bool)

(assert (= bs!1172158 (and d!1554202 d!1554194)))

(assert (=> bs!1172158 (not (= lambda!242090 lambda!242087))))

(declare-fun bs!1172159 () Bool)

(assert (= bs!1172159 (and d!1554202 d!1554192)))

(assert (=> bs!1172159 (not (= lambda!242090 lambda!242086))))

(declare-fun bs!1172160 () Bool)

(assert (= bs!1172160 (and d!1554202 d!1554182)))

(assert (=> bs!1172160 (not (= lambda!242090 lambda!242082))))

(assert (=> d!1554202 true))

(assert (=> d!1554202 (= (allKeysSameHashInMap!2765 lm!2671 hashF!1662) (forall!12886 (toList!7805 lm!2671) lambda!242090))))

(declare-fun bs!1172161 () Bool)

(assert (= bs!1172161 d!1554202))

(declare-fun m!5842986 () Bool)

(assert (=> bs!1172161 m!5842986))

(assert (=> b!4844228 d!1554202))

(declare-fun d!1554204 () Bool)

(declare-fun res!2066118 () Bool)

(declare-fun e!3027745 () Bool)

(assert (=> d!1554204 (=> res!2066118 e!3027745)))

(declare-fun e!3027744 () Bool)

(assert (=> d!1554204 (= res!2066118 e!3027744)))

(declare-fun res!2066117 () Bool)

(assert (=> d!1554204 (=> (not res!2066117) (not e!3027744))))

(assert (=> d!1554204 (= res!2066117 (is-Cons!55426 (t!363046 (toList!7805 lm!2671))))))

(assert (=> d!1554204 (= (containsKeyBiggerList!733 (t!363046 (toList!7805 lm!2671)) key!6540) e!3027745)))

(declare-fun b!4844398 () Bool)

(assert (=> b!4844398 (= e!3027744 (containsKey!4620 (_2!32790 (h!61863 (t!363046 (toList!7805 lm!2671)))) key!6540))))

(declare-fun b!4844399 () Bool)

(declare-fun e!3027746 () Bool)

(assert (=> b!4844399 (= e!3027745 e!3027746)))

(declare-fun res!2066119 () Bool)

(assert (=> b!4844399 (=> (not res!2066119) (not e!3027746))))

(assert (=> b!4844399 (= res!2066119 (is-Cons!55426 (t!363046 (toList!7805 lm!2671))))))

(declare-fun b!4844400 () Bool)

(assert (=> b!4844400 (= e!3027746 (containsKeyBiggerList!733 (t!363046 (t!363046 (toList!7805 lm!2671))) key!6540))))

(assert (= (and d!1554204 res!2066117) b!4844398))

(assert (= (and d!1554204 (not res!2066118)) b!4844399))

(assert (= (and b!4844399 res!2066119) b!4844400))

(declare-fun m!5842988 () Bool)

(assert (=> b!4844398 m!5842988))

(declare-fun m!5842990 () Bool)

(assert (=> b!4844400 m!5842990))

(assert (=> b!4844227 d!1554204))

(declare-fun d!1554206 () Bool)

(declare-fun res!2066121 () Bool)

(declare-fun e!3027748 () Bool)

(assert (=> d!1554206 (=> res!2066121 e!3027748)))

(declare-fun e!3027747 () Bool)

(assert (=> d!1554206 (= res!2066121 e!3027747)))

(declare-fun res!2066120 () Bool)

(assert (=> d!1554206 (=> (not res!2066120) (not e!3027747))))

(assert (=> d!1554206 (= res!2066120 (is-Cons!55426 (tail!9517 (toList!7805 lm!2671))))))

(assert (=> d!1554206 (= (containsKeyBiggerList!733 (tail!9517 (toList!7805 lm!2671)) key!6540) e!3027748)))

(declare-fun b!4844401 () Bool)

(assert (=> b!4844401 (= e!3027747 (containsKey!4620 (_2!32790 (h!61863 (tail!9517 (toList!7805 lm!2671)))) key!6540))))

(declare-fun b!4844402 () Bool)

(declare-fun e!3027749 () Bool)

(assert (=> b!4844402 (= e!3027748 e!3027749)))

(declare-fun res!2066122 () Bool)

(assert (=> b!4844402 (=> (not res!2066122) (not e!3027749))))

(assert (=> b!4844402 (= res!2066122 (is-Cons!55426 (tail!9517 (toList!7805 lm!2671))))))

(declare-fun b!4844403 () Bool)

(assert (=> b!4844403 (= e!3027749 (containsKeyBiggerList!733 (t!363046 (tail!9517 (toList!7805 lm!2671))) key!6540))))

(assert (= (and d!1554206 res!2066120) b!4844401))

(assert (= (and d!1554206 (not res!2066121)) b!4844402))

(assert (= (and b!4844402 res!2066122) b!4844403))

(declare-fun m!5842992 () Bool)

(assert (=> b!4844401 m!5842992))

(declare-fun m!5842994 () Bool)

(assert (=> b!4844403 m!5842994))

(assert (=> b!4844227 d!1554206))

(declare-fun d!1554208 () Bool)

(assert (=> d!1554208 (= (tail!9517 (toList!7805 lm!2671)) (t!363046 (toList!7805 lm!2671)))))

(assert (=> b!4844227 d!1554208))

(declare-fun bs!1172162 () Bool)

(declare-fun d!1554210 () Bool)

(assert (= bs!1172162 (and d!1554210 d!1554184)))

(declare-fun lambda!242093 () Int)

(assert (=> bs!1172162 (= lambda!242093 lambda!242083)))

(declare-fun bs!1172163 () Bool)

(assert (= bs!1172163 (and d!1554210 start!504354)))

(assert (=> bs!1172163 (= lambda!242093 lambda!242037)))

(declare-fun bs!1172164 () Bool)

(assert (= bs!1172164 (and d!1554210 d!1554194)))

(assert (=> bs!1172164 (= lambda!242093 lambda!242087)))

(declare-fun bs!1172165 () Bool)

(assert (= bs!1172165 (and d!1554210 d!1554192)))

(assert (=> bs!1172165 (= lambda!242093 lambda!242086)))

(declare-fun bs!1172166 () Bool)

(assert (= bs!1172166 (and d!1554210 d!1554202)))

(assert (=> bs!1172166 (not (= lambda!242093 lambda!242090))))

(declare-fun bs!1172167 () Bool)

(assert (= bs!1172167 (and d!1554210 d!1554182)))

(assert (=> bs!1172167 (= lambda!242093 lambda!242082)))

(assert (=> d!1554210 (containsKeyBiggerList!733 (tail!9517 (toList!7805 lm!2671)) key!6540)))

(declare-fun lt!1987709 () Unit!145577)

(declare-fun choose!35412 (ListLongMap!6361 K!17192 Hashable!7449) Unit!145577)

(assert (=> d!1554210 (= lt!1987709 (choose!35412 lm!2671 key!6540 hashF!1662))))

(assert (=> d!1554210 (forall!12886 (toList!7805 lm!2671) lambda!242093)))

(assert (=> d!1554210 (= (lemmaInBiggerListButNotHeadThenTail!65 lm!2671 key!6540 hashF!1662) lt!1987709)))

(declare-fun bs!1172168 () Bool)

(assert (= bs!1172168 d!1554210))

(assert (=> bs!1172168 m!5842738))

(assert (=> bs!1172168 m!5842738))

(assert (=> bs!1172168 m!5842740))

(declare-fun m!5842996 () Bool)

(assert (=> bs!1172168 m!5842996))

(declare-fun m!5842998 () Bool)

(assert (=> bs!1172168 m!5842998))

(assert (=> b!4844227 d!1554210))

(declare-fun b!4844408 () Bool)

(declare-fun e!3027752 () Bool)

(declare-fun tp!1364083 () Bool)

(declare-fun tp!1364084 () Bool)

(assert (=> b!4844408 (= e!3027752 (and tp!1364083 tp!1364084))))

(assert (=> b!4844229 (= tp!1364075 e!3027752)))

(assert (= (and b!4844229 (is-Cons!55426 (toList!7805 lm!2671))) b!4844408))

(declare-fun b_lambda!192223 () Bool)

(assert (= b_lambda!192221 (or start!504354 b_lambda!192223)))

(declare-fun bs!1172169 () Bool)

(declare-fun d!1554212 () Bool)

(assert (= bs!1172169 (and d!1554212 start!504354)))

(assert (=> bs!1172169 (= (dynLambda!22320 lambda!242037 (h!61863 (toList!7805 lm!2671))) (noDuplicateKeys!2556 (_2!32790 (h!61863 (toList!7805 lm!2671)))))))

(assert (=> bs!1172169 m!5842912))

(assert (=> b!4844374 d!1554212))

(declare-fun b_lambda!192225 () Bool)

(assert (= b_lambda!192219 (or b!4844230 b_lambda!192225)))

(declare-fun bs!1172170 () Bool)

(declare-fun d!1554214 () Bool)

(assert (= bs!1172170 (and d!1554214 b!4844230)))

(assert (=> bs!1172170 (= (dynLambda!22319 lambda!242038 lt!1987554) (contains!19127 lt!1987548 (_1!32789 lt!1987554)))))

(declare-fun m!5843000 () Bool)

(assert (=> bs!1172170 m!5843000))

(assert (=> d!1554162 d!1554214))

(push 1)

(assert (not bs!1172169))

(assert (not b!4844381))

(assert (not b!4844398))

(assert (not b!4844383))

(assert (not bm!337656))

(assert (not d!1554202))

(assert (not bm!337645))

(assert (not bm!337653))

(assert (not b!4844321))

(assert (not b!4844291))

(assert (not b!4844392))

(assert (not b!4844353))

(assert (not b!4844403))

(assert (not b!4844384))

(assert (not d!1554162))

(assert (not bm!337655))

(assert (not d!1554194))

(assert (not d!1554178))

(assert (not b!4844354))

(assert (not b!4844391))

(assert (not b!4844380))

(assert (not bm!337654))

(assert (not b!4844393))

(assert (not b!4844401))

(assert (not b!4844408))

(assert (not b!4844400))

(assert (not b!4844322))

(assert (not bs!1172170))

(assert (not d!1554184))

(assert (not b!4844394))

(assert (not d!1554182))

(assert (not b!4844324))

(assert (not b!4844340))

(assert (not b!4844355))

(assert (not b!4844323))

(assert (not d!1554156))

(assert (not b!4844382))

(assert (not b!4844388))

(assert (not b!4844379))

(assert (not b!4844280))

(assert (not b!4844369))

(assert (not b!4844390))

(assert (not b!4844360))

(assert (not b!4844362))

(assert (not b_lambda!192223))

(assert (not bm!337652))

(assert (not d!1554196))

(assert (not b!4844325))

(assert (not b_lambda!192225))

(assert (not b!4844352))

(assert (not d!1554166))

(assert tp_is_empty!35009)

(assert (not b!4844326))

(assert (not d!1554190))

(assert (not b!4844389))

(assert (not d!1554192))

(assert (not b!4844385))

(assert (not b!4844376))

(assert (not b!4844338))

(assert (not b!4844375))

(assert (not d!1554210))

(assert (not d!1554160))

(assert (not d!1554200))

(assert (not d!1554198))

(assert (not b!4844276))

(assert (not b!4844327))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

