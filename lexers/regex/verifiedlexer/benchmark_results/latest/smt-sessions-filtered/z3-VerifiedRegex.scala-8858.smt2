; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!473144 () Bool)

(assert start!473144)

(declare-fun e!2922044 () Bool)

(declare-fun b!4683578 () Bool)

(declare-fun tp_is_empty!30567 () Bool)

(declare-fun tp!1345372 () Bool)

(declare-fun tp_is_empty!30565 () Bool)

(assert (=> b!4683578 (= e!2922044 (and tp_is_empty!30565 tp_is_empty!30567 tp!1345372))))

(declare-fun b!4683579 () Bool)

(declare-fun res!1974351 () Bool)

(declare-fun e!2922041 () Bool)

(assert (=> b!4683579 (=> (not res!1974351) (not e!2922041))))

(declare-datatypes ((K!13695 0))(
  ( (K!13696 (val!19227 Int)) )
))
(declare-datatypes ((V!13941 0))(
  ( (V!13942 (val!19228 Int)) )
))
(declare-datatypes ((tuple2!53666 0))(
  ( (tuple2!53667 (_1!30127 K!13695) (_2!30127 V!13941)) )
))
(declare-datatypes ((List!52439 0))(
  ( (Nil!52315) (Cons!52315 (h!58538 tuple2!53666) (t!359601 List!52439)) )
))
(declare-fun newBucket!218 () List!52439)

(declare-fun noDuplicateKeys!1818 (List!52439) Bool)

(assert (=> b!4683579 (= res!1974351 (noDuplicateKeys!1818 newBucket!218))))

(declare-fun b!4683580 () Bool)

(declare-fun e!2922038 () Bool)

(declare-fun e!2922039 () Bool)

(assert (=> b!4683580 (= e!2922038 e!2922039)))

(declare-fun res!1974362 () Bool)

(assert (=> b!4683580 (=> res!1974362 e!2922039)))

(declare-fun oldBucket!34 () List!52439)

(declare-fun key!4653 () K!13695)

(declare-fun containsKey!2973 (List!52439 K!13695) Bool)

(assert (=> b!4683580 (= res!1974362 (not (containsKey!2973 (t!359601 oldBucket!34) key!4653)))))

(assert (=> b!4683580 (containsKey!2973 oldBucket!34 key!4653)))

(declare-datatypes ((Hashable!6187 0))(
  ( (HashableExt!6186 (__x!31890 Int)) )
))
(declare-fun hashF!1323 () Hashable!6187)

(declare-datatypes ((Unit!123081 0))(
  ( (Unit!123082) )
))
(declare-fun lt!1843141 () Unit!123081)

(declare-fun lemmaGetPairDefinedThenContainsKey!170 (List!52439 K!13695 Hashable!6187) Unit!123081)

(assert (=> b!4683580 (= lt!1843141 (lemmaGetPairDefinedThenContainsKey!170 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1843137 () List!52439)

(declare-datatypes ((Option!11997 0))(
  ( (None!11996) (Some!11996 (v!46367 tuple2!53666)) )
))
(declare-fun isDefined!9252 (Option!11997) Bool)

(declare-fun getPair!422 (List!52439 K!13695) Option!11997)

(assert (=> b!4683580 (isDefined!9252 (getPair!422 lt!1843137 key!4653))))

(declare-fun lambda!205439 () Int)

(declare-fun lt!1843144 () Unit!123081)

(declare-datatypes ((tuple2!53668 0))(
  ( (tuple2!53669 (_1!30128 (_ BitVec 64)) (_2!30128 List!52439)) )
))
(declare-fun lt!1843142 () tuple2!53668)

(declare-datatypes ((List!52440 0))(
  ( (Nil!52316) (Cons!52316 (h!58539 tuple2!53668) (t!359602 List!52440)) )
))
(declare-datatypes ((ListLongMap!4055 0))(
  ( (ListLongMap!4056 (toList!5525 List!52440)) )
))
(declare-fun lm!2023 () ListLongMap!4055)

(declare-fun forallContained!3370 (List!52440 Int tuple2!53668) Unit!123081)

(assert (=> b!4683580 (= lt!1843144 (forallContained!3370 (toList!5525 lm!2023) lambda!205439 lt!1843142))))

(declare-fun contains!15456 (List!52440 tuple2!53668) Bool)

(assert (=> b!4683580 (contains!15456 (toList!5525 lm!2023) lt!1843142)))

(declare-fun lt!1843136 () (_ BitVec 64))

(assert (=> b!4683580 (= lt!1843142 (tuple2!53669 lt!1843136 lt!1843137))))

(declare-fun lt!1843140 () Unit!123081)

(declare-fun lemmaGetValueImpliesTupleContained!227 (ListLongMap!4055 (_ BitVec 64) List!52439) Unit!123081)

(assert (=> b!4683580 (= lt!1843140 (lemmaGetValueImpliesTupleContained!227 lm!2023 lt!1843136 lt!1843137))))

(declare-fun apply!12301 (ListLongMap!4055 (_ BitVec 64)) List!52439)

(assert (=> b!4683580 (= lt!1843137 (apply!12301 lm!2023 lt!1843136))))

(declare-fun contains!15457 (ListLongMap!4055 (_ BitVec 64)) Bool)

(assert (=> b!4683580 (contains!15457 lm!2023 lt!1843136)))

(declare-fun lt!1843139 () Unit!123081)

(declare-fun lemmaInGenMapThenLongMapContainsHash!628 (ListLongMap!4055 K!13695 Hashable!6187) Unit!123081)

(assert (=> b!4683580 (= lt!1843139 (lemmaInGenMapThenLongMapContainsHash!628 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1843143 () Unit!123081)

(declare-fun lemmaInGenMapThenGetPairDefined!218 (ListLongMap!4055 K!13695 Hashable!6187) Unit!123081)

(assert (=> b!4683580 (= lt!1843143 (lemmaInGenMapThenGetPairDefined!218 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4683581 () Bool)

(declare-fun res!1974359 () Bool)

(declare-fun e!2922040 () Bool)

(assert (=> b!4683581 (=> (not res!1974359) (not e!2922040))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!9912 (List!52440) tuple2!53668)

(assert (=> b!4683581 (= res!1974359 (= (head!9912 (toList!5525 lm!2023)) (tuple2!53669 hash!405 oldBucket!34)))))

(declare-fun b!4683582 () Bool)

(declare-fun res!1974360 () Bool)

(assert (=> b!4683582 (=> (not res!1974360) (not e!2922040))))

(declare-fun allKeysSameHashInMap!1732 (ListLongMap!4055 Hashable!6187) Bool)

(assert (=> b!4683582 (= res!1974360 (allKeysSameHashInMap!1732 lm!2023 hashF!1323))))

(declare-fun b!4683583 () Bool)

(declare-fun e!2922042 () Bool)

(declare-fun tp!1345373 () Bool)

(assert (=> b!4683583 (= e!2922042 tp!1345373)))

(declare-fun b!4683585 () Bool)

(declare-fun res!1974352 () Bool)

(assert (=> b!4683585 (=> (not res!1974352) (not e!2922041))))

(assert (=> b!4683585 (= res!1974352 (noDuplicateKeys!1818 oldBucket!34))))

(declare-fun b!4683586 () Bool)

(declare-fun res!1974356 () Bool)

(assert (=> b!4683586 (=> (not res!1974356) (not e!2922040))))

(declare-fun allKeysSameHash!1644 (List!52439 (_ BitVec 64) Hashable!6187) Bool)

(assert (=> b!4683586 (= res!1974356 (allKeysSameHash!1644 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4683587 () Bool)

(declare-fun res!1974358 () Bool)

(assert (=> b!4683587 (=> (not res!1974358) (not e!2922041))))

(declare-fun removePairForKey!1413 (List!52439 K!13695) List!52439)

(assert (=> b!4683587 (= res!1974358 (= (removePairForKey!1413 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4683588 () Bool)

(declare-fun e!2922037 () Bool)

(assert (=> b!4683588 (= e!2922041 e!2922037)))

(declare-fun res!1974363 () Bool)

(assert (=> b!4683588 (=> (not res!1974363) (not e!2922037))))

(declare-datatypes ((ListMap!4889 0))(
  ( (ListMap!4890 (toList!5526 List!52439)) )
))
(declare-fun lt!1843138 () ListMap!4889)

(declare-fun contains!15458 (ListMap!4889 K!13695) Bool)

(assert (=> b!4683588 (= res!1974363 (contains!15458 lt!1843138 key!4653))))

(declare-fun extractMap!1844 (List!52440) ListMap!4889)

(assert (=> b!4683588 (= lt!1843138 (extractMap!1844 (toList!5525 lm!2023)))))

(declare-fun b!4683589 () Bool)

(declare-fun res!1974354 () Bool)

(assert (=> b!4683589 (=> res!1974354 e!2922039)))

(declare-fun tail!8496 (List!52439) List!52439)

(assert (=> b!4683589 (= res!1974354 (not (= (removePairForKey!1413 (tail!8496 oldBucket!34) key!4653) (tail!8496 newBucket!218))))))

(declare-fun b!4683590 () Bool)

(assert (=> b!4683590 (= e!2922037 e!2922040)))

(declare-fun res!1974361 () Bool)

(assert (=> b!4683590 (=> (not res!1974361) (not e!2922040))))

(assert (=> b!4683590 (= res!1974361 (= lt!1843136 hash!405))))

(declare-fun hash!4007 (Hashable!6187 K!13695) (_ BitVec 64))

(assert (=> b!4683590 (= lt!1843136 (hash!4007 hashF!1323 key!4653))))

(declare-fun b!4683591 () Bool)

(assert (=> b!4683591 (= e!2922039 (noDuplicateKeys!1818 (t!359601 oldBucket!34)))))

(declare-fun b!4683592 () Bool)

(declare-fun tp!1345371 () Bool)

(declare-fun e!2922043 () Bool)

(assert (=> b!4683592 (= e!2922043 (and tp_is_empty!30565 tp_is_empty!30567 tp!1345371))))

(declare-fun b!4683593 () Bool)

(declare-fun e!2922036 () Bool)

(declare-fun addToMapMapFromBucket!1250 (List!52439 ListMap!4889) ListMap!4889)

(assert (=> b!4683593 (= e!2922036 (= lt!1843138 (addToMapMapFromBucket!1250 (_2!30128 (h!58539 (toList!5525 lm!2023))) (extractMap!1844 (t!359602 (toList!5525 lm!2023))))))))

(declare-fun b!4683584 () Bool)

(assert (=> b!4683584 (= e!2922040 (not e!2922038))))

(declare-fun res!1974353 () Bool)

(assert (=> b!4683584 (=> res!1974353 e!2922038)))

(get-info :version)

(assert (=> b!4683584 (= res!1974353 (or (and ((_ is Cons!52315) oldBucket!34) (= (_1!30127 (h!58538 oldBucket!34)) key!4653)) (not ((_ is Cons!52315) oldBucket!34)) (= (_1!30127 (h!58538 oldBucket!34)) key!4653)))))

(assert (=> b!4683584 e!2922036))

(declare-fun res!1974365 () Bool)

(assert (=> b!4683584 (=> (not res!1974365) (not e!2922036))))

(declare-fun tail!8497 (ListLongMap!4055) ListLongMap!4055)

(assert (=> b!4683584 (= res!1974365 (= (t!359602 (toList!5525 lm!2023)) (toList!5525 (tail!8497 lm!2023))))))

(declare-fun res!1974355 () Bool)

(assert (=> start!473144 (=> (not res!1974355) (not e!2922041))))

(declare-fun forall!11263 (List!52440 Int) Bool)

(assert (=> start!473144 (= res!1974355 (forall!11263 (toList!5525 lm!2023) lambda!205439))))

(assert (=> start!473144 e!2922041))

(declare-fun inv!67569 (ListLongMap!4055) Bool)

(assert (=> start!473144 (and (inv!67569 lm!2023) e!2922042)))

(assert (=> start!473144 tp_is_empty!30565))

(assert (=> start!473144 e!2922043))

(assert (=> start!473144 true))

(assert (=> start!473144 e!2922044))

(declare-fun b!4683594 () Bool)

(declare-fun res!1974364 () Bool)

(assert (=> b!4683594 (=> (not res!1974364) (not e!2922041))))

(assert (=> b!4683594 (= res!1974364 (allKeysSameHash!1644 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4683595 () Bool)

(declare-fun res!1974357 () Bool)

(assert (=> b!4683595 (=> (not res!1974357) (not e!2922040))))

(assert (=> b!4683595 (= res!1974357 ((_ is Cons!52316) (toList!5525 lm!2023)))))

(assert (= (and start!473144 res!1974355) b!4683585))

(assert (= (and b!4683585 res!1974352) b!4683579))

(assert (= (and b!4683579 res!1974351) b!4683587))

(assert (= (and b!4683587 res!1974358) b!4683594))

(assert (= (and b!4683594 res!1974364) b!4683588))

(assert (= (and b!4683588 res!1974363) b!4683590))

(assert (= (and b!4683590 res!1974361) b!4683586))

(assert (= (and b!4683586 res!1974356) b!4683582))

(assert (= (and b!4683582 res!1974360) b!4683581))

(assert (= (and b!4683581 res!1974359) b!4683595))

(assert (= (and b!4683595 res!1974357) b!4683584))

(assert (= (and b!4683584 res!1974365) b!4683593))

(assert (= (and b!4683584 (not res!1974353)) b!4683580))

(assert (= (and b!4683580 (not res!1974362)) b!4683589))

(assert (= (and b!4683589 (not res!1974354)) b!4683591))

(assert (= start!473144 b!4683583))

(assert (= (and start!473144 ((_ is Cons!52315) oldBucket!34)) b!4683592))

(assert (= (and start!473144 ((_ is Cons!52315) newBucket!218)) b!4683578))

(declare-fun m!5582111 () Bool)

(assert (=> b!4683580 m!5582111))

(declare-fun m!5582113 () Bool)

(assert (=> b!4683580 m!5582113))

(declare-fun m!5582115 () Bool)

(assert (=> b!4683580 m!5582115))

(declare-fun m!5582117 () Bool)

(assert (=> b!4683580 m!5582117))

(declare-fun m!5582119 () Bool)

(assert (=> b!4683580 m!5582119))

(declare-fun m!5582121 () Bool)

(assert (=> b!4683580 m!5582121))

(assert (=> b!4683580 m!5582113))

(declare-fun m!5582123 () Bool)

(assert (=> b!4683580 m!5582123))

(declare-fun m!5582125 () Bool)

(assert (=> b!4683580 m!5582125))

(declare-fun m!5582127 () Bool)

(assert (=> b!4683580 m!5582127))

(declare-fun m!5582129 () Bool)

(assert (=> b!4683580 m!5582129))

(declare-fun m!5582131 () Bool)

(assert (=> b!4683580 m!5582131))

(declare-fun m!5582133 () Bool)

(assert (=> b!4683580 m!5582133))

(declare-fun m!5582135 () Bool)

(assert (=> start!473144 m!5582135))

(declare-fun m!5582137 () Bool)

(assert (=> start!473144 m!5582137))

(declare-fun m!5582139 () Bool)

(assert (=> b!4683588 m!5582139))

(declare-fun m!5582141 () Bool)

(assert (=> b!4683588 m!5582141))

(declare-fun m!5582143 () Bool)

(assert (=> b!4683582 m!5582143))

(declare-fun m!5582145 () Bool)

(assert (=> b!4683594 m!5582145))

(declare-fun m!5582147 () Bool)

(assert (=> b!4683591 m!5582147))

(declare-fun m!5582149 () Bool)

(assert (=> b!4683586 m!5582149))

(declare-fun m!5582151 () Bool)

(assert (=> b!4683581 m!5582151))

(declare-fun m!5582153 () Bool)

(assert (=> b!4683590 m!5582153))

(declare-fun m!5582155 () Bool)

(assert (=> b!4683587 m!5582155))

(declare-fun m!5582157 () Bool)

(assert (=> b!4683579 m!5582157))

(declare-fun m!5582159 () Bool)

(assert (=> b!4683584 m!5582159))

(declare-fun m!5582161 () Bool)

(assert (=> b!4683593 m!5582161))

(assert (=> b!4683593 m!5582161))

(declare-fun m!5582163 () Bool)

(assert (=> b!4683593 m!5582163))

(declare-fun m!5582165 () Bool)

(assert (=> b!4683589 m!5582165))

(assert (=> b!4683589 m!5582165))

(declare-fun m!5582167 () Bool)

(assert (=> b!4683589 m!5582167))

(declare-fun m!5582169 () Bool)

(assert (=> b!4683589 m!5582169))

(declare-fun m!5582171 () Bool)

(assert (=> b!4683585 m!5582171))

(check-sat (not b!4683585) (not b!4683592) (not b!4683591) (not b!4683582) (not b!4683594) (not b!4683584) tp_is_empty!30567 (not b!4683587) (not start!473144) (not b!4683590) (not b!4683578) tp_is_empty!30565 (not b!4683593) (not b!4683586) (not b!4683580) (not b!4683588) (not b!4683589) (not b!4683579) (not b!4683581) (not b!4683583))
(check-sat)
(get-model)

(declare-fun d!1488487 () Bool)

(assert (=> d!1488487 true))

(assert (=> d!1488487 true))

(declare-fun lambda!205445 () Int)

(declare-fun forall!11265 (List!52439 Int) Bool)

(assert (=> d!1488487 (= (allKeysSameHash!1644 newBucket!218 hash!405 hashF!1323) (forall!11265 newBucket!218 lambda!205445))))

(declare-fun bs!1083780 () Bool)

(assert (= bs!1083780 d!1488487))

(declare-fun m!5582177 () Bool)

(assert (=> bs!1083780 m!5582177))

(assert (=> b!4683586 d!1488487))

(declare-fun d!1488495 () Bool)

(declare-fun res!1974378 () Bool)

(declare-fun e!2922057 () Bool)

(assert (=> d!1488495 (=> res!1974378 e!2922057)))

(assert (=> d!1488495 (= res!1974378 (not ((_ is Cons!52315) oldBucket!34)))))

(assert (=> d!1488495 (= (noDuplicateKeys!1818 oldBucket!34) e!2922057)))

(declare-fun b!4683618 () Bool)

(declare-fun e!2922058 () Bool)

(assert (=> b!4683618 (= e!2922057 e!2922058)))

(declare-fun res!1974379 () Bool)

(assert (=> b!4683618 (=> (not res!1974379) (not e!2922058))))

(assert (=> b!4683618 (= res!1974379 (not (containsKey!2973 (t!359601 oldBucket!34) (_1!30127 (h!58538 oldBucket!34)))))))

(declare-fun b!4683619 () Bool)

(assert (=> b!4683619 (= e!2922058 (noDuplicateKeys!1818 (t!359601 oldBucket!34)))))

(assert (= (and d!1488495 (not res!1974378)) b!4683618))

(assert (= (and b!4683618 res!1974379) b!4683619))

(declare-fun m!5582191 () Bool)

(assert (=> b!4683618 m!5582191))

(assert (=> b!4683619 m!5582147))

(assert (=> b!4683585 d!1488495))

(declare-fun d!1488507 () Bool)

(declare-fun tail!8499 (List!52440) List!52440)

(assert (=> d!1488507 (= (tail!8497 lm!2023) (ListLongMap!4056 (tail!8499 (toList!5525 lm!2023))))))

(declare-fun bs!1083786 () Bool)

(assert (= bs!1083786 d!1488507))

(declare-fun m!5582193 () Bool)

(assert (=> bs!1083786 m!5582193))

(assert (=> b!4683584 d!1488507))

(declare-fun bs!1083787 () Bool)

(declare-fun d!1488509 () Bool)

(assert (= bs!1083787 (and d!1488509 d!1488487)))

(declare-fun lambda!205450 () Int)

(assert (=> bs!1083787 (= lambda!205450 lambda!205445)))

(assert (=> d!1488509 true))

(assert (=> d!1488509 true))

(assert (=> d!1488509 (= (allKeysSameHash!1644 oldBucket!34 hash!405 hashF!1323) (forall!11265 oldBucket!34 lambda!205450))))

(declare-fun bs!1083788 () Bool)

(assert (= bs!1083788 d!1488509))

(declare-fun m!5582195 () Bool)

(assert (=> bs!1083788 m!5582195))

(assert (=> b!4683594 d!1488509))

(declare-fun bs!1083805 () Bool)

(declare-fun b!4683712 () Bool)

(assert (= bs!1083805 (and b!4683712 d!1488487)))

(declare-fun lambda!205517 () Int)

(assert (=> bs!1083805 (not (= lambda!205517 lambda!205445))))

(declare-fun bs!1083806 () Bool)

(assert (= bs!1083806 (and b!4683712 d!1488509)))

(assert (=> bs!1083806 (not (= lambda!205517 lambda!205450))))

(assert (=> b!4683712 true))

(declare-fun bs!1083807 () Bool)

(declare-fun b!4683714 () Bool)

(assert (= bs!1083807 (and b!4683714 d!1488487)))

(declare-fun lambda!205518 () Int)

(assert (=> bs!1083807 (not (= lambda!205518 lambda!205445))))

(declare-fun bs!1083808 () Bool)

(assert (= bs!1083808 (and b!4683714 d!1488509)))

(assert (=> bs!1083808 (not (= lambda!205518 lambda!205450))))

(declare-fun bs!1083809 () Bool)

(assert (= bs!1083809 (and b!4683714 b!4683712)))

(assert (=> bs!1083809 (= lambda!205518 lambda!205517)))

(assert (=> b!4683714 true))

(declare-fun lambda!205519 () Int)

(assert (=> bs!1083807 (not (= lambda!205519 lambda!205445))))

(assert (=> bs!1083808 (not (= lambda!205519 lambda!205450))))

(declare-fun lt!1843288 () ListMap!4889)

(assert (=> bs!1083809 (= (= lt!1843288 (extractMap!1844 (t!359602 (toList!5525 lm!2023)))) (= lambda!205519 lambda!205517))))

(assert (=> b!4683714 (= (= lt!1843288 (extractMap!1844 (t!359602 (toList!5525 lm!2023)))) (= lambda!205519 lambda!205518))))

(assert (=> b!4683714 true))

(declare-fun bs!1083810 () Bool)

(declare-fun d!1488511 () Bool)

(assert (= bs!1083810 (and d!1488511 d!1488487)))

(declare-fun lambda!205520 () Int)

(assert (=> bs!1083810 (not (= lambda!205520 lambda!205445))))

(declare-fun bs!1083811 () Bool)

(assert (= bs!1083811 (and d!1488511 b!4683714)))

(declare-fun lt!1843290 () ListMap!4889)

(assert (=> bs!1083811 (= (= lt!1843290 lt!1843288) (= lambda!205520 lambda!205519))))

(assert (=> bs!1083811 (= (= lt!1843290 (extractMap!1844 (t!359602 (toList!5525 lm!2023)))) (= lambda!205520 lambda!205518))))

(declare-fun bs!1083812 () Bool)

(assert (= bs!1083812 (and d!1488511 b!4683712)))

(assert (=> bs!1083812 (= (= lt!1843290 (extractMap!1844 (t!359602 (toList!5525 lm!2023)))) (= lambda!205520 lambda!205517))))

(declare-fun bs!1083813 () Bool)

(assert (= bs!1083813 (and d!1488511 d!1488509)))

(assert (=> bs!1083813 (not (= lambda!205520 lambda!205450))))

(assert (=> d!1488511 true))

(declare-fun call!327349 () Bool)

(declare-fun lt!1843282 () ListMap!4889)

(declare-fun c!800999 () Bool)

(declare-fun bm!327342 () Bool)

(assert (=> bm!327342 (= call!327349 (forall!11265 (ite c!800999 (toList!5526 (extractMap!1844 (t!359602 (toList!5525 lm!2023)))) (toList!5526 lt!1843282)) (ite c!800999 lambda!205517 lambda!205519)))))

(declare-fun b!4683710 () Bool)

(declare-fun res!1974422 () Bool)

(declare-fun e!2922116 () Bool)

(assert (=> b!4683710 (=> (not res!1974422) (not e!2922116))))

(assert (=> b!4683710 (= res!1974422 (forall!11265 (toList!5526 (extractMap!1844 (t!359602 (toList!5525 lm!2023)))) lambda!205520))))

(declare-fun b!4683711 () Bool)

(declare-fun e!2922118 () Bool)

(assert (=> b!4683711 (= e!2922118 (forall!11265 (toList!5526 (extractMap!1844 (t!359602 (toList!5525 lm!2023)))) lambda!205519))))

(assert (=> d!1488511 e!2922116))

(declare-fun res!1974423 () Bool)

(assert (=> d!1488511 (=> (not res!1974423) (not e!2922116))))

(assert (=> d!1488511 (= res!1974423 (forall!11265 (_2!30128 (h!58539 (toList!5525 lm!2023))) lambda!205520))))

(declare-fun e!2922117 () ListMap!4889)

(assert (=> d!1488511 (= lt!1843290 e!2922117)))

(assert (=> d!1488511 (= c!800999 ((_ is Nil!52315) (_2!30128 (h!58539 (toList!5525 lm!2023)))))))

(assert (=> d!1488511 (noDuplicateKeys!1818 (_2!30128 (h!58539 (toList!5525 lm!2023))))))

(assert (=> d!1488511 (= (addToMapMapFromBucket!1250 (_2!30128 (h!58539 (toList!5525 lm!2023))) (extractMap!1844 (t!359602 (toList!5525 lm!2023)))) lt!1843290)))

(assert (=> b!4683712 (= e!2922117 (extractMap!1844 (t!359602 (toList!5525 lm!2023))))))

(declare-fun lt!1843281 () Unit!123081)

(declare-fun call!327347 () Unit!123081)

(assert (=> b!4683712 (= lt!1843281 call!327347)))

(assert (=> b!4683712 call!327349))

(declare-fun lt!1843292 () Unit!123081)

(assert (=> b!4683712 (= lt!1843292 lt!1843281)))

(declare-fun call!327348 () Bool)

(assert (=> b!4683712 call!327348))

(declare-fun lt!1843279 () Unit!123081)

(declare-fun Unit!123095 () Unit!123081)

(assert (=> b!4683712 (= lt!1843279 Unit!123095)))

(declare-fun b!4683713 () Bool)

(declare-fun invariantList!1388 (List!52439) Bool)

(assert (=> b!4683713 (= e!2922116 (invariantList!1388 (toList!5526 lt!1843290)))))

(declare-fun bm!327343 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!676 (ListMap!4889) Unit!123081)

(assert (=> bm!327343 (= call!327347 (lemmaContainsAllItsOwnKeys!676 (extractMap!1844 (t!359602 (toList!5525 lm!2023)))))))

(assert (=> b!4683714 (= e!2922117 lt!1843288)))

(declare-fun +!2110 (ListMap!4889 tuple2!53666) ListMap!4889)

(assert (=> b!4683714 (= lt!1843282 (+!2110 (extractMap!1844 (t!359602 (toList!5525 lm!2023))) (h!58538 (_2!30128 (h!58539 (toList!5525 lm!2023))))))))

(assert (=> b!4683714 (= lt!1843288 (addToMapMapFromBucket!1250 (t!359601 (_2!30128 (h!58539 (toList!5525 lm!2023)))) (+!2110 (extractMap!1844 (t!359602 (toList!5525 lm!2023))) (h!58538 (_2!30128 (h!58539 (toList!5525 lm!2023)))))))))

(declare-fun lt!1843277 () Unit!123081)

(assert (=> b!4683714 (= lt!1843277 call!327347)))

(assert (=> b!4683714 (forall!11265 (toList!5526 (extractMap!1844 (t!359602 (toList!5525 lm!2023)))) lambda!205518)))

(declare-fun lt!1843286 () Unit!123081)

(assert (=> b!4683714 (= lt!1843286 lt!1843277)))

(assert (=> b!4683714 call!327348))

(declare-fun lt!1843285 () Unit!123081)

(declare-fun Unit!123096 () Unit!123081)

(assert (=> b!4683714 (= lt!1843285 Unit!123096)))

(assert (=> b!4683714 (forall!11265 (t!359601 (_2!30128 (h!58539 (toList!5525 lm!2023)))) lambda!205519)))

(declare-fun lt!1843294 () Unit!123081)

(declare-fun Unit!123097 () Unit!123081)

(assert (=> b!4683714 (= lt!1843294 Unit!123097)))

(declare-fun lt!1843280 () Unit!123081)

(declare-fun Unit!123098 () Unit!123081)

(assert (=> b!4683714 (= lt!1843280 Unit!123098)))

(declare-fun lt!1843293 () Unit!123081)

(declare-fun forallContained!3372 (List!52439 Int tuple2!53666) Unit!123081)

(assert (=> b!4683714 (= lt!1843293 (forallContained!3372 (toList!5526 lt!1843282) lambda!205519 (h!58538 (_2!30128 (h!58539 (toList!5525 lm!2023))))))))

(assert (=> b!4683714 (contains!15458 lt!1843282 (_1!30127 (h!58538 (_2!30128 (h!58539 (toList!5525 lm!2023))))))))

(declare-fun lt!1843296 () Unit!123081)

(declare-fun Unit!123099 () Unit!123081)

(assert (=> b!4683714 (= lt!1843296 Unit!123099)))

(assert (=> b!4683714 (contains!15458 lt!1843288 (_1!30127 (h!58538 (_2!30128 (h!58539 (toList!5525 lm!2023))))))))

(declare-fun lt!1843283 () Unit!123081)

(declare-fun Unit!123100 () Unit!123081)

(assert (=> b!4683714 (= lt!1843283 Unit!123100)))

(assert (=> b!4683714 (forall!11265 (_2!30128 (h!58539 (toList!5525 lm!2023))) lambda!205519)))

(declare-fun lt!1843287 () Unit!123081)

(declare-fun Unit!123101 () Unit!123081)

(assert (=> b!4683714 (= lt!1843287 Unit!123101)))

(assert (=> b!4683714 call!327349))

(declare-fun lt!1843291 () Unit!123081)

(declare-fun Unit!123102 () Unit!123081)

(assert (=> b!4683714 (= lt!1843291 Unit!123102)))

(declare-fun lt!1843278 () Unit!123081)

(declare-fun Unit!123103 () Unit!123081)

(assert (=> b!4683714 (= lt!1843278 Unit!123103)))

(declare-fun lt!1843295 () Unit!123081)

(declare-fun addForallContainsKeyThenBeforeAdding!675 (ListMap!4889 ListMap!4889 K!13695 V!13941) Unit!123081)

(assert (=> b!4683714 (= lt!1843295 (addForallContainsKeyThenBeforeAdding!675 (extractMap!1844 (t!359602 (toList!5525 lm!2023))) lt!1843288 (_1!30127 (h!58538 (_2!30128 (h!58539 (toList!5525 lm!2023))))) (_2!30127 (h!58538 (_2!30128 (h!58539 (toList!5525 lm!2023)))))))))

(assert (=> b!4683714 (forall!11265 (toList!5526 (extractMap!1844 (t!359602 (toList!5525 lm!2023)))) lambda!205519)))

(declare-fun lt!1843297 () Unit!123081)

(assert (=> b!4683714 (= lt!1843297 lt!1843295)))

(assert (=> b!4683714 (forall!11265 (toList!5526 (extractMap!1844 (t!359602 (toList!5525 lm!2023)))) lambda!205519)))

(declare-fun lt!1843284 () Unit!123081)

(declare-fun Unit!123104 () Unit!123081)

(assert (=> b!4683714 (= lt!1843284 Unit!123104)))

(declare-fun res!1974424 () Bool)

(assert (=> b!4683714 (= res!1974424 (forall!11265 (_2!30128 (h!58539 (toList!5525 lm!2023))) lambda!205519))))

(assert (=> b!4683714 (=> (not res!1974424) (not e!2922118))))

(assert (=> b!4683714 e!2922118))

(declare-fun lt!1843289 () Unit!123081)

(declare-fun Unit!123105 () Unit!123081)

(assert (=> b!4683714 (= lt!1843289 Unit!123105)))

(declare-fun bm!327344 () Bool)

(assert (=> bm!327344 (= call!327348 (forall!11265 (ite c!800999 (toList!5526 (extractMap!1844 (t!359602 (toList!5525 lm!2023)))) (toList!5526 lt!1843282)) (ite c!800999 lambda!205517 lambda!205519)))))

(assert (= (and d!1488511 c!800999) b!4683712))

(assert (= (and d!1488511 (not c!800999)) b!4683714))

(assert (= (and b!4683714 res!1974424) b!4683711))

(assert (= (or b!4683712 b!4683714) bm!327343))

(assert (= (or b!4683712 b!4683714) bm!327342))

(assert (= (or b!4683712 b!4683714) bm!327344))

(assert (= (and d!1488511 res!1974423) b!4683710))

(assert (= (and b!4683710 res!1974422) b!4683713))

(assert (=> bm!327343 m!5582161))

(declare-fun m!5582285 () Bool)

(assert (=> bm!327343 m!5582285))

(declare-fun m!5582287 () Bool)

(assert (=> bm!327342 m!5582287))

(declare-fun m!5582289 () Bool)

(assert (=> b!4683714 m!5582289))

(declare-fun m!5582291 () Bool)

(assert (=> b!4683714 m!5582291))

(declare-fun m!5582293 () Bool)

(assert (=> b!4683714 m!5582293))

(declare-fun m!5582295 () Bool)

(assert (=> b!4683714 m!5582295))

(assert (=> b!4683714 m!5582161))

(declare-fun m!5582297 () Bool)

(assert (=> b!4683714 m!5582297))

(assert (=> b!4683714 m!5582293))

(declare-fun m!5582299 () Bool)

(assert (=> b!4683714 m!5582299))

(assert (=> b!4683714 m!5582289))

(declare-fun m!5582301 () Bool)

(assert (=> b!4683714 m!5582301))

(assert (=> b!4683714 m!5582297))

(declare-fun m!5582303 () Bool)

(assert (=> b!4683714 m!5582303))

(assert (=> b!4683714 m!5582161))

(declare-fun m!5582305 () Bool)

(assert (=> b!4683714 m!5582305))

(declare-fun m!5582307 () Bool)

(assert (=> b!4683714 m!5582307))

(declare-fun m!5582309 () Bool)

(assert (=> b!4683710 m!5582309))

(declare-fun m!5582311 () Bool)

(assert (=> b!4683713 m!5582311))

(declare-fun m!5582313 () Bool)

(assert (=> d!1488511 m!5582313))

(declare-fun m!5582315 () Bool)

(assert (=> d!1488511 m!5582315))

(assert (=> bm!327344 m!5582287))

(assert (=> b!4683711 m!5582289))

(assert (=> b!4683593 d!1488511))

(declare-fun bs!1083814 () Bool)

(declare-fun d!1488533 () Bool)

(assert (= bs!1083814 (and d!1488533 start!473144)))

(declare-fun lambda!205523 () Int)

(assert (=> bs!1083814 (= lambda!205523 lambda!205439)))

(declare-fun lt!1843300 () ListMap!4889)

(assert (=> d!1488533 (invariantList!1388 (toList!5526 lt!1843300))))

(declare-fun e!2922121 () ListMap!4889)

(assert (=> d!1488533 (= lt!1843300 e!2922121)))

(declare-fun c!801002 () Bool)

(assert (=> d!1488533 (= c!801002 ((_ is Cons!52316) (t!359602 (toList!5525 lm!2023))))))

(assert (=> d!1488533 (forall!11263 (t!359602 (toList!5525 lm!2023)) lambda!205523)))

(assert (=> d!1488533 (= (extractMap!1844 (t!359602 (toList!5525 lm!2023))) lt!1843300)))

(declare-fun b!4683721 () Bool)

(assert (=> b!4683721 (= e!2922121 (addToMapMapFromBucket!1250 (_2!30128 (h!58539 (t!359602 (toList!5525 lm!2023)))) (extractMap!1844 (t!359602 (t!359602 (toList!5525 lm!2023))))))))

(declare-fun b!4683722 () Bool)

(assert (=> b!4683722 (= e!2922121 (ListMap!4890 Nil!52315))))

(assert (= (and d!1488533 c!801002) b!4683721))

(assert (= (and d!1488533 (not c!801002)) b!4683722))

(declare-fun m!5582317 () Bool)

(assert (=> d!1488533 m!5582317))

(declare-fun m!5582319 () Bool)

(assert (=> d!1488533 m!5582319))

(declare-fun m!5582321 () Bool)

(assert (=> b!4683721 m!5582321))

(assert (=> b!4683721 m!5582321))

(declare-fun m!5582323 () Bool)

(assert (=> b!4683721 m!5582323))

(assert (=> b!4683593 d!1488533))

(declare-fun bs!1083815 () Bool)

(declare-fun d!1488535 () Bool)

(assert (= bs!1083815 (and d!1488535 start!473144)))

(declare-fun lambda!205532 () Int)

(assert (=> bs!1083815 (not (= lambda!205532 lambda!205439))))

(declare-fun bs!1083816 () Bool)

(assert (= bs!1083816 (and d!1488535 d!1488533)))

(assert (=> bs!1083816 (not (= lambda!205532 lambda!205523))))

(assert (=> d!1488535 true))

(assert (=> d!1488535 (= (allKeysSameHashInMap!1732 lm!2023 hashF!1323) (forall!11263 (toList!5525 lm!2023) lambda!205532))))

(declare-fun bs!1083817 () Bool)

(assert (= bs!1083817 d!1488535))

(declare-fun m!5582325 () Bool)

(assert (=> bs!1083817 m!5582325))

(assert (=> b!4683582 d!1488535))

(declare-fun d!1488537 () Bool)

(assert (=> d!1488537 (= (head!9912 (toList!5525 lm!2023)) (h!58539 (toList!5525 lm!2023)))))

(assert (=> b!4683581 d!1488537))

(declare-fun d!1488539 () Bool)

(declare-fun res!1974433 () Bool)

(declare-fun e!2922126 () Bool)

(assert (=> d!1488539 (=> res!1974433 e!2922126)))

(assert (=> d!1488539 (= res!1974433 (not ((_ is Cons!52315) (t!359601 oldBucket!34))))))

(assert (=> d!1488539 (= (noDuplicateKeys!1818 (t!359601 oldBucket!34)) e!2922126)))

(declare-fun b!4683733 () Bool)

(declare-fun e!2922127 () Bool)

(assert (=> b!4683733 (= e!2922126 e!2922127)))

(declare-fun res!1974434 () Bool)

(assert (=> b!4683733 (=> (not res!1974434) (not e!2922127))))

(assert (=> b!4683733 (= res!1974434 (not (containsKey!2973 (t!359601 (t!359601 oldBucket!34)) (_1!30127 (h!58538 (t!359601 oldBucket!34))))))))

(declare-fun b!4683734 () Bool)

(assert (=> b!4683734 (= e!2922127 (noDuplicateKeys!1818 (t!359601 (t!359601 oldBucket!34))))))

(assert (= (and d!1488539 (not res!1974433)) b!4683733))

(assert (= (and b!4683733 res!1974434) b!4683734))

(declare-fun m!5582327 () Bool)

(assert (=> b!4683733 m!5582327))

(declare-fun m!5582329 () Bool)

(assert (=> b!4683734 m!5582329))

(assert (=> b!4683591 d!1488539))

(declare-fun d!1488541 () Bool)

(declare-fun dynLambda!21691 (Int tuple2!53668) Bool)

(assert (=> d!1488541 (dynLambda!21691 lambda!205439 lt!1843142)))

(declare-fun lt!1843327 () Unit!123081)

(declare-fun choose!32440 (List!52440 Int tuple2!53668) Unit!123081)

(assert (=> d!1488541 (= lt!1843327 (choose!32440 (toList!5525 lm!2023) lambda!205439 lt!1843142))))

(declare-fun e!2922132 () Bool)

(assert (=> d!1488541 e!2922132))

(declare-fun res!1974441 () Bool)

(assert (=> d!1488541 (=> (not res!1974441) (not e!2922132))))

(assert (=> d!1488541 (= res!1974441 (forall!11263 (toList!5525 lm!2023) lambda!205439))))

(assert (=> d!1488541 (= (forallContained!3370 (toList!5525 lm!2023) lambda!205439 lt!1843142) lt!1843327)))

(declare-fun b!4683741 () Bool)

(assert (=> b!4683741 (= e!2922132 (contains!15456 (toList!5525 lm!2023) lt!1843142))))

(assert (= (and d!1488541 res!1974441) b!4683741))

(declare-fun b_lambda!176759 () Bool)

(assert (=> (not b_lambda!176759) (not d!1488541)))

(declare-fun m!5582331 () Bool)

(assert (=> d!1488541 m!5582331))

(declare-fun m!5582333 () Bool)

(assert (=> d!1488541 m!5582333))

(assert (=> d!1488541 m!5582135))

(assert (=> b!4683741 m!5582117))

(assert (=> b!4683580 d!1488541))

(declare-fun d!1488543 () Bool)

(declare-fun isEmpty!29072 (Option!11997) Bool)

(assert (=> d!1488543 (= (isDefined!9252 (getPair!422 lt!1843137 key!4653)) (not (isEmpty!29072 (getPair!422 lt!1843137 key!4653))))))

(declare-fun bs!1083822 () Bool)

(assert (= bs!1083822 d!1488543))

(assert (=> bs!1083822 m!5582113))

(declare-fun m!5582335 () Bool)

(assert (=> bs!1083822 m!5582335))

(assert (=> b!4683580 d!1488543))

(declare-fun d!1488545 () Bool)

(assert (=> d!1488545 (contains!15456 (toList!5525 lm!2023) (tuple2!53669 lt!1843136 lt!1843137))))

(declare-fun lt!1843332 () Unit!123081)

(declare-fun choose!32442 (ListLongMap!4055 (_ BitVec 64) List!52439) Unit!123081)

(assert (=> d!1488545 (= lt!1843332 (choose!32442 lm!2023 lt!1843136 lt!1843137))))

(assert (=> d!1488545 (contains!15457 lm!2023 lt!1843136)))

(assert (=> d!1488545 (= (lemmaGetValueImpliesTupleContained!227 lm!2023 lt!1843136 lt!1843137) lt!1843332)))

(declare-fun bs!1083823 () Bool)

(assert (= bs!1083823 d!1488545))

(declare-fun m!5582359 () Bool)

(assert (=> bs!1083823 m!5582359))

(declare-fun m!5582361 () Bool)

(assert (=> bs!1083823 m!5582361))

(assert (=> bs!1083823 m!5582121))

(assert (=> b!4683580 d!1488545))

(declare-fun bs!1083826 () Bool)

(declare-fun d!1488549 () Bool)

(assert (= bs!1083826 (and d!1488549 start!473144)))

(declare-fun lambda!205536 () Int)

(assert (=> bs!1083826 (= lambda!205536 lambda!205439)))

(declare-fun bs!1083827 () Bool)

(assert (= bs!1083827 (and d!1488549 d!1488533)))

(assert (=> bs!1083827 (= lambda!205536 lambda!205523)))

(declare-fun bs!1083828 () Bool)

(assert (= bs!1083828 (and d!1488549 d!1488535)))

(assert (=> bs!1083828 (not (= lambda!205536 lambda!205532))))

(assert (=> d!1488549 (contains!15457 lm!2023 (hash!4007 hashF!1323 key!4653))))

(declare-fun lt!1843336 () Unit!123081)

(declare-fun choose!32443 (ListLongMap!4055 K!13695 Hashable!6187) Unit!123081)

(assert (=> d!1488549 (= lt!1843336 (choose!32443 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1488549 (forall!11263 (toList!5525 lm!2023) lambda!205536)))

(assert (=> d!1488549 (= (lemmaInGenMapThenLongMapContainsHash!628 lm!2023 key!4653 hashF!1323) lt!1843336)))

(declare-fun bs!1083829 () Bool)

(assert (= bs!1083829 d!1488549))

(assert (=> bs!1083829 m!5582153))

(assert (=> bs!1083829 m!5582153))

(declare-fun m!5582369 () Bool)

(assert (=> bs!1083829 m!5582369))

(declare-fun m!5582371 () Bool)

(assert (=> bs!1083829 m!5582371))

(declare-fun m!5582373 () Bool)

(assert (=> bs!1083829 m!5582373))

(assert (=> b!4683580 d!1488549))

(declare-fun d!1488559 () Bool)

(declare-datatypes ((Option!11999 0))(
  ( (None!11998) (Some!11998 (v!46373 List!52439)) )
))
(declare-fun get!17431 (Option!11999) List!52439)

(declare-fun getValueByKey!1735 (List!52440 (_ BitVec 64)) Option!11999)

(assert (=> d!1488559 (= (apply!12301 lm!2023 lt!1843136) (get!17431 (getValueByKey!1735 (toList!5525 lm!2023) lt!1843136)))))

(declare-fun bs!1083830 () Bool)

(assert (= bs!1083830 d!1488559))

(declare-fun m!5582375 () Bool)

(assert (=> bs!1083830 m!5582375))

(assert (=> bs!1083830 m!5582375))

(declare-fun m!5582377 () Bool)

(assert (=> bs!1083830 m!5582377))

(assert (=> b!4683580 d!1488559))

(declare-fun bs!1083840 () Bool)

(declare-fun d!1488561 () Bool)

(assert (= bs!1083840 (and d!1488561 start!473144)))

(declare-fun lambda!205544 () Int)

(assert (=> bs!1083840 (= lambda!205544 lambda!205439)))

(declare-fun bs!1083841 () Bool)

(assert (= bs!1083841 (and d!1488561 d!1488533)))

(assert (=> bs!1083841 (= lambda!205544 lambda!205523)))

(declare-fun bs!1083842 () Bool)

(assert (= bs!1083842 (and d!1488561 d!1488535)))

(assert (=> bs!1083842 (not (= lambda!205544 lambda!205532))))

(declare-fun bs!1083843 () Bool)

(assert (= bs!1083843 (and d!1488561 d!1488549)))

(assert (=> bs!1083843 (= lambda!205544 lambda!205536)))

(declare-fun b!4683809 () Bool)

(declare-fun res!1974474 () Bool)

(declare-fun e!2922179 () Bool)

(assert (=> b!4683809 (=> (not res!1974474) (not e!2922179))))

(assert (=> b!4683809 (= res!1974474 (allKeysSameHashInMap!1732 lm!2023 hashF!1323))))

(declare-fun b!4683811 () Bool)

(assert (=> b!4683811 (= e!2922179 (isDefined!9252 (getPair!422 (apply!12301 lm!2023 (hash!4007 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1843391 () Unit!123081)

(assert (=> b!4683811 (= lt!1843391 (forallContained!3370 (toList!5525 lm!2023) lambda!205544 (tuple2!53669 (hash!4007 hashF!1323 key!4653) (apply!12301 lm!2023 (hash!4007 hashF!1323 key!4653)))))))

(declare-fun lt!1843390 () Unit!123081)

(declare-fun lt!1843386 () Unit!123081)

(assert (=> b!4683811 (= lt!1843390 lt!1843386)))

(declare-fun lt!1843392 () (_ BitVec 64))

(declare-fun lt!1843389 () List!52439)

(assert (=> b!4683811 (contains!15456 (toList!5525 lm!2023) (tuple2!53669 lt!1843392 lt!1843389))))

(assert (=> b!4683811 (= lt!1843386 (lemmaGetValueImpliesTupleContained!227 lm!2023 lt!1843392 lt!1843389))))

(declare-fun e!2922178 () Bool)

(assert (=> b!4683811 e!2922178))

(declare-fun res!1974475 () Bool)

(assert (=> b!4683811 (=> (not res!1974475) (not e!2922178))))

(assert (=> b!4683811 (= res!1974475 (contains!15457 lm!2023 lt!1843392))))

(assert (=> b!4683811 (= lt!1843389 (apply!12301 lm!2023 (hash!4007 hashF!1323 key!4653)))))

(assert (=> b!4683811 (= lt!1843392 (hash!4007 hashF!1323 key!4653))))

(declare-fun lt!1843388 () Unit!123081)

(declare-fun lt!1843387 () Unit!123081)

(assert (=> b!4683811 (= lt!1843388 lt!1843387)))

(assert (=> b!4683811 (contains!15457 lm!2023 (hash!4007 hashF!1323 key!4653))))

(assert (=> b!4683811 (= lt!1843387 (lemmaInGenMapThenLongMapContainsHash!628 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4683812 () Bool)

(assert (=> b!4683812 (= e!2922178 (= (getValueByKey!1735 (toList!5525 lm!2023) lt!1843392) (Some!11998 lt!1843389)))))

(assert (=> d!1488561 e!2922179))

(declare-fun res!1974473 () Bool)

(assert (=> d!1488561 (=> (not res!1974473) (not e!2922179))))

(assert (=> d!1488561 (= res!1974473 (forall!11263 (toList!5525 lm!2023) lambda!205544))))

(declare-fun lt!1843385 () Unit!123081)

(declare-fun choose!32444 (ListLongMap!4055 K!13695 Hashable!6187) Unit!123081)

(assert (=> d!1488561 (= lt!1843385 (choose!32444 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1488561 (forall!11263 (toList!5525 lm!2023) lambda!205544)))

(assert (=> d!1488561 (= (lemmaInGenMapThenGetPairDefined!218 lm!2023 key!4653 hashF!1323) lt!1843385)))

(declare-fun b!4683810 () Bool)

(declare-fun res!1974472 () Bool)

(assert (=> b!4683810 (=> (not res!1974472) (not e!2922179))))

(assert (=> b!4683810 (= res!1974472 (contains!15458 (extractMap!1844 (toList!5525 lm!2023)) key!4653))))

(assert (= (and d!1488561 res!1974473) b!4683809))

(assert (= (and b!4683809 res!1974474) b!4683810))

(assert (= (and b!4683810 res!1974472) b!4683811))

(assert (= (and b!4683811 res!1974475) b!4683812))

(assert (=> b!4683809 m!5582143))

(declare-fun m!5582425 () Bool)

(assert (=> b!4683811 m!5582425))

(declare-fun m!5582427 () Bool)

(assert (=> b!4683811 m!5582427))

(declare-fun m!5582429 () Bool)

(assert (=> b!4683811 m!5582429))

(declare-fun m!5582431 () Bool)

(assert (=> b!4683811 m!5582431))

(declare-fun m!5582433 () Bool)

(assert (=> b!4683811 m!5582433))

(assert (=> b!4683811 m!5582425))

(assert (=> b!4683811 m!5582115))

(declare-fun m!5582435 () Bool)

(assert (=> b!4683811 m!5582435))

(assert (=> b!4683811 m!5582153))

(assert (=> b!4683811 m!5582433))

(assert (=> b!4683811 m!5582153))

(assert (=> b!4683811 m!5582369))

(assert (=> b!4683811 m!5582153))

(declare-fun m!5582437 () Bool)

(assert (=> b!4683811 m!5582437))

(declare-fun m!5582439 () Bool)

(assert (=> d!1488561 m!5582439))

(declare-fun m!5582441 () Bool)

(assert (=> d!1488561 m!5582441))

(assert (=> d!1488561 m!5582439))

(assert (=> b!4683810 m!5582141))

(assert (=> b!4683810 m!5582141))

(declare-fun m!5582443 () Bool)

(assert (=> b!4683810 m!5582443))

(declare-fun m!5582445 () Bool)

(assert (=> b!4683812 m!5582445))

(assert (=> b!4683580 d!1488561))

(declare-fun d!1488583 () Bool)

(declare-fun res!1974480 () Bool)

(declare-fun e!2922184 () Bool)

(assert (=> d!1488583 (=> res!1974480 e!2922184)))

(assert (=> d!1488583 (= res!1974480 (and ((_ is Cons!52315) (t!359601 oldBucket!34)) (= (_1!30127 (h!58538 (t!359601 oldBucket!34))) key!4653)))))

(assert (=> d!1488583 (= (containsKey!2973 (t!359601 oldBucket!34) key!4653) e!2922184)))

(declare-fun b!4683817 () Bool)

(declare-fun e!2922185 () Bool)

(assert (=> b!4683817 (= e!2922184 e!2922185)))

(declare-fun res!1974481 () Bool)

(assert (=> b!4683817 (=> (not res!1974481) (not e!2922185))))

(assert (=> b!4683817 (= res!1974481 ((_ is Cons!52315) (t!359601 oldBucket!34)))))

(declare-fun b!4683818 () Bool)

(assert (=> b!4683818 (= e!2922185 (containsKey!2973 (t!359601 (t!359601 oldBucket!34)) key!4653))))

(assert (= (and d!1488583 (not res!1974480)) b!4683817))

(assert (= (and b!4683817 res!1974481) b!4683818))

(declare-fun m!5582447 () Bool)

(assert (=> b!4683818 m!5582447))

(assert (=> b!4683580 d!1488583))

(declare-fun b!4683835 () Bool)

(declare-fun res!1974491 () Bool)

(declare-fun e!2922197 () Bool)

(assert (=> b!4683835 (=> (not res!1974491) (not e!2922197))))

(declare-fun lt!1843395 () Option!11997)

(declare-fun get!17432 (Option!11997) tuple2!53666)

(assert (=> b!4683835 (= res!1974491 (= (_1!30127 (get!17432 lt!1843395)) key!4653))))

(declare-fun b!4683836 () Bool)

(declare-fun e!2922196 () Option!11997)

(assert (=> b!4683836 (= e!2922196 None!11996)))

(declare-fun b!4683837 () Bool)

(declare-fun e!2922199 () Option!11997)

(assert (=> b!4683837 (= e!2922199 e!2922196)))

(declare-fun c!801019 () Bool)

(assert (=> b!4683837 (= c!801019 ((_ is Cons!52315) lt!1843137))))

(declare-fun d!1488585 () Bool)

(declare-fun e!2922200 () Bool)

(assert (=> d!1488585 e!2922200))

(declare-fun res!1974492 () Bool)

(assert (=> d!1488585 (=> res!1974492 e!2922200)))

(declare-fun e!2922198 () Bool)

(assert (=> d!1488585 (= res!1974492 e!2922198)))

(declare-fun res!1974493 () Bool)

(assert (=> d!1488585 (=> (not res!1974493) (not e!2922198))))

(assert (=> d!1488585 (= res!1974493 (isEmpty!29072 lt!1843395))))

(assert (=> d!1488585 (= lt!1843395 e!2922199)))

(declare-fun c!801020 () Bool)

(assert (=> d!1488585 (= c!801020 (and ((_ is Cons!52315) lt!1843137) (= (_1!30127 (h!58538 lt!1843137)) key!4653)))))

(assert (=> d!1488585 (noDuplicateKeys!1818 lt!1843137)))

(assert (=> d!1488585 (= (getPair!422 lt!1843137 key!4653) lt!1843395)))

(declare-fun b!4683838 () Bool)

(assert (=> b!4683838 (= e!2922198 (not (containsKey!2973 lt!1843137 key!4653)))))

(declare-fun b!4683839 () Bool)

(assert (=> b!4683839 (= e!2922200 e!2922197)))

(declare-fun res!1974490 () Bool)

(assert (=> b!4683839 (=> (not res!1974490) (not e!2922197))))

(assert (=> b!4683839 (= res!1974490 (isDefined!9252 lt!1843395))))

(declare-fun b!4683840 () Bool)

(assert (=> b!4683840 (= e!2922199 (Some!11996 (h!58538 lt!1843137)))))

(declare-fun b!4683841 () Bool)

(declare-fun contains!15461 (List!52439 tuple2!53666) Bool)

(assert (=> b!4683841 (= e!2922197 (contains!15461 lt!1843137 (get!17432 lt!1843395)))))

(declare-fun b!4683842 () Bool)

(assert (=> b!4683842 (= e!2922196 (getPair!422 (t!359601 lt!1843137) key!4653))))

(assert (= (and d!1488585 c!801020) b!4683840))

(assert (= (and d!1488585 (not c!801020)) b!4683837))

(assert (= (and b!4683837 c!801019) b!4683842))

(assert (= (and b!4683837 (not c!801019)) b!4683836))

(assert (= (and d!1488585 res!1974493) b!4683838))

(assert (= (and d!1488585 (not res!1974492)) b!4683839))

(assert (= (and b!4683839 res!1974490) b!4683835))

(assert (= (and b!4683835 res!1974491) b!4683841))

(declare-fun m!5582449 () Bool)

(assert (=> b!4683835 m!5582449))

(assert (=> b!4683841 m!5582449))

(assert (=> b!4683841 m!5582449))

(declare-fun m!5582451 () Bool)

(assert (=> b!4683841 m!5582451))

(declare-fun m!5582453 () Bool)

(assert (=> b!4683838 m!5582453))

(declare-fun m!5582455 () Bool)

(assert (=> b!4683839 m!5582455))

(declare-fun m!5582457 () Bool)

(assert (=> d!1488585 m!5582457))

(declare-fun m!5582459 () Bool)

(assert (=> d!1488585 m!5582459))

(declare-fun m!5582461 () Bool)

(assert (=> b!4683842 m!5582461))

(assert (=> b!4683580 d!1488585))

(declare-fun d!1488587 () Bool)

(declare-fun lt!1843398 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9128 (List!52440) (InoxSet tuple2!53668))

(assert (=> d!1488587 (= lt!1843398 (select (content!9128 (toList!5525 lm!2023)) lt!1843142))))

(declare-fun e!2922205 () Bool)

(assert (=> d!1488587 (= lt!1843398 e!2922205)))

(declare-fun res!1974499 () Bool)

(assert (=> d!1488587 (=> (not res!1974499) (not e!2922205))))

(assert (=> d!1488587 (= res!1974499 ((_ is Cons!52316) (toList!5525 lm!2023)))))

(assert (=> d!1488587 (= (contains!15456 (toList!5525 lm!2023) lt!1843142) lt!1843398)))

(declare-fun b!4683847 () Bool)

(declare-fun e!2922206 () Bool)

(assert (=> b!4683847 (= e!2922205 e!2922206)))

(declare-fun res!1974498 () Bool)

(assert (=> b!4683847 (=> res!1974498 e!2922206)))

(assert (=> b!4683847 (= res!1974498 (= (h!58539 (toList!5525 lm!2023)) lt!1843142))))

(declare-fun b!4683848 () Bool)

(assert (=> b!4683848 (= e!2922206 (contains!15456 (t!359602 (toList!5525 lm!2023)) lt!1843142))))

(assert (= (and d!1488587 res!1974499) b!4683847))

(assert (= (and b!4683847 (not res!1974498)) b!4683848))

(declare-fun m!5582463 () Bool)

(assert (=> d!1488587 m!5582463))

(declare-fun m!5582465 () Bool)

(assert (=> d!1488587 m!5582465))

(declare-fun m!5582467 () Bool)

(assert (=> b!4683848 m!5582467))

(assert (=> b!4683580 d!1488587))

(declare-fun d!1488589 () Bool)

(declare-fun res!1974500 () Bool)

(declare-fun e!2922207 () Bool)

(assert (=> d!1488589 (=> res!1974500 e!2922207)))

(assert (=> d!1488589 (= res!1974500 (and ((_ is Cons!52315) oldBucket!34) (= (_1!30127 (h!58538 oldBucket!34)) key!4653)))))

(assert (=> d!1488589 (= (containsKey!2973 oldBucket!34 key!4653) e!2922207)))

(declare-fun b!4683849 () Bool)

(declare-fun e!2922208 () Bool)

(assert (=> b!4683849 (= e!2922207 e!2922208)))

(declare-fun res!1974501 () Bool)

(assert (=> b!4683849 (=> (not res!1974501) (not e!2922208))))

(assert (=> b!4683849 (= res!1974501 ((_ is Cons!52315) oldBucket!34))))

(declare-fun b!4683850 () Bool)

(assert (=> b!4683850 (= e!2922208 (containsKey!2973 (t!359601 oldBucket!34) key!4653))))

(assert (= (and d!1488589 (not res!1974500)) b!4683849))

(assert (= (and b!4683849 res!1974501) b!4683850))

(assert (=> b!4683850 m!5582119))

(assert (=> b!4683580 d!1488589))

(declare-fun d!1488591 () Bool)

(assert (=> d!1488591 (containsKey!2973 oldBucket!34 key!4653)))

(declare-fun lt!1843401 () Unit!123081)

(declare-fun choose!32445 (List!52439 K!13695 Hashable!6187) Unit!123081)

(assert (=> d!1488591 (= lt!1843401 (choose!32445 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1488591 (noDuplicateKeys!1818 oldBucket!34)))

(assert (=> d!1488591 (= (lemmaGetPairDefinedThenContainsKey!170 oldBucket!34 key!4653 hashF!1323) lt!1843401)))

(declare-fun bs!1083844 () Bool)

(assert (= bs!1083844 d!1488591))

(assert (=> bs!1083844 m!5582129))

(declare-fun m!5582469 () Bool)

(assert (=> bs!1083844 m!5582469))

(assert (=> bs!1083844 m!5582171))

(assert (=> b!4683580 d!1488591))

(declare-fun d!1488593 () Bool)

(declare-fun e!2922213 () Bool)

(assert (=> d!1488593 e!2922213))

(declare-fun res!1974504 () Bool)

(assert (=> d!1488593 (=> res!1974504 e!2922213)))

(declare-fun lt!1843412 () Bool)

(assert (=> d!1488593 (= res!1974504 (not lt!1843412))))

(declare-fun lt!1843410 () Bool)

(assert (=> d!1488593 (= lt!1843412 lt!1843410)))

(declare-fun lt!1843411 () Unit!123081)

(declare-fun e!2922214 () Unit!123081)

(assert (=> d!1488593 (= lt!1843411 e!2922214)))

(declare-fun c!801023 () Bool)

(assert (=> d!1488593 (= c!801023 lt!1843410)))

(declare-fun containsKey!2976 (List!52440 (_ BitVec 64)) Bool)

(assert (=> d!1488593 (= lt!1843410 (containsKey!2976 (toList!5525 lm!2023) lt!1843136))))

(assert (=> d!1488593 (= (contains!15457 lm!2023 lt!1843136) lt!1843412)))

(declare-fun b!4683857 () Bool)

(declare-fun lt!1843413 () Unit!123081)

(assert (=> b!4683857 (= e!2922214 lt!1843413)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1628 (List!52440 (_ BitVec 64)) Unit!123081)

(assert (=> b!4683857 (= lt!1843413 (lemmaContainsKeyImpliesGetValueByKeyDefined!1628 (toList!5525 lm!2023) lt!1843136))))

(declare-fun isDefined!9255 (Option!11999) Bool)

(assert (=> b!4683857 (isDefined!9255 (getValueByKey!1735 (toList!5525 lm!2023) lt!1843136))))

(declare-fun b!4683858 () Bool)

(declare-fun Unit!123108 () Unit!123081)

(assert (=> b!4683858 (= e!2922214 Unit!123108)))

(declare-fun b!4683859 () Bool)

(assert (=> b!4683859 (= e!2922213 (isDefined!9255 (getValueByKey!1735 (toList!5525 lm!2023) lt!1843136)))))

(assert (= (and d!1488593 c!801023) b!4683857))

(assert (= (and d!1488593 (not c!801023)) b!4683858))

(assert (= (and d!1488593 (not res!1974504)) b!4683859))

(declare-fun m!5582471 () Bool)

(assert (=> d!1488593 m!5582471))

(declare-fun m!5582473 () Bool)

(assert (=> b!4683857 m!5582473))

(assert (=> b!4683857 m!5582375))

(assert (=> b!4683857 m!5582375))

(declare-fun m!5582475 () Bool)

(assert (=> b!4683857 m!5582475))

(assert (=> b!4683859 m!5582375))

(assert (=> b!4683859 m!5582375))

(assert (=> b!4683859 m!5582475))

(assert (=> b!4683580 d!1488593))

(declare-fun d!1488595 () Bool)

(declare-fun hash!4009 (Hashable!6187 K!13695) (_ BitVec 64))

(assert (=> d!1488595 (= (hash!4007 hashF!1323 key!4653) (hash!4009 hashF!1323 key!4653))))

(declare-fun bs!1083845 () Bool)

(assert (= bs!1083845 d!1488595))

(declare-fun m!5582477 () Bool)

(assert (=> bs!1083845 m!5582477))

(assert (=> b!4683590 d!1488595))

(declare-fun d!1488597 () Bool)

(declare-fun res!1974505 () Bool)

(declare-fun e!2922215 () Bool)

(assert (=> d!1488597 (=> res!1974505 e!2922215)))

(assert (=> d!1488597 (= res!1974505 (not ((_ is Cons!52315) newBucket!218)))))

(assert (=> d!1488597 (= (noDuplicateKeys!1818 newBucket!218) e!2922215)))

(declare-fun b!4683860 () Bool)

(declare-fun e!2922216 () Bool)

(assert (=> b!4683860 (= e!2922215 e!2922216)))

(declare-fun res!1974506 () Bool)

(assert (=> b!4683860 (=> (not res!1974506) (not e!2922216))))

(assert (=> b!4683860 (= res!1974506 (not (containsKey!2973 (t!359601 newBucket!218) (_1!30127 (h!58538 newBucket!218)))))))

(declare-fun b!4683861 () Bool)

(assert (=> b!4683861 (= e!2922216 (noDuplicateKeys!1818 (t!359601 newBucket!218)))))

(assert (= (and d!1488597 (not res!1974505)) b!4683860))

(assert (= (and b!4683860 res!1974506) b!4683861))

(declare-fun m!5582479 () Bool)

(assert (=> b!4683860 m!5582479))

(declare-fun m!5582481 () Bool)

(assert (=> b!4683861 m!5582481))

(assert (=> b!4683579 d!1488597))

(declare-fun b!4683873 () Bool)

(declare-fun e!2922221 () List!52439)

(assert (=> b!4683873 (= e!2922221 Nil!52315)))

(declare-fun d!1488599 () Bool)

(declare-fun lt!1843416 () List!52439)

(assert (=> d!1488599 (not (containsKey!2973 lt!1843416 key!4653))))

(declare-fun e!2922222 () List!52439)

(assert (=> d!1488599 (= lt!1843416 e!2922222)))

(declare-fun c!801029 () Bool)

(assert (=> d!1488599 (= c!801029 (and ((_ is Cons!52315) (tail!8496 oldBucket!34)) (= (_1!30127 (h!58538 (tail!8496 oldBucket!34))) key!4653)))))

(assert (=> d!1488599 (noDuplicateKeys!1818 (tail!8496 oldBucket!34))))

(assert (=> d!1488599 (= (removePairForKey!1413 (tail!8496 oldBucket!34) key!4653) lt!1843416)))

(declare-fun b!4683870 () Bool)

(assert (=> b!4683870 (= e!2922222 (t!359601 (tail!8496 oldBucket!34)))))

(declare-fun b!4683872 () Bool)

(assert (=> b!4683872 (= e!2922221 (Cons!52315 (h!58538 (tail!8496 oldBucket!34)) (removePairForKey!1413 (t!359601 (tail!8496 oldBucket!34)) key!4653)))))

(declare-fun b!4683871 () Bool)

(assert (=> b!4683871 (= e!2922222 e!2922221)))

(declare-fun c!801028 () Bool)

(assert (=> b!4683871 (= c!801028 ((_ is Cons!52315) (tail!8496 oldBucket!34)))))

(assert (= (and d!1488599 c!801029) b!4683870))

(assert (= (and d!1488599 (not c!801029)) b!4683871))

(assert (= (and b!4683871 c!801028) b!4683872))

(assert (= (and b!4683871 (not c!801028)) b!4683873))

(declare-fun m!5582483 () Bool)

(assert (=> d!1488599 m!5582483))

(assert (=> d!1488599 m!5582165))

(declare-fun m!5582485 () Bool)

(assert (=> d!1488599 m!5582485))

(declare-fun m!5582487 () Bool)

(assert (=> b!4683872 m!5582487))

(assert (=> b!4683589 d!1488599))

(declare-fun d!1488601 () Bool)

(assert (=> d!1488601 (= (tail!8496 oldBucket!34) (t!359601 oldBucket!34))))

(assert (=> b!4683589 d!1488601))

(declare-fun d!1488603 () Bool)

(assert (=> d!1488603 (= (tail!8496 newBucket!218) (t!359601 newBucket!218))))

(assert (=> b!4683589 d!1488603))

(declare-fun b!4683892 () Bool)

(declare-datatypes ((List!52442 0))(
  ( (Nil!52318) (Cons!52318 (h!58543 K!13695) (t!359604 List!52442)) )
))
(declare-fun e!2922238 () List!52442)

(declare-fun getKeysList!828 (List!52439) List!52442)

(assert (=> b!4683892 (= e!2922238 (getKeysList!828 (toList!5526 lt!1843138)))))

(declare-fun b!4683893 () Bool)

(declare-fun e!2922240 () Unit!123081)

(declare-fun e!2922236 () Unit!123081)

(assert (=> b!4683893 (= e!2922240 e!2922236)))

(declare-fun c!801036 () Bool)

(declare-fun call!327355 () Bool)

(assert (=> b!4683893 (= c!801036 call!327355)))

(declare-fun b!4683894 () Bool)

(assert (=> b!4683894 false))

(declare-fun lt!1843436 () Unit!123081)

(declare-fun lt!1843434 () Unit!123081)

(assert (=> b!4683894 (= lt!1843436 lt!1843434)))

(declare-fun containsKey!2977 (List!52439 K!13695) Bool)

(assert (=> b!4683894 (containsKey!2977 (toList!5526 lt!1843138) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!827 (List!52439 K!13695) Unit!123081)

(assert (=> b!4683894 (= lt!1843434 (lemmaInGetKeysListThenContainsKey!827 (toList!5526 lt!1843138) key!4653))))

(declare-fun Unit!123109 () Unit!123081)

(assert (=> b!4683894 (= e!2922236 Unit!123109)))

(declare-fun d!1488605 () Bool)

(declare-fun e!2922235 () Bool)

(assert (=> d!1488605 e!2922235))

(declare-fun res!1974514 () Bool)

(assert (=> d!1488605 (=> res!1974514 e!2922235)))

(declare-fun e!2922237 () Bool)

(assert (=> d!1488605 (= res!1974514 e!2922237)))

(declare-fun res!1974513 () Bool)

(assert (=> d!1488605 (=> (not res!1974513) (not e!2922237))))

(declare-fun lt!1843440 () Bool)

(assert (=> d!1488605 (= res!1974513 (not lt!1843440))))

(declare-fun lt!1843435 () Bool)

(assert (=> d!1488605 (= lt!1843440 lt!1843435)))

(declare-fun lt!1843437 () Unit!123081)

(assert (=> d!1488605 (= lt!1843437 e!2922240)))

(declare-fun c!801038 () Bool)

(assert (=> d!1488605 (= c!801038 lt!1843435)))

(assert (=> d!1488605 (= lt!1843435 (containsKey!2977 (toList!5526 lt!1843138) key!4653))))

(assert (=> d!1488605 (= (contains!15458 lt!1843138 key!4653) lt!1843440)))

(declare-fun b!4683895 () Bool)

(declare-fun keys!18655 (ListMap!4889) List!52442)

(assert (=> b!4683895 (= e!2922238 (keys!18655 lt!1843138))))

(declare-fun b!4683896 () Bool)

(declare-fun contains!15462 (List!52442 K!13695) Bool)

(assert (=> b!4683896 (= e!2922237 (not (contains!15462 (keys!18655 lt!1843138) key!4653)))))

(declare-fun b!4683897 () Bool)

(declare-fun lt!1843438 () Unit!123081)

(assert (=> b!4683897 (= e!2922240 lt!1843438)))

(declare-fun lt!1843433 () Unit!123081)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1629 (List!52439 K!13695) Unit!123081)

(assert (=> b!4683897 (= lt!1843433 (lemmaContainsKeyImpliesGetValueByKeyDefined!1629 (toList!5526 lt!1843138) key!4653))))

(declare-datatypes ((Option!12001 0))(
  ( (None!12000) (Some!12000 (v!46375 V!13941)) )
))
(declare-fun isDefined!9256 (Option!12001) Bool)

(declare-fun getValueByKey!1737 (List!52439 K!13695) Option!12001)

(assert (=> b!4683897 (isDefined!9256 (getValueByKey!1737 (toList!5526 lt!1843138) key!4653))))

(declare-fun lt!1843439 () Unit!123081)

(assert (=> b!4683897 (= lt!1843439 lt!1843433)))

(declare-fun lemmaInListThenGetKeysListContains!823 (List!52439 K!13695) Unit!123081)

(assert (=> b!4683897 (= lt!1843438 (lemmaInListThenGetKeysListContains!823 (toList!5526 lt!1843138) key!4653))))

(assert (=> b!4683897 call!327355))

(declare-fun b!4683898 () Bool)

(declare-fun e!2922239 () Bool)

(assert (=> b!4683898 (= e!2922239 (contains!15462 (keys!18655 lt!1843138) key!4653))))

(declare-fun b!4683899 () Bool)

(assert (=> b!4683899 (= e!2922235 e!2922239)))

(declare-fun res!1974515 () Bool)

(assert (=> b!4683899 (=> (not res!1974515) (not e!2922239))))

(assert (=> b!4683899 (= res!1974515 (isDefined!9256 (getValueByKey!1737 (toList!5526 lt!1843138) key!4653)))))

(declare-fun b!4683900 () Bool)

(declare-fun Unit!123110 () Unit!123081)

(assert (=> b!4683900 (= e!2922236 Unit!123110)))

(declare-fun bm!327350 () Bool)

(assert (=> bm!327350 (= call!327355 (contains!15462 e!2922238 key!4653))))

(declare-fun c!801037 () Bool)

(assert (=> bm!327350 (= c!801037 c!801038)))

(assert (= (and d!1488605 c!801038) b!4683897))

(assert (= (and d!1488605 (not c!801038)) b!4683893))

(assert (= (and b!4683893 c!801036) b!4683894))

(assert (= (and b!4683893 (not c!801036)) b!4683900))

(assert (= (or b!4683897 b!4683893) bm!327350))

(assert (= (and bm!327350 c!801037) b!4683892))

(assert (= (and bm!327350 (not c!801037)) b!4683895))

(assert (= (and d!1488605 res!1974513) b!4683896))

(assert (= (and d!1488605 (not res!1974514)) b!4683899))

(assert (= (and b!4683899 res!1974515) b!4683898))

(declare-fun m!5582489 () Bool)

(assert (=> b!4683892 m!5582489))

(declare-fun m!5582491 () Bool)

(assert (=> b!4683895 m!5582491))

(declare-fun m!5582493 () Bool)

(assert (=> b!4683894 m!5582493))

(declare-fun m!5582495 () Bool)

(assert (=> b!4683894 m!5582495))

(declare-fun m!5582497 () Bool)

(assert (=> bm!327350 m!5582497))

(assert (=> b!4683896 m!5582491))

(assert (=> b!4683896 m!5582491))

(declare-fun m!5582499 () Bool)

(assert (=> b!4683896 m!5582499))

(assert (=> b!4683898 m!5582491))

(assert (=> b!4683898 m!5582491))

(assert (=> b!4683898 m!5582499))

(assert (=> d!1488605 m!5582493))

(declare-fun m!5582501 () Bool)

(assert (=> b!4683899 m!5582501))

(assert (=> b!4683899 m!5582501))

(declare-fun m!5582503 () Bool)

(assert (=> b!4683899 m!5582503))

(declare-fun m!5582505 () Bool)

(assert (=> b!4683897 m!5582505))

(assert (=> b!4683897 m!5582501))

(assert (=> b!4683897 m!5582501))

(assert (=> b!4683897 m!5582503))

(declare-fun m!5582507 () Bool)

(assert (=> b!4683897 m!5582507))

(assert (=> b!4683588 d!1488605))

(declare-fun bs!1083846 () Bool)

(declare-fun d!1488607 () Bool)

(assert (= bs!1083846 (and d!1488607 start!473144)))

(declare-fun lambda!205545 () Int)

(assert (=> bs!1083846 (= lambda!205545 lambda!205439)))

(declare-fun bs!1083847 () Bool)

(assert (= bs!1083847 (and d!1488607 d!1488561)))

(assert (=> bs!1083847 (= lambda!205545 lambda!205544)))

(declare-fun bs!1083848 () Bool)

(assert (= bs!1083848 (and d!1488607 d!1488533)))

(assert (=> bs!1083848 (= lambda!205545 lambda!205523)))

(declare-fun bs!1083849 () Bool)

(assert (= bs!1083849 (and d!1488607 d!1488549)))

(assert (=> bs!1083849 (= lambda!205545 lambda!205536)))

(declare-fun bs!1083850 () Bool)

(assert (= bs!1083850 (and d!1488607 d!1488535)))

(assert (=> bs!1083850 (not (= lambda!205545 lambda!205532))))

(declare-fun lt!1843441 () ListMap!4889)

(assert (=> d!1488607 (invariantList!1388 (toList!5526 lt!1843441))))

(declare-fun e!2922241 () ListMap!4889)

(assert (=> d!1488607 (= lt!1843441 e!2922241)))

(declare-fun c!801039 () Bool)

(assert (=> d!1488607 (= c!801039 ((_ is Cons!52316) (toList!5525 lm!2023)))))

(assert (=> d!1488607 (forall!11263 (toList!5525 lm!2023) lambda!205545)))

(assert (=> d!1488607 (= (extractMap!1844 (toList!5525 lm!2023)) lt!1843441)))

(declare-fun b!4683901 () Bool)

(assert (=> b!4683901 (= e!2922241 (addToMapMapFromBucket!1250 (_2!30128 (h!58539 (toList!5525 lm!2023))) (extractMap!1844 (t!359602 (toList!5525 lm!2023)))))))

(declare-fun b!4683902 () Bool)

(assert (=> b!4683902 (= e!2922241 (ListMap!4890 Nil!52315))))

(assert (= (and d!1488607 c!801039) b!4683901))

(assert (= (and d!1488607 (not c!801039)) b!4683902))

(declare-fun m!5582509 () Bool)

(assert (=> d!1488607 m!5582509))

(declare-fun m!5582511 () Bool)

(assert (=> d!1488607 m!5582511))

(assert (=> b!4683901 m!5582161))

(assert (=> b!4683901 m!5582161))

(assert (=> b!4683901 m!5582163))

(assert (=> b!4683588 d!1488607))

(declare-fun d!1488609 () Bool)

(declare-fun res!1974520 () Bool)

(declare-fun e!2922246 () Bool)

(assert (=> d!1488609 (=> res!1974520 e!2922246)))

(assert (=> d!1488609 (= res!1974520 ((_ is Nil!52316) (toList!5525 lm!2023)))))

(assert (=> d!1488609 (= (forall!11263 (toList!5525 lm!2023) lambda!205439) e!2922246)))

(declare-fun b!4683907 () Bool)

(declare-fun e!2922247 () Bool)

(assert (=> b!4683907 (= e!2922246 e!2922247)))

(declare-fun res!1974521 () Bool)

(assert (=> b!4683907 (=> (not res!1974521) (not e!2922247))))

(assert (=> b!4683907 (= res!1974521 (dynLambda!21691 lambda!205439 (h!58539 (toList!5525 lm!2023))))))

(declare-fun b!4683908 () Bool)

(assert (=> b!4683908 (= e!2922247 (forall!11263 (t!359602 (toList!5525 lm!2023)) lambda!205439))))

(assert (= (and d!1488609 (not res!1974520)) b!4683907))

(assert (= (and b!4683907 res!1974521) b!4683908))

(declare-fun b_lambda!176767 () Bool)

(assert (=> (not b_lambda!176767) (not b!4683907)))

(declare-fun m!5582513 () Bool)

(assert (=> b!4683907 m!5582513))

(declare-fun m!5582515 () Bool)

(assert (=> b!4683908 m!5582515))

(assert (=> start!473144 d!1488609))

(declare-fun d!1488611 () Bool)

(declare-fun isStrictlySorted!628 (List!52440) Bool)

(assert (=> d!1488611 (= (inv!67569 lm!2023) (isStrictlySorted!628 (toList!5525 lm!2023)))))

(declare-fun bs!1083851 () Bool)

(assert (= bs!1083851 d!1488611))

(declare-fun m!5582517 () Bool)

(assert (=> bs!1083851 m!5582517))

(assert (=> start!473144 d!1488611))

(declare-fun b!4683912 () Bool)

(declare-fun e!2922248 () List!52439)

(assert (=> b!4683912 (= e!2922248 Nil!52315)))

(declare-fun d!1488613 () Bool)

(declare-fun lt!1843442 () List!52439)

(assert (=> d!1488613 (not (containsKey!2973 lt!1843442 key!4653))))

(declare-fun e!2922249 () List!52439)

(assert (=> d!1488613 (= lt!1843442 e!2922249)))

(declare-fun c!801041 () Bool)

(assert (=> d!1488613 (= c!801041 (and ((_ is Cons!52315) oldBucket!34) (= (_1!30127 (h!58538 oldBucket!34)) key!4653)))))

(assert (=> d!1488613 (noDuplicateKeys!1818 oldBucket!34)))

(assert (=> d!1488613 (= (removePairForKey!1413 oldBucket!34 key!4653) lt!1843442)))

(declare-fun b!4683909 () Bool)

(assert (=> b!4683909 (= e!2922249 (t!359601 oldBucket!34))))

(declare-fun b!4683911 () Bool)

(assert (=> b!4683911 (= e!2922248 (Cons!52315 (h!58538 oldBucket!34) (removePairForKey!1413 (t!359601 oldBucket!34) key!4653)))))

(declare-fun b!4683910 () Bool)

(assert (=> b!4683910 (= e!2922249 e!2922248)))

(declare-fun c!801040 () Bool)

(assert (=> b!4683910 (= c!801040 ((_ is Cons!52315) oldBucket!34))))

(assert (= (and d!1488613 c!801041) b!4683909))

(assert (= (and d!1488613 (not c!801041)) b!4683910))

(assert (= (and b!4683910 c!801040) b!4683911))

(assert (= (and b!4683910 (not c!801040)) b!4683912))

(declare-fun m!5582519 () Bool)

(assert (=> d!1488613 m!5582519))

(assert (=> d!1488613 m!5582171))

(declare-fun m!5582521 () Bool)

(assert (=> b!4683911 m!5582521))

(assert (=> b!4683587 d!1488613))

(declare-fun e!2922252 () Bool)

(declare-fun tp!1345386 () Bool)

(declare-fun b!4683917 () Bool)

(assert (=> b!4683917 (= e!2922252 (and tp_is_empty!30565 tp_is_empty!30567 tp!1345386))))

(assert (=> b!4683578 (= tp!1345372 e!2922252)))

(assert (= (and b!4683578 ((_ is Cons!52315) (t!359601 newBucket!218))) b!4683917))

(declare-fun b!4683922 () Bool)

(declare-fun e!2922255 () Bool)

(declare-fun tp!1345391 () Bool)

(declare-fun tp!1345392 () Bool)

(assert (=> b!4683922 (= e!2922255 (and tp!1345391 tp!1345392))))

(assert (=> b!4683583 (= tp!1345373 e!2922255)))

(assert (= (and b!4683583 ((_ is Cons!52316) (toList!5525 lm!2023))) b!4683922))

(declare-fun e!2922256 () Bool)

(declare-fun b!4683923 () Bool)

(declare-fun tp!1345393 () Bool)

(assert (=> b!4683923 (= e!2922256 (and tp_is_empty!30565 tp_is_empty!30567 tp!1345393))))

(assert (=> b!4683592 (= tp!1345371 e!2922256)))

(assert (= (and b!4683592 ((_ is Cons!52315) (t!359601 oldBucket!34))) b!4683923))

(declare-fun b_lambda!176769 () Bool)

(assert (= b_lambda!176759 (or start!473144 b_lambda!176769)))

(declare-fun bs!1083852 () Bool)

(declare-fun d!1488615 () Bool)

(assert (= bs!1083852 (and d!1488615 start!473144)))

(assert (=> bs!1083852 (= (dynLambda!21691 lambda!205439 lt!1843142) (noDuplicateKeys!1818 (_2!30128 lt!1843142)))))

(declare-fun m!5582523 () Bool)

(assert (=> bs!1083852 m!5582523))

(assert (=> d!1488541 d!1488615))

(declare-fun b_lambda!176771 () Bool)

(assert (= b_lambda!176767 (or start!473144 b_lambda!176771)))

(declare-fun bs!1083853 () Bool)

(declare-fun d!1488617 () Bool)

(assert (= bs!1083853 (and d!1488617 start!473144)))

(assert (=> bs!1083853 (= (dynLambda!21691 lambda!205439 (h!58539 (toList!5525 lm!2023))) (noDuplicateKeys!1818 (_2!30128 (h!58539 (toList!5525 lm!2023)))))))

(assert (=> bs!1083853 m!5582315))

(assert (=> b!4683907 d!1488617))

(check-sat (not b!4683895) tp_is_empty!30565 (not d!1488535) (not b!4683917) (not b!4683872) (not b!4683911) (not b!4683811) (not b!4683896) (not b!4683710) (not b!4683894) (not bm!327342) (not d!1488549) (not d!1488591) (not b!4683713) (not bs!1083852) (not b!4683835) (not d!1488543) (not d!1488611) (not d!1488599) (not d!1488541) (not d!1488593) (not d!1488595) (not b!4683618) (not b!4683899) (not d!1488587) (not b!4683839) (not b!4683857) (not d!1488511) (not b!4683848) (not b!4683850) (not b!4683619) (not b!4683860) (not b!4683901) (not b!4683841) (not d!1488545) (not b!4683733) (not b!4683897) (not d!1488561) (not b!4683741) (not b!4683711) (not b!4683842) (not d!1488605) (not b!4683908) tp_is_empty!30567 (not b!4683861) (not b!4683923) (not b!4683812) (not b!4683922) (not b_lambda!176771) (not d!1488559) (not b!4683892) (not b!4683838) (not b!4683859) (not d!1488507) (not b!4683810) (not d!1488613) (not d!1488509) (not b!4683818) (not bm!327344) (not d!1488607) (not bm!327343) (not b!4683721) (not b!4683898) (not b_lambda!176769) (not d!1488487) (not b!4683734) (not bs!1083853) (not d!1488533) (not d!1488585) (not b!4683809) (not bm!327350) (not b!4683714))
(check-sat)
