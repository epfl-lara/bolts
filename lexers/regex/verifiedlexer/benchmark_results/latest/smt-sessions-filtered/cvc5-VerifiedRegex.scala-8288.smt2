; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!430180 () Bool)

(assert start!430180)

(declare-fun res!1824843 () Bool)

(declare-fun e!2750419 () Bool)

(assert (=> start!430180 (=> (not res!1824843) (not e!2750419))))

(declare-datatypes ((V!11089 0))(
  ( (V!11090 (val!16945 Int)) )
))
(declare-datatypes ((K!10843 0))(
  ( (K!10844 (val!16946 Int)) )
))
(declare-datatypes ((tuple2!49210 0))(
  ( (tuple2!49211 (_1!27899 K!10843) (_2!27899 V!11089)) )
))
(declare-datatypes ((List!49603 0))(
  ( (Nil!49479) (Cons!49479 (h!55142 tuple2!49210) (t!356541 List!49603)) )
))
(declare-datatypes ((tuple2!49212 0))(
  ( (tuple2!49213 (_1!27900 (_ BitVec 64)) (_2!27900 List!49603)) )
))
(declare-datatypes ((List!49604 0))(
  ( (Nil!49480) (Cons!49480 (h!55143 tuple2!49212) (t!356542 List!49604)) )
))
(declare-datatypes ((ListLongMap!2053 0))(
  ( (ListLongMap!2054 (toList!3403 List!49604)) )
))
(declare-fun lm!1616 () ListLongMap!2053)

(declare-fun lambda!152229 () Int)

(declare-fun forall!9493 (List!49604 Int) Bool)

(assert (=> start!430180 (= res!1824843 (forall!9493 (toList!3403 lm!1616) lambda!152229))))

(assert (=> start!430180 e!2750419))

(declare-fun tp_is_empty!26077 () Bool)

(assert (=> start!430180 tp_is_empty!26077))

(declare-fun tp_is_empty!26079 () Bool)

(assert (=> start!430180 tp_is_empty!26079))

(declare-fun e!2750422 () Bool)

(assert (=> start!430180 e!2750422))

(declare-fun e!2750423 () Bool)

(declare-fun inv!65030 (ListLongMap!2053) Bool)

(assert (=> start!430180 (and (inv!65030 lm!1616) e!2750423)))

(assert (=> start!430180 true))

(declare-fun b!4417080 () Bool)

(declare-fun e!2750424 () Bool)

(assert (=> b!4417080 (= e!2750419 e!2750424)))

(declare-fun res!1824842 () Bool)

(assert (=> b!4417080 (=> (not res!1824842) (not e!2750424))))

(declare-fun e!2750425 () Bool)

(assert (=> b!4417080 (= res!1824842 e!2750425)))

(declare-fun res!1824841 () Bool)

(assert (=> b!4417080 (=> res!1824841 e!2750425)))

(declare-fun e!2750420 () Bool)

(assert (=> b!4417080 (= res!1824841 e!2750420)))

(declare-fun res!1824851 () Bool)

(assert (=> b!4417080 (=> (not res!1824851) (not e!2750420))))

(declare-fun lt!1618743 () Bool)

(assert (=> b!4417080 (= res!1824851 lt!1618743)))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!11941 (ListLongMap!2053 (_ BitVec 64)) Bool)

(assert (=> b!4417080 (= lt!1618743 (contains!11941 lm!1616 hash!366))))

(declare-fun b!4417081 () Bool)

(declare-fun res!1824848 () Bool)

(assert (=> b!4417081 (=> (not res!1824848) (not e!2750419))))

(declare-fun newBucket!194 () List!49603)

(declare-datatypes ((Hashable!5102 0))(
  ( (HashableExt!5101 (__x!30805 Int)) )
))
(declare-fun hashF!1220 () Hashable!5102)

(declare-fun allKeysSameHash!668 (List!49603 (_ BitVec 64) Hashable!5102) Bool)

(assert (=> b!4417081 (= res!1824848 (allKeysSameHash!668 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4417082 () Bool)

(declare-fun res!1824840 () Bool)

(assert (=> b!4417082 (=> (not res!1824840) (not e!2750424))))

(declare-fun noDuplicateKeys!708 (List!49603) Bool)

(assert (=> b!4417082 (= res!1824840 (noDuplicateKeys!708 newBucket!194))))

(declare-fun newValue!93 () V!11089)

(declare-fun key!3717 () K!10843)

(declare-fun b!4417083 () Bool)

(declare-fun apply!11560 (ListLongMap!2053 (_ BitVec 64)) List!49603)

(assert (=> b!4417083 (= e!2750420 (= newBucket!194 (Cons!49479 (tuple2!49211 key!3717 newValue!93) (apply!11560 lm!1616 hash!366))))))

(declare-fun b!4417084 () Bool)

(declare-fun res!1824846 () Bool)

(assert (=> b!4417084 (=> (not res!1824846) (not e!2750419))))

(declare-fun hash!2025 (Hashable!5102 K!10843) (_ BitVec 64))

(assert (=> b!4417084 (= res!1824846 (= (hash!2025 hashF!1220 key!3717) hash!366))))

(declare-fun tp!1332710 () Bool)

(declare-fun b!4417085 () Bool)

(assert (=> b!4417085 (= e!2750422 (and tp_is_empty!26079 tp_is_empty!26077 tp!1332710))))

(declare-fun b!4417086 () Bool)

(declare-fun res!1824845 () Bool)

(assert (=> b!4417086 (=> (not res!1824845) (not e!2750419))))

(declare-fun allKeysSameHashInMap!814 (ListLongMap!2053 Hashable!5102) Bool)

(assert (=> b!4417086 (= res!1824845 (allKeysSameHashInMap!814 lm!1616 hashF!1220))))

(declare-fun b!4417087 () Bool)

(declare-fun e!2750421 () Bool)

(assert (=> b!4417087 (= e!2750424 (not e!2750421))))

(declare-fun res!1824844 () Bool)

(assert (=> b!4417087 (=> res!1824844 e!2750421)))

(declare-fun lt!1618744 () ListLongMap!2053)

(assert (=> b!4417087 (= res!1824844 (not (forall!9493 (toList!3403 lt!1618744) lambda!152229)))))

(assert (=> b!4417087 (forall!9493 (toList!3403 lt!1618744) lambda!152229)))

(declare-fun +!1012 (ListLongMap!2053 tuple2!49212) ListLongMap!2053)

(assert (=> b!4417087 (= lt!1618744 (+!1012 lm!1616 (tuple2!49213 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!81001 0))(
  ( (Unit!81002) )
))
(declare-fun lt!1618742 () Unit!81001)

(declare-fun addValidProp!352 (ListLongMap!2053 Int (_ BitVec 64) List!49603) Unit!81001)

(assert (=> b!4417087 (= lt!1618742 (addValidProp!352 lm!1616 lambda!152229 hash!366 newBucket!194))))

(declare-fun b!4417088 () Bool)

(declare-fun res!1824849 () Bool)

(assert (=> b!4417088 (=> (not res!1824849) (not e!2750424))))

(assert (=> b!4417088 (= res!1824849 (forall!9493 (toList!3403 lm!1616) lambda!152229))))

(declare-fun b!4417089 () Bool)

(declare-fun res!1824847 () Bool)

(assert (=> b!4417089 (=> (not res!1824847) (not e!2750419))))

(declare-datatypes ((ListMap!2647 0))(
  ( (ListMap!2648 (toList!3404 List!49603)) )
))
(declare-fun contains!11942 (ListMap!2647 K!10843) Bool)

(declare-fun extractMap!769 (List!49604) ListMap!2647)

(assert (=> b!4417089 (= res!1824847 (not (contains!11942 (extractMap!769 (toList!3403 lm!1616)) key!3717)))))

(declare-fun b!4417090 () Bool)

(declare-fun tp!1332709 () Bool)

(assert (=> b!4417090 (= e!2750423 tp!1332709)))

(declare-fun b!4417091 () Bool)

(declare-fun res!1824850 () Bool)

(assert (=> b!4417091 (=> res!1824850 e!2750421)))

(assert (=> b!4417091 (= res!1824850 (or (and (is-Cons!49480 (toList!3403 lm!1616)) (= (_1!27900 (h!55143 (toList!3403 lm!1616))) hash!366)) (not (is-Cons!49480 (toList!3403 lm!1616))) (= (_1!27900 (h!55143 (toList!3403 lm!1616))) hash!366)))))

(declare-fun b!4417092 () Bool)

(declare-fun tail!7192 (List!49604) List!49604)

(assert (=> b!4417092 (= e!2750421 (forall!9493 (tail!7192 (toList!3403 lm!1616)) lambda!152229))))

(declare-fun b!4417093 () Bool)

(assert (=> b!4417093 (= e!2750425 (and (not lt!1618743) (= newBucket!194 (Cons!49479 (tuple2!49211 key!3717 newValue!93) Nil!49479))))))

(assert (= (and start!430180 res!1824843) b!4417086))

(assert (= (and b!4417086 res!1824845) b!4417084))

(assert (= (and b!4417084 res!1824846) b!4417081))

(assert (= (and b!4417081 res!1824848) b!4417089))

(assert (= (and b!4417089 res!1824847) b!4417080))

(assert (= (and b!4417080 res!1824851) b!4417083))

(assert (= (and b!4417080 (not res!1824841)) b!4417093))

(assert (= (and b!4417080 res!1824842) b!4417082))

(assert (= (and b!4417082 res!1824840) b!4417088))

(assert (= (and b!4417088 res!1824849) b!4417087))

(assert (= (and b!4417087 (not res!1824844)) b!4417091))

(assert (= (and b!4417091 (not res!1824850)) b!4417092))

(assert (= (and start!430180 (is-Cons!49479 newBucket!194)) b!4417085))

(assert (= start!430180 b!4417090))

(declare-fun m!5093453 () Bool)

(assert (=> b!4417080 m!5093453))

(declare-fun m!5093455 () Bool)

(assert (=> b!4417081 m!5093455))

(declare-fun m!5093457 () Bool)

(assert (=> b!4417087 m!5093457))

(assert (=> b!4417087 m!5093457))

(declare-fun m!5093459 () Bool)

(assert (=> b!4417087 m!5093459))

(declare-fun m!5093461 () Bool)

(assert (=> b!4417087 m!5093461))

(declare-fun m!5093463 () Bool)

(assert (=> b!4417084 m!5093463))

(declare-fun m!5093465 () Bool)

(assert (=> b!4417092 m!5093465))

(assert (=> b!4417092 m!5093465))

(declare-fun m!5093467 () Bool)

(assert (=> b!4417092 m!5093467))

(declare-fun m!5093469 () Bool)

(assert (=> b!4417083 m!5093469))

(declare-fun m!5093471 () Bool)

(assert (=> b!4417082 m!5093471))

(declare-fun m!5093473 () Bool)

(assert (=> start!430180 m!5093473))

(declare-fun m!5093475 () Bool)

(assert (=> start!430180 m!5093475))

(assert (=> b!4417088 m!5093473))

(declare-fun m!5093477 () Bool)

(assert (=> b!4417086 m!5093477))

(declare-fun m!5093479 () Bool)

(assert (=> b!4417089 m!5093479))

(assert (=> b!4417089 m!5093479))

(declare-fun m!5093481 () Bool)

(assert (=> b!4417089 m!5093481))

(push 1)

(assert (not b!4417087))

(assert (not b!4417080))

(assert (not b!4417088))

(assert (not b!4417090))

(assert (not b!4417086))

(assert (not b!4417084))

(assert (not start!430180))

(assert tp_is_empty!26077)

(assert (not b!4417085))

(assert (not b!4417092))

(assert (not b!4417082))

(assert (not b!4417089))

(assert tp_is_empty!26079)

(assert (not b!4417083))

(assert (not b!4417081))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1338137 () Bool)

(declare-fun res!1824892 () Bool)

(declare-fun e!2750451 () Bool)

(assert (=> d!1338137 (=> res!1824892 e!2750451)))

(assert (=> d!1338137 (= res!1824892 (is-Nil!49480 (toList!3403 lm!1616)))))

(assert (=> d!1338137 (= (forall!9493 (toList!3403 lm!1616) lambda!152229) e!2750451)))

(declare-fun b!4417140 () Bool)

(declare-fun e!2750452 () Bool)

(assert (=> b!4417140 (= e!2750451 e!2750452)))

(declare-fun res!1824893 () Bool)

(assert (=> b!4417140 (=> (not res!1824893) (not e!2750452))))

(declare-fun dynLambda!20814 (Int tuple2!49212) Bool)

(assert (=> b!4417140 (= res!1824893 (dynLambda!20814 lambda!152229 (h!55143 (toList!3403 lm!1616))))))

(declare-fun b!4417141 () Bool)

(assert (=> b!4417141 (= e!2750452 (forall!9493 (t!356542 (toList!3403 lm!1616)) lambda!152229))))

(assert (= (and d!1338137 (not res!1824892)) b!4417140))

(assert (= (and b!4417140 res!1824893) b!4417141))

(declare-fun b_lambda!142231 () Bool)

(assert (=> (not b_lambda!142231) (not b!4417140)))

(declare-fun m!5093513 () Bool)

(assert (=> b!4417140 m!5093513))

(declare-fun m!5093515 () Bool)

(assert (=> b!4417141 m!5093515))

(assert (=> b!4417088 d!1338137))

(declare-fun d!1338139 () Bool)

(declare-fun res!1824894 () Bool)

(declare-fun e!2750453 () Bool)

(assert (=> d!1338139 (=> res!1824894 e!2750453)))

(assert (=> d!1338139 (= res!1824894 (is-Nil!49480 (toList!3403 lt!1618744)))))

(assert (=> d!1338139 (= (forall!9493 (toList!3403 lt!1618744) lambda!152229) e!2750453)))

(declare-fun b!4417142 () Bool)

(declare-fun e!2750454 () Bool)

(assert (=> b!4417142 (= e!2750453 e!2750454)))

(declare-fun res!1824895 () Bool)

(assert (=> b!4417142 (=> (not res!1824895) (not e!2750454))))

(assert (=> b!4417142 (= res!1824895 (dynLambda!20814 lambda!152229 (h!55143 (toList!3403 lt!1618744))))))

(declare-fun b!4417143 () Bool)

(assert (=> b!4417143 (= e!2750454 (forall!9493 (t!356542 (toList!3403 lt!1618744)) lambda!152229))))

(assert (= (and d!1338139 (not res!1824894)) b!4417142))

(assert (= (and b!4417142 res!1824895) b!4417143))

(declare-fun b_lambda!142233 () Bool)

(assert (=> (not b_lambda!142233) (not b!4417142)))

(declare-fun m!5093517 () Bool)

(assert (=> b!4417142 m!5093517))

(declare-fun m!5093519 () Bool)

(assert (=> b!4417143 m!5093519))

(assert (=> b!4417087 d!1338139))

(declare-fun d!1338141 () Bool)

(declare-fun e!2750457 () Bool)

(assert (=> d!1338141 e!2750457))

(declare-fun res!1824900 () Bool)

(assert (=> d!1338141 (=> (not res!1824900) (not e!2750457))))

(declare-fun lt!1618763 () ListLongMap!2053)

(assert (=> d!1338141 (= res!1824900 (contains!11941 lt!1618763 (_1!27900 (tuple2!49213 hash!366 newBucket!194))))))

(declare-fun lt!1618765 () List!49604)

(assert (=> d!1338141 (= lt!1618763 (ListLongMap!2054 lt!1618765))))

(declare-fun lt!1618762 () Unit!81001)

(declare-fun lt!1618764 () Unit!81001)

(assert (=> d!1338141 (= lt!1618762 lt!1618764)))

(declare-datatypes ((Option!10681 0))(
  ( (None!10680) (Some!10680 (v!43840 List!49603)) )
))
(declare-fun getValueByKey!667 (List!49604 (_ BitVec 64)) Option!10681)

(assert (=> d!1338141 (= (getValueByKey!667 lt!1618765 (_1!27900 (tuple2!49213 hash!366 newBucket!194))) (Some!10680 (_2!27900 (tuple2!49213 hash!366 newBucket!194))))))

(declare-fun lemmaContainsTupThenGetReturnValue!405 (List!49604 (_ BitVec 64) List!49603) Unit!81001)

(assert (=> d!1338141 (= lt!1618764 (lemmaContainsTupThenGetReturnValue!405 lt!1618765 (_1!27900 (tuple2!49213 hash!366 newBucket!194)) (_2!27900 (tuple2!49213 hash!366 newBucket!194))))))

(declare-fun insertStrictlySorted!238 (List!49604 (_ BitVec 64) List!49603) List!49604)

(assert (=> d!1338141 (= lt!1618765 (insertStrictlySorted!238 (toList!3403 lm!1616) (_1!27900 (tuple2!49213 hash!366 newBucket!194)) (_2!27900 (tuple2!49213 hash!366 newBucket!194))))))

(assert (=> d!1338141 (= (+!1012 lm!1616 (tuple2!49213 hash!366 newBucket!194)) lt!1618763)))

(declare-fun b!4417148 () Bool)

(declare-fun res!1824901 () Bool)

(assert (=> b!4417148 (=> (not res!1824901) (not e!2750457))))

(assert (=> b!4417148 (= res!1824901 (= (getValueByKey!667 (toList!3403 lt!1618763) (_1!27900 (tuple2!49213 hash!366 newBucket!194))) (Some!10680 (_2!27900 (tuple2!49213 hash!366 newBucket!194)))))))

(declare-fun b!4417149 () Bool)

(declare-fun contains!11945 (List!49604 tuple2!49212) Bool)

(assert (=> b!4417149 (= e!2750457 (contains!11945 (toList!3403 lt!1618763) (tuple2!49213 hash!366 newBucket!194)))))

(assert (= (and d!1338141 res!1824900) b!4417148))

(assert (= (and b!4417148 res!1824901) b!4417149))

(declare-fun m!5093521 () Bool)

(assert (=> d!1338141 m!5093521))

(declare-fun m!5093523 () Bool)

(assert (=> d!1338141 m!5093523))

(declare-fun m!5093525 () Bool)

(assert (=> d!1338141 m!5093525))

(declare-fun m!5093527 () Bool)

(assert (=> d!1338141 m!5093527))

(declare-fun m!5093529 () Bool)

(assert (=> b!4417148 m!5093529))

(declare-fun m!5093531 () Bool)

(assert (=> b!4417149 m!5093531))

(assert (=> b!4417087 d!1338141))

(declare-fun d!1338143 () Bool)

(assert (=> d!1338143 (forall!9493 (toList!3403 (+!1012 lm!1616 (tuple2!49213 hash!366 newBucket!194))) lambda!152229)))

(declare-fun lt!1618768 () Unit!81001)

(declare-fun choose!27797 (ListLongMap!2053 Int (_ BitVec 64) List!49603) Unit!81001)

(assert (=> d!1338143 (= lt!1618768 (choose!27797 lm!1616 lambda!152229 hash!366 newBucket!194))))

(declare-fun e!2750460 () Bool)

(assert (=> d!1338143 e!2750460))

(declare-fun res!1824904 () Bool)

(assert (=> d!1338143 (=> (not res!1824904) (not e!2750460))))

(assert (=> d!1338143 (= res!1824904 (forall!9493 (toList!3403 lm!1616) lambda!152229))))

(assert (=> d!1338143 (= (addValidProp!352 lm!1616 lambda!152229 hash!366 newBucket!194) lt!1618768)))

(declare-fun b!4417153 () Bool)

(assert (=> b!4417153 (= e!2750460 (dynLambda!20814 lambda!152229 (tuple2!49213 hash!366 newBucket!194)))))

(assert (= (and d!1338143 res!1824904) b!4417153))

(declare-fun b_lambda!142235 () Bool)

(assert (=> (not b_lambda!142235) (not b!4417153)))

(assert (=> d!1338143 m!5093459))

(declare-fun m!5093533 () Bool)

(assert (=> d!1338143 m!5093533))

(declare-fun m!5093535 () Bool)

(assert (=> d!1338143 m!5093535))

(assert (=> d!1338143 m!5093473))

(declare-fun m!5093537 () Bool)

(assert (=> b!4417153 m!5093537))

(assert (=> b!4417087 d!1338143))

(declare-fun bs!753698 () Bool)

(declare-fun d!1338147 () Bool)

(assert (= bs!753698 (and d!1338147 start!430180)))

(declare-fun lambda!152243 () Int)

(assert (=> bs!753698 (not (= lambda!152243 lambda!152229))))

(assert (=> d!1338147 true))

(assert (=> d!1338147 (= (allKeysSameHashInMap!814 lm!1616 hashF!1220) (forall!9493 (toList!3403 lm!1616) lambda!152243))))

(declare-fun bs!753699 () Bool)

(assert (= bs!753699 d!1338147))

(declare-fun m!5093539 () Bool)

(assert (=> bs!753699 m!5093539))

(assert (=> b!4417086 d!1338147))

(declare-fun d!1338149 () Bool)

(declare-fun hash!2027 (Hashable!5102 K!10843) (_ BitVec 64))

(assert (=> d!1338149 (= (hash!2025 hashF!1220 key!3717) (hash!2027 hashF!1220 key!3717))))

(declare-fun bs!753700 () Bool)

(assert (= bs!753700 d!1338149))

(declare-fun m!5093541 () Bool)

(assert (=> bs!753700 m!5093541))

(assert (=> b!4417084 d!1338149))

(declare-fun d!1338151 () Bool)

(declare-fun get!16118 (Option!10681) List!49603)

(assert (=> d!1338151 (= (apply!11560 lm!1616 hash!366) (get!16118 (getValueByKey!667 (toList!3403 lm!1616) hash!366)))))

(declare-fun bs!753701 () Bool)

(assert (= bs!753701 d!1338151))

(declare-fun m!5093543 () Bool)

(assert (=> bs!753701 m!5093543))

(assert (=> bs!753701 m!5093543))

(declare-fun m!5093545 () Bool)

(assert (=> bs!753701 m!5093545))

(assert (=> b!4417083 d!1338151))

(declare-fun d!1338153 () Bool)

(declare-fun res!1824909 () Bool)

(declare-fun e!2750465 () Bool)

(assert (=> d!1338153 (=> res!1824909 e!2750465)))

(assert (=> d!1338153 (= res!1824909 (not (is-Cons!49479 newBucket!194)))))

(assert (=> d!1338153 (= (noDuplicateKeys!708 newBucket!194) e!2750465)))

(declare-fun b!4417160 () Bool)

(declare-fun e!2750466 () Bool)

(assert (=> b!4417160 (= e!2750465 e!2750466)))

(declare-fun res!1824910 () Bool)

(assert (=> b!4417160 (=> (not res!1824910) (not e!2750466))))

(declare-fun containsKey!1048 (List!49603 K!10843) Bool)

(assert (=> b!4417160 (= res!1824910 (not (containsKey!1048 (t!356541 newBucket!194) (_1!27899 (h!55142 newBucket!194)))))))

(declare-fun b!4417161 () Bool)

(assert (=> b!4417161 (= e!2750466 (noDuplicateKeys!708 (t!356541 newBucket!194)))))

(assert (= (and d!1338153 (not res!1824909)) b!4417160))

(assert (= (and b!4417160 res!1824910) b!4417161))

(declare-fun m!5093547 () Bool)

(assert (=> b!4417160 m!5093547))

(declare-fun m!5093549 () Bool)

(assert (=> b!4417161 m!5093549))

(assert (=> b!4417082 d!1338153))

(declare-fun d!1338155 () Bool)

(assert (=> d!1338155 true))

(assert (=> d!1338155 true))

(declare-fun lambda!152246 () Int)

(declare-fun forall!9495 (List!49603 Int) Bool)

(assert (=> d!1338155 (= (allKeysSameHash!668 newBucket!194 hash!366 hashF!1220) (forall!9495 newBucket!194 lambda!152246))))

(declare-fun bs!753702 () Bool)

(assert (= bs!753702 d!1338155))

(declare-fun m!5093551 () Bool)

(assert (=> bs!753702 m!5093551))

(assert (=> b!4417081 d!1338155))

(declare-fun d!1338157 () Bool)

(declare-fun res!1824911 () Bool)

(declare-fun e!2750469 () Bool)

(assert (=> d!1338157 (=> res!1824911 e!2750469)))

(assert (=> d!1338157 (= res!1824911 (is-Nil!49480 (tail!7192 (toList!3403 lm!1616))))))

(assert (=> d!1338157 (= (forall!9493 (tail!7192 (toList!3403 lm!1616)) lambda!152229) e!2750469)))

(declare-fun b!4417170 () Bool)

(declare-fun e!2750470 () Bool)

(assert (=> b!4417170 (= e!2750469 e!2750470)))

(declare-fun res!1824912 () Bool)

(assert (=> b!4417170 (=> (not res!1824912) (not e!2750470))))

(assert (=> b!4417170 (= res!1824912 (dynLambda!20814 lambda!152229 (h!55143 (tail!7192 (toList!3403 lm!1616)))))))

(declare-fun b!4417171 () Bool)

(assert (=> b!4417171 (= e!2750470 (forall!9493 (t!356542 (tail!7192 (toList!3403 lm!1616))) lambda!152229))))

(assert (= (and d!1338157 (not res!1824911)) b!4417170))

(assert (= (and b!4417170 res!1824912) b!4417171))

(declare-fun b_lambda!142237 () Bool)

(assert (=> (not b_lambda!142237) (not b!4417170)))

(declare-fun m!5093553 () Bool)

(assert (=> b!4417170 m!5093553))

(declare-fun m!5093555 () Bool)

(assert (=> b!4417171 m!5093555))

(assert (=> b!4417092 d!1338157))

(declare-fun d!1338159 () Bool)

(assert (=> d!1338159 (= (tail!7192 (toList!3403 lm!1616)) (t!356542 (toList!3403 lm!1616)))))

(assert (=> b!4417092 d!1338159))

(declare-fun d!1338161 () Bool)

(declare-fun e!2750479 () Bool)

(assert (=> d!1338161 e!2750479))

(declare-fun res!1824918 () Bool)

(assert (=> d!1338161 (=> res!1824918 e!2750479)))

(declare-fun lt!1618792 () Bool)

(assert (=> d!1338161 (= res!1824918 (not lt!1618792))))

(declare-fun lt!1618791 () Bool)

(assert (=> d!1338161 (= lt!1618792 lt!1618791)))

(declare-fun lt!1618789 () Unit!81001)

(declare-fun e!2750480 () Unit!81001)

(assert (=> d!1338161 (= lt!1618789 e!2750480)))

(declare-fun c!751893 () Bool)

(assert (=> d!1338161 (= c!751893 lt!1618791)))

(declare-fun containsKey!1049 (List!49604 (_ BitVec 64)) Bool)

(assert (=> d!1338161 (= lt!1618791 (containsKey!1049 (toList!3403 lm!1616) hash!366))))

(assert (=> d!1338161 (= (contains!11941 lm!1616 hash!366) lt!1618792)))

(declare-fun b!4417183 () Bool)

(declare-fun lt!1618790 () Unit!81001)

(assert (=> b!4417183 (= e!2750480 lt!1618790)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!577 (List!49604 (_ BitVec 64)) Unit!81001)

(assert (=> b!4417183 (= lt!1618790 (lemmaContainsKeyImpliesGetValueByKeyDefined!577 (toList!3403 lm!1616) hash!366))))

(declare-fun isDefined!7974 (Option!10681) Bool)

(assert (=> b!4417183 (isDefined!7974 (getValueByKey!667 (toList!3403 lm!1616) hash!366))))

(declare-fun b!4417184 () Bool)

(declare-fun Unit!81005 () Unit!81001)

(assert (=> b!4417184 (= e!2750480 Unit!81005)))

(declare-fun b!4417185 () Bool)

(assert (=> b!4417185 (= e!2750479 (isDefined!7974 (getValueByKey!667 (toList!3403 lm!1616) hash!366)))))

(assert (= (and d!1338161 c!751893) b!4417183))

(assert (= (and d!1338161 (not c!751893)) b!4417184))

(assert (= (and d!1338161 (not res!1824918)) b!4417185))

(declare-fun m!5093565 () Bool)

(assert (=> d!1338161 m!5093565))

(declare-fun m!5093567 () Bool)

(assert (=> b!4417183 m!5093567))

(assert (=> b!4417183 m!5093543))

(assert (=> b!4417183 m!5093543))

(declare-fun m!5093569 () Bool)

(assert (=> b!4417183 m!5093569))

(assert (=> b!4417185 m!5093543))

(assert (=> b!4417185 m!5093543))

(assert (=> b!4417185 m!5093569))

(assert (=> b!4417080 d!1338161))

(assert (=> start!430180 d!1338137))

(declare-fun d!1338165 () Bool)

(declare-fun isStrictlySorted!210 (List!49604) Bool)

(assert (=> d!1338165 (= (inv!65030 lm!1616) (isStrictlySorted!210 (toList!3403 lm!1616)))))

(declare-fun bs!753703 () Bool)

(assert (= bs!753703 d!1338165))

(declare-fun m!5093571 () Bool)

(assert (=> bs!753703 m!5093571))

(assert (=> start!430180 d!1338165))

(declare-fun b!4417224 () Bool)

(declare-fun e!2750510 () Unit!81001)

(declare-fun lt!1618815 () Unit!81001)

(assert (=> b!4417224 (= e!2750510 lt!1618815)))

(declare-fun lt!1618812 () Unit!81001)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!578 (List!49603 K!10843) Unit!81001)

(assert (=> b!4417224 (= lt!1618812 (lemmaContainsKeyImpliesGetValueByKeyDefined!578 (toList!3404 (extractMap!769 (toList!3403 lm!1616))) key!3717))))

(declare-datatypes ((Option!10682 0))(
  ( (None!10681) (Some!10681 (v!43841 V!11089)) )
))
(declare-fun isDefined!7975 (Option!10682) Bool)

(declare-fun getValueByKey!668 (List!49603 K!10843) Option!10682)

(assert (=> b!4417224 (isDefined!7975 (getValueByKey!668 (toList!3404 (extractMap!769 (toList!3403 lm!1616))) key!3717))))

(declare-fun lt!1618809 () Unit!81001)

(assert (=> b!4417224 (= lt!1618809 lt!1618812)))

(declare-fun lemmaInListThenGetKeysListContains!228 (List!49603 K!10843) Unit!81001)

(assert (=> b!4417224 (= lt!1618815 (lemmaInListThenGetKeysListContains!228 (toList!3404 (extractMap!769 (toList!3403 lm!1616))) key!3717))))

(declare-fun call!307375 () Bool)

(assert (=> b!4417224 call!307375))

(declare-fun b!4417225 () Bool)

(declare-fun e!2750511 () Bool)

(declare-datatypes ((List!49607 0))(
  ( (Nil!49483) (Cons!49483 (h!55148 K!10843) (t!356545 List!49607)) )
))
(declare-fun contains!11946 (List!49607 K!10843) Bool)

(declare-fun keys!16867 (ListMap!2647) List!49607)

(assert (=> b!4417225 (= e!2750511 (contains!11946 (keys!16867 (extractMap!769 (toList!3403 lm!1616))) key!3717))))

(declare-fun b!4417226 () Bool)

(declare-fun e!2750512 () List!49607)

(assert (=> b!4417226 (= e!2750512 (keys!16867 (extractMap!769 (toList!3403 lm!1616))))))

(declare-fun b!4417227 () Bool)

(assert (=> b!4417227 false))

(declare-fun lt!1618814 () Unit!81001)

(declare-fun lt!1618816 () Unit!81001)

(assert (=> b!4417227 (= lt!1618814 lt!1618816)))

(declare-fun containsKey!1050 (List!49603 K!10843) Bool)

(assert (=> b!4417227 (containsKey!1050 (toList!3404 (extractMap!769 (toList!3403 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!229 (List!49603 K!10843) Unit!81001)

(assert (=> b!4417227 (= lt!1618816 (lemmaInGetKeysListThenContainsKey!229 (toList!3404 (extractMap!769 (toList!3403 lm!1616))) key!3717))))

(declare-fun e!2750513 () Unit!81001)

(declare-fun Unit!81006 () Unit!81001)

(assert (=> b!4417227 (= e!2750513 Unit!81006)))

(declare-fun d!1338167 () Bool)

(declare-fun e!2750509 () Bool)

(assert (=> d!1338167 e!2750509))

(declare-fun res!1824941 () Bool)

(assert (=> d!1338167 (=> res!1824941 e!2750509)))

(declare-fun e!2750514 () Bool)

(assert (=> d!1338167 (= res!1824941 e!2750514)))

(declare-fun res!1824942 () Bool)

(assert (=> d!1338167 (=> (not res!1824942) (not e!2750514))))

(declare-fun lt!1618810 () Bool)

(assert (=> d!1338167 (= res!1824942 (not lt!1618810))))

(declare-fun lt!1618813 () Bool)

(assert (=> d!1338167 (= lt!1618810 lt!1618813)))

(declare-fun lt!1618811 () Unit!81001)

(assert (=> d!1338167 (= lt!1618811 e!2750510)))

(declare-fun c!751901 () Bool)

(assert (=> d!1338167 (= c!751901 lt!1618813)))

(assert (=> d!1338167 (= lt!1618813 (containsKey!1050 (toList!3404 (extractMap!769 (toList!3403 lm!1616))) key!3717))))

(assert (=> d!1338167 (= (contains!11942 (extractMap!769 (toList!3403 lm!1616)) key!3717) lt!1618810)))

(declare-fun b!4417228 () Bool)

(declare-fun Unit!81007 () Unit!81001)

(assert (=> b!4417228 (= e!2750513 Unit!81007)))

(declare-fun b!4417229 () Bool)

(assert (=> b!4417229 (= e!2750514 (not (contains!11946 (keys!16867 (extractMap!769 (toList!3403 lm!1616))) key!3717)))))

(declare-fun b!4417230 () Bool)

(assert (=> b!4417230 (= e!2750509 e!2750511)))

(declare-fun res!1824943 () Bool)

(assert (=> b!4417230 (=> (not res!1824943) (not e!2750511))))

(assert (=> b!4417230 (= res!1824943 (isDefined!7975 (getValueByKey!668 (toList!3404 (extractMap!769 (toList!3403 lm!1616))) key!3717)))))

(declare-fun b!4417231 () Bool)

(declare-fun getKeysList!231 (List!49603) List!49607)

(assert (=> b!4417231 (= e!2750512 (getKeysList!231 (toList!3404 (extractMap!769 (toList!3403 lm!1616)))))))

(declare-fun bm!307370 () Bool)

(assert (=> bm!307370 (= call!307375 (contains!11946 e!2750512 key!3717))))

(declare-fun c!751900 () Bool)

(assert (=> bm!307370 (= c!751900 c!751901)))

(declare-fun b!4417232 () Bool)

(assert (=> b!4417232 (= e!2750510 e!2750513)))

(declare-fun c!751902 () Bool)

(assert (=> b!4417232 (= c!751902 call!307375)))

(assert (= (and d!1338167 c!751901) b!4417224))

(assert (= (and d!1338167 (not c!751901)) b!4417232))

(assert (= (and b!4417232 c!751902) b!4417227))

(assert (= (and b!4417232 (not c!751902)) b!4417228))

(assert (= (or b!4417224 b!4417232) bm!307370))

(assert (= (and bm!307370 c!751900) b!4417231))

(assert (= (and bm!307370 (not c!751900)) b!4417226))

(assert (= (and d!1338167 res!1824942) b!4417229))

(assert (= (and d!1338167 (not res!1824941)) b!4417230))

(assert (= (and b!4417230 res!1824943) b!4417225))

(assert (=> b!4417229 m!5093479))

(declare-fun m!5093591 () Bool)

(assert (=> b!4417229 m!5093591))

(assert (=> b!4417229 m!5093591))

(declare-fun m!5093593 () Bool)

(assert (=> b!4417229 m!5093593))

(declare-fun m!5093595 () Bool)

(assert (=> b!4417224 m!5093595))

(declare-fun m!5093597 () Bool)

(assert (=> b!4417224 m!5093597))

(assert (=> b!4417224 m!5093597))

(declare-fun m!5093599 () Bool)

(assert (=> b!4417224 m!5093599))

(declare-fun m!5093601 () Bool)

(assert (=> b!4417224 m!5093601))

(assert (=> b!4417226 m!5093479))

(assert (=> b!4417226 m!5093591))

(assert (=> b!4417225 m!5093479))

(assert (=> b!4417225 m!5093591))

(assert (=> b!4417225 m!5093591))

(assert (=> b!4417225 m!5093593))

(declare-fun m!5093603 () Bool)

(assert (=> b!4417227 m!5093603))

(declare-fun m!5093605 () Bool)

(assert (=> b!4417227 m!5093605))

(assert (=> d!1338167 m!5093603))

(declare-fun m!5093607 () Bool)

(assert (=> bm!307370 m!5093607))

(declare-fun m!5093609 () Bool)

(assert (=> b!4417231 m!5093609))

(assert (=> b!4417230 m!5093597))

(assert (=> b!4417230 m!5093597))

(assert (=> b!4417230 m!5093599))

(assert (=> b!4417089 d!1338167))

(declare-fun bs!753705 () Bool)

(declare-fun d!1338181 () Bool)

(assert (= bs!753705 (and d!1338181 start!430180)))

(declare-fun lambda!152252 () Int)

(assert (=> bs!753705 (= lambda!152252 lambda!152229)))

(declare-fun bs!753706 () Bool)

(assert (= bs!753706 (and d!1338181 d!1338147)))

(assert (=> bs!753706 (not (= lambda!152252 lambda!152243))))

(declare-fun lt!1618827 () ListMap!2647)

(declare-fun invariantList!783 (List!49603) Bool)

(assert (=> d!1338181 (invariantList!783 (toList!3404 lt!1618827))))

(declare-fun e!2750519 () ListMap!2647)

(assert (=> d!1338181 (= lt!1618827 e!2750519)))

(declare-fun c!751905 () Bool)

(assert (=> d!1338181 (= c!751905 (is-Cons!49480 (toList!3403 lm!1616)))))

(assert (=> d!1338181 (forall!9493 (toList!3403 lm!1616) lambda!152252)))

(assert (=> d!1338181 (= (extractMap!769 (toList!3403 lm!1616)) lt!1618827)))

(declare-fun b!4417241 () Bool)

(declare-fun addToMapMapFromBucket!358 (List!49603 ListMap!2647) ListMap!2647)

(assert (=> b!4417241 (= e!2750519 (addToMapMapFromBucket!358 (_2!27900 (h!55143 (toList!3403 lm!1616))) (extractMap!769 (t!356542 (toList!3403 lm!1616)))))))

(declare-fun b!4417242 () Bool)

(assert (=> b!4417242 (= e!2750519 (ListMap!2648 Nil!49479))))

(assert (= (and d!1338181 c!751905) b!4417241))

(assert (= (and d!1338181 (not c!751905)) b!4417242))

(declare-fun m!5093611 () Bool)

(assert (=> d!1338181 m!5093611))

(declare-fun m!5093613 () Bool)

(assert (=> d!1338181 m!5093613))

(declare-fun m!5093615 () Bool)

(assert (=> b!4417241 m!5093615))

(assert (=> b!4417241 m!5093615))

(declare-fun m!5093617 () Bool)

(assert (=> b!4417241 m!5093617))

(assert (=> b!4417089 d!1338181))

(declare-fun tp!1332719 () Bool)

(declare-fun e!2750523 () Bool)

(declare-fun b!4417249 () Bool)

(assert (=> b!4417249 (= e!2750523 (and tp_is_empty!26079 tp_is_empty!26077 tp!1332719))))

(assert (=> b!4417085 (= tp!1332710 e!2750523)))

(assert (= (and b!4417085 (is-Cons!49479 (t!356541 newBucket!194))) b!4417249))

(declare-fun b!4417254 () Bool)

(declare-fun e!2750526 () Bool)

(declare-fun tp!1332724 () Bool)

(declare-fun tp!1332725 () Bool)

(assert (=> b!4417254 (= e!2750526 (and tp!1332724 tp!1332725))))

(assert (=> b!4417090 (= tp!1332709 e!2750526)))

(assert (= (and b!4417090 (is-Cons!49480 (toList!3403 lm!1616))) b!4417254))

(declare-fun b_lambda!142245 () Bool)

(assert (= b_lambda!142231 (or start!430180 b_lambda!142245)))

(declare-fun bs!753707 () Bool)

(declare-fun d!1338183 () Bool)

(assert (= bs!753707 (and d!1338183 start!430180)))

(assert (=> bs!753707 (= (dynLambda!20814 lambda!152229 (h!55143 (toList!3403 lm!1616))) (noDuplicateKeys!708 (_2!27900 (h!55143 (toList!3403 lm!1616)))))))

(declare-fun m!5093622 () Bool)

(assert (=> bs!753707 m!5093622))

(assert (=> b!4417140 d!1338183))

(declare-fun b_lambda!142247 () Bool)

(assert (= b_lambda!142235 (or start!430180 b_lambda!142247)))

(declare-fun bs!753708 () Bool)

(declare-fun d!1338185 () Bool)

(assert (= bs!753708 (and d!1338185 start!430180)))

(assert (=> bs!753708 (= (dynLambda!20814 lambda!152229 (tuple2!49213 hash!366 newBucket!194)) (noDuplicateKeys!708 (_2!27900 (tuple2!49213 hash!366 newBucket!194))))))

(declare-fun m!5093625 () Bool)

(assert (=> bs!753708 m!5093625))

(assert (=> b!4417153 d!1338185))

(declare-fun b_lambda!142249 () Bool)

(assert (= b_lambda!142233 (or start!430180 b_lambda!142249)))

(declare-fun bs!753709 () Bool)

(declare-fun d!1338187 () Bool)

(assert (= bs!753709 (and d!1338187 start!430180)))

(assert (=> bs!753709 (= (dynLambda!20814 lambda!152229 (h!55143 (toList!3403 lt!1618744))) (noDuplicateKeys!708 (_2!27900 (h!55143 (toList!3403 lt!1618744)))))))

(declare-fun m!5093629 () Bool)

(assert (=> bs!753709 m!5093629))

(assert (=> b!4417142 d!1338187))

(declare-fun b_lambda!142251 () Bool)

(assert (= b_lambda!142237 (or start!430180 b_lambda!142251)))

(declare-fun bs!753710 () Bool)

(declare-fun d!1338189 () Bool)

(assert (= bs!753710 (and d!1338189 start!430180)))

(assert (=> bs!753710 (= (dynLambda!20814 lambda!152229 (h!55143 (tail!7192 (toList!3403 lm!1616)))) (noDuplicateKeys!708 (_2!27900 (h!55143 (tail!7192 (toList!3403 lm!1616))))))))

(declare-fun m!5093633 () Bool)

(assert (=> bs!753710 m!5093633))

(assert (=> b!4417170 d!1338189))

(push 1)

(assert (not b!4417183))

(assert (not b!4417229))

(assert (not d!1338155))

(assert (not b!4417249))

(assert (not b!4417227))

(assert (not d!1338143))

(assert (not d!1338149))

(assert (not d!1338167))

(assert (not b!4417231))

(assert (not d!1338147))

(assert (not b!4417143))

(assert (not b_lambda!142249))

(assert (not b!4417230))

(assert (not bs!753707))

(assert (not b!4417225))

(assert tp_is_empty!26079)

(assert (not b_lambda!142251))

(assert (not b_lambda!142245))

(assert (not b!4417241))

(assert (not b!4417254))

(assert (not b!4417224))

(assert (not b!4417149))

(assert (not b!4417226))

(assert (not d!1338151))

(assert (not b!4417171))

(assert (not bs!753710))

(assert (not b_lambda!142247))

(assert (not b!4417185))

(assert (not d!1338161))

(assert (not b!4417141))

(assert (not bs!753709))

(assert tp_is_empty!26077)

(assert (not bm!307370))

(assert (not d!1338181))

(assert (not b!4417161))

(assert (not bs!753708))

(assert (not d!1338141))

(assert (not d!1338165))

(assert (not b!4417148))

(assert (not b!4417160))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

