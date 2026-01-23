; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!435780 () Bool)

(assert start!435780)

(declare-datatypes ((V!11481 0))(
  ( (V!11482 (val!17259 Int)) )
))
(declare-datatypes ((K!11235 0))(
  ( (K!11236 (val!17260 Int)) )
))
(declare-datatypes ((tuple2!49838 0))(
  ( (tuple2!49839 (_1!28213 K!11235) (_2!28213 V!11481)) )
))
(declare-datatypes ((List!49991 0))(
  ( (Nil!49867) (Cons!49867 (h!55610 tuple2!49838) (t!356937 List!49991)) )
))
(declare-datatypes ((tuple2!49840 0))(
  ( (tuple2!49841 (_1!28214 (_ BitVec 64)) (_2!28214 List!49991)) )
))
(declare-datatypes ((List!49992 0))(
  ( (Nil!49868) (Cons!49868 (h!55611 tuple2!49840) (t!356938 List!49992)) )
))
(declare-datatypes ((ListLongMap!2367 0))(
  ( (ListLongMap!2368 (toList!3717 List!49992)) )
))
(declare-fun lt!1644119 () ListLongMap!2367)

(declare-fun key!3717 () K!11235)

(declare-fun e!2771768 () Bool)

(declare-fun b!4451212 () Bool)

(declare-datatypes ((ListMap!2961 0))(
  ( (ListMap!2962 (toList!3718 List!49991)) )
))
(declare-fun lt!1644116 () ListMap!2961)

(declare-fun newValue!93 () V!11481)

(declare-fun eq!465 (ListMap!2961 ListMap!2961) Bool)

(declare-fun extractMap!926 (List!49992) ListMap!2961)

(declare-fun +!1267 (ListMap!2961 tuple2!49838) ListMap!2961)

(assert (=> b!4451212 (= e!2771768 (eq!465 (extractMap!926 (toList!3717 lt!1644119)) (+!1267 lt!1644116 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun b!4451213 () Bool)

(declare-fun res!1844436 () Bool)

(declare-fun e!2771772 () Bool)

(assert (=> b!4451213 (=> (not res!1844436) (not e!2771772))))

(declare-fun lm!1616 () ListLongMap!2367)

(declare-fun lambda!159068 () Int)

(declare-fun forall!9756 (List!49992 Int) Bool)

(assert (=> b!4451213 (= res!1844436 (forall!9756 (toList!3717 lm!1616) lambda!159068))))

(declare-fun b!4451214 () Bool)

(declare-fun e!2771769 () Bool)

(declare-fun lt!1644118 () Bool)

(declare-fun newBucket!194 () List!49991)

(assert (=> b!4451214 (= e!2771769 (and (not lt!1644118) (= newBucket!194 (Cons!49867 (tuple2!49839 key!3717 newValue!93) Nil!49867))))))

(declare-fun tp_is_empty!26707 () Bool)

(declare-fun e!2771765 () Bool)

(declare-fun tp!1334538 () Bool)

(declare-fun b!4451215 () Bool)

(declare-fun tp_is_empty!26705 () Bool)

(assert (=> b!4451215 (= e!2771765 (and tp_is_empty!26707 tp_is_empty!26705 tp!1334538))))

(declare-fun res!1844438 () Bool)

(declare-fun e!2771771 () Bool)

(assert (=> start!435780 (=> (not res!1844438) (not e!2771771))))

(assert (=> start!435780 (= res!1844438 (forall!9756 (toList!3717 lm!1616) lambda!159068))))

(assert (=> start!435780 e!2771771))

(assert (=> start!435780 tp_is_empty!26705))

(assert (=> start!435780 tp_is_empty!26707))

(assert (=> start!435780 e!2771765))

(declare-fun e!2771766 () Bool)

(declare-fun inv!65421 (ListLongMap!2367) Bool)

(assert (=> start!435780 (and (inv!65421 lm!1616) e!2771766)))

(assert (=> start!435780 true))

(declare-fun b!4451216 () Bool)

(declare-fun res!1844435 () Bool)

(assert (=> b!4451216 (=> (not res!1844435) (not e!2771772))))

(declare-fun noDuplicateKeys!865 (List!49991) Bool)

(assert (=> b!4451216 (= res!1844435 (noDuplicateKeys!865 newBucket!194))))

(declare-fun b!4451217 () Bool)

(declare-fun e!2771770 () Bool)

(assert (=> b!4451217 (= e!2771770 e!2771772)))

(declare-fun res!1844432 () Bool)

(assert (=> b!4451217 (=> (not res!1844432) (not e!2771772))))

(assert (=> b!4451217 (= res!1844432 e!2771769)))

(declare-fun res!1844433 () Bool)

(assert (=> b!4451217 (=> res!1844433 e!2771769)))

(declare-fun e!2771767 () Bool)

(assert (=> b!4451217 (= res!1844433 e!2771767)))

(declare-fun res!1844437 () Bool)

(assert (=> b!4451217 (=> (not res!1844437) (not e!2771767))))

(assert (=> b!4451217 (= res!1844437 lt!1644118)))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12461 (ListLongMap!2367 (_ BitVec 64)) Bool)

(assert (=> b!4451217 (= lt!1644118 (contains!12461 lm!1616 hash!366))))

(declare-fun b!4451218 () Bool)

(assert (=> b!4451218 (= e!2771771 e!2771770)))

(declare-fun res!1844439 () Bool)

(assert (=> b!4451218 (=> (not res!1844439) (not e!2771770))))

(declare-fun contains!12462 (ListMap!2961 K!11235) Bool)

(assert (=> b!4451218 (= res!1844439 (not (contains!12462 lt!1644116 key!3717)))))

(assert (=> b!4451218 (= lt!1644116 (extractMap!926 (toList!3717 lm!1616)))))

(declare-fun b!4451219 () Bool)

(assert (=> b!4451219 (= e!2771772 (not e!2771768))))

(declare-fun res!1844443 () Bool)

(assert (=> b!4451219 (=> res!1844443 e!2771768)))

(assert (=> b!4451219 (= res!1844443 (not (forall!9756 (toList!3717 lt!1644119) lambda!159068)))))

(assert (=> b!4451219 (forall!9756 (toList!3717 lt!1644119) lambda!159068)))

(declare-fun +!1268 (ListLongMap!2367 tuple2!49840) ListLongMap!2367)

(assert (=> b!4451219 (= lt!1644119 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!85492 0))(
  ( (Unit!85493) )
))
(declare-fun lt!1644117 () Unit!85492)

(declare-fun addValidProp!503 (ListLongMap!2367 Int (_ BitVec 64) List!49991) Unit!85492)

(assert (=> b!4451219 (= lt!1644117 (addValidProp!503 lm!1616 lambda!159068 hash!366 newBucket!194))))

(declare-fun b!4451220 () Bool)

(declare-fun res!1844442 () Bool)

(assert (=> b!4451220 (=> (not res!1844442) (not e!2771771))))

(declare-datatypes ((Hashable!5259 0))(
  ( (HashableExt!5258 (__x!30962 Int)) )
))
(declare-fun hashF!1220 () Hashable!5259)

(declare-fun hash!2354 (Hashable!5259 K!11235) (_ BitVec 64))

(assert (=> b!4451220 (= res!1844442 (= (hash!2354 hashF!1220 key!3717) hash!366))))

(declare-fun b!4451221 () Bool)

(declare-fun res!1844440 () Bool)

(assert (=> b!4451221 (=> (not res!1844440) (not e!2771771))))

(declare-fun allKeysSameHashInMap!971 (ListLongMap!2367 Hashable!5259) Bool)

(assert (=> b!4451221 (= res!1844440 (allKeysSameHashInMap!971 lm!1616 hashF!1220))))

(declare-fun b!4451222 () Bool)

(declare-fun res!1844434 () Bool)

(assert (=> b!4451222 (=> (not res!1844434) (not e!2771771))))

(declare-fun allKeysSameHash!825 (List!49991 (_ BitVec 64) Hashable!5259) Bool)

(assert (=> b!4451222 (= res!1844434 (allKeysSameHash!825 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4451223 () Bool)

(declare-fun res!1844441 () Bool)

(assert (=> b!4451223 (=> res!1844441 e!2771768)))

(get-info :version)

(assert (=> b!4451223 (= res!1844441 (or (and ((_ is Cons!49868) (toList!3717 lm!1616)) (= (_1!28214 (h!55611 (toList!3717 lm!1616))) hash!366)) (and ((_ is Cons!49868) (toList!3717 lm!1616)) (not (= (_1!28214 (h!55611 (toList!3717 lm!1616))) hash!366))) (not ((_ is Nil!49868) (toList!3717 lm!1616)))))))

(declare-fun b!4451224 () Bool)

(declare-fun apply!11717 (ListLongMap!2367 (_ BitVec 64)) List!49991)

(assert (=> b!4451224 (= e!2771767 (= newBucket!194 (Cons!49867 (tuple2!49839 key!3717 newValue!93) (apply!11717 lm!1616 hash!366))))))

(declare-fun b!4451225 () Bool)

(declare-fun tp!1334537 () Bool)

(assert (=> b!4451225 (= e!2771766 tp!1334537)))

(assert (= (and start!435780 res!1844438) b!4451221))

(assert (= (and b!4451221 res!1844440) b!4451220))

(assert (= (and b!4451220 res!1844442) b!4451222))

(assert (= (and b!4451222 res!1844434) b!4451218))

(assert (= (and b!4451218 res!1844439) b!4451217))

(assert (= (and b!4451217 res!1844437) b!4451224))

(assert (= (and b!4451217 (not res!1844433)) b!4451214))

(assert (= (and b!4451217 res!1844432) b!4451216))

(assert (= (and b!4451216 res!1844435) b!4451213))

(assert (= (and b!4451213 res!1844436) b!4451219))

(assert (= (and b!4451219 (not res!1844443)) b!4451223))

(assert (= (and b!4451223 (not res!1844441)) b!4451212))

(assert (= (and start!435780 ((_ is Cons!49867) newBucket!194)) b!4451215))

(assert (= start!435780 b!4451225))

(declare-fun m!5150921 () Bool)

(assert (=> b!4451218 m!5150921))

(declare-fun m!5150923 () Bool)

(assert (=> b!4451218 m!5150923))

(declare-fun m!5150925 () Bool)

(assert (=> b!4451222 m!5150925))

(declare-fun m!5150927 () Bool)

(assert (=> b!4451212 m!5150927))

(declare-fun m!5150929 () Bool)

(assert (=> b!4451212 m!5150929))

(assert (=> b!4451212 m!5150927))

(assert (=> b!4451212 m!5150929))

(declare-fun m!5150931 () Bool)

(assert (=> b!4451212 m!5150931))

(declare-fun m!5150933 () Bool)

(assert (=> start!435780 m!5150933))

(declare-fun m!5150935 () Bool)

(assert (=> start!435780 m!5150935))

(assert (=> b!4451213 m!5150933))

(declare-fun m!5150937 () Bool)

(assert (=> b!4451216 m!5150937))

(declare-fun m!5150939 () Bool)

(assert (=> b!4451220 m!5150939))

(declare-fun m!5150941 () Bool)

(assert (=> b!4451219 m!5150941))

(assert (=> b!4451219 m!5150941))

(declare-fun m!5150943 () Bool)

(assert (=> b!4451219 m!5150943))

(declare-fun m!5150945 () Bool)

(assert (=> b!4451219 m!5150945))

(declare-fun m!5150947 () Bool)

(assert (=> b!4451221 m!5150947))

(declare-fun m!5150949 () Bool)

(assert (=> b!4451224 m!5150949))

(declare-fun m!5150951 () Bool)

(assert (=> b!4451217 m!5150951))

(check-sat (not b!4451222) tp_is_empty!26707 (not b!4451217) (not b!4451225) (not b!4451215) tp_is_empty!26705 (not b!4451224) (not b!4451220) (not b!4451221) (not b!4451216) (not b!4451213) (not b!4451219) (not start!435780) (not b!4451212) (not b!4451218))
(check-sat)
(get-model)

(declare-fun d!1357329 () Bool)

(declare-datatypes ((Option!10837 0))(
  ( (None!10836) (Some!10836 (v!44084 List!49991)) )
))
(declare-fun get!16270 (Option!10837) List!49991)

(declare-fun getValueByKey!823 (List!49992 (_ BitVec 64)) Option!10837)

(assert (=> d!1357329 (= (apply!11717 lm!1616 hash!366) (get!16270 (getValueByKey!823 (toList!3717 lm!1616) hash!366)))))

(declare-fun bs!788873 () Bool)

(assert (= bs!788873 d!1357329))

(declare-fun m!5150959 () Bool)

(assert (=> bs!788873 m!5150959))

(assert (=> bs!788873 m!5150959))

(declare-fun m!5150961 () Bool)

(assert (=> bs!788873 m!5150961))

(assert (=> b!4451224 d!1357329))

(declare-fun d!1357331 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8033 (List!49991) (InoxSet tuple2!49838))

(assert (=> d!1357331 (= (eq!465 (extractMap!926 (toList!3717 lt!1644119)) (+!1267 lt!1644116 (tuple2!49839 key!3717 newValue!93))) (= (content!8033 (toList!3718 (extractMap!926 (toList!3717 lt!1644119)))) (content!8033 (toList!3718 (+!1267 lt!1644116 (tuple2!49839 key!3717 newValue!93))))))))

(declare-fun bs!788874 () Bool)

(assert (= bs!788874 d!1357331))

(declare-fun m!5150963 () Bool)

(assert (=> bs!788874 m!5150963))

(declare-fun m!5150965 () Bool)

(assert (=> bs!788874 m!5150965))

(assert (=> b!4451212 d!1357331))

(declare-fun bs!788878 () Bool)

(declare-fun d!1357333 () Bool)

(assert (= bs!788878 (and d!1357333 start!435780)))

(declare-fun lambda!159077 () Int)

(assert (=> bs!788878 (= lambda!159077 lambda!159068)))

(declare-fun lt!1644149 () ListMap!2961)

(declare-fun invariantList!860 (List!49991) Bool)

(assert (=> d!1357333 (invariantList!860 (toList!3718 lt!1644149))))

(declare-fun e!2771804 () ListMap!2961)

(assert (=> d!1357333 (= lt!1644149 e!2771804)))

(declare-fun c!757808 () Bool)

(assert (=> d!1357333 (= c!757808 ((_ is Cons!49868) (toList!3717 lt!1644119)))))

(assert (=> d!1357333 (forall!9756 (toList!3717 lt!1644119) lambda!159077)))

(assert (=> d!1357333 (= (extractMap!926 (toList!3717 lt!1644119)) lt!1644149)))

(declare-fun b!4451273 () Bool)

(declare-fun addToMapMapFromBucket!471 (List!49991 ListMap!2961) ListMap!2961)

(assert (=> b!4451273 (= e!2771804 (addToMapMapFromBucket!471 (_2!28214 (h!55611 (toList!3717 lt!1644119))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))))))

(declare-fun b!4451274 () Bool)

(assert (=> b!4451274 (= e!2771804 (ListMap!2962 Nil!49867))))

(assert (= (and d!1357333 c!757808) b!4451273))

(assert (= (and d!1357333 (not c!757808)) b!4451274))

(declare-fun m!5151001 () Bool)

(assert (=> d!1357333 m!5151001))

(declare-fun m!5151003 () Bool)

(assert (=> d!1357333 m!5151003))

(declare-fun m!5151005 () Bool)

(assert (=> b!4451273 m!5151005))

(assert (=> b!4451273 m!5151005))

(declare-fun m!5151007 () Bool)

(assert (=> b!4451273 m!5151007))

(assert (=> b!4451212 d!1357333))

(declare-fun d!1357343 () Bool)

(declare-fun e!2771826 () Bool)

(assert (=> d!1357343 e!2771826))

(declare-fun res!1844483 () Bool)

(assert (=> d!1357343 (=> (not res!1844483) (not e!2771826))))

(declare-fun lt!1644187 () ListMap!2961)

(assert (=> d!1357343 (= res!1844483 (contains!12462 lt!1644187 (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun lt!1644188 () List!49991)

(assert (=> d!1357343 (= lt!1644187 (ListMap!2962 lt!1644188))))

(declare-fun lt!1644186 () Unit!85492)

(declare-fun lt!1644189 () Unit!85492)

(assert (=> d!1357343 (= lt!1644186 lt!1644189)))

(declare-datatypes ((Option!10838 0))(
  ( (None!10837) (Some!10837 (v!44085 V!11481)) )
))
(declare-fun getValueByKey!824 (List!49991 K!11235) Option!10838)

(assert (=> d!1357343 (= (getValueByKey!824 lt!1644188 (_1!28213 (tuple2!49839 key!3717 newValue!93))) (Some!10837 (_2!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun lemmaContainsTupThenGetReturnValue!539 (List!49991 K!11235 V!11481) Unit!85492)

(assert (=> d!1357343 (= lt!1644189 (lemmaContainsTupThenGetReturnValue!539 lt!1644188 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun insertNoDuplicatedKeys!234 (List!49991 K!11235 V!11481) List!49991)

(assert (=> d!1357343 (= lt!1644188 (insertNoDuplicatedKeys!234 (toList!3718 lt!1644116) (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))))))

(assert (=> d!1357343 (= (+!1267 lt!1644116 (tuple2!49839 key!3717 newValue!93)) lt!1644187)))

(declare-fun b!4451310 () Bool)

(declare-fun res!1844484 () Bool)

(assert (=> b!4451310 (=> (not res!1844484) (not e!2771826))))

(assert (=> b!4451310 (= res!1844484 (= (getValueByKey!824 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))) (Some!10837 (_2!28213 (tuple2!49839 key!3717 newValue!93)))))))

(declare-fun b!4451311 () Bool)

(declare-fun contains!12466 (List!49991 tuple2!49838) Bool)

(assert (=> b!4451311 (= e!2771826 (contains!12466 (toList!3718 lt!1644187) (tuple2!49839 key!3717 newValue!93)))))

(assert (= (and d!1357343 res!1844483) b!4451310))

(assert (= (and b!4451310 res!1844484) b!4451311))

(declare-fun m!5151053 () Bool)

(assert (=> d!1357343 m!5151053))

(declare-fun m!5151055 () Bool)

(assert (=> d!1357343 m!5151055))

(declare-fun m!5151057 () Bool)

(assert (=> d!1357343 m!5151057))

(declare-fun m!5151059 () Bool)

(assert (=> d!1357343 m!5151059))

(declare-fun m!5151061 () Bool)

(assert (=> b!4451310 m!5151061))

(declare-fun m!5151063 () Bool)

(assert (=> b!4451311 m!5151063))

(assert (=> b!4451212 d!1357343))

(declare-fun d!1357359 () Bool)

(declare-fun res!1844489 () Bool)

(declare-fun e!2771831 () Bool)

(assert (=> d!1357359 (=> res!1844489 e!2771831)))

(assert (=> d!1357359 (= res!1844489 ((_ is Nil!49868) (toList!3717 lm!1616)))))

(assert (=> d!1357359 (= (forall!9756 (toList!3717 lm!1616) lambda!159068) e!2771831)))

(declare-fun b!4451316 () Bool)

(declare-fun e!2771832 () Bool)

(assert (=> b!4451316 (= e!2771831 e!2771832)))

(declare-fun res!1844490 () Bool)

(assert (=> b!4451316 (=> (not res!1844490) (not e!2771832))))

(declare-fun dynLambda!20938 (Int tuple2!49840) Bool)

(assert (=> b!4451316 (= res!1844490 (dynLambda!20938 lambda!159068 (h!55611 (toList!3717 lm!1616))))))

(declare-fun b!4451317 () Bool)

(assert (=> b!4451317 (= e!2771832 (forall!9756 (t!356938 (toList!3717 lm!1616)) lambda!159068))))

(assert (= (and d!1357359 (not res!1844489)) b!4451316))

(assert (= (and b!4451316 res!1844490) b!4451317))

(declare-fun b_lambda!146975 () Bool)

(assert (=> (not b_lambda!146975) (not b!4451316)))

(declare-fun m!5151065 () Bool)

(assert (=> b!4451316 m!5151065))

(declare-fun m!5151067 () Bool)

(assert (=> b!4451317 m!5151067))

(assert (=> b!4451213 d!1357359))

(declare-fun d!1357361 () Bool)

(declare-fun res!1844501 () Bool)

(declare-fun e!2771843 () Bool)

(assert (=> d!1357361 (=> res!1844501 e!2771843)))

(assert (=> d!1357361 (= res!1844501 (not ((_ is Cons!49867) newBucket!194)))))

(assert (=> d!1357361 (= (noDuplicateKeys!865 newBucket!194) e!2771843)))

(declare-fun b!4451333 () Bool)

(declare-fun e!2771844 () Bool)

(assert (=> b!4451333 (= e!2771843 e!2771844)))

(declare-fun res!1844502 () Bool)

(assert (=> b!4451333 (=> (not res!1844502) (not e!2771844))))

(declare-fun containsKey!1294 (List!49991 K!11235) Bool)

(assert (=> b!4451333 (= res!1844502 (not (containsKey!1294 (t!356937 newBucket!194) (_1!28213 (h!55610 newBucket!194)))))))

(declare-fun b!4451334 () Bool)

(assert (=> b!4451334 (= e!2771844 (noDuplicateKeys!865 (t!356937 newBucket!194)))))

(assert (= (and d!1357361 (not res!1844501)) b!4451333))

(assert (= (and b!4451333 res!1844502) b!4451334))

(declare-fun m!5151085 () Bool)

(assert (=> b!4451333 m!5151085))

(declare-fun m!5151087 () Bool)

(assert (=> b!4451334 m!5151087))

(assert (=> b!4451216 d!1357361))

(declare-fun d!1357367 () Bool)

(declare-fun e!2771853 () Bool)

(assert (=> d!1357367 e!2771853))

(declare-fun res!1844505 () Bool)

(assert (=> d!1357367 (=> res!1844505 e!2771853)))

(declare-fun lt!1644210 () Bool)

(assert (=> d!1357367 (= res!1844505 (not lt!1644210))))

(declare-fun lt!1644212 () Bool)

(assert (=> d!1357367 (= lt!1644210 lt!1644212)))

(declare-fun lt!1644213 () Unit!85492)

(declare-fun e!2771852 () Unit!85492)

(assert (=> d!1357367 (= lt!1644213 e!2771852)))

(declare-fun c!757815 () Bool)

(assert (=> d!1357367 (= c!757815 lt!1644212)))

(declare-fun containsKey!1295 (List!49992 (_ BitVec 64)) Bool)

(assert (=> d!1357367 (= lt!1644212 (containsKey!1295 (toList!3717 lm!1616) hash!366))))

(assert (=> d!1357367 (= (contains!12461 lm!1616 hash!366) lt!1644210)))

(declare-fun b!4451346 () Bool)

(declare-fun lt!1644211 () Unit!85492)

(assert (=> b!4451346 (= e!2771852 lt!1644211)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!728 (List!49992 (_ BitVec 64)) Unit!85492)

(assert (=> b!4451346 (= lt!1644211 (lemmaContainsKeyImpliesGetValueByKeyDefined!728 (toList!3717 lm!1616) hash!366))))

(declare-fun isDefined!8125 (Option!10837) Bool)

(assert (=> b!4451346 (isDefined!8125 (getValueByKey!823 (toList!3717 lm!1616) hash!366))))

(declare-fun b!4451347 () Bool)

(declare-fun Unit!85497 () Unit!85492)

(assert (=> b!4451347 (= e!2771852 Unit!85497)))

(declare-fun b!4451348 () Bool)

(assert (=> b!4451348 (= e!2771853 (isDefined!8125 (getValueByKey!823 (toList!3717 lm!1616) hash!366)))))

(assert (= (and d!1357367 c!757815) b!4451346))

(assert (= (and d!1357367 (not c!757815)) b!4451347))

(assert (= (and d!1357367 (not res!1844505)) b!4451348))

(declare-fun m!5151095 () Bool)

(assert (=> d!1357367 m!5151095))

(declare-fun m!5151097 () Bool)

(assert (=> b!4451346 m!5151097))

(assert (=> b!4451346 m!5150959))

(assert (=> b!4451346 m!5150959))

(declare-fun m!5151099 () Bool)

(assert (=> b!4451346 m!5151099))

(assert (=> b!4451348 m!5150959))

(assert (=> b!4451348 m!5150959))

(assert (=> b!4451348 m!5151099))

(assert (=> b!4451217 d!1357367))

(declare-fun d!1357375 () Bool)

(declare-fun res!1844506 () Bool)

(declare-fun e!2771854 () Bool)

(assert (=> d!1357375 (=> res!1844506 e!2771854)))

(assert (=> d!1357375 (= res!1844506 ((_ is Nil!49868) (toList!3717 lt!1644119)))))

(assert (=> d!1357375 (= (forall!9756 (toList!3717 lt!1644119) lambda!159068) e!2771854)))

(declare-fun b!4451349 () Bool)

(declare-fun e!2771855 () Bool)

(assert (=> b!4451349 (= e!2771854 e!2771855)))

(declare-fun res!1844507 () Bool)

(assert (=> b!4451349 (=> (not res!1844507) (not e!2771855))))

(assert (=> b!4451349 (= res!1844507 (dynLambda!20938 lambda!159068 (h!55611 (toList!3717 lt!1644119))))))

(declare-fun b!4451350 () Bool)

(assert (=> b!4451350 (= e!2771855 (forall!9756 (t!356938 (toList!3717 lt!1644119)) lambda!159068))))

(assert (= (and d!1357375 (not res!1844506)) b!4451349))

(assert (= (and b!4451349 res!1844507) b!4451350))

(declare-fun b_lambda!146983 () Bool)

(assert (=> (not b_lambda!146983) (not b!4451349)))

(declare-fun m!5151101 () Bool)

(assert (=> b!4451349 m!5151101))

(declare-fun m!5151103 () Bool)

(assert (=> b!4451350 m!5151103))

(assert (=> b!4451219 d!1357375))

(declare-fun d!1357377 () Bool)

(declare-fun e!2771858 () Bool)

(assert (=> d!1357377 e!2771858))

(declare-fun res!1844513 () Bool)

(assert (=> d!1357377 (=> (not res!1844513) (not e!2771858))))

(declare-fun lt!1644225 () ListLongMap!2367)

(assert (=> d!1357377 (= res!1844513 (contains!12461 lt!1644225 (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun lt!1644222 () List!49992)

(assert (=> d!1357377 (= lt!1644225 (ListLongMap!2368 lt!1644222))))

(declare-fun lt!1644224 () Unit!85492)

(declare-fun lt!1644223 () Unit!85492)

(assert (=> d!1357377 (= lt!1644224 lt!1644223)))

(assert (=> d!1357377 (= (getValueByKey!823 lt!1644222 (_1!28214 (tuple2!49841 hash!366 newBucket!194))) (Some!10836 (_2!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun lemmaContainsTupThenGetReturnValue!540 (List!49992 (_ BitVec 64) List!49991) Unit!85492)

(assert (=> d!1357377 (= lt!1644223 (lemmaContainsTupThenGetReturnValue!540 lt!1644222 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun insertStrictlySorted!314 (List!49992 (_ BitVec 64) List!49991) List!49992)

(assert (=> d!1357377 (= lt!1644222 (insertStrictlySorted!314 (toList!3717 lm!1616) (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194))))))

(assert (=> d!1357377 (= (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194)) lt!1644225)))

(declare-fun b!4451355 () Bool)

(declare-fun res!1844512 () Bool)

(assert (=> b!4451355 (=> (not res!1844512) (not e!2771858))))

(assert (=> b!4451355 (= res!1844512 (= (getValueByKey!823 (toList!3717 lt!1644225) (_1!28214 (tuple2!49841 hash!366 newBucket!194))) (Some!10836 (_2!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(declare-fun b!4451356 () Bool)

(declare-fun contains!12467 (List!49992 tuple2!49840) Bool)

(assert (=> b!4451356 (= e!2771858 (contains!12467 (toList!3717 lt!1644225) (tuple2!49841 hash!366 newBucket!194)))))

(assert (= (and d!1357377 res!1844513) b!4451355))

(assert (= (and b!4451355 res!1844512) b!4451356))

(declare-fun m!5151105 () Bool)

(assert (=> d!1357377 m!5151105))

(declare-fun m!5151107 () Bool)

(assert (=> d!1357377 m!5151107))

(declare-fun m!5151109 () Bool)

(assert (=> d!1357377 m!5151109))

(declare-fun m!5151111 () Bool)

(assert (=> d!1357377 m!5151111))

(declare-fun m!5151113 () Bool)

(assert (=> b!4451355 m!5151113))

(declare-fun m!5151115 () Bool)

(assert (=> b!4451356 m!5151115))

(assert (=> b!4451219 d!1357377))

(declare-fun d!1357379 () Bool)

(assert (=> d!1357379 (forall!9756 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194))) lambda!159068)))

(declare-fun lt!1644228 () Unit!85492)

(declare-fun choose!28324 (ListLongMap!2367 Int (_ BitVec 64) List!49991) Unit!85492)

(assert (=> d!1357379 (= lt!1644228 (choose!28324 lm!1616 lambda!159068 hash!366 newBucket!194))))

(declare-fun e!2771861 () Bool)

(assert (=> d!1357379 e!2771861))

(declare-fun res!1844516 () Bool)

(assert (=> d!1357379 (=> (not res!1844516) (not e!2771861))))

(assert (=> d!1357379 (= res!1844516 (forall!9756 (toList!3717 lm!1616) lambda!159068))))

(assert (=> d!1357379 (= (addValidProp!503 lm!1616 lambda!159068 hash!366 newBucket!194) lt!1644228)))

(declare-fun b!4451360 () Bool)

(assert (=> b!4451360 (= e!2771861 (dynLambda!20938 lambda!159068 (tuple2!49841 hash!366 newBucket!194)))))

(assert (= (and d!1357379 res!1844516) b!4451360))

(declare-fun b_lambda!146985 () Bool)

(assert (=> (not b_lambda!146985) (not b!4451360)))

(assert (=> d!1357379 m!5150943))

(declare-fun m!5151117 () Bool)

(assert (=> d!1357379 m!5151117))

(declare-fun m!5151119 () Bool)

(assert (=> d!1357379 m!5151119))

(assert (=> d!1357379 m!5150933))

(declare-fun m!5151121 () Bool)

(assert (=> b!4451360 m!5151121))

(assert (=> b!4451219 d!1357379))

(assert (=> start!435780 d!1357359))

(declare-fun d!1357381 () Bool)

(declare-fun isStrictlySorted!285 (List!49992) Bool)

(assert (=> d!1357381 (= (inv!65421 lm!1616) (isStrictlySorted!285 (toList!3717 lm!1616)))))

(declare-fun bs!788889 () Bool)

(assert (= bs!788889 d!1357381))

(declare-fun m!5151123 () Bool)

(assert (=> bs!788889 m!5151123))

(assert (=> start!435780 d!1357381))

(declare-fun b!4451379 () Bool)

(declare-datatypes ((List!49994 0))(
  ( (Nil!49870) (Cons!49870 (h!55615 K!11235) (t!356940 List!49994)) )
))
(declare-fun e!2771879 () List!49994)

(declare-fun keys!17104 (ListMap!2961) List!49994)

(assert (=> b!4451379 (= e!2771879 (keys!17104 lt!1644116))))

(declare-fun bm!309763 () Bool)

(declare-fun call!309768 () Bool)

(declare-fun contains!12468 (List!49994 K!11235) Bool)

(assert (=> bm!309763 (= call!309768 (contains!12468 e!2771879 key!3717))))

(declare-fun c!757823 () Bool)

(declare-fun c!757824 () Bool)

(assert (=> bm!309763 (= c!757823 c!757824)))

(declare-fun b!4451380 () Bool)

(declare-fun e!2771877 () Unit!85492)

(declare-fun Unit!85498 () Unit!85492)

(assert (=> b!4451380 (= e!2771877 Unit!85498)))

(declare-fun b!4451381 () Bool)

(declare-fun e!2771878 () Bool)

(assert (=> b!4451381 (= e!2771878 (not (contains!12468 (keys!17104 lt!1644116) key!3717)))))

(declare-fun b!4451382 () Bool)

(declare-fun e!2771876 () Unit!85492)

(declare-fun lt!1644245 () Unit!85492)

(assert (=> b!4451382 (= e!2771876 lt!1644245)))

(declare-fun lt!1644249 () Unit!85492)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!729 (List!49991 K!11235) Unit!85492)

(assert (=> b!4451382 (= lt!1644249 (lemmaContainsKeyImpliesGetValueByKeyDefined!729 (toList!3718 lt!1644116) key!3717))))

(declare-fun isDefined!8126 (Option!10838) Bool)

(assert (=> b!4451382 (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644116) key!3717))))

(declare-fun lt!1644250 () Unit!85492)

(assert (=> b!4451382 (= lt!1644250 lt!1644249)))

(declare-fun lemmaInListThenGetKeysListContains!303 (List!49991 K!11235) Unit!85492)

(assert (=> b!4451382 (= lt!1644245 (lemmaInListThenGetKeysListContains!303 (toList!3718 lt!1644116) key!3717))))

(assert (=> b!4451382 call!309768))

(declare-fun b!4451383 () Bool)

(declare-fun getKeysList!306 (List!49991) List!49994)

(assert (=> b!4451383 (= e!2771879 (getKeysList!306 (toList!3718 lt!1644116)))))

(declare-fun b!4451384 () Bool)

(declare-fun e!2771875 () Bool)

(declare-fun e!2771874 () Bool)

(assert (=> b!4451384 (= e!2771875 e!2771874)))

(declare-fun res!1844523 () Bool)

(assert (=> b!4451384 (=> (not res!1844523) (not e!2771874))))

(assert (=> b!4451384 (= res!1844523 (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644116) key!3717)))))

(declare-fun b!4451385 () Bool)

(assert (=> b!4451385 false))

(declare-fun lt!1644247 () Unit!85492)

(declare-fun lt!1644246 () Unit!85492)

(assert (=> b!4451385 (= lt!1644247 lt!1644246)))

(declare-fun containsKey!1296 (List!49991 K!11235) Bool)

(assert (=> b!4451385 (containsKey!1296 (toList!3718 lt!1644116) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!304 (List!49991 K!11235) Unit!85492)

(assert (=> b!4451385 (= lt!1644246 (lemmaInGetKeysListThenContainsKey!304 (toList!3718 lt!1644116) key!3717))))

(declare-fun Unit!85499 () Unit!85492)

(assert (=> b!4451385 (= e!2771877 Unit!85499)))

(declare-fun d!1357383 () Bool)

(assert (=> d!1357383 e!2771875))

(declare-fun res!1844525 () Bool)

(assert (=> d!1357383 (=> res!1844525 e!2771875)))

(assert (=> d!1357383 (= res!1844525 e!2771878)))

(declare-fun res!1844524 () Bool)

(assert (=> d!1357383 (=> (not res!1844524) (not e!2771878))))

(declare-fun lt!1644251 () Bool)

(assert (=> d!1357383 (= res!1844524 (not lt!1644251))))

(declare-fun lt!1644252 () Bool)

(assert (=> d!1357383 (= lt!1644251 lt!1644252)))

(declare-fun lt!1644248 () Unit!85492)

(assert (=> d!1357383 (= lt!1644248 e!2771876)))

(assert (=> d!1357383 (= c!757824 lt!1644252)))

(assert (=> d!1357383 (= lt!1644252 (containsKey!1296 (toList!3718 lt!1644116) key!3717))))

(assert (=> d!1357383 (= (contains!12462 lt!1644116 key!3717) lt!1644251)))

(declare-fun b!4451386 () Bool)

(assert (=> b!4451386 (= e!2771876 e!2771877)))

(declare-fun c!757822 () Bool)

(assert (=> b!4451386 (= c!757822 call!309768)))

(declare-fun b!4451387 () Bool)

(assert (=> b!4451387 (= e!2771874 (contains!12468 (keys!17104 lt!1644116) key!3717))))

(assert (= (and d!1357383 c!757824) b!4451382))

(assert (= (and d!1357383 (not c!757824)) b!4451386))

(assert (= (and b!4451386 c!757822) b!4451385))

(assert (= (and b!4451386 (not c!757822)) b!4451380))

(assert (= (or b!4451382 b!4451386) bm!309763))

(assert (= (and bm!309763 c!757823) b!4451383))

(assert (= (and bm!309763 (not c!757823)) b!4451379))

(assert (= (and d!1357383 res!1844524) b!4451381))

(assert (= (and d!1357383 (not res!1844525)) b!4451384))

(assert (= (and b!4451384 res!1844523) b!4451387))

(declare-fun m!5151125 () Bool)

(assert (=> b!4451384 m!5151125))

(assert (=> b!4451384 m!5151125))

(declare-fun m!5151127 () Bool)

(assert (=> b!4451384 m!5151127))

(declare-fun m!5151129 () Bool)

(assert (=> b!4451385 m!5151129))

(declare-fun m!5151131 () Bool)

(assert (=> b!4451385 m!5151131))

(declare-fun m!5151133 () Bool)

(assert (=> bm!309763 m!5151133))

(declare-fun m!5151135 () Bool)

(assert (=> b!4451383 m!5151135))

(declare-fun m!5151137 () Bool)

(assert (=> b!4451381 m!5151137))

(assert (=> b!4451381 m!5151137))

(declare-fun m!5151139 () Bool)

(assert (=> b!4451381 m!5151139))

(assert (=> b!4451379 m!5151137))

(declare-fun m!5151141 () Bool)

(assert (=> b!4451382 m!5151141))

(assert (=> b!4451382 m!5151125))

(assert (=> b!4451382 m!5151125))

(assert (=> b!4451382 m!5151127))

(declare-fun m!5151143 () Bool)

(assert (=> b!4451382 m!5151143))

(assert (=> b!4451387 m!5151137))

(assert (=> b!4451387 m!5151137))

(assert (=> b!4451387 m!5151139))

(assert (=> d!1357383 m!5151129))

(assert (=> b!4451218 d!1357383))

(declare-fun bs!788890 () Bool)

(declare-fun d!1357385 () Bool)

(assert (= bs!788890 (and d!1357385 start!435780)))

(declare-fun lambda!159082 () Int)

(assert (=> bs!788890 (= lambda!159082 lambda!159068)))

(declare-fun bs!788891 () Bool)

(assert (= bs!788891 (and d!1357385 d!1357333)))

(assert (=> bs!788891 (= lambda!159082 lambda!159077)))

(declare-fun lt!1644253 () ListMap!2961)

(assert (=> d!1357385 (invariantList!860 (toList!3718 lt!1644253))))

(declare-fun e!2771880 () ListMap!2961)

(assert (=> d!1357385 (= lt!1644253 e!2771880)))

(declare-fun c!757825 () Bool)

(assert (=> d!1357385 (= c!757825 ((_ is Cons!49868) (toList!3717 lm!1616)))))

(assert (=> d!1357385 (forall!9756 (toList!3717 lm!1616) lambda!159082)))

(assert (=> d!1357385 (= (extractMap!926 (toList!3717 lm!1616)) lt!1644253)))

(declare-fun b!4451388 () Bool)

(assert (=> b!4451388 (= e!2771880 (addToMapMapFromBucket!471 (_2!28214 (h!55611 (toList!3717 lm!1616))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))))))

(declare-fun b!4451389 () Bool)

(assert (=> b!4451389 (= e!2771880 (ListMap!2962 Nil!49867))))

(assert (= (and d!1357385 c!757825) b!4451388))

(assert (= (and d!1357385 (not c!757825)) b!4451389))

(declare-fun m!5151145 () Bool)

(assert (=> d!1357385 m!5151145))

(declare-fun m!5151147 () Bool)

(assert (=> d!1357385 m!5151147))

(declare-fun m!5151149 () Bool)

(assert (=> b!4451388 m!5151149))

(assert (=> b!4451388 m!5151149))

(declare-fun m!5151151 () Bool)

(assert (=> b!4451388 m!5151151))

(assert (=> b!4451218 d!1357385))

(declare-fun d!1357387 () Bool)

(assert (=> d!1357387 true))

(assert (=> d!1357387 true))

(declare-fun lambda!159085 () Int)

(declare-fun forall!9758 (List!49991 Int) Bool)

(assert (=> d!1357387 (= (allKeysSameHash!825 newBucket!194 hash!366 hashF!1220) (forall!9758 newBucket!194 lambda!159085))))

(declare-fun bs!788892 () Bool)

(assert (= bs!788892 d!1357387))

(declare-fun m!5151153 () Bool)

(assert (=> bs!788892 m!5151153))

(assert (=> b!4451222 d!1357387))

(declare-fun d!1357389 () Bool)

(declare-fun hash!2356 (Hashable!5259 K!11235) (_ BitVec 64))

(assert (=> d!1357389 (= (hash!2354 hashF!1220 key!3717) (hash!2356 hashF!1220 key!3717))))

(declare-fun bs!788893 () Bool)

(assert (= bs!788893 d!1357389))

(declare-fun m!5151155 () Bool)

(assert (=> bs!788893 m!5151155))

(assert (=> b!4451220 d!1357389))

(declare-fun bs!788894 () Bool)

(declare-fun d!1357391 () Bool)

(assert (= bs!788894 (and d!1357391 start!435780)))

(declare-fun lambda!159088 () Int)

(assert (=> bs!788894 (not (= lambda!159088 lambda!159068))))

(declare-fun bs!788895 () Bool)

(assert (= bs!788895 (and d!1357391 d!1357333)))

(assert (=> bs!788895 (not (= lambda!159088 lambda!159077))))

(declare-fun bs!788896 () Bool)

(assert (= bs!788896 (and d!1357391 d!1357385)))

(assert (=> bs!788896 (not (= lambda!159088 lambda!159082))))

(assert (=> d!1357391 true))

(assert (=> d!1357391 (= (allKeysSameHashInMap!971 lm!1616 hashF!1220) (forall!9756 (toList!3717 lm!1616) lambda!159088))))

(declare-fun bs!788897 () Bool)

(assert (= bs!788897 d!1357391))

(declare-fun m!5151157 () Bool)

(assert (=> bs!788897 m!5151157))

(assert (=> b!4451221 d!1357391))

(declare-fun b!4451400 () Bool)

(declare-fun e!2771883 () Bool)

(declare-fun tp!1334552 () Bool)

(declare-fun tp!1334553 () Bool)

(assert (=> b!4451400 (= e!2771883 (and tp!1334552 tp!1334553))))

(assert (=> b!4451225 (= tp!1334537 e!2771883)))

(assert (= (and b!4451225 ((_ is Cons!49868) (toList!3717 lm!1616))) b!4451400))

(declare-fun b!4451405 () Bool)

(declare-fun e!2771886 () Bool)

(declare-fun tp!1334556 () Bool)

(assert (=> b!4451405 (= e!2771886 (and tp_is_empty!26707 tp_is_empty!26705 tp!1334556))))

(assert (=> b!4451215 (= tp!1334538 e!2771886)))

(assert (= (and b!4451215 ((_ is Cons!49867) (t!356937 newBucket!194))) b!4451405))

(declare-fun b_lambda!146987 () Bool)

(assert (= b_lambda!146983 (or start!435780 b_lambda!146987)))

(declare-fun bs!788898 () Bool)

(declare-fun d!1357393 () Bool)

(assert (= bs!788898 (and d!1357393 start!435780)))

(assert (=> bs!788898 (= (dynLambda!20938 lambda!159068 (h!55611 (toList!3717 lt!1644119))) (noDuplicateKeys!865 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))

(declare-fun m!5151159 () Bool)

(assert (=> bs!788898 m!5151159))

(assert (=> b!4451349 d!1357393))

(declare-fun b_lambda!146989 () Bool)

(assert (= b_lambda!146975 (or start!435780 b_lambda!146989)))

(declare-fun bs!788899 () Bool)

(declare-fun d!1357395 () Bool)

(assert (= bs!788899 (and d!1357395 start!435780)))

(assert (=> bs!788899 (= (dynLambda!20938 lambda!159068 (h!55611 (toList!3717 lm!1616))) (noDuplicateKeys!865 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))

(declare-fun m!5151161 () Bool)

(assert (=> bs!788899 m!5151161))

(assert (=> b!4451316 d!1357395))

(declare-fun b_lambda!146991 () Bool)

(assert (= b_lambda!146985 (or start!435780 b_lambda!146991)))

(declare-fun bs!788900 () Bool)

(declare-fun d!1357397 () Bool)

(assert (= bs!788900 (and d!1357397 start!435780)))

(assert (=> bs!788900 (= (dynLambda!20938 lambda!159068 (tuple2!49841 hash!366 newBucket!194)) (noDuplicateKeys!865 (_2!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun m!5151163 () Bool)

(assert (=> bs!788900 m!5151163))

(assert (=> b!4451360 d!1357397))

(check-sat (not b_lambda!146987) (not b!4451382) (not b_lambda!146991) (not bm!309763) (not b!4451356) (not d!1357381) (not d!1357379) (not b!4451384) (not b!4451388) (not b!4451273) (not b!4451383) (not b!4451355) (not b!4451317) (not b!4451310) (not b_lambda!146989) (not b!4451334) (not bs!788898) (not b!4451333) (not d!1357385) (not d!1357387) tp_is_empty!26707 (not d!1357391) (not d!1357333) (not d!1357389) (not d!1357329) (not d!1357331) (not b!4451379) (not bs!788900) (not d!1357367) (not d!1357343) (not b!4451348) tp_is_empty!26705 (not d!1357377) (not b!4451387) (not b!4451346) (not b!4451350) (not d!1357383) (not b!4451381) (not b!4451400) (not b!4451385) (not bs!788899) (not b!4451311) (not b!4451405))
(check-sat)
(get-model)

(declare-fun d!1357407 () Bool)

(declare-fun noDuplicatedKeys!199 (List!49991) Bool)

(assert (=> d!1357407 (= (invariantList!860 (toList!3718 lt!1644253)) (noDuplicatedKeys!199 (toList!3718 lt!1644253)))))

(declare-fun bs!788902 () Bool)

(assert (= bs!788902 d!1357407))

(declare-fun m!5151175 () Bool)

(assert (=> bs!788902 m!5151175))

(assert (=> d!1357385 d!1357407))

(declare-fun d!1357409 () Bool)

(declare-fun res!1844538 () Bool)

(declare-fun e!2771899 () Bool)

(assert (=> d!1357409 (=> res!1844538 e!2771899)))

(assert (=> d!1357409 (= res!1844538 ((_ is Nil!49868) (toList!3717 lm!1616)))))

(assert (=> d!1357409 (= (forall!9756 (toList!3717 lm!1616) lambda!159082) e!2771899)))

(declare-fun b!4451418 () Bool)

(declare-fun e!2771900 () Bool)

(assert (=> b!4451418 (= e!2771899 e!2771900)))

(declare-fun res!1844539 () Bool)

(assert (=> b!4451418 (=> (not res!1844539) (not e!2771900))))

(assert (=> b!4451418 (= res!1844539 (dynLambda!20938 lambda!159082 (h!55611 (toList!3717 lm!1616))))))

(declare-fun b!4451419 () Bool)

(assert (=> b!4451419 (= e!2771900 (forall!9756 (t!356938 (toList!3717 lm!1616)) lambda!159082))))

(assert (= (and d!1357409 (not res!1844538)) b!4451418))

(assert (= (and b!4451418 res!1844539) b!4451419))

(declare-fun b_lambda!146995 () Bool)

(assert (=> (not b_lambda!146995) (not b!4451418)))

(declare-fun m!5151177 () Bool)

(assert (=> b!4451418 m!5151177))

(declare-fun m!5151179 () Bool)

(assert (=> b!4451419 m!5151179))

(assert (=> d!1357385 d!1357409))

(declare-fun d!1357411 () Bool)

(declare-fun res!1844540 () Bool)

(declare-fun e!2771901 () Bool)

(assert (=> d!1357411 (=> res!1844540 e!2771901)))

(assert (=> d!1357411 (= res!1844540 (not ((_ is Cons!49867) (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(assert (=> d!1357411 (= (noDuplicateKeys!865 (_2!28214 (h!55611 (toList!3717 lt!1644119)))) e!2771901)))

(declare-fun b!4451422 () Bool)

(declare-fun e!2771902 () Bool)

(assert (=> b!4451422 (= e!2771901 e!2771902)))

(declare-fun res!1844541 () Bool)

(assert (=> b!4451422 (=> (not res!1844541) (not e!2771902))))

(assert (=> b!4451422 (= res!1844541 (not (containsKey!1294 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))))

(declare-fun b!4451423 () Bool)

(assert (=> b!4451423 (= e!2771902 (noDuplicateKeys!865 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(assert (= (and d!1357411 (not res!1844540)) b!4451422))

(assert (= (and b!4451422 res!1844541) b!4451423))

(declare-fun m!5151181 () Bool)

(assert (=> b!4451422 m!5151181))

(declare-fun m!5151183 () Bool)

(assert (=> b!4451423 m!5151183))

(assert (=> bs!788898 d!1357411))

(declare-fun d!1357413 () Bool)

(declare-fun res!1844542 () Bool)

(declare-fun e!2771905 () Bool)

(assert (=> d!1357413 (=> res!1844542 e!2771905)))

(assert (=> d!1357413 (= res!1844542 ((_ is Nil!49868) (toList!3717 lm!1616)))))

(assert (=> d!1357413 (= (forall!9756 (toList!3717 lm!1616) lambda!159088) e!2771905)))

(declare-fun b!4451426 () Bool)

(declare-fun e!2771906 () Bool)

(assert (=> b!4451426 (= e!2771905 e!2771906)))

(declare-fun res!1844543 () Bool)

(assert (=> b!4451426 (=> (not res!1844543) (not e!2771906))))

(assert (=> b!4451426 (= res!1844543 (dynLambda!20938 lambda!159088 (h!55611 (toList!3717 lm!1616))))))

(declare-fun b!4451427 () Bool)

(assert (=> b!4451427 (= e!2771906 (forall!9756 (t!356938 (toList!3717 lm!1616)) lambda!159088))))

(assert (= (and d!1357413 (not res!1844542)) b!4451426))

(assert (= (and b!4451426 res!1844543) b!4451427))

(declare-fun b_lambda!146997 () Bool)

(assert (=> (not b_lambda!146997) (not b!4451426)))

(declare-fun m!5151185 () Bool)

(assert (=> b!4451426 m!5151185))

(declare-fun m!5151187 () Bool)

(assert (=> b!4451427 m!5151187))

(assert (=> d!1357391 d!1357413))

(declare-fun d!1357415 () Bool)

(declare-fun res!1844548 () Bool)

(declare-fun e!2771911 () Bool)

(assert (=> d!1357415 (=> res!1844548 e!2771911)))

(assert (=> d!1357415 (= res!1844548 (and ((_ is Cons!49868) (toList!3717 lm!1616)) (= (_1!28214 (h!55611 (toList!3717 lm!1616))) hash!366)))))

(assert (=> d!1357415 (= (containsKey!1295 (toList!3717 lm!1616) hash!366) e!2771911)))

(declare-fun b!4451432 () Bool)

(declare-fun e!2771912 () Bool)

(assert (=> b!4451432 (= e!2771911 e!2771912)))

(declare-fun res!1844549 () Bool)

(assert (=> b!4451432 (=> (not res!1844549) (not e!2771912))))

(assert (=> b!4451432 (= res!1844549 (and (or (not ((_ is Cons!49868) (toList!3717 lm!1616))) (bvsle (_1!28214 (h!55611 (toList!3717 lm!1616))) hash!366)) ((_ is Cons!49868) (toList!3717 lm!1616)) (bvslt (_1!28214 (h!55611 (toList!3717 lm!1616))) hash!366)))))

(declare-fun b!4451433 () Bool)

(assert (=> b!4451433 (= e!2771912 (containsKey!1295 (t!356938 (toList!3717 lm!1616)) hash!366))))

(assert (= (and d!1357415 (not res!1844548)) b!4451432))

(assert (= (and b!4451432 res!1844549) b!4451433))

(declare-fun m!5151189 () Bool)

(assert (=> b!4451433 m!5151189))

(assert (=> d!1357367 d!1357415))

(declare-fun b!4451446 () Bool)

(declare-fun e!2771920 () Option!10837)

(assert (=> b!4451446 (= e!2771920 (getValueByKey!823 (t!356938 (toList!3717 lt!1644225)) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun b!4451444 () Bool)

(declare-fun e!2771919 () Option!10837)

(assert (=> b!4451444 (= e!2771919 (Some!10836 (_2!28214 (h!55611 (toList!3717 lt!1644225)))))))

(declare-fun d!1357417 () Bool)

(declare-fun c!757832 () Bool)

(assert (=> d!1357417 (= c!757832 (and ((_ is Cons!49868) (toList!3717 lt!1644225)) (= (_1!28214 (h!55611 (toList!3717 lt!1644225))) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (=> d!1357417 (= (getValueByKey!823 (toList!3717 lt!1644225) (_1!28214 (tuple2!49841 hash!366 newBucket!194))) e!2771919)))

(declare-fun b!4451447 () Bool)

(assert (=> b!4451447 (= e!2771920 None!10836)))

(declare-fun b!4451445 () Bool)

(assert (=> b!4451445 (= e!2771919 e!2771920)))

(declare-fun c!757833 () Bool)

(assert (=> b!4451445 (= c!757833 (and ((_ is Cons!49868) (toList!3717 lt!1644225)) (not (= (_1!28214 (h!55611 (toList!3717 lt!1644225))) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))))

(assert (= (and d!1357417 c!757832) b!4451444))

(assert (= (and d!1357417 (not c!757832)) b!4451445))

(assert (= (and b!4451445 c!757833) b!4451446))

(assert (= (and b!4451445 (not c!757833)) b!4451447))

(declare-fun m!5151191 () Bool)

(assert (=> b!4451446 m!5151191))

(assert (=> b!4451355 d!1357417))

(declare-fun b!4451462 () Bool)

(declare-fun e!2771928 () Option!10838)

(assert (=> b!4451462 (= e!2771928 (getValueByKey!824 (t!356937 (toList!3718 lt!1644187)) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun b!4451461 () Bool)

(declare-fun e!2771927 () Option!10838)

(assert (=> b!4451461 (= e!2771927 e!2771928)))

(declare-fun c!757839 () Bool)

(assert (=> b!4451461 (= c!757839 (and ((_ is Cons!49867) (toList!3718 lt!1644187)) (not (= (_1!28213 (h!55610 (toList!3718 lt!1644187))) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))))

(declare-fun b!4451463 () Bool)

(assert (=> b!4451463 (= e!2771928 None!10837)))

(declare-fun c!757838 () Bool)

(declare-fun d!1357419 () Bool)

(assert (=> d!1357419 (= c!757838 (and ((_ is Cons!49867) (toList!3718 lt!1644187)) (= (_1!28213 (h!55610 (toList!3718 lt!1644187))) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))))

(assert (=> d!1357419 (= (getValueByKey!824 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))) e!2771927)))

(declare-fun b!4451460 () Bool)

(assert (=> b!4451460 (= e!2771927 (Some!10837 (_2!28213 (h!55610 (toList!3718 lt!1644187)))))))

(assert (= (and d!1357419 c!757838) b!4451460))

(assert (= (and d!1357419 (not c!757838)) b!4451461))

(assert (= (and b!4451461 c!757839) b!4451462))

(assert (= (and b!4451461 (not c!757839)) b!4451463))

(declare-fun m!5151193 () Bool)

(assert (=> b!4451462 m!5151193))

(assert (=> b!4451310 d!1357419))

(declare-fun d!1357421 () Bool)

(declare-fun res!1844556 () Bool)

(declare-fun e!2771929 () Bool)

(assert (=> d!1357421 (=> res!1844556 e!2771929)))

(assert (=> d!1357421 (= res!1844556 ((_ is Nil!49868) (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (=> d!1357421 (= (forall!9756 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194))) lambda!159068) e!2771929)))

(declare-fun b!4451464 () Bool)

(declare-fun e!2771930 () Bool)

(assert (=> b!4451464 (= e!2771929 e!2771930)))

(declare-fun res!1844557 () Bool)

(assert (=> b!4451464 (=> (not res!1844557) (not e!2771930))))

(assert (=> b!4451464 (= res!1844557 (dynLambda!20938 lambda!159068 (h!55611 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194))))))))

(declare-fun b!4451465 () Bool)

(assert (=> b!4451465 (= e!2771930 (forall!9756 (t!356938 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194)))) lambda!159068))))

(assert (= (and d!1357421 (not res!1844556)) b!4451464))

(assert (= (and b!4451464 res!1844557) b!4451465))

(declare-fun b_lambda!146999 () Bool)

(assert (=> (not b_lambda!146999) (not b!4451464)))

(declare-fun m!5151195 () Bool)

(assert (=> b!4451464 m!5151195))

(declare-fun m!5151197 () Bool)

(assert (=> b!4451465 m!5151197))

(assert (=> d!1357379 d!1357421))

(assert (=> d!1357379 d!1357377))

(declare-fun d!1357423 () Bool)

(assert (=> d!1357423 (forall!9756 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194))) lambda!159068)))

(assert (=> d!1357423 true))

(declare-fun _$31!463 () Unit!85492)

(assert (=> d!1357423 (= (choose!28324 lm!1616 lambda!159068 hash!366 newBucket!194) _$31!463)))

(declare-fun bs!788913 () Bool)

(assert (= bs!788913 d!1357423))

(assert (=> bs!788913 m!5150943))

(assert (=> bs!788913 m!5151117))

(assert (=> d!1357379 d!1357423))

(assert (=> d!1357379 d!1357359))

(declare-fun d!1357429 () Bool)

(declare-fun lt!1644323 () Bool)

(declare-fun content!8035 (List!49994) (InoxSet K!11235))

(assert (=> d!1357429 (= lt!1644323 (select (content!8035 (keys!17104 lt!1644116)) key!3717))))

(declare-fun e!2771950 () Bool)

(assert (=> d!1357429 (= lt!1644323 e!2771950)))

(declare-fun res!1844571 () Bool)

(assert (=> d!1357429 (=> (not res!1844571) (not e!2771950))))

(assert (=> d!1357429 (= res!1844571 ((_ is Cons!49870) (keys!17104 lt!1644116)))))

(assert (=> d!1357429 (= (contains!12468 (keys!17104 lt!1644116) key!3717) lt!1644323)))

(declare-fun b!4451494 () Bool)

(declare-fun e!2771949 () Bool)

(assert (=> b!4451494 (= e!2771950 e!2771949)))

(declare-fun res!1844572 () Bool)

(assert (=> b!4451494 (=> res!1844572 e!2771949)))

(assert (=> b!4451494 (= res!1844572 (= (h!55615 (keys!17104 lt!1644116)) key!3717))))

(declare-fun b!4451495 () Bool)

(assert (=> b!4451495 (= e!2771949 (contains!12468 (t!356940 (keys!17104 lt!1644116)) key!3717))))

(assert (= (and d!1357429 res!1844571) b!4451494))

(assert (= (and b!4451494 (not res!1844572)) b!4451495))

(assert (=> d!1357429 m!5151137))

(declare-fun m!5151245 () Bool)

(assert (=> d!1357429 m!5151245))

(declare-fun m!5151247 () Bool)

(assert (=> d!1357429 m!5151247))

(declare-fun m!5151249 () Bool)

(assert (=> b!4451495 m!5151249))

(assert (=> b!4451387 d!1357429))

(declare-fun b!4451521 () Bool)

(assert (=> b!4451521 true))

(declare-fun d!1357435 () Bool)

(declare-fun e!2771961 () Bool)

(assert (=> d!1357435 e!2771961))

(declare-fun res!1844593 () Bool)

(assert (=> d!1357435 (=> (not res!1844593) (not e!2771961))))

(declare-fun lt!1644332 () List!49994)

(declare-fun noDuplicate!684 (List!49994) Bool)

(assert (=> d!1357435 (= res!1844593 (noDuplicate!684 lt!1644332))))

(assert (=> d!1357435 (= lt!1644332 (getKeysList!306 (toList!3718 lt!1644116)))))

(assert (=> d!1357435 (= (keys!17104 lt!1644116) lt!1644332)))

(declare-fun b!4451520 () Bool)

(declare-fun res!1844591 () Bool)

(assert (=> b!4451520 (=> (not res!1844591) (not e!2771961))))

(declare-fun length!224 (List!49994) Int)

(declare-fun length!225 (List!49991) Int)

(assert (=> b!4451520 (= res!1844591 (= (length!224 lt!1644332) (length!225 (toList!3718 lt!1644116))))))

(declare-fun res!1844592 () Bool)

(assert (=> b!4451521 (=> (not res!1844592) (not e!2771961))))

(declare-fun lambda!159132 () Int)

(declare-fun forall!9760 (List!49994 Int) Bool)

(assert (=> b!4451521 (= res!1844592 (forall!9760 lt!1644332 lambda!159132))))

(declare-fun lambda!159133 () Int)

(declare-fun b!4451522 () Bool)

(declare-fun map!10914 (List!49991 Int) List!49994)

(assert (=> b!4451522 (= e!2771961 (= (content!8035 lt!1644332) (content!8035 (map!10914 (toList!3718 lt!1644116) lambda!159133))))))

(assert (= (and d!1357435 res!1844593) b!4451520))

(assert (= (and b!4451520 res!1844591) b!4451521))

(assert (= (and b!4451521 res!1844592) b!4451522))

(declare-fun m!5151273 () Bool)

(assert (=> d!1357435 m!5151273))

(assert (=> d!1357435 m!5151135))

(declare-fun m!5151275 () Bool)

(assert (=> b!4451520 m!5151275))

(declare-fun m!5151277 () Bool)

(assert (=> b!4451520 m!5151277))

(declare-fun m!5151279 () Bool)

(assert (=> b!4451521 m!5151279))

(declare-fun m!5151281 () Bool)

(assert (=> b!4451522 m!5151281))

(declare-fun m!5151283 () Bool)

(assert (=> b!4451522 m!5151283))

(assert (=> b!4451522 m!5151283))

(declare-fun m!5151285 () Bool)

(assert (=> b!4451522 m!5151285))

(assert (=> b!4451387 d!1357435))

(declare-fun bs!788929 () Bool)

(declare-fun b!4451740 () Bool)

(assert (= bs!788929 (and b!4451740 d!1357387)))

(declare-fun lambda!159174 () Int)

(assert (=> bs!788929 (not (= lambda!159174 lambda!159085))))

(assert (=> b!4451740 true))

(declare-fun bs!788930 () Bool)

(declare-fun b!4451737 () Bool)

(assert (= bs!788930 (and b!4451737 d!1357387)))

(declare-fun lambda!159175 () Int)

(assert (=> bs!788930 (not (= lambda!159175 lambda!159085))))

(declare-fun bs!788931 () Bool)

(assert (= bs!788931 (and b!4451737 b!4451740)))

(assert (=> bs!788931 (= lambda!159175 lambda!159174)))

(assert (=> b!4451737 true))

(declare-fun lambda!159176 () Int)

(assert (=> bs!788930 (not (= lambda!159176 lambda!159085))))

(declare-fun lt!1644467 () ListMap!2961)

(assert (=> bs!788931 (= (= lt!1644467 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159176 lambda!159174))))

(assert (=> b!4451737 (= (= lt!1644467 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159176 lambda!159175))))

(assert (=> b!4451737 true))

(declare-fun bs!788932 () Bool)

(declare-fun d!1357447 () Bool)

(assert (= bs!788932 (and d!1357447 d!1357387)))

(declare-fun lambda!159177 () Int)

(assert (=> bs!788932 (not (= lambda!159177 lambda!159085))))

(declare-fun bs!788933 () Bool)

(assert (= bs!788933 (and d!1357447 b!4451740)))

(declare-fun lt!1644481 () ListMap!2961)

(assert (=> bs!788933 (= (= lt!1644481 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159177 lambda!159174))))

(declare-fun bs!788934 () Bool)

(assert (= bs!788934 (and d!1357447 b!4451737)))

(assert (=> bs!788934 (= (= lt!1644481 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159177 lambda!159175))))

(assert (=> bs!788934 (= (= lt!1644481 lt!1644467) (= lambda!159177 lambda!159176))))

(assert (=> d!1357447 true))

(declare-fun e!2772095 () ListMap!2961)

(assert (=> b!4451737 (= e!2772095 lt!1644467)))

(declare-fun lt!1644484 () ListMap!2961)

(assert (=> b!4451737 (= lt!1644484 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(assert (=> b!4451737 (= lt!1644467 (addToMapMapFromBucket!471 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(declare-fun lt!1644465 () Unit!85492)

(declare-fun call!309804 () Unit!85492)

(assert (=> b!4451737 (= lt!1644465 call!309804)))

(assert (=> b!4451737 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) lambda!159175)))

(declare-fun lt!1644485 () Unit!85492)

(assert (=> b!4451737 (= lt!1644485 lt!1644465)))

(assert (=> b!4451737 (forall!9758 (toList!3718 lt!1644484) lambda!159176)))

(declare-fun lt!1644473 () Unit!85492)

(declare-fun Unit!85515 () Unit!85492)

(assert (=> b!4451737 (= lt!1644473 Unit!85515)))

(declare-fun call!309805 () Bool)

(assert (=> b!4451737 call!309805))

(declare-fun lt!1644469 () Unit!85492)

(declare-fun Unit!85516 () Unit!85492)

(assert (=> b!4451737 (= lt!1644469 Unit!85516)))

(declare-fun lt!1644475 () Unit!85492)

(declare-fun Unit!85517 () Unit!85492)

(assert (=> b!4451737 (= lt!1644475 Unit!85517)))

(declare-fun lt!1644466 () Unit!85492)

(declare-fun forallContained!2161 (List!49991 Int tuple2!49838) Unit!85492)

(assert (=> b!4451737 (= lt!1644466 (forallContained!2161 (toList!3718 lt!1644484) lambda!159176 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(assert (=> b!4451737 (contains!12462 lt!1644484 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(declare-fun lt!1644480 () Unit!85492)

(declare-fun Unit!85518 () Unit!85492)

(assert (=> b!4451737 (= lt!1644480 Unit!85518)))

(assert (=> b!4451737 (contains!12462 lt!1644467 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(declare-fun lt!1644474 () Unit!85492)

(declare-fun Unit!85519 () Unit!85492)

(assert (=> b!4451737 (= lt!1644474 Unit!85519)))

(assert (=> b!4451737 (forall!9758 (_2!28214 (h!55611 (toList!3717 lt!1644119))) lambda!159176)))

(declare-fun lt!1644472 () Unit!85492)

(declare-fun Unit!85520 () Unit!85492)

(assert (=> b!4451737 (= lt!1644472 Unit!85520)))

(assert (=> b!4451737 (forall!9758 (toList!3718 lt!1644484) lambda!159176)))

(declare-fun lt!1644478 () Unit!85492)

(declare-fun Unit!85522 () Unit!85492)

(assert (=> b!4451737 (= lt!1644478 Unit!85522)))

(declare-fun lt!1644477 () Unit!85492)

(declare-fun Unit!85524 () Unit!85492)

(assert (=> b!4451737 (= lt!1644477 Unit!85524)))

(declare-fun lt!1644483 () Unit!85492)

(declare-fun addForallContainsKeyThenBeforeAdding!217 (ListMap!2961 ListMap!2961 K!11235 V!11481) Unit!85492)

(assert (=> b!4451737 (= lt!1644483 (addForallContainsKeyThenBeforeAdding!217 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644467 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> b!4451737 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) lambda!159176)))

(declare-fun lt!1644470 () Unit!85492)

(assert (=> b!4451737 (= lt!1644470 lt!1644483)))

(assert (=> b!4451737 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) lambda!159176)))

(declare-fun lt!1644476 () Unit!85492)

(declare-fun Unit!85526 () Unit!85492)

(assert (=> b!4451737 (= lt!1644476 Unit!85526)))

(declare-fun res!1844691 () Bool)

(declare-fun call!309803 () Bool)

(assert (=> b!4451737 (= res!1844691 call!309803)))

(declare-fun e!2772093 () Bool)

(assert (=> b!4451737 (=> (not res!1844691) (not e!2772093))))

(assert (=> b!4451737 e!2772093))

(declare-fun lt!1644468 () Unit!85492)

(declare-fun Unit!85527 () Unit!85492)

(assert (=> b!4451737 (= lt!1644468 Unit!85527)))

(declare-fun b!4451738 () Bool)

(declare-fun res!1844693 () Bool)

(declare-fun e!2772094 () Bool)

(assert (=> b!4451738 (=> (not res!1844693) (not e!2772094))))

(assert (=> b!4451738 (= res!1844693 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) lambda!159177))))

(declare-fun c!757904 () Bool)

(declare-fun bm!309798 () Bool)

(assert (=> bm!309798 (= call!309803 (forall!9758 (ite c!757904 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (_2!28214 (h!55611 (toList!3717 lt!1644119)))) (ite c!757904 lambda!159174 lambda!159176)))))

(declare-fun b!4451739 () Bool)

(assert (=> b!4451739 (= e!2772094 (invariantList!860 (toList!3718 lt!1644481)))))

(declare-fun bm!309799 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!217 (ListMap!2961) Unit!85492)

(assert (=> bm!309799 (= call!309804 (lemmaContainsAllItsOwnKeys!217 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))))))

(declare-fun bm!309800 () Bool)

(assert (=> bm!309800 (= call!309805 (forall!9758 (ite c!757904 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (ite c!757904 lambda!159174 lambda!159176)))))

(assert (=> d!1357447 e!2772094))

(declare-fun res!1844692 () Bool)

(assert (=> d!1357447 (=> (not res!1844692) (not e!2772094))))

(assert (=> d!1357447 (= res!1844692 (forall!9758 (_2!28214 (h!55611 (toList!3717 lt!1644119))) lambda!159177))))

(assert (=> d!1357447 (= lt!1644481 e!2772095)))

(assert (=> d!1357447 (= c!757904 ((_ is Nil!49867) (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))

(assert (=> d!1357447 (noDuplicateKeys!865 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))

(assert (=> d!1357447 (= (addToMapMapFromBucket!471 (_2!28214 (h!55611 (toList!3717 lt!1644119))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) lt!1644481)))

(assert (=> b!4451740 (= e!2772095 (extractMap!926 (t!356938 (toList!3717 lt!1644119))))))

(declare-fun lt!1644471 () Unit!85492)

(assert (=> b!4451740 (= lt!1644471 call!309804)))

(assert (=> b!4451740 call!309803))

(declare-fun lt!1644482 () Unit!85492)

(assert (=> b!4451740 (= lt!1644482 lt!1644471)))

(assert (=> b!4451740 call!309805))

(declare-fun lt!1644479 () Unit!85492)

(declare-fun Unit!85529 () Unit!85492)

(assert (=> b!4451740 (= lt!1644479 Unit!85529)))

(declare-fun b!4451741 () Bool)

(assert (=> b!4451741 (= e!2772093 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) lambda!159176))))

(assert (= (and d!1357447 c!757904) b!4451740))

(assert (= (and d!1357447 (not c!757904)) b!4451737))

(assert (= (and b!4451737 res!1844691) b!4451741))

(assert (= (or b!4451740 b!4451737) bm!309799))

(assert (= (or b!4451740 b!4451737) bm!309798))

(assert (= (or b!4451740 b!4451737) bm!309800))

(assert (= (and d!1357447 res!1844692) b!4451738))

(assert (= (and b!4451738 res!1844693) b!4451739))

(declare-fun m!5151491 () Bool)

(assert (=> bm!309800 m!5151491))

(declare-fun m!5151493 () Bool)

(assert (=> b!4451738 m!5151493))

(declare-fun m!5151495 () Bool)

(assert (=> b!4451741 m!5151495))

(declare-fun m!5151497 () Bool)

(assert (=> bm!309798 m!5151497))

(declare-fun m!5151499 () Bool)

(assert (=> d!1357447 m!5151499))

(assert (=> d!1357447 m!5151159))

(declare-fun m!5151501 () Bool)

(assert (=> b!4451739 m!5151501))

(assert (=> bm!309799 m!5151005))

(declare-fun m!5151503 () Bool)

(assert (=> bm!309799 m!5151503))

(declare-fun m!5151505 () Bool)

(assert (=> b!4451737 m!5151505))

(assert (=> b!4451737 m!5151495))

(assert (=> b!4451737 m!5151005))

(declare-fun m!5151507 () Bool)

(assert (=> b!4451737 m!5151507))

(declare-fun m!5151509 () Bool)

(assert (=> b!4451737 m!5151509))

(declare-fun m!5151511 () Bool)

(assert (=> b!4451737 m!5151511))

(declare-fun m!5151513 () Bool)

(assert (=> b!4451737 m!5151513))

(assert (=> b!4451737 m!5151495))

(declare-fun m!5151515 () Bool)

(assert (=> b!4451737 m!5151515))

(assert (=> b!4451737 m!5151005))

(declare-fun m!5151517 () Bool)

(assert (=> b!4451737 m!5151517))

(assert (=> b!4451737 m!5151517))

(declare-fun m!5151519 () Bool)

(assert (=> b!4451737 m!5151519))

(declare-fun m!5151521 () Bool)

(assert (=> b!4451737 m!5151521))

(assert (=> b!4451737 m!5151513))

(assert (=> b!4451273 d!1357447))

(declare-fun bs!788944 () Bool)

(declare-fun d!1357519 () Bool)

(assert (= bs!788944 (and d!1357519 start!435780)))

(declare-fun lambda!159180 () Int)

(assert (=> bs!788944 (= lambda!159180 lambda!159068)))

(declare-fun bs!788945 () Bool)

(assert (= bs!788945 (and d!1357519 d!1357333)))

(assert (=> bs!788945 (= lambda!159180 lambda!159077)))

(declare-fun bs!788946 () Bool)

(assert (= bs!788946 (and d!1357519 d!1357385)))

(assert (=> bs!788946 (= lambda!159180 lambda!159082)))

(declare-fun bs!788947 () Bool)

(assert (= bs!788947 (and d!1357519 d!1357391)))

(assert (=> bs!788947 (not (= lambda!159180 lambda!159088))))

(declare-fun lt!1644508 () ListMap!2961)

(assert (=> d!1357519 (invariantList!860 (toList!3718 lt!1644508))))

(declare-fun e!2772106 () ListMap!2961)

(assert (=> d!1357519 (= lt!1644508 e!2772106)))

(declare-fun c!757910 () Bool)

(assert (=> d!1357519 (= c!757910 ((_ is Cons!49868) (t!356938 (toList!3717 lt!1644119))))))

(assert (=> d!1357519 (forall!9756 (t!356938 (toList!3717 lt!1644119)) lambda!159180)))

(assert (=> d!1357519 (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644508)))

(declare-fun b!4451761 () Bool)

(assert (=> b!4451761 (= e!2772106 (addToMapMapFromBucket!471 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119)))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))))))

(declare-fun b!4451762 () Bool)

(assert (=> b!4451762 (= e!2772106 (ListMap!2962 Nil!49867))))

(assert (= (and d!1357519 c!757910) b!4451761))

(assert (= (and d!1357519 (not c!757910)) b!4451762))

(declare-fun m!5151523 () Bool)

(assert (=> d!1357519 m!5151523))

(declare-fun m!5151525 () Bool)

(assert (=> d!1357519 m!5151525))

(declare-fun m!5151527 () Bool)

(assert (=> b!4451761 m!5151527))

(assert (=> b!4451761 m!5151527))

(declare-fun m!5151529 () Bool)

(assert (=> b!4451761 m!5151529))

(assert (=> b!4451273 d!1357519))

(declare-fun d!1357521 () Bool)

(declare-fun res!1844701 () Bool)

(declare-fun e!2772107 () Bool)

(assert (=> d!1357521 (=> res!1844701 e!2772107)))

(assert (=> d!1357521 (= res!1844701 ((_ is Nil!49868) (t!356938 (toList!3717 lt!1644119))))))

(assert (=> d!1357521 (= (forall!9756 (t!356938 (toList!3717 lt!1644119)) lambda!159068) e!2772107)))

(declare-fun b!4451763 () Bool)

(declare-fun e!2772108 () Bool)

(assert (=> b!4451763 (= e!2772107 e!2772108)))

(declare-fun res!1844702 () Bool)

(assert (=> b!4451763 (=> (not res!1844702) (not e!2772108))))

(assert (=> b!4451763 (= res!1844702 (dynLambda!20938 lambda!159068 (h!55611 (t!356938 (toList!3717 lt!1644119)))))))

(declare-fun b!4451764 () Bool)

(assert (=> b!4451764 (= e!2772108 (forall!9756 (t!356938 (t!356938 (toList!3717 lt!1644119))) lambda!159068))))

(assert (= (and d!1357521 (not res!1844701)) b!4451763))

(assert (= (and b!4451763 res!1844702) b!4451764))

(declare-fun b_lambda!147013 () Bool)

(assert (=> (not b_lambda!147013) (not b!4451763)))

(declare-fun m!5151531 () Bool)

(assert (=> b!4451763 m!5151531))

(declare-fun m!5151533 () Bool)

(assert (=> b!4451764 m!5151533))

(assert (=> b!4451350 d!1357521))

(declare-fun d!1357523 () Bool)

(declare-fun lt!1644511 () Bool)

(assert (=> d!1357523 (= lt!1644511 (select (content!8033 (toList!3718 lt!1644187)) (tuple2!49839 key!3717 newValue!93)))))

(declare-fun e!2772113 () Bool)

(assert (=> d!1357523 (= lt!1644511 e!2772113)))

(declare-fun res!1844708 () Bool)

(assert (=> d!1357523 (=> (not res!1844708) (not e!2772113))))

(assert (=> d!1357523 (= res!1844708 ((_ is Cons!49867) (toList!3718 lt!1644187)))))

(assert (=> d!1357523 (= (contains!12466 (toList!3718 lt!1644187) (tuple2!49839 key!3717 newValue!93)) lt!1644511)))

(declare-fun b!4451769 () Bool)

(declare-fun e!2772114 () Bool)

(assert (=> b!4451769 (= e!2772113 e!2772114)))

(declare-fun res!1844707 () Bool)

(assert (=> b!4451769 (=> res!1844707 e!2772114)))

(assert (=> b!4451769 (= res!1844707 (= (h!55610 (toList!3718 lt!1644187)) (tuple2!49839 key!3717 newValue!93)))))

(declare-fun b!4451770 () Bool)

(assert (=> b!4451770 (= e!2772114 (contains!12466 (t!356937 (toList!3718 lt!1644187)) (tuple2!49839 key!3717 newValue!93)))))

(assert (= (and d!1357523 res!1844708) b!4451769))

(assert (= (and b!4451769 (not res!1844707)) b!4451770))

(declare-fun m!5151551 () Bool)

(assert (=> d!1357523 m!5151551))

(declare-fun m!5151555 () Bool)

(assert (=> d!1357523 m!5151555))

(declare-fun m!5151559 () Bool)

(assert (=> b!4451770 m!5151559))

(assert (=> b!4451311 d!1357523))

(declare-fun d!1357525 () Bool)

(declare-fun res!1844713 () Bool)

(declare-fun e!2772120 () Bool)

(assert (=> d!1357525 (=> res!1844713 e!2772120)))

(assert (=> d!1357525 (= res!1844713 (and ((_ is Cons!49867) (toList!3718 lt!1644116)) (= (_1!28213 (h!55610 (toList!3718 lt!1644116))) key!3717)))))

(assert (=> d!1357525 (= (containsKey!1296 (toList!3718 lt!1644116) key!3717) e!2772120)))

(declare-fun b!4451777 () Bool)

(declare-fun e!2772121 () Bool)

(assert (=> b!4451777 (= e!2772120 e!2772121)))

(declare-fun res!1844714 () Bool)

(assert (=> b!4451777 (=> (not res!1844714) (not e!2772121))))

(assert (=> b!4451777 (= res!1844714 ((_ is Cons!49867) (toList!3718 lt!1644116)))))

(declare-fun b!4451778 () Bool)

(assert (=> b!4451778 (= e!2772121 (containsKey!1296 (t!356937 (toList!3718 lt!1644116)) key!3717))))

(assert (= (and d!1357525 (not res!1844713)) b!4451777))

(assert (= (and b!4451777 res!1844714) b!4451778))

(declare-fun m!5151583 () Bool)

(assert (=> b!4451778 m!5151583))

(assert (=> d!1357383 d!1357525))

(declare-fun lt!1644515 () Bool)

(declare-fun d!1357531 () Bool)

(declare-fun content!8036 (List!49992) (InoxSet tuple2!49840))

(assert (=> d!1357531 (= lt!1644515 (select (content!8036 (toList!3717 lt!1644225)) (tuple2!49841 hash!366 newBucket!194)))))

(declare-fun e!2772130 () Bool)

(assert (=> d!1357531 (= lt!1644515 e!2772130)))

(declare-fun res!1844720 () Bool)

(assert (=> d!1357531 (=> (not res!1844720) (not e!2772130))))

(assert (=> d!1357531 (= res!1844720 ((_ is Cons!49868) (toList!3717 lt!1644225)))))

(assert (=> d!1357531 (= (contains!12467 (toList!3717 lt!1644225) (tuple2!49841 hash!366 newBucket!194)) lt!1644515)))

(declare-fun b!4451786 () Bool)

(declare-fun e!2772129 () Bool)

(assert (=> b!4451786 (= e!2772130 e!2772129)))

(declare-fun res!1844719 () Bool)

(assert (=> b!4451786 (=> res!1844719 e!2772129)))

(assert (=> b!4451786 (= res!1844719 (= (h!55611 (toList!3717 lt!1644225)) (tuple2!49841 hash!366 newBucket!194)))))

(declare-fun b!4451787 () Bool)

(assert (=> b!4451787 (= e!2772129 (contains!12467 (t!356938 (toList!3717 lt!1644225)) (tuple2!49841 hash!366 newBucket!194)))))

(assert (= (and d!1357531 res!1844720) b!4451786))

(assert (= (and b!4451786 (not res!1844719)) b!4451787))

(declare-fun m!5151595 () Bool)

(assert (=> d!1357531 m!5151595))

(declare-fun m!5151597 () Bool)

(assert (=> d!1357531 m!5151597))

(declare-fun m!5151599 () Bool)

(assert (=> b!4451787 m!5151599))

(assert (=> b!4451356 d!1357531))

(declare-fun d!1357547 () Bool)

(assert (=> d!1357547 (= (get!16270 (getValueByKey!823 (toList!3717 lm!1616) hash!366)) (v!44084 (getValueByKey!823 (toList!3717 lm!1616) hash!366)))))

(assert (=> d!1357329 d!1357547))

(declare-fun b!4451790 () Bool)

(declare-fun e!2772132 () Option!10837)

(assert (=> b!4451790 (= e!2772132 (getValueByKey!823 (t!356938 (toList!3717 lm!1616)) hash!366))))

(declare-fun b!4451788 () Bool)

(declare-fun e!2772131 () Option!10837)

(assert (=> b!4451788 (= e!2772131 (Some!10836 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))

(declare-fun d!1357549 () Bool)

(declare-fun c!757912 () Bool)

(assert (=> d!1357549 (= c!757912 (and ((_ is Cons!49868) (toList!3717 lm!1616)) (= (_1!28214 (h!55611 (toList!3717 lm!1616))) hash!366)))))

(assert (=> d!1357549 (= (getValueByKey!823 (toList!3717 lm!1616) hash!366) e!2772131)))

(declare-fun b!4451791 () Bool)

(assert (=> b!4451791 (= e!2772132 None!10836)))

(declare-fun b!4451789 () Bool)

(assert (=> b!4451789 (= e!2772131 e!2772132)))

(declare-fun c!757913 () Bool)

(assert (=> b!4451789 (= c!757913 (and ((_ is Cons!49868) (toList!3717 lm!1616)) (not (= (_1!28214 (h!55611 (toList!3717 lm!1616))) hash!366))))))

(assert (= (and d!1357549 c!757912) b!4451788))

(assert (= (and d!1357549 (not c!757912)) b!4451789))

(assert (= (and b!4451789 c!757913) b!4451790))

(assert (= (and b!4451789 (not c!757913)) b!4451791))

(declare-fun m!5151601 () Bool)

(assert (=> b!4451790 m!5151601))

(assert (=> d!1357329 d!1357549))

(declare-fun d!1357551 () Bool)

(declare-fun res!1844721 () Bool)

(declare-fun e!2772133 () Bool)

(assert (=> d!1357551 (=> res!1844721 e!2772133)))

(assert (=> d!1357551 (= res!1844721 ((_ is Nil!49868) (t!356938 (toList!3717 lm!1616))))))

(assert (=> d!1357551 (= (forall!9756 (t!356938 (toList!3717 lm!1616)) lambda!159068) e!2772133)))

(declare-fun b!4451792 () Bool)

(declare-fun e!2772134 () Bool)

(assert (=> b!4451792 (= e!2772133 e!2772134)))

(declare-fun res!1844722 () Bool)

(assert (=> b!4451792 (=> (not res!1844722) (not e!2772134))))

(assert (=> b!4451792 (= res!1844722 (dynLambda!20938 lambda!159068 (h!55611 (t!356938 (toList!3717 lm!1616)))))))

(declare-fun b!4451793 () Bool)

(assert (=> b!4451793 (= e!2772134 (forall!9756 (t!356938 (t!356938 (toList!3717 lm!1616))) lambda!159068))))

(assert (= (and d!1357551 (not res!1844721)) b!4451792))

(assert (= (and b!4451792 res!1844722) b!4451793))

(declare-fun b_lambda!147029 () Bool)

(assert (=> (not b_lambda!147029) (not b!4451792)))

(declare-fun m!5151603 () Bool)

(assert (=> b!4451792 m!5151603))

(declare-fun m!5151605 () Bool)

(assert (=> b!4451793 m!5151605))

(assert (=> b!4451317 d!1357551))

(declare-fun d!1357553 () Bool)

(assert (=> d!1357553 (= (invariantList!860 (toList!3718 lt!1644149)) (noDuplicatedKeys!199 (toList!3718 lt!1644149)))))

(declare-fun bs!788966 () Bool)

(assert (= bs!788966 d!1357553))

(declare-fun m!5151607 () Bool)

(assert (=> bs!788966 m!5151607))

(assert (=> d!1357333 d!1357553))

(declare-fun d!1357555 () Bool)

(declare-fun res!1844723 () Bool)

(declare-fun e!2772135 () Bool)

(assert (=> d!1357555 (=> res!1844723 e!2772135)))

(assert (=> d!1357555 (= res!1844723 ((_ is Nil!49868) (toList!3717 lt!1644119)))))

(assert (=> d!1357555 (= (forall!9756 (toList!3717 lt!1644119) lambda!159077) e!2772135)))

(declare-fun b!4451794 () Bool)

(declare-fun e!2772136 () Bool)

(assert (=> b!4451794 (= e!2772135 e!2772136)))

(declare-fun res!1844724 () Bool)

(assert (=> b!4451794 (=> (not res!1844724) (not e!2772136))))

(assert (=> b!4451794 (= res!1844724 (dynLambda!20938 lambda!159077 (h!55611 (toList!3717 lt!1644119))))))

(declare-fun b!4451795 () Bool)

(assert (=> b!4451795 (= e!2772136 (forall!9756 (t!356938 (toList!3717 lt!1644119)) lambda!159077))))

(assert (= (and d!1357555 (not res!1844723)) b!4451794))

(assert (= (and b!4451794 res!1844724) b!4451795))

(declare-fun b_lambda!147031 () Bool)

(assert (=> (not b_lambda!147031) (not b!4451794)))

(declare-fun m!5151609 () Bool)

(assert (=> b!4451794 m!5151609))

(declare-fun m!5151611 () Bool)

(assert (=> b!4451795 m!5151611))

(assert (=> d!1357333 d!1357555))

(declare-fun bs!788967 () Bool)

(declare-fun b!4451818 () Bool)

(assert (= bs!788967 (and b!4451818 b!4451521)))

(declare-fun lambda!159192 () Int)

(assert (=> bs!788967 (= (= (t!356937 (toList!3718 lt!1644116)) (toList!3718 lt!1644116)) (= lambda!159192 lambda!159132))))

(assert (=> b!4451818 true))

(declare-fun bs!788968 () Bool)

(declare-fun b!4451817 () Bool)

(assert (= bs!788968 (and b!4451817 b!4451521)))

(declare-fun lambda!159193 () Int)

(assert (=> bs!788968 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) (toList!3718 lt!1644116)) (= lambda!159193 lambda!159132))))

(declare-fun bs!788969 () Bool)

(assert (= bs!788969 (and b!4451817 b!4451818)))

(assert (=> bs!788969 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) (t!356937 (toList!3718 lt!1644116))) (= lambda!159193 lambda!159192))))

(assert (=> b!4451817 true))

(declare-fun bs!788970 () Bool)

(declare-fun b!4451816 () Bool)

(assert (= bs!788970 (and b!4451816 b!4451521)))

(declare-fun lambda!159194 () Int)

(assert (=> bs!788970 (= lambda!159194 lambda!159132)))

(declare-fun bs!788971 () Bool)

(assert (= bs!788971 (and b!4451816 b!4451818)))

(assert (=> bs!788971 (= (= (toList!3718 lt!1644116) (t!356937 (toList!3718 lt!1644116))) (= lambda!159194 lambda!159192))))

(declare-fun bs!788972 () Bool)

(assert (= bs!788972 (and b!4451816 b!4451817)))

(assert (=> bs!788972 (= (= (toList!3718 lt!1644116) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159194 lambda!159193))))

(assert (=> b!4451816 true))

(declare-fun bs!788973 () Bool)

(declare-fun b!4451814 () Bool)

(assert (= bs!788973 (and b!4451814 b!4451522)))

(declare-fun lambda!159195 () Int)

(assert (=> bs!788973 (= lambda!159195 lambda!159133)))

(declare-fun e!2772145 () Bool)

(declare-fun lt!1644535 () List!49994)

(assert (=> b!4451814 (= e!2772145 (= (content!8035 lt!1644535) (content!8035 (map!10914 (toList!3718 lt!1644116) lambda!159195))))))

(declare-fun b!4451815 () Bool)

(declare-fun e!2772148 () Unit!85492)

(declare-fun Unit!85530 () Unit!85492)

(assert (=> b!4451815 (= e!2772148 Unit!85530)))

(declare-fun res!1844732 () Bool)

(assert (=> b!4451816 (=> (not res!1844732) (not e!2772145))))

(assert (=> b!4451816 (= res!1844732 (forall!9760 lt!1644535 lambda!159194))))

(declare-fun e!2772147 () List!49994)

(assert (=> b!4451817 (= e!2772147 (Cons!49870 (_1!28213 (h!55610 (toList!3718 lt!1644116))) (getKeysList!306 (t!356937 (toList!3718 lt!1644116)))))))

(declare-fun c!757922 () Bool)

(assert (=> b!4451817 (= c!757922 (containsKey!1296 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(declare-fun lt!1644532 () Unit!85492)

(assert (=> b!4451817 (= lt!1644532 e!2772148)))

(declare-fun c!757920 () Bool)

(assert (=> b!4451817 (= c!757920 (contains!12468 (getKeysList!306 (t!356937 (toList!3718 lt!1644116))) (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(declare-fun lt!1644533 () Unit!85492)

(declare-fun e!2772146 () Unit!85492)

(assert (=> b!4451817 (= lt!1644533 e!2772146)))

(declare-fun lt!1644534 () List!49994)

(assert (=> b!4451817 (= lt!1644534 (getKeysList!306 (t!356937 (toList!3718 lt!1644116))))))

(declare-fun lt!1644536 () Unit!85492)

(declare-fun lemmaForallContainsAddHeadPreserves!106 (List!49991 List!49994 tuple2!49838) Unit!85492)

(assert (=> b!4451817 (= lt!1644536 (lemmaForallContainsAddHeadPreserves!106 (t!356937 (toList!3718 lt!1644116)) lt!1644534 (h!55610 (toList!3718 lt!1644116))))))

(assert (=> b!4451817 (forall!9760 lt!1644534 lambda!159193)))

(declare-fun lt!1644530 () Unit!85492)

(assert (=> b!4451817 (= lt!1644530 lt!1644536)))

(assert (=> b!4451818 false))

(declare-fun lt!1644531 () Unit!85492)

(declare-fun forallContained!2163 (List!49994 Int K!11235) Unit!85492)

(assert (=> b!4451818 (= lt!1644531 (forallContained!2163 (getKeysList!306 (t!356937 (toList!3718 lt!1644116))) lambda!159192 (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(declare-fun Unit!85532 () Unit!85492)

(assert (=> b!4451818 (= e!2772146 Unit!85532)))

(declare-fun b!4451819 () Bool)

(declare-fun Unit!85533 () Unit!85492)

(assert (=> b!4451819 (= e!2772146 Unit!85533)))

(declare-fun b!4451820 () Bool)

(declare-fun res!1844731 () Bool)

(assert (=> b!4451820 (=> (not res!1844731) (not e!2772145))))

(assert (=> b!4451820 (= res!1844731 (= (length!224 lt!1644535) (length!225 (toList!3718 lt!1644116))))))

(declare-fun d!1357557 () Bool)

(assert (=> d!1357557 e!2772145))

(declare-fun res!1844733 () Bool)

(assert (=> d!1357557 (=> (not res!1844733) (not e!2772145))))

(assert (=> d!1357557 (= res!1844733 (noDuplicate!684 lt!1644535))))

(assert (=> d!1357557 (= lt!1644535 e!2772147)))

(declare-fun c!757921 () Bool)

(assert (=> d!1357557 (= c!757921 ((_ is Cons!49867) (toList!3718 lt!1644116)))))

(assert (=> d!1357557 (invariantList!860 (toList!3718 lt!1644116))))

(assert (=> d!1357557 (= (getKeysList!306 (toList!3718 lt!1644116)) lt!1644535)))

(declare-fun b!4451821 () Bool)

(assert (=> b!4451821 (= e!2772147 Nil!49870)))

(declare-fun b!4451822 () Bool)

(assert (=> b!4451822 false))

(declare-fun Unit!85534 () Unit!85492)

(assert (=> b!4451822 (= e!2772148 Unit!85534)))

(assert (= (and d!1357557 c!757921) b!4451817))

(assert (= (and d!1357557 (not c!757921)) b!4451821))

(assert (= (and b!4451817 c!757922) b!4451822))

(assert (= (and b!4451817 (not c!757922)) b!4451815))

(assert (= (and b!4451817 c!757920) b!4451818))

(assert (= (and b!4451817 (not c!757920)) b!4451819))

(assert (= (and d!1357557 res!1844733) b!4451820))

(assert (= (and b!4451820 res!1844731) b!4451816))

(assert (= (and b!4451816 res!1844732) b!4451814))

(declare-fun m!5151613 () Bool)

(assert (=> b!4451814 m!5151613))

(declare-fun m!5151615 () Bool)

(assert (=> b!4451814 m!5151615))

(assert (=> b!4451814 m!5151615))

(declare-fun m!5151617 () Bool)

(assert (=> b!4451814 m!5151617))

(declare-fun m!5151619 () Bool)

(assert (=> b!4451820 m!5151619))

(assert (=> b!4451820 m!5151277))

(declare-fun m!5151621 () Bool)

(assert (=> b!4451817 m!5151621))

(declare-fun m!5151623 () Bool)

(assert (=> b!4451817 m!5151623))

(declare-fun m!5151625 () Bool)

(assert (=> b!4451817 m!5151625))

(declare-fun m!5151627 () Bool)

(assert (=> b!4451817 m!5151627))

(assert (=> b!4451817 m!5151627))

(declare-fun m!5151629 () Bool)

(assert (=> b!4451817 m!5151629))

(assert (=> b!4451818 m!5151627))

(assert (=> b!4451818 m!5151627))

(declare-fun m!5151631 () Bool)

(assert (=> b!4451818 m!5151631))

(declare-fun m!5151633 () Bool)

(assert (=> b!4451816 m!5151633))

(declare-fun m!5151635 () Bool)

(assert (=> d!1357557 m!5151635))

(declare-fun m!5151637 () Bool)

(assert (=> d!1357557 m!5151637))

(assert (=> b!4451383 d!1357557))

(assert (=> b!4451381 d!1357429))

(assert (=> b!4451381 d!1357435))

(declare-fun d!1357559 () Bool)

(declare-fun res!1844738 () Bool)

(declare-fun e!2772153 () Bool)

(assert (=> d!1357559 (=> res!1844738 e!2772153)))

(assert (=> d!1357559 (= res!1844738 (or ((_ is Nil!49868) (toList!3717 lm!1616)) ((_ is Nil!49868) (t!356938 (toList!3717 lm!1616)))))))

(assert (=> d!1357559 (= (isStrictlySorted!285 (toList!3717 lm!1616)) e!2772153)))

(declare-fun b!4451829 () Bool)

(declare-fun e!2772154 () Bool)

(assert (=> b!4451829 (= e!2772153 e!2772154)))

(declare-fun res!1844739 () Bool)

(assert (=> b!4451829 (=> (not res!1844739) (not e!2772154))))

(assert (=> b!4451829 (= res!1844739 (bvslt (_1!28214 (h!55611 (toList!3717 lm!1616))) (_1!28214 (h!55611 (t!356938 (toList!3717 lm!1616))))))))

(declare-fun b!4451830 () Bool)

(assert (=> b!4451830 (= e!2772154 (isStrictlySorted!285 (t!356938 (toList!3717 lm!1616))))))

(assert (= (and d!1357559 (not res!1844738)) b!4451829))

(assert (= (and b!4451829 res!1844739) b!4451830))

(declare-fun m!5151639 () Bool)

(assert (=> b!4451830 m!5151639))

(assert (=> d!1357381 d!1357559))

(declare-fun d!1357561 () Bool)

(assert (=> d!1357561 (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644116) key!3717))))

(declare-fun lt!1644539 () Unit!85492)

(declare-fun choose!28332 (List!49991 K!11235) Unit!85492)

(assert (=> d!1357561 (= lt!1644539 (choose!28332 (toList!3718 lt!1644116) key!3717))))

(assert (=> d!1357561 (invariantList!860 (toList!3718 lt!1644116))))

(assert (=> d!1357561 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!729 (toList!3718 lt!1644116) key!3717) lt!1644539)))

(declare-fun bs!788974 () Bool)

(assert (= bs!788974 d!1357561))

(assert (=> bs!788974 m!5151125))

(assert (=> bs!788974 m!5151125))

(assert (=> bs!788974 m!5151127))

(declare-fun m!5151641 () Bool)

(assert (=> bs!788974 m!5151641))

(assert (=> bs!788974 m!5151637))

(assert (=> b!4451382 d!1357561))

(declare-fun d!1357563 () Bool)

(declare-fun isEmpty!28406 (Option!10838) Bool)

(assert (=> d!1357563 (= (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644116) key!3717)) (not (isEmpty!28406 (getValueByKey!824 (toList!3718 lt!1644116) key!3717))))))

(declare-fun bs!788975 () Bool)

(assert (= bs!788975 d!1357563))

(assert (=> bs!788975 m!5151125))

(declare-fun m!5151643 () Bool)

(assert (=> bs!788975 m!5151643))

(assert (=> b!4451382 d!1357563))

(declare-fun b!4451833 () Bool)

(declare-fun e!2772156 () Option!10838)

(assert (=> b!4451833 (= e!2772156 (getValueByKey!824 (t!356937 (toList!3718 lt!1644116)) key!3717))))

(declare-fun b!4451832 () Bool)

(declare-fun e!2772155 () Option!10838)

(assert (=> b!4451832 (= e!2772155 e!2772156)))

(declare-fun c!757924 () Bool)

(assert (=> b!4451832 (= c!757924 (and ((_ is Cons!49867) (toList!3718 lt!1644116)) (not (= (_1!28213 (h!55610 (toList!3718 lt!1644116))) key!3717))))))

(declare-fun b!4451834 () Bool)

(assert (=> b!4451834 (= e!2772156 None!10837)))

(declare-fun d!1357565 () Bool)

(declare-fun c!757923 () Bool)

(assert (=> d!1357565 (= c!757923 (and ((_ is Cons!49867) (toList!3718 lt!1644116)) (= (_1!28213 (h!55610 (toList!3718 lt!1644116))) key!3717)))))

(assert (=> d!1357565 (= (getValueByKey!824 (toList!3718 lt!1644116) key!3717) e!2772155)))

(declare-fun b!4451831 () Bool)

(assert (=> b!4451831 (= e!2772155 (Some!10837 (_2!28213 (h!55610 (toList!3718 lt!1644116)))))))

(assert (= (and d!1357565 c!757923) b!4451831))

(assert (= (and d!1357565 (not c!757923)) b!4451832))

(assert (= (and b!4451832 c!757924) b!4451833))

(assert (= (and b!4451832 (not c!757924)) b!4451834))

(declare-fun m!5151645 () Bool)

(assert (=> b!4451833 m!5151645))

(assert (=> b!4451382 d!1357565))

(declare-fun d!1357567 () Bool)

(assert (=> d!1357567 (contains!12468 (getKeysList!306 (toList!3718 lt!1644116)) key!3717)))

(declare-fun lt!1644542 () Unit!85492)

(declare-fun choose!28333 (List!49991 K!11235) Unit!85492)

(assert (=> d!1357567 (= lt!1644542 (choose!28333 (toList!3718 lt!1644116) key!3717))))

(assert (=> d!1357567 (invariantList!860 (toList!3718 lt!1644116))))

(assert (=> d!1357567 (= (lemmaInListThenGetKeysListContains!303 (toList!3718 lt!1644116) key!3717) lt!1644542)))

(declare-fun bs!788976 () Bool)

(assert (= bs!788976 d!1357567))

(assert (=> bs!788976 m!5151135))

(assert (=> bs!788976 m!5151135))

(declare-fun m!5151647 () Bool)

(assert (=> bs!788976 m!5151647))

(declare-fun m!5151649 () Bool)

(assert (=> bs!788976 m!5151649))

(assert (=> bs!788976 m!5151637))

(assert (=> b!4451382 d!1357567))

(assert (=> b!4451385 d!1357525))

(declare-fun d!1357569 () Bool)

(assert (=> d!1357569 (containsKey!1296 (toList!3718 lt!1644116) key!3717)))

(declare-fun lt!1644545 () Unit!85492)

(declare-fun choose!28334 (List!49991 K!11235) Unit!85492)

(assert (=> d!1357569 (= lt!1644545 (choose!28334 (toList!3718 lt!1644116) key!3717))))

(assert (=> d!1357569 (invariantList!860 (toList!3718 lt!1644116))))

(assert (=> d!1357569 (= (lemmaInGetKeysListThenContainsKey!304 (toList!3718 lt!1644116) key!3717) lt!1644545)))

(declare-fun bs!788977 () Bool)

(assert (= bs!788977 d!1357569))

(assert (=> bs!788977 m!5151129))

(declare-fun m!5151651 () Bool)

(assert (=> bs!788977 m!5151651))

(assert (=> bs!788977 m!5151637))

(assert (=> b!4451385 d!1357569))

(declare-fun b!4451835 () Bool)

(declare-fun e!2772162 () List!49994)

(assert (=> b!4451835 (= e!2772162 (keys!17104 lt!1644187))))

(declare-fun call!309812 () Bool)

(declare-fun bm!309807 () Bool)

(assert (=> bm!309807 (= call!309812 (contains!12468 e!2772162 (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun c!757926 () Bool)

(declare-fun c!757927 () Bool)

(assert (=> bm!309807 (= c!757926 c!757927)))

(declare-fun b!4451836 () Bool)

(declare-fun e!2772160 () Unit!85492)

(declare-fun Unit!85535 () Unit!85492)

(assert (=> b!4451836 (= e!2772160 Unit!85535)))

(declare-fun b!4451837 () Bool)

(declare-fun e!2772161 () Bool)

(assert (=> b!4451837 (= e!2772161 (not (contains!12468 (keys!17104 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))))

(declare-fun b!4451838 () Bool)

(declare-fun e!2772159 () Unit!85492)

(declare-fun lt!1644546 () Unit!85492)

(assert (=> b!4451838 (= e!2772159 lt!1644546)))

(declare-fun lt!1644550 () Unit!85492)

(assert (=> b!4451838 (= lt!1644550 (lemmaContainsKeyImpliesGetValueByKeyDefined!729 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(assert (=> b!4451838 (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun lt!1644551 () Unit!85492)

(assert (=> b!4451838 (= lt!1644551 lt!1644550)))

(assert (=> b!4451838 (= lt!1644546 (lemmaInListThenGetKeysListContains!303 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(assert (=> b!4451838 call!309812))

(declare-fun b!4451839 () Bool)

(assert (=> b!4451839 (= e!2772162 (getKeysList!306 (toList!3718 lt!1644187)))))

(declare-fun b!4451840 () Bool)

(declare-fun e!2772158 () Bool)

(declare-fun e!2772157 () Bool)

(assert (=> b!4451840 (= e!2772158 e!2772157)))

(declare-fun res!1844740 () Bool)

(assert (=> b!4451840 (=> (not res!1844740) (not e!2772157))))

(assert (=> b!4451840 (= res!1844740 (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))))

(declare-fun b!4451841 () Bool)

(assert (=> b!4451841 false))

(declare-fun lt!1644548 () Unit!85492)

(declare-fun lt!1644547 () Unit!85492)

(assert (=> b!4451841 (= lt!1644548 lt!1644547)))

(assert (=> b!4451841 (containsKey!1296 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))

(assert (=> b!4451841 (= lt!1644547 (lemmaInGetKeysListThenContainsKey!304 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun Unit!85536 () Unit!85492)

(assert (=> b!4451841 (= e!2772160 Unit!85536)))

(declare-fun d!1357571 () Bool)

(assert (=> d!1357571 e!2772158))

(declare-fun res!1844742 () Bool)

(assert (=> d!1357571 (=> res!1844742 e!2772158)))

(assert (=> d!1357571 (= res!1844742 e!2772161)))

(declare-fun res!1844741 () Bool)

(assert (=> d!1357571 (=> (not res!1844741) (not e!2772161))))

(declare-fun lt!1644552 () Bool)

(assert (=> d!1357571 (= res!1844741 (not lt!1644552))))

(declare-fun lt!1644553 () Bool)

(assert (=> d!1357571 (= lt!1644552 lt!1644553)))

(declare-fun lt!1644549 () Unit!85492)

(assert (=> d!1357571 (= lt!1644549 e!2772159)))

(assert (=> d!1357571 (= c!757927 lt!1644553)))

(assert (=> d!1357571 (= lt!1644553 (containsKey!1296 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(assert (=> d!1357571 (= (contains!12462 lt!1644187 (_1!28213 (tuple2!49839 key!3717 newValue!93))) lt!1644552)))

(declare-fun b!4451842 () Bool)

(assert (=> b!4451842 (= e!2772159 e!2772160)))

(declare-fun c!757925 () Bool)

(assert (=> b!4451842 (= c!757925 call!309812)))

(declare-fun b!4451843 () Bool)

(assert (=> b!4451843 (= e!2772157 (contains!12468 (keys!17104 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(assert (= (and d!1357571 c!757927) b!4451838))

(assert (= (and d!1357571 (not c!757927)) b!4451842))

(assert (= (and b!4451842 c!757925) b!4451841))

(assert (= (and b!4451842 (not c!757925)) b!4451836))

(assert (= (or b!4451838 b!4451842) bm!309807))

(assert (= (and bm!309807 c!757926) b!4451839))

(assert (= (and bm!309807 (not c!757926)) b!4451835))

(assert (= (and d!1357571 res!1844741) b!4451837))

(assert (= (and d!1357571 (not res!1844742)) b!4451840))

(assert (= (and b!4451840 res!1844740) b!4451843))

(assert (=> b!4451840 m!5151061))

(assert (=> b!4451840 m!5151061))

(declare-fun m!5151653 () Bool)

(assert (=> b!4451840 m!5151653))

(declare-fun m!5151655 () Bool)

(assert (=> b!4451841 m!5151655))

(declare-fun m!5151657 () Bool)

(assert (=> b!4451841 m!5151657))

(declare-fun m!5151659 () Bool)

(assert (=> bm!309807 m!5151659))

(declare-fun m!5151661 () Bool)

(assert (=> b!4451839 m!5151661))

(declare-fun m!5151663 () Bool)

(assert (=> b!4451837 m!5151663))

(assert (=> b!4451837 m!5151663))

(declare-fun m!5151665 () Bool)

(assert (=> b!4451837 m!5151665))

(assert (=> b!4451835 m!5151663))

(declare-fun m!5151667 () Bool)

(assert (=> b!4451838 m!5151667))

(assert (=> b!4451838 m!5151061))

(assert (=> b!4451838 m!5151061))

(assert (=> b!4451838 m!5151653))

(declare-fun m!5151669 () Bool)

(assert (=> b!4451838 m!5151669))

(assert (=> b!4451843 m!5151663))

(assert (=> b!4451843 m!5151663))

(assert (=> b!4451843 m!5151665))

(assert (=> d!1357571 m!5151655))

(assert (=> d!1357343 d!1357571))

(declare-fun b!4451846 () Bool)

(declare-fun e!2772164 () Option!10838)

(assert (=> b!4451846 (= e!2772164 (getValueByKey!824 (t!356937 lt!1644188) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun b!4451845 () Bool)

(declare-fun e!2772163 () Option!10838)

(assert (=> b!4451845 (= e!2772163 e!2772164)))

(declare-fun c!757929 () Bool)

(assert (=> b!4451845 (= c!757929 (and ((_ is Cons!49867) lt!1644188) (not (= (_1!28213 (h!55610 lt!1644188)) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))))

(declare-fun b!4451847 () Bool)

(assert (=> b!4451847 (= e!2772164 None!10837)))

(declare-fun d!1357573 () Bool)

(declare-fun c!757928 () Bool)

(assert (=> d!1357573 (= c!757928 (and ((_ is Cons!49867) lt!1644188) (= (_1!28213 (h!55610 lt!1644188)) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))))

(assert (=> d!1357573 (= (getValueByKey!824 lt!1644188 (_1!28213 (tuple2!49839 key!3717 newValue!93))) e!2772163)))

(declare-fun b!4451844 () Bool)

(assert (=> b!4451844 (= e!2772163 (Some!10837 (_2!28213 (h!55610 lt!1644188))))))

(assert (= (and d!1357573 c!757928) b!4451844))

(assert (= (and d!1357573 (not c!757928)) b!4451845))

(assert (= (and b!4451845 c!757929) b!4451846))

(assert (= (and b!4451845 (not c!757929)) b!4451847))

(declare-fun m!5151671 () Bool)

(assert (=> b!4451846 m!5151671))

(assert (=> d!1357343 d!1357573))

(declare-fun d!1357575 () Bool)

(assert (=> d!1357575 (= (getValueByKey!824 lt!1644188 (_1!28213 (tuple2!49839 key!3717 newValue!93))) (Some!10837 (_2!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun lt!1644556 () Unit!85492)

(declare-fun choose!28335 (List!49991 K!11235 V!11481) Unit!85492)

(assert (=> d!1357575 (= lt!1644556 (choose!28335 lt!1644188 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun e!2772167 () Bool)

(assert (=> d!1357575 e!2772167))

(declare-fun res!1844747 () Bool)

(assert (=> d!1357575 (=> (not res!1844747) (not e!2772167))))

(assert (=> d!1357575 (= res!1844747 (invariantList!860 lt!1644188))))

(assert (=> d!1357575 (= (lemmaContainsTupThenGetReturnValue!539 lt!1644188 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))) lt!1644556)))

(declare-fun b!4451852 () Bool)

(declare-fun res!1844748 () Bool)

(assert (=> b!4451852 (=> (not res!1844748) (not e!2772167))))

(assert (=> b!4451852 (= res!1844748 (containsKey!1296 lt!1644188 (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun b!4451853 () Bool)

(assert (=> b!4451853 (= e!2772167 (contains!12466 lt!1644188 (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))))))

(assert (= (and d!1357575 res!1844747) b!4451852))

(assert (= (and b!4451852 res!1844748) b!4451853))

(assert (=> d!1357575 m!5151055))

(declare-fun m!5151673 () Bool)

(assert (=> d!1357575 m!5151673))

(declare-fun m!5151675 () Bool)

(assert (=> d!1357575 m!5151675))

(declare-fun m!5151677 () Bool)

(assert (=> b!4451852 m!5151677))

(declare-fun m!5151679 () Bool)

(assert (=> b!4451853 m!5151679))

(assert (=> d!1357343 d!1357575))

(declare-fun b!4451882 () Bool)

(declare-fun e!2772186 () List!49991)

(declare-fun lt!1644586 () List!49991)

(assert (=> b!4451882 (= e!2772186 lt!1644586)))

(declare-fun call!309824 () List!49991)

(assert (=> b!4451882 (= lt!1644586 call!309824)))

(declare-fun c!757942 () Bool)

(assert (=> b!4451882 (= c!757942 (containsKey!1296 (insertNoDuplicatedKeys!234 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))) (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(declare-fun lt!1644588 () Unit!85492)

(declare-fun e!2772182 () Unit!85492)

(assert (=> b!4451882 (= lt!1644588 e!2772182)))

(declare-fun bm!309816 () Bool)

(declare-fun call!309821 () List!49991)

(assert (=> bm!309816 (= call!309824 call!309821)))

(declare-fun c!757941 () Bool)

(declare-fun c!757940 () Bool)

(assert (=> bm!309816 (= c!757941 c!757940)))

(declare-fun b!4451883 () Bool)

(assert (=> b!4451883 (= c!757940 ((_ is Cons!49867) (toList!3718 lt!1644116)))))

(declare-fun e!2772188 () List!49991)

(assert (=> b!4451883 (= e!2772188 e!2772186)))

(declare-fun b!4451884 () Bool)

(declare-fun e!2772185 () List!49991)

(declare-fun call!309822 () List!49991)

(assert (=> b!4451884 (= e!2772185 call!309822)))

(declare-fun lt!1644579 () List!49994)

(declare-fun call!309823 () List!49994)

(assert (=> b!4451884 (= lt!1644579 call!309823)))

(declare-fun lt!1644583 () Unit!85492)

(declare-fun lemmaSubseqRefl!113 (List!49994) Unit!85492)

(assert (=> b!4451884 (= lt!1644583 (lemmaSubseqRefl!113 lt!1644579))))

(declare-fun subseq!629 (List!49994 List!49994) Bool)

(assert (=> b!4451884 (subseq!629 lt!1644579 lt!1644579)))

(declare-fun lt!1644584 () Unit!85492)

(assert (=> b!4451884 (= lt!1644584 lt!1644583)))

(declare-fun e!2772183 () Bool)

(declare-fun b!4451885 () Bool)

(assert (=> b!4451885 (= e!2772183 (not (containsKey!1296 (toList!3718 lt!1644116) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))))

(declare-fun b!4451886 () Bool)

(assert (=> b!4451886 false))

(declare-fun lt!1644589 () Unit!85492)

(declare-fun lt!1644582 () Unit!85492)

(assert (=> b!4451886 (= lt!1644589 lt!1644582)))

(assert (=> b!4451886 (containsKey!1296 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (h!55610 (toList!3718 lt!1644116))))))

(assert (=> b!4451886 (= lt!1644582 (lemmaInGetKeysListThenContainsKey!304 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(declare-fun lt!1644585 () Unit!85492)

(declare-fun lt!1644580 () Unit!85492)

(assert (=> b!4451886 (= lt!1644585 lt!1644580)))

(assert (=> b!4451886 (contains!12468 call!309823 (_1!28213 (h!55610 (toList!3718 lt!1644116))))))

(declare-fun lt!1644581 () List!49991)

(assert (=> b!4451886 (= lt!1644580 (lemmaInListThenGetKeysListContains!303 lt!1644581 (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(assert (=> b!4451886 (= lt!1644581 (insertNoDuplicatedKeys!234 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun Unit!85538 () Unit!85492)

(assert (=> b!4451886 (= e!2772182 Unit!85538)))

(declare-fun b!4451887 () Bool)

(declare-fun res!1844760 () Bool)

(declare-fun e!2772187 () Bool)

(assert (=> b!4451887 (=> (not res!1844760) (not e!2772187))))

(declare-fun lt!1644587 () List!49991)

(assert (=> b!4451887 (= res!1844760 (contains!12466 lt!1644587 (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))))))

(declare-fun b!4451888 () Bool)

(assert (=> b!4451888 (= e!2772185 e!2772188)))

(declare-fun res!1844759 () Bool)

(assert (=> b!4451888 (= res!1844759 ((_ is Cons!49867) (toList!3718 lt!1644116)))))

(assert (=> b!4451888 (=> (not res!1844759) (not e!2772183))))

(declare-fun c!757944 () Bool)

(assert (=> b!4451888 (= c!757944 e!2772183)))

(declare-fun b!4451889 () Bool)

(declare-fun e!2772184 () List!49991)

(assert (=> b!4451889 (= e!2772184 Nil!49867)))

(declare-fun b!4451890 () Bool)

(assert (=> b!4451890 (= e!2772188 call!309821)))

(declare-fun b!4451891 () Bool)

(declare-fun res!1844758 () Bool)

(assert (=> b!4451891 (=> (not res!1844758) (not e!2772187))))

(assert (=> b!4451891 (= res!1844758 (containsKey!1296 lt!1644587 (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun b!4451892 () Bool)

(assert (=> b!4451892 (= e!2772184 (insertNoDuplicatedKeys!234 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun bm!309817 () Bool)

(declare-fun c!757943 () Bool)

(declare-fun $colon$colon!829 (List!49991 tuple2!49838) List!49991)

(assert (=> bm!309817 (= call!309822 ($colon$colon!829 (ite c!757943 (t!356937 (toList!3718 lt!1644116)) (ite c!757944 (toList!3718 lt!1644116) e!2772184)) (ite (or c!757943 c!757944) (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))) (ite c!757940 (h!55610 (toList!3718 lt!1644116)) (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))))))))

(declare-fun b!4451893 () Bool)

(declare-fun Unit!85543 () Unit!85492)

(assert (=> b!4451893 (= e!2772182 Unit!85543)))

(declare-fun bm!309818 () Bool)

(assert (=> bm!309818 (= call!309823 (getKeysList!306 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))))

(declare-fun d!1357577 () Bool)

(assert (=> d!1357577 e!2772187))

(declare-fun res!1844757 () Bool)

(assert (=> d!1357577 (=> (not res!1844757) (not e!2772187))))

(assert (=> d!1357577 (= res!1844757 (invariantList!860 lt!1644587))))

(assert (=> d!1357577 (= lt!1644587 e!2772185)))

(assert (=> d!1357577 (= c!757943 (and ((_ is Cons!49867) (toList!3718 lt!1644116)) (= (_1!28213 (h!55610 (toList!3718 lt!1644116))) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))))

(assert (=> d!1357577 (invariantList!860 (toList!3718 lt!1644116))))

(assert (=> d!1357577 (= (insertNoDuplicatedKeys!234 (toList!3718 lt!1644116) (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))) lt!1644587)))

(declare-fun b!4451894 () Bool)

(assert (=> b!4451894 (= e!2772186 call!309824)))

(declare-fun bm!309819 () Bool)

(assert (=> bm!309819 (= call!309821 call!309822)))

(declare-fun b!4451895 () Bool)

(assert (=> b!4451895 (= e!2772187 (= (content!8035 (getKeysList!306 lt!1644587)) ((_ map or) (content!8035 (getKeysList!306 (toList!3718 lt!1644116))) (store ((as const (Array K!11235 Bool)) false) (_1!28213 (tuple2!49839 key!3717 newValue!93)) true))))))

(assert (= (and d!1357577 c!757943) b!4451884))

(assert (= (and d!1357577 (not c!757943)) b!4451888))

(assert (= (and b!4451888 res!1844759) b!4451885))

(assert (= (and b!4451888 c!757944) b!4451890))

(assert (= (and b!4451888 (not c!757944)) b!4451883))

(assert (= (and b!4451883 c!757940) b!4451882))

(assert (= (and b!4451883 (not c!757940)) b!4451894))

(assert (= (and b!4451882 c!757942) b!4451886))

(assert (= (and b!4451882 (not c!757942)) b!4451893))

(assert (= (or b!4451882 b!4451894) bm!309816))

(assert (= (and bm!309816 c!757941) b!4451892))

(assert (= (and bm!309816 (not c!757941)) b!4451889))

(assert (= (or b!4451890 bm!309816) bm!309819))

(assert (= (or b!4451884 b!4451886) bm!309818))

(assert (= (or b!4451884 bm!309819) bm!309817))

(assert (= (and d!1357577 res!1844757) b!4451891))

(assert (= (and b!4451891 res!1844758) b!4451887))

(assert (= (and b!4451887 res!1844760) b!4451895))

(declare-fun m!5151681 () Bool)

(assert (=> b!4451882 m!5151681))

(assert (=> b!4451882 m!5151681))

(declare-fun m!5151683 () Bool)

(assert (=> b!4451882 m!5151683))

(declare-fun m!5151685 () Bool)

(assert (=> b!4451885 m!5151685))

(declare-fun m!5151687 () Bool)

(assert (=> b!4451887 m!5151687))

(assert (=> b!4451892 m!5151681))

(declare-fun m!5151689 () Bool)

(assert (=> b!4451895 m!5151689))

(assert (=> b!4451895 m!5151135))

(declare-fun m!5151691 () Bool)

(assert (=> b!4451895 m!5151691))

(assert (=> b!4451895 m!5151135))

(declare-fun m!5151693 () Bool)

(assert (=> b!4451895 m!5151693))

(assert (=> b!4451895 m!5151691))

(declare-fun m!5151695 () Bool)

(assert (=> b!4451895 m!5151695))

(declare-fun m!5151697 () Bool)

(assert (=> bm!309817 m!5151697))

(declare-fun m!5151699 () Bool)

(assert (=> b!4451884 m!5151699))

(declare-fun m!5151701 () Bool)

(assert (=> b!4451884 m!5151701))

(declare-fun m!5151703 () Bool)

(assert (=> b!4451891 m!5151703))

(declare-fun m!5151705 () Bool)

(assert (=> bm!309818 m!5151705))

(declare-fun m!5151707 () Bool)

(assert (=> d!1357577 m!5151707))

(assert (=> d!1357577 m!5151637))

(assert (=> b!4451886 m!5151681))

(declare-fun m!5151709 () Bool)

(assert (=> b!4451886 m!5151709))

(assert (=> b!4451886 m!5151623))

(declare-fun m!5151711 () Bool)

(assert (=> b!4451886 m!5151711))

(declare-fun m!5151713 () Bool)

(assert (=> b!4451886 m!5151713))

(assert (=> d!1357343 d!1357577))

(assert (=> b!4451384 d!1357563))

(assert (=> b!4451384 d!1357565))

(declare-fun d!1357579 () Bool)

(declare-fun res!1844765 () Bool)

(declare-fun e!2772193 () Bool)

(assert (=> d!1357579 (=> res!1844765 e!2772193)))

(assert (=> d!1357579 (= res!1844765 ((_ is Nil!49867) newBucket!194))))

(assert (=> d!1357579 (= (forall!9758 newBucket!194 lambda!159085) e!2772193)))

(declare-fun b!4451900 () Bool)

(declare-fun e!2772194 () Bool)

(assert (=> b!4451900 (= e!2772193 e!2772194)))

(declare-fun res!1844766 () Bool)

(assert (=> b!4451900 (=> (not res!1844766) (not e!2772194))))

(declare-fun dynLambda!20940 (Int tuple2!49838) Bool)

(assert (=> b!4451900 (= res!1844766 (dynLambda!20940 lambda!159085 (h!55610 newBucket!194)))))

(declare-fun b!4451901 () Bool)

(assert (=> b!4451901 (= e!2772194 (forall!9758 (t!356937 newBucket!194) lambda!159085))))

(assert (= (and d!1357579 (not res!1844765)) b!4451900))

(assert (= (and b!4451900 res!1844766) b!4451901))

(declare-fun b_lambda!147033 () Bool)

(assert (=> (not b_lambda!147033) (not b!4451900)))

(declare-fun m!5151715 () Bool)

(assert (=> b!4451900 m!5151715))

(declare-fun m!5151717 () Bool)

(assert (=> b!4451901 m!5151717))

(assert (=> d!1357387 d!1357579))

(declare-fun d!1357581 () Bool)

(declare-fun e!2772196 () Bool)

(assert (=> d!1357581 e!2772196))

(declare-fun res!1844767 () Bool)

(assert (=> d!1357581 (=> res!1844767 e!2772196)))

(declare-fun lt!1644590 () Bool)

(assert (=> d!1357581 (= res!1844767 (not lt!1644590))))

(declare-fun lt!1644592 () Bool)

(assert (=> d!1357581 (= lt!1644590 lt!1644592)))

(declare-fun lt!1644593 () Unit!85492)

(declare-fun e!2772195 () Unit!85492)

(assert (=> d!1357581 (= lt!1644593 e!2772195)))

(declare-fun c!757945 () Bool)

(assert (=> d!1357581 (= c!757945 lt!1644592)))

(assert (=> d!1357581 (= lt!1644592 (containsKey!1295 (toList!3717 lt!1644225) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(assert (=> d!1357581 (= (contains!12461 lt!1644225 (_1!28214 (tuple2!49841 hash!366 newBucket!194))) lt!1644590)))

(declare-fun b!4451902 () Bool)

(declare-fun lt!1644591 () Unit!85492)

(assert (=> b!4451902 (= e!2772195 lt!1644591)))

(assert (=> b!4451902 (= lt!1644591 (lemmaContainsKeyImpliesGetValueByKeyDefined!728 (toList!3717 lt!1644225) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(assert (=> b!4451902 (isDefined!8125 (getValueByKey!823 (toList!3717 lt!1644225) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun b!4451903 () Bool)

(declare-fun Unit!85550 () Unit!85492)

(assert (=> b!4451903 (= e!2772195 Unit!85550)))

(declare-fun b!4451904 () Bool)

(assert (=> b!4451904 (= e!2772196 (isDefined!8125 (getValueByKey!823 (toList!3717 lt!1644225) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (= (and d!1357581 c!757945) b!4451902))

(assert (= (and d!1357581 (not c!757945)) b!4451903))

(assert (= (and d!1357581 (not res!1844767)) b!4451904))

(declare-fun m!5151719 () Bool)

(assert (=> d!1357581 m!5151719))

(declare-fun m!5151721 () Bool)

(assert (=> b!4451902 m!5151721))

(assert (=> b!4451902 m!5151113))

(assert (=> b!4451902 m!5151113))

(declare-fun m!5151723 () Bool)

(assert (=> b!4451902 m!5151723))

(assert (=> b!4451904 m!5151113))

(assert (=> b!4451904 m!5151113))

(assert (=> b!4451904 m!5151723))

(assert (=> d!1357377 d!1357581))

(declare-fun e!2772198 () Option!10837)

(declare-fun b!4451907 () Bool)

(assert (=> b!4451907 (= e!2772198 (getValueByKey!823 (t!356938 lt!1644222) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun b!4451905 () Bool)

(declare-fun e!2772197 () Option!10837)

(assert (=> b!4451905 (= e!2772197 (Some!10836 (_2!28214 (h!55611 lt!1644222))))))

(declare-fun c!757946 () Bool)

(declare-fun d!1357583 () Bool)

(assert (=> d!1357583 (= c!757946 (and ((_ is Cons!49868) lt!1644222) (= (_1!28214 (h!55611 lt!1644222)) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (=> d!1357583 (= (getValueByKey!823 lt!1644222 (_1!28214 (tuple2!49841 hash!366 newBucket!194))) e!2772197)))

(declare-fun b!4451908 () Bool)

(assert (=> b!4451908 (= e!2772198 None!10836)))

(declare-fun b!4451906 () Bool)

(assert (=> b!4451906 (= e!2772197 e!2772198)))

(declare-fun c!757947 () Bool)

(assert (=> b!4451906 (= c!757947 (and ((_ is Cons!49868) lt!1644222) (not (= (_1!28214 (h!55611 lt!1644222)) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))))

(assert (= (and d!1357583 c!757946) b!4451905))

(assert (= (and d!1357583 (not c!757946)) b!4451906))

(assert (= (and b!4451906 c!757947) b!4451907))

(assert (= (and b!4451906 (not c!757947)) b!4451908))

(declare-fun m!5151725 () Bool)

(assert (=> b!4451907 m!5151725))

(assert (=> d!1357377 d!1357583))

(declare-fun d!1357585 () Bool)

(assert (=> d!1357585 (= (getValueByKey!823 lt!1644222 (_1!28214 (tuple2!49841 hash!366 newBucket!194))) (Some!10836 (_2!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun lt!1644596 () Unit!85492)

(declare-fun choose!28336 (List!49992 (_ BitVec 64) List!49991) Unit!85492)

(assert (=> d!1357585 (= lt!1644596 (choose!28336 lt!1644222 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun e!2772201 () Bool)

(assert (=> d!1357585 e!2772201))

(declare-fun res!1844772 () Bool)

(assert (=> d!1357585 (=> (not res!1844772) (not e!2772201))))

(assert (=> d!1357585 (= res!1844772 (isStrictlySorted!285 lt!1644222))))

(assert (=> d!1357585 (= (lemmaContainsTupThenGetReturnValue!540 lt!1644222 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194))) lt!1644596)))

(declare-fun b!4451913 () Bool)

(declare-fun res!1844773 () Bool)

(assert (=> b!4451913 (=> (not res!1844773) (not e!2772201))))

(assert (=> b!4451913 (= res!1844773 (containsKey!1295 lt!1644222 (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun b!4451914 () Bool)

(assert (=> b!4451914 (= e!2772201 (contains!12467 lt!1644222 (tuple2!49841 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (= (and d!1357585 res!1844772) b!4451913))

(assert (= (and b!4451913 res!1844773) b!4451914))

(assert (=> d!1357585 m!5151107))

(declare-fun m!5151727 () Bool)

(assert (=> d!1357585 m!5151727))

(declare-fun m!5151729 () Bool)

(assert (=> d!1357585 m!5151729))

(declare-fun m!5151731 () Bool)

(assert (=> b!4451913 m!5151731))

(declare-fun m!5151733 () Bool)

(assert (=> b!4451914 m!5151733))

(assert (=> d!1357377 d!1357585))

(declare-fun b!4451935 () Bool)

(declare-fun e!2772214 () List!49992)

(declare-fun call!309832 () List!49992)

(assert (=> b!4451935 (= e!2772214 call!309832)))

(declare-fun b!4451936 () Bool)

(declare-fun e!2772213 () List!49992)

(declare-fun call!309833 () List!49992)

(assert (=> b!4451936 (= e!2772213 call!309833)))

(declare-fun b!4451937 () Bool)

(declare-fun lt!1644599 () List!49992)

(declare-fun e!2772212 () Bool)

(assert (=> b!4451937 (= e!2772212 (contains!12467 lt!1644599 (tuple2!49841 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(declare-fun bm!309826 () Bool)

(assert (=> bm!309826 (= call!309832 call!309833)))

(declare-fun b!4451939 () Bool)

(assert (=> b!4451939 (= e!2772214 call!309832)))

(declare-fun bm!309827 () Bool)

(declare-fun call!309831 () List!49992)

(assert (=> bm!309827 (= call!309833 call!309831)))

(declare-fun b!4451940 () Bool)

(declare-fun c!757957 () Bool)

(assert (=> b!4451940 (= c!757957 (and ((_ is Cons!49868) (toList!3717 lm!1616)) (bvsgt (_1!28214 (h!55611 (toList!3717 lm!1616))) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (=> b!4451940 (= e!2772213 e!2772214)))

(declare-fun e!2772216 () List!49992)

(declare-fun b!4451941 () Bool)

(assert (=> b!4451941 (= e!2772216 (insertStrictlySorted!314 (t!356938 (toList!3717 lm!1616)) (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun c!757958 () Bool)

(declare-fun b!4451938 () Bool)

(assert (=> b!4451938 (= e!2772216 (ite c!757958 (t!356938 (toList!3717 lm!1616)) (ite c!757957 (Cons!49868 (h!55611 (toList!3717 lm!1616)) (t!356938 (toList!3717 lm!1616))) Nil!49868)))))

(declare-fun d!1357587 () Bool)

(assert (=> d!1357587 e!2772212))

(declare-fun res!1844779 () Bool)

(assert (=> d!1357587 (=> (not res!1844779) (not e!2772212))))

(assert (=> d!1357587 (= res!1844779 (isStrictlySorted!285 lt!1644599))))

(declare-fun e!2772215 () List!49992)

(assert (=> d!1357587 (= lt!1644599 e!2772215)))

(declare-fun c!757956 () Bool)

(assert (=> d!1357587 (= c!757956 (and ((_ is Cons!49868) (toList!3717 lm!1616)) (bvslt (_1!28214 (h!55611 (toList!3717 lm!1616))) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (=> d!1357587 (isStrictlySorted!285 (toList!3717 lm!1616))))

(assert (=> d!1357587 (= (insertStrictlySorted!314 (toList!3717 lm!1616) (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194))) lt!1644599)))

(declare-fun b!4451942 () Bool)

(declare-fun res!1844778 () Bool)

(assert (=> b!4451942 (=> (not res!1844778) (not e!2772212))))

(assert (=> b!4451942 (= res!1844778 (containsKey!1295 lt!1644599 (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun bm!309828 () Bool)

(declare-fun $colon$colon!830 (List!49992 tuple2!49840) List!49992)

(assert (=> bm!309828 (= call!309831 ($colon$colon!830 e!2772216 (ite c!757956 (h!55611 (toList!3717 lm!1616)) (tuple2!49841 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194))))))))

(declare-fun c!757959 () Bool)

(assert (=> bm!309828 (= c!757959 c!757956)))

(declare-fun b!4451943 () Bool)

(assert (=> b!4451943 (= e!2772215 e!2772213)))

(assert (=> b!4451943 (= c!757958 (and ((_ is Cons!49868) (toList!3717 lm!1616)) (= (_1!28214 (h!55611 (toList!3717 lm!1616))) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(declare-fun b!4451944 () Bool)

(assert (=> b!4451944 (= e!2772215 call!309831)))

(assert (= (and d!1357587 c!757956) b!4451944))

(assert (= (and d!1357587 (not c!757956)) b!4451943))

(assert (= (and b!4451943 c!757958) b!4451936))

(assert (= (and b!4451943 (not c!757958)) b!4451940))

(assert (= (and b!4451940 c!757957) b!4451939))

(assert (= (and b!4451940 (not c!757957)) b!4451935))

(assert (= (or b!4451939 b!4451935) bm!309826))

(assert (= (or b!4451936 bm!309826) bm!309827))

(assert (= (or b!4451944 bm!309827) bm!309828))

(assert (= (and bm!309828 c!757959) b!4451941))

(assert (= (and bm!309828 (not c!757959)) b!4451938))

(assert (= (and d!1357587 res!1844779) b!4451942))

(assert (= (and b!4451942 res!1844778) b!4451937))

(declare-fun m!5151735 () Bool)

(assert (=> d!1357587 m!5151735))

(assert (=> d!1357587 m!5151123))

(declare-fun m!5151737 () Bool)

(assert (=> b!4451942 m!5151737))

(declare-fun m!5151739 () Bool)

(assert (=> b!4451941 m!5151739))

(declare-fun m!5151741 () Bool)

(assert (=> bm!309828 m!5151741))

(declare-fun m!5151743 () Bool)

(assert (=> b!4451937 m!5151743))

(assert (=> d!1357377 d!1357587))

(assert (=> b!4451379 d!1357435))

(declare-fun d!1357589 () Bool)

(declare-fun res!1844780 () Bool)

(declare-fun e!2772217 () Bool)

(assert (=> d!1357589 (=> res!1844780 e!2772217)))

(assert (=> d!1357589 (= res!1844780 (not ((_ is Cons!49867) (_2!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (=> d!1357589 (= (noDuplicateKeys!865 (_2!28214 (tuple2!49841 hash!366 newBucket!194))) e!2772217)))

(declare-fun b!4451945 () Bool)

(declare-fun e!2772218 () Bool)

(assert (=> b!4451945 (= e!2772217 e!2772218)))

(declare-fun res!1844781 () Bool)

(assert (=> b!4451945 (=> (not res!1844781) (not e!2772218))))

(assert (=> b!4451945 (= res!1844781 (not (containsKey!1294 (t!356937 (_2!28214 (tuple2!49841 hash!366 newBucket!194))) (_1!28213 (h!55610 (_2!28214 (tuple2!49841 hash!366 newBucket!194)))))))))

(declare-fun b!4451946 () Bool)

(assert (=> b!4451946 (= e!2772218 (noDuplicateKeys!865 (t!356937 (_2!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (= (and d!1357589 (not res!1844780)) b!4451945))

(assert (= (and b!4451945 res!1844781) b!4451946))

(declare-fun m!5151745 () Bool)

(assert (=> b!4451945 m!5151745))

(declare-fun m!5151747 () Bool)

(assert (=> b!4451946 m!5151747))

(assert (=> bs!788900 d!1357589))

(declare-fun d!1357591 () Bool)

(declare-fun res!1844782 () Bool)

(declare-fun e!2772219 () Bool)

(assert (=> d!1357591 (=> res!1844782 e!2772219)))

(assert (=> d!1357591 (= res!1844782 (not ((_ is Cons!49867) (t!356937 newBucket!194))))))

(assert (=> d!1357591 (= (noDuplicateKeys!865 (t!356937 newBucket!194)) e!2772219)))

(declare-fun b!4451947 () Bool)

(declare-fun e!2772220 () Bool)

(assert (=> b!4451947 (= e!2772219 e!2772220)))

(declare-fun res!1844783 () Bool)

(assert (=> b!4451947 (=> (not res!1844783) (not e!2772220))))

(assert (=> b!4451947 (= res!1844783 (not (containsKey!1294 (t!356937 (t!356937 newBucket!194)) (_1!28213 (h!55610 (t!356937 newBucket!194))))))))

(declare-fun b!4451948 () Bool)

(assert (=> b!4451948 (= e!2772220 (noDuplicateKeys!865 (t!356937 (t!356937 newBucket!194))))))

(assert (= (and d!1357591 (not res!1844782)) b!4451947))

(assert (= (and b!4451947 res!1844783) b!4451948))

(declare-fun m!5151749 () Bool)

(assert (=> b!4451947 m!5151749))

(declare-fun m!5151751 () Bool)

(assert (=> b!4451948 m!5151751))

(assert (=> b!4451334 d!1357591))

(declare-fun d!1357593 () Bool)

(declare-fun choose!28337 (Hashable!5259 K!11235) (_ BitVec 64))

(assert (=> d!1357593 (= (hash!2356 hashF!1220 key!3717) (choose!28337 hashF!1220 key!3717))))

(declare-fun bs!788978 () Bool)

(assert (= bs!788978 d!1357593))

(declare-fun m!5151753 () Bool)

(assert (=> bs!788978 m!5151753))

(assert (=> d!1357389 d!1357593))

(declare-fun d!1357595 () Bool)

(declare-fun lt!1644600 () Bool)

(assert (=> d!1357595 (= lt!1644600 (select (content!8035 e!2771879) key!3717))))

(declare-fun e!2772222 () Bool)

(assert (=> d!1357595 (= lt!1644600 e!2772222)))

(declare-fun res!1844784 () Bool)

(assert (=> d!1357595 (=> (not res!1844784) (not e!2772222))))

(assert (=> d!1357595 (= res!1844784 ((_ is Cons!49870) e!2771879))))

(assert (=> d!1357595 (= (contains!12468 e!2771879 key!3717) lt!1644600)))

(declare-fun b!4451949 () Bool)

(declare-fun e!2772221 () Bool)

(assert (=> b!4451949 (= e!2772222 e!2772221)))

(declare-fun res!1844785 () Bool)

(assert (=> b!4451949 (=> res!1844785 e!2772221)))

(assert (=> b!4451949 (= res!1844785 (= (h!55615 e!2771879) key!3717))))

(declare-fun b!4451950 () Bool)

(assert (=> b!4451950 (= e!2772221 (contains!12468 (t!356940 e!2771879) key!3717))))

(assert (= (and d!1357595 res!1844784) b!4451949))

(assert (= (and b!4451949 (not res!1844785)) b!4451950))

(declare-fun m!5151755 () Bool)

(assert (=> d!1357595 m!5151755))

(declare-fun m!5151757 () Bool)

(assert (=> d!1357595 m!5151757))

(declare-fun m!5151759 () Bool)

(assert (=> b!4451950 m!5151759))

(assert (=> bm!309763 d!1357595))

(declare-fun d!1357597 () Bool)

(declare-fun res!1844790 () Bool)

(declare-fun e!2772227 () Bool)

(assert (=> d!1357597 (=> res!1844790 e!2772227)))

(assert (=> d!1357597 (= res!1844790 (and ((_ is Cons!49867) (t!356937 newBucket!194)) (= (_1!28213 (h!55610 (t!356937 newBucket!194))) (_1!28213 (h!55610 newBucket!194)))))))

(assert (=> d!1357597 (= (containsKey!1294 (t!356937 newBucket!194) (_1!28213 (h!55610 newBucket!194))) e!2772227)))

(declare-fun b!4451955 () Bool)

(declare-fun e!2772228 () Bool)

(assert (=> b!4451955 (= e!2772227 e!2772228)))

(declare-fun res!1844791 () Bool)

(assert (=> b!4451955 (=> (not res!1844791) (not e!2772228))))

(assert (=> b!4451955 (= res!1844791 ((_ is Cons!49867) (t!356937 newBucket!194)))))

(declare-fun b!4451956 () Bool)

(assert (=> b!4451956 (= e!2772228 (containsKey!1294 (t!356937 (t!356937 newBucket!194)) (_1!28213 (h!55610 newBucket!194))))))

(assert (= (and d!1357597 (not res!1844790)) b!4451955))

(assert (= (and b!4451955 res!1844791) b!4451956))

(declare-fun m!5151761 () Bool)

(assert (=> b!4451956 m!5151761))

(assert (=> b!4451333 d!1357597))

(declare-fun d!1357599 () Bool)

(declare-fun c!757962 () Bool)

(assert (=> d!1357599 (= c!757962 ((_ is Nil!49867) (toList!3718 (extractMap!926 (toList!3717 lt!1644119)))))))

(declare-fun e!2772231 () (InoxSet tuple2!49838))

(assert (=> d!1357599 (= (content!8033 (toList!3718 (extractMap!926 (toList!3717 lt!1644119)))) e!2772231)))

(declare-fun b!4451961 () Bool)

(assert (=> b!4451961 (= e!2772231 ((as const (Array tuple2!49838 Bool)) false))))

(declare-fun b!4451962 () Bool)

(assert (=> b!4451962 (= e!2772231 ((_ map or) (store ((as const (Array tuple2!49838 Bool)) false) (h!55610 (toList!3718 (extractMap!926 (toList!3717 lt!1644119)))) true) (content!8033 (t!356937 (toList!3718 (extractMap!926 (toList!3717 lt!1644119)))))))))

(assert (= (and d!1357599 c!757962) b!4451961))

(assert (= (and d!1357599 (not c!757962)) b!4451962))

(declare-fun m!5151763 () Bool)

(assert (=> b!4451962 m!5151763))

(declare-fun m!5151765 () Bool)

(assert (=> b!4451962 m!5151765))

(assert (=> d!1357331 d!1357599))

(declare-fun d!1357601 () Bool)

(declare-fun c!757963 () Bool)

(assert (=> d!1357601 (= c!757963 ((_ is Nil!49867) (toList!3718 (+!1267 lt!1644116 (tuple2!49839 key!3717 newValue!93)))))))

(declare-fun e!2772232 () (InoxSet tuple2!49838))

(assert (=> d!1357601 (= (content!8033 (toList!3718 (+!1267 lt!1644116 (tuple2!49839 key!3717 newValue!93)))) e!2772232)))

(declare-fun b!4451963 () Bool)

(assert (=> b!4451963 (= e!2772232 ((as const (Array tuple2!49838 Bool)) false))))

(declare-fun b!4451964 () Bool)

(assert (=> b!4451964 (= e!2772232 ((_ map or) (store ((as const (Array tuple2!49838 Bool)) false) (h!55610 (toList!3718 (+!1267 lt!1644116 (tuple2!49839 key!3717 newValue!93)))) true) (content!8033 (t!356937 (toList!3718 (+!1267 lt!1644116 (tuple2!49839 key!3717 newValue!93)))))))))

(assert (= (and d!1357601 c!757963) b!4451963))

(assert (= (and d!1357601 (not c!757963)) b!4451964))

(declare-fun m!5151767 () Bool)

(assert (=> b!4451964 m!5151767))

(declare-fun m!5151769 () Bool)

(assert (=> b!4451964 m!5151769))

(assert (=> d!1357331 d!1357601))

(declare-fun bs!788979 () Bool)

(declare-fun b!4451968 () Bool)

(assert (= bs!788979 (and b!4451968 d!1357387)))

(declare-fun lambda!159196 () Int)

(assert (=> bs!788979 (not (= lambda!159196 lambda!159085))))

(declare-fun bs!788980 () Bool)

(assert (= bs!788980 (and b!4451968 d!1357447)))

(assert (=> bs!788980 (= (= (extractMap!926 (t!356938 (toList!3717 lm!1616))) lt!1644481) (= lambda!159196 lambda!159177))))

(declare-fun bs!788981 () Bool)

(assert (= bs!788981 (and b!4451968 b!4451737)))

(assert (=> bs!788981 (= (= (extractMap!926 (t!356938 (toList!3717 lm!1616))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159196 lambda!159175))))

(declare-fun bs!788982 () Bool)

(assert (= bs!788982 (and b!4451968 b!4451740)))

(assert (=> bs!788982 (= (= (extractMap!926 (t!356938 (toList!3717 lm!1616))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159196 lambda!159174))))

(assert (=> bs!788981 (= (= (extractMap!926 (t!356938 (toList!3717 lm!1616))) lt!1644467) (= lambda!159196 lambda!159176))))

(assert (=> b!4451968 true))

(declare-fun bs!788983 () Bool)

(declare-fun b!4451965 () Bool)

(assert (= bs!788983 (and b!4451965 d!1357387)))

(declare-fun lambda!159197 () Int)

(assert (=> bs!788983 (not (= lambda!159197 lambda!159085))))

(declare-fun bs!788984 () Bool)

(assert (= bs!788984 (and b!4451965 d!1357447)))

(assert (=> bs!788984 (= (= (extractMap!926 (t!356938 (toList!3717 lm!1616))) lt!1644481) (= lambda!159197 lambda!159177))))

(declare-fun bs!788985 () Bool)

(assert (= bs!788985 (and b!4451965 b!4451968)))

(assert (=> bs!788985 (= lambda!159197 lambda!159196)))

(declare-fun bs!788986 () Bool)

(assert (= bs!788986 (and b!4451965 b!4451737)))

(assert (=> bs!788986 (= (= (extractMap!926 (t!356938 (toList!3717 lm!1616))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159197 lambda!159175))))

(declare-fun bs!788987 () Bool)

(assert (= bs!788987 (and b!4451965 b!4451740)))

(assert (=> bs!788987 (= (= (extractMap!926 (t!356938 (toList!3717 lm!1616))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159197 lambda!159174))))

(assert (=> bs!788986 (= (= (extractMap!926 (t!356938 (toList!3717 lm!1616))) lt!1644467) (= lambda!159197 lambda!159176))))

(assert (=> b!4451965 true))

(declare-fun lambda!159198 () Int)

(assert (=> bs!788983 (not (= lambda!159198 lambda!159085))))

(declare-fun lt!1644603 () ListMap!2961)

(assert (=> b!4451965 (= (= lt!1644603 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159198 lambda!159197))))

(assert (=> bs!788984 (= (= lt!1644603 lt!1644481) (= lambda!159198 lambda!159177))))

(assert (=> bs!788985 (= (= lt!1644603 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159198 lambda!159196))))

(assert (=> bs!788986 (= (= lt!1644603 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159198 lambda!159175))))

(assert (=> bs!788987 (= (= lt!1644603 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159198 lambda!159174))))

(assert (=> bs!788986 (= (= lt!1644603 lt!1644467) (= lambda!159198 lambda!159176))))

(assert (=> b!4451965 true))

(declare-fun bs!788988 () Bool)

(declare-fun d!1357603 () Bool)

(assert (= bs!788988 (and d!1357603 b!4451965)))

(declare-fun lambda!159199 () Int)

(declare-fun lt!1644617 () ListMap!2961)

(assert (=> bs!788988 (= (= lt!1644617 lt!1644603) (= lambda!159199 lambda!159198))))

(declare-fun bs!788989 () Bool)

(assert (= bs!788989 (and d!1357603 d!1357387)))

(assert (=> bs!788989 (not (= lambda!159199 lambda!159085))))

(assert (=> bs!788988 (= (= lt!1644617 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159199 lambda!159197))))

(declare-fun bs!788990 () Bool)

(assert (= bs!788990 (and d!1357603 d!1357447)))

(assert (=> bs!788990 (= (= lt!1644617 lt!1644481) (= lambda!159199 lambda!159177))))

(declare-fun bs!788991 () Bool)

(assert (= bs!788991 (and d!1357603 b!4451968)))

(assert (=> bs!788991 (= (= lt!1644617 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159199 lambda!159196))))

(declare-fun bs!788992 () Bool)

(assert (= bs!788992 (and d!1357603 b!4451737)))

(assert (=> bs!788992 (= (= lt!1644617 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159199 lambda!159175))))

(declare-fun bs!788993 () Bool)

(assert (= bs!788993 (and d!1357603 b!4451740)))

(assert (=> bs!788993 (= (= lt!1644617 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159199 lambda!159174))))

(assert (=> bs!788992 (= (= lt!1644617 lt!1644467) (= lambda!159199 lambda!159176))))

(assert (=> d!1357603 true))

(declare-fun e!2772235 () ListMap!2961)

(assert (=> b!4451965 (= e!2772235 lt!1644603)))

(declare-fun lt!1644620 () ListMap!2961)

(assert (=> b!4451965 (= lt!1644620 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(assert (=> b!4451965 (= lt!1644603 (addToMapMapFromBucket!471 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(declare-fun lt!1644601 () Unit!85492)

(declare-fun call!309835 () Unit!85492)

(assert (=> b!4451965 (= lt!1644601 call!309835)))

(assert (=> b!4451965 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) lambda!159197)))

(declare-fun lt!1644621 () Unit!85492)

(assert (=> b!4451965 (= lt!1644621 lt!1644601)))

(assert (=> b!4451965 (forall!9758 (toList!3718 lt!1644620) lambda!159198)))

(declare-fun lt!1644609 () Unit!85492)

(declare-fun Unit!85551 () Unit!85492)

(assert (=> b!4451965 (= lt!1644609 Unit!85551)))

(declare-fun call!309836 () Bool)

(assert (=> b!4451965 call!309836))

(declare-fun lt!1644605 () Unit!85492)

(declare-fun Unit!85552 () Unit!85492)

(assert (=> b!4451965 (= lt!1644605 Unit!85552)))

(declare-fun lt!1644611 () Unit!85492)

(declare-fun Unit!85553 () Unit!85492)

(assert (=> b!4451965 (= lt!1644611 Unit!85553)))

(declare-fun lt!1644602 () Unit!85492)

(assert (=> b!4451965 (= lt!1644602 (forallContained!2161 (toList!3718 lt!1644620) lambda!159198 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(assert (=> b!4451965 (contains!12462 lt!1644620 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(declare-fun lt!1644616 () Unit!85492)

(declare-fun Unit!85554 () Unit!85492)

(assert (=> b!4451965 (= lt!1644616 Unit!85554)))

(assert (=> b!4451965 (contains!12462 lt!1644603 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(declare-fun lt!1644610 () Unit!85492)

(declare-fun Unit!85555 () Unit!85492)

(assert (=> b!4451965 (= lt!1644610 Unit!85555)))

(assert (=> b!4451965 (forall!9758 (_2!28214 (h!55611 (toList!3717 lm!1616))) lambda!159198)))

(declare-fun lt!1644608 () Unit!85492)

(declare-fun Unit!85556 () Unit!85492)

(assert (=> b!4451965 (= lt!1644608 Unit!85556)))

(assert (=> b!4451965 (forall!9758 (toList!3718 lt!1644620) lambda!159198)))

(declare-fun lt!1644614 () Unit!85492)

(declare-fun Unit!85557 () Unit!85492)

(assert (=> b!4451965 (= lt!1644614 Unit!85557)))

(declare-fun lt!1644613 () Unit!85492)

(declare-fun Unit!85558 () Unit!85492)

(assert (=> b!4451965 (= lt!1644613 Unit!85558)))

(declare-fun lt!1644619 () Unit!85492)

(assert (=> b!4451965 (= lt!1644619 (addForallContainsKeyThenBeforeAdding!217 (extractMap!926 (t!356938 (toList!3717 lm!1616))) lt!1644603 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> b!4451965 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) lambda!159198)))

(declare-fun lt!1644606 () Unit!85492)

(assert (=> b!4451965 (= lt!1644606 lt!1644619)))

(assert (=> b!4451965 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) lambda!159198)))

(declare-fun lt!1644612 () Unit!85492)

(declare-fun Unit!85559 () Unit!85492)

(assert (=> b!4451965 (= lt!1644612 Unit!85559)))

(declare-fun res!1844792 () Bool)

(declare-fun call!309834 () Bool)

(assert (=> b!4451965 (= res!1844792 call!309834)))

(declare-fun e!2772233 () Bool)

(assert (=> b!4451965 (=> (not res!1844792) (not e!2772233))))

(assert (=> b!4451965 e!2772233))

(declare-fun lt!1644604 () Unit!85492)

(declare-fun Unit!85560 () Unit!85492)

(assert (=> b!4451965 (= lt!1644604 Unit!85560)))

(declare-fun b!4451966 () Bool)

(declare-fun res!1844794 () Bool)

(declare-fun e!2772234 () Bool)

(assert (=> b!4451966 (=> (not res!1844794) (not e!2772234))))

(assert (=> b!4451966 (= res!1844794 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) lambda!159199))))

(declare-fun c!757964 () Bool)

(declare-fun bm!309829 () Bool)

(assert (=> bm!309829 (= call!309834 (forall!9758 (ite c!757964 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (_2!28214 (h!55611 (toList!3717 lm!1616)))) (ite c!757964 lambda!159196 lambda!159198)))))

(declare-fun b!4451967 () Bool)

(assert (=> b!4451967 (= e!2772234 (invariantList!860 (toList!3718 lt!1644617)))))

(declare-fun bm!309830 () Bool)

(assert (=> bm!309830 (= call!309835 (lemmaContainsAllItsOwnKeys!217 (extractMap!926 (t!356938 (toList!3717 lm!1616)))))))

(declare-fun bm!309831 () Bool)

(assert (=> bm!309831 (= call!309836 (forall!9758 (ite c!757964 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (ite c!757964 lambda!159196 lambda!159198)))))

(assert (=> d!1357603 e!2772234))

(declare-fun res!1844793 () Bool)

(assert (=> d!1357603 (=> (not res!1844793) (not e!2772234))))

(assert (=> d!1357603 (= res!1844793 (forall!9758 (_2!28214 (h!55611 (toList!3717 lm!1616))) lambda!159199))))

(assert (=> d!1357603 (= lt!1644617 e!2772235)))

(assert (=> d!1357603 (= c!757964 ((_ is Nil!49867) (_2!28214 (h!55611 (toList!3717 lm!1616)))))))

(assert (=> d!1357603 (noDuplicateKeys!865 (_2!28214 (h!55611 (toList!3717 lm!1616))))))

(assert (=> d!1357603 (= (addToMapMapFromBucket!471 (_2!28214 (h!55611 (toList!3717 lm!1616))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) lt!1644617)))

(assert (=> b!4451968 (= e!2772235 (extractMap!926 (t!356938 (toList!3717 lm!1616))))))

(declare-fun lt!1644607 () Unit!85492)

(assert (=> b!4451968 (= lt!1644607 call!309835)))

(assert (=> b!4451968 call!309834))

(declare-fun lt!1644618 () Unit!85492)

(assert (=> b!4451968 (= lt!1644618 lt!1644607)))

(assert (=> b!4451968 call!309836))

(declare-fun lt!1644615 () Unit!85492)

(declare-fun Unit!85561 () Unit!85492)

(assert (=> b!4451968 (= lt!1644615 Unit!85561)))

(declare-fun b!4451969 () Bool)

(assert (=> b!4451969 (= e!2772233 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) lambda!159198))))

(assert (= (and d!1357603 c!757964) b!4451968))

(assert (= (and d!1357603 (not c!757964)) b!4451965))

(assert (= (and b!4451965 res!1844792) b!4451969))

(assert (= (or b!4451968 b!4451965) bm!309830))

(assert (= (or b!4451968 b!4451965) bm!309829))

(assert (= (or b!4451968 b!4451965) bm!309831))

(assert (= (and d!1357603 res!1844793) b!4451966))

(assert (= (and b!4451966 res!1844794) b!4451967))

(declare-fun m!5151771 () Bool)

(assert (=> bm!309831 m!5151771))

(declare-fun m!5151773 () Bool)

(assert (=> b!4451966 m!5151773))

(declare-fun m!5151775 () Bool)

(assert (=> b!4451969 m!5151775))

(declare-fun m!5151777 () Bool)

(assert (=> bm!309829 m!5151777))

(declare-fun m!5151779 () Bool)

(assert (=> d!1357603 m!5151779))

(assert (=> d!1357603 m!5151161))

(declare-fun m!5151781 () Bool)

(assert (=> b!4451967 m!5151781))

(assert (=> bm!309830 m!5151149))

(declare-fun m!5151783 () Bool)

(assert (=> bm!309830 m!5151783))

(declare-fun m!5151785 () Bool)

(assert (=> b!4451965 m!5151785))

(assert (=> b!4451965 m!5151775))

(assert (=> b!4451965 m!5151149))

(declare-fun m!5151787 () Bool)

(assert (=> b!4451965 m!5151787))

(declare-fun m!5151789 () Bool)

(assert (=> b!4451965 m!5151789))

(declare-fun m!5151791 () Bool)

(assert (=> b!4451965 m!5151791))

(declare-fun m!5151793 () Bool)

(assert (=> b!4451965 m!5151793))

(assert (=> b!4451965 m!5151775))

(declare-fun m!5151795 () Bool)

(assert (=> b!4451965 m!5151795))

(assert (=> b!4451965 m!5151149))

(declare-fun m!5151797 () Bool)

(assert (=> b!4451965 m!5151797))

(assert (=> b!4451965 m!5151797))

(declare-fun m!5151799 () Bool)

(assert (=> b!4451965 m!5151799))

(declare-fun m!5151801 () Bool)

(assert (=> b!4451965 m!5151801))

(assert (=> b!4451965 m!5151793))

(assert (=> b!4451388 d!1357603))

(declare-fun bs!788994 () Bool)

(declare-fun d!1357605 () Bool)

(assert (= bs!788994 (and d!1357605 start!435780)))

(declare-fun lambda!159200 () Int)

(assert (=> bs!788994 (= lambda!159200 lambda!159068)))

(declare-fun bs!788995 () Bool)

(assert (= bs!788995 (and d!1357605 d!1357391)))

(assert (=> bs!788995 (not (= lambda!159200 lambda!159088))))

(declare-fun bs!788996 () Bool)

(assert (= bs!788996 (and d!1357605 d!1357333)))

(assert (=> bs!788996 (= lambda!159200 lambda!159077)))

(declare-fun bs!788997 () Bool)

(assert (= bs!788997 (and d!1357605 d!1357385)))

(assert (=> bs!788997 (= lambda!159200 lambda!159082)))

(declare-fun bs!788998 () Bool)

(assert (= bs!788998 (and d!1357605 d!1357519)))

(assert (=> bs!788998 (= lambda!159200 lambda!159180)))

(declare-fun lt!1644622 () ListMap!2961)

(assert (=> d!1357605 (invariantList!860 (toList!3718 lt!1644622))))

(declare-fun e!2772236 () ListMap!2961)

(assert (=> d!1357605 (= lt!1644622 e!2772236)))

(declare-fun c!757965 () Bool)

(assert (=> d!1357605 (= c!757965 ((_ is Cons!49868) (t!356938 (toList!3717 lm!1616))))))

(assert (=> d!1357605 (forall!9756 (t!356938 (toList!3717 lm!1616)) lambda!159200)))

(assert (=> d!1357605 (= (extractMap!926 (t!356938 (toList!3717 lm!1616))) lt!1644622)))

(declare-fun b!4451970 () Bool)

(assert (=> b!4451970 (= e!2772236 (addToMapMapFromBucket!471 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616))))))))

(declare-fun b!4451971 () Bool)

(assert (=> b!4451971 (= e!2772236 (ListMap!2962 Nil!49867))))

(assert (= (and d!1357605 c!757965) b!4451970))

(assert (= (and d!1357605 (not c!757965)) b!4451971))

(declare-fun m!5151803 () Bool)

(assert (=> d!1357605 m!5151803))

(declare-fun m!5151805 () Bool)

(assert (=> d!1357605 m!5151805))

(declare-fun m!5151807 () Bool)

(assert (=> b!4451970 m!5151807))

(assert (=> b!4451970 m!5151807))

(declare-fun m!5151809 () Bool)

(assert (=> b!4451970 m!5151809))

(assert (=> b!4451388 d!1357605))

(declare-fun d!1357607 () Bool)

(assert (=> d!1357607 (isDefined!8125 (getValueByKey!823 (toList!3717 lm!1616) hash!366))))

(declare-fun lt!1644625 () Unit!85492)

(declare-fun choose!28338 (List!49992 (_ BitVec 64)) Unit!85492)

(assert (=> d!1357607 (= lt!1644625 (choose!28338 (toList!3717 lm!1616) hash!366))))

(declare-fun e!2772239 () Bool)

(assert (=> d!1357607 e!2772239))

(declare-fun res!1844797 () Bool)

(assert (=> d!1357607 (=> (not res!1844797) (not e!2772239))))

(assert (=> d!1357607 (= res!1844797 (isStrictlySorted!285 (toList!3717 lm!1616)))))

(assert (=> d!1357607 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!728 (toList!3717 lm!1616) hash!366) lt!1644625)))

(declare-fun b!4451974 () Bool)

(assert (=> b!4451974 (= e!2772239 (containsKey!1295 (toList!3717 lm!1616) hash!366))))

(assert (= (and d!1357607 res!1844797) b!4451974))

(assert (=> d!1357607 m!5150959))

(assert (=> d!1357607 m!5150959))

(assert (=> d!1357607 m!5151099))

(declare-fun m!5151811 () Bool)

(assert (=> d!1357607 m!5151811))

(assert (=> d!1357607 m!5151123))

(assert (=> b!4451974 m!5151095))

(assert (=> b!4451346 d!1357607))

(declare-fun d!1357609 () Bool)

(declare-fun isEmpty!28407 (Option!10837) Bool)

(assert (=> d!1357609 (= (isDefined!8125 (getValueByKey!823 (toList!3717 lm!1616) hash!366)) (not (isEmpty!28407 (getValueByKey!823 (toList!3717 lm!1616) hash!366))))))

(declare-fun bs!788999 () Bool)

(assert (= bs!788999 d!1357609))

(assert (=> bs!788999 m!5150959))

(declare-fun m!5151813 () Bool)

(assert (=> bs!788999 m!5151813))

(assert (=> b!4451346 d!1357609))

(assert (=> b!4451346 d!1357549))

(declare-fun d!1357611 () Bool)

(declare-fun res!1844798 () Bool)

(declare-fun e!2772240 () Bool)

(assert (=> d!1357611 (=> res!1844798 e!2772240)))

(assert (=> d!1357611 (= res!1844798 (not ((_ is Cons!49867) (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(assert (=> d!1357611 (= (noDuplicateKeys!865 (_2!28214 (h!55611 (toList!3717 lm!1616)))) e!2772240)))

(declare-fun b!4451975 () Bool)

(declare-fun e!2772241 () Bool)

(assert (=> b!4451975 (= e!2772240 e!2772241)))

(declare-fun res!1844799 () Bool)

(assert (=> b!4451975 (=> (not res!1844799) (not e!2772241))))

(assert (=> b!4451975 (= res!1844799 (not (containsKey!1294 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))))

(declare-fun b!4451976 () Bool)

(assert (=> b!4451976 (= e!2772241 (noDuplicateKeys!865 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(assert (= (and d!1357611 (not res!1844798)) b!4451975))

(assert (= (and b!4451975 res!1844799) b!4451976))

(declare-fun m!5151815 () Bool)

(assert (=> b!4451975 m!5151815))

(declare-fun m!5151817 () Bool)

(assert (=> b!4451976 m!5151817))

(assert (=> bs!788899 d!1357611))

(assert (=> b!4451348 d!1357609))

(assert (=> b!4451348 d!1357549))

(declare-fun b!4451977 () Bool)

(declare-fun e!2772242 () Bool)

(declare-fun tp!1334561 () Bool)

(assert (=> b!4451977 (= e!2772242 (and tp_is_empty!26707 tp_is_empty!26705 tp!1334561))))

(assert (=> b!4451400 (= tp!1334552 e!2772242)))

(assert (= (and b!4451400 ((_ is Cons!49867) (_2!28214 (h!55611 (toList!3717 lm!1616))))) b!4451977))

(declare-fun b!4451978 () Bool)

(declare-fun e!2772243 () Bool)

(declare-fun tp!1334562 () Bool)

(declare-fun tp!1334563 () Bool)

(assert (=> b!4451978 (= e!2772243 (and tp!1334562 tp!1334563))))

(assert (=> b!4451400 (= tp!1334553 e!2772243)))

(assert (= (and b!4451400 ((_ is Cons!49868) (t!356938 (toList!3717 lm!1616)))) b!4451978))

(declare-fun b!4451979 () Bool)

(declare-fun e!2772244 () Bool)

(declare-fun tp!1334564 () Bool)

(assert (=> b!4451979 (= e!2772244 (and tp_is_empty!26707 tp_is_empty!26705 tp!1334564))))

(assert (=> b!4451405 (= tp!1334556 e!2772244)))

(assert (= (and b!4451405 ((_ is Cons!49867) (t!356937 (t!356937 newBucket!194)))) b!4451979))

(declare-fun b_lambda!147035 () Bool)

(assert (= b_lambda!147033 (or d!1357387 b_lambda!147035)))

(declare-fun bs!789000 () Bool)

(declare-fun d!1357613 () Bool)

(assert (= bs!789000 (and d!1357613 d!1357387)))

(assert (=> bs!789000 (= (dynLambda!20940 lambda!159085 (h!55610 newBucket!194)) (= (hash!2354 hashF!1220 (_1!28213 (h!55610 newBucket!194))) hash!366))))

(declare-fun m!5151819 () Bool)

(assert (=> bs!789000 m!5151819))

(assert (=> b!4451900 d!1357613))

(declare-fun b_lambda!147037 () Bool)

(assert (= b_lambda!147013 (or start!435780 b_lambda!147037)))

(declare-fun bs!789001 () Bool)

(declare-fun d!1357615 () Bool)

(assert (= bs!789001 (and d!1357615 start!435780)))

(assert (=> bs!789001 (= (dynLambda!20938 lambda!159068 (h!55611 (t!356938 (toList!3717 lt!1644119)))) (noDuplicateKeys!865 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119))))))))

(declare-fun m!5151821 () Bool)

(assert (=> bs!789001 m!5151821))

(assert (=> b!4451763 d!1357615))

(declare-fun b_lambda!147039 () Bool)

(assert (= b_lambda!147031 (or d!1357333 b_lambda!147039)))

(declare-fun bs!789002 () Bool)

(declare-fun d!1357617 () Bool)

(assert (= bs!789002 (and d!1357617 d!1357333)))

(assert (=> bs!789002 (= (dynLambda!20938 lambda!159077 (h!55611 (toList!3717 lt!1644119))) (noDuplicateKeys!865 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))

(assert (=> bs!789002 m!5151159))

(assert (=> b!4451794 d!1357617))

(declare-fun b_lambda!147041 () Bool)

(assert (= b_lambda!147029 (or start!435780 b_lambda!147041)))

(declare-fun bs!789003 () Bool)

(declare-fun d!1357619 () Bool)

(assert (= bs!789003 (and d!1357619 start!435780)))

(assert (=> bs!789003 (= (dynLambda!20938 lambda!159068 (h!55611 (t!356938 (toList!3717 lm!1616)))) (noDuplicateKeys!865 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616))))))))

(declare-fun m!5151823 () Bool)

(assert (=> bs!789003 m!5151823))

(assert (=> b!4451792 d!1357619))

(declare-fun b_lambda!147043 () Bool)

(assert (= b_lambda!146997 (or d!1357391 b_lambda!147043)))

(declare-fun bs!789004 () Bool)

(declare-fun d!1357621 () Bool)

(assert (= bs!789004 (and d!1357621 d!1357391)))

(assert (=> bs!789004 (= (dynLambda!20938 lambda!159088 (h!55611 (toList!3717 lm!1616))) (allKeysSameHash!825 (_2!28214 (h!55611 (toList!3717 lm!1616))) (_1!28214 (h!55611 (toList!3717 lm!1616))) hashF!1220))))

(declare-fun m!5151825 () Bool)

(assert (=> bs!789004 m!5151825))

(assert (=> b!4451426 d!1357621))

(declare-fun b_lambda!147045 () Bool)

(assert (= b_lambda!146995 (or d!1357385 b_lambda!147045)))

(declare-fun bs!789005 () Bool)

(declare-fun d!1357623 () Bool)

(assert (= bs!789005 (and d!1357623 d!1357385)))

(assert (=> bs!789005 (= (dynLambda!20938 lambda!159082 (h!55611 (toList!3717 lm!1616))) (noDuplicateKeys!865 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))

(assert (=> bs!789005 m!5151161))

(assert (=> b!4451418 d!1357623))

(declare-fun b_lambda!147047 () Bool)

(assert (= b_lambda!146999 (or start!435780 b_lambda!147047)))

(declare-fun bs!789006 () Bool)

(declare-fun d!1357625 () Bool)

(assert (= bs!789006 (and d!1357625 start!435780)))

(assert (=> bs!789006 (= (dynLambda!20938 lambda!159068 (h!55611 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194))))) (noDuplicateKeys!865 (_2!28214 (h!55611 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194)))))))))

(declare-fun m!5151827 () Bool)

(assert (=> bs!789006 m!5151827))

(assert (=> b!4451464 d!1357625))

(check-sat (not d!1357567) (not b!4451886) (not b!4451913) (not b!4451790) (not d!1357609) (not b!4451423) (not b_lambda!147043) (not b_lambda!146987) (not b!4451942) (not b!4451852) (not bm!309829) (not d!1357585) (not b!4451887) (not d!1357603) (not bm!309807) (not b!4451895) (not bs!789003) (not bm!309830) (not b!4451520) (not d!1357569) (not b!4451820) (not b_lambda!146989) (not bs!789001) (not d!1357429) (not b!4451979) (not d!1357407) (not bs!789002) (not bm!309799) (not bm!309831) (not bs!789006) (not bs!789004) (not d!1357575) (not bm!309828) (not bs!789005) (not b!4451427) (not d!1357519) (not b_lambda!146991) (not b!4451902) (not b!4451841) (not b!4451817) (not b!4451739) (not b!4451770) tp_is_empty!26707 (not d!1357577) (not b!4451941) (not b!4451521) (not b!4451793) (not b!4451962) (not b!4451840) (not b!4451843) (not b!4451446) (not b!4451495) (not b_lambda!147047) (not d!1357557) (not d!1357435) (not d!1357607) (not d!1357571) (not b!4451787) (not b!4451419) (not b!4451946) (not d!1357563) (not d!1357561) (not b!4451901) (not b!4451977) (not b!4451892) (not d!1357531) (not b!4451945) (not b!4451846) (not b_lambda!147039) (not d!1357587) (not d!1357523) (not b!4451937) (not b!4451835) (not b!4451838) (not b!4451839) (not b!4451976) (not b!4451462) (not bm!309800) (not d!1357605) (not b!4451974) (not b!4451964) (not d!1357447) (not b!4451778) (not b!4451956) (not d!1357423) (not d!1357595) (not b!4451969) (not b!4451947) (not b!4451965) (not b!4451422) (not b!4451833) (not b!4451433) (not b!4451882) (not b!4451853) (not b!4451978) (not b!4451737) (not b_lambda!147035) (not b!4451761) (not b!4451914) (not b!4451904) (not b!4451795) (not b_lambda!147037) (not b!4451975) (not bs!789000) (not bm!309817) (not bm!309798) (not d!1357581) (not b!4451738) tp_is_empty!26705 (not b!4451885) (not b!4451830) (not d!1357593) (not bm!309818) (not b_lambda!147045) (not b!4451967) (not b!4451814) (not b!4451966) (not b!4451764) (not b!4451837) (not b!4451891) (not b!4451907) (not b!4451970) (not b!4451465) (not b!4451818) (not b_lambda!147041) (not b!4451741) (not b!4451884) (not d!1357553) (not b!4451816) (not b!4451950) (not b!4451948) (not b!4451522))
(check-sat)
(get-model)

(declare-fun d!1357627 () Bool)

(declare-fun res!1844800 () Bool)

(declare-fun e!2772245 () Bool)

(assert (=> d!1357627 (=> res!1844800 e!2772245)))

(assert (=> d!1357627 (= res!1844800 (and ((_ is Cons!49867) (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (= (_1!28213 (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))))

(assert (=> d!1357627 (= (containsKey!1294 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) e!2772245)))

(declare-fun b!4451980 () Bool)

(declare-fun e!2772246 () Bool)

(assert (=> b!4451980 (= e!2772245 e!2772246)))

(declare-fun res!1844801 () Bool)

(assert (=> b!4451980 (=> (not res!1844801) (not e!2772246))))

(assert (=> b!4451980 (= res!1844801 ((_ is Cons!49867) (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(declare-fun b!4451981 () Bool)

(assert (=> b!4451981 (= e!2772246 (containsKey!1294 (t!356937 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (= (and d!1357627 (not res!1844800)) b!4451980))

(assert (= (and b!4451980 res!1844801) b!4451981))

(declare-fun m!5151829 () Bool)

(assert (=> b!4451981 m!5151829))

(assert (=> b!4451422 d!1357627))

(declare-fun d!1357629 () Bool)

(declare-fun res!1844802 () Bool)

(declare-fun e!2772247 () Bool)

(assert (=> d!1357629 (=> res!1844802 e!2772247)))

(assert (=> d!1357629 (= res!1844802 ((_ is Nil!49868) (t!356938 (toList!3717 lm!1616))))))

(assert (=> d!1357629 (= (forall!9756 (t!356938 (toList!3717 lm!1616)) lambda!159082) e!2772247)))

(declare-fun b!4451982 () Bool)

(declare-fun e!2772248 () Bool)

(assert (=> b!4451982 (= e!2772247 e!2772248)))

(declare-fun res!1844803 () Bool)

(assert (=> b!4451982 (=> (not res!1844803) (not e!2772248))))

(assert (=> b!4451982 (= res!1844803 (dynLambda!20938 lambda!159082 (h!55611 (t!356938 (toList!3717 lm!1616)))))))

(declare-fun b!4451983 () Bool)

(assert (=> b!4451983 (= e!2772248 (forall!9756 (t!356938 (t!356938 (toList!3717 lm!1616))) lambda!159082))))

(assert (= (and d!1357629 (not res!1844802)) b!4451982))

(assert (= (and b!4451982 res!1844803) b!4451983))

(declare-fun b_lambda!147049 () Bool)

(assert (=> (not b_lambda!147049) (not b!4451982)))

(declare-fun m!5151831 () Bool)

(assert (=> b!4451982 m!5151831))

(declare-fun m!5151833 () Bool)

(assert (=> b!4451983 m!5151833))

(assert (=> b!4451419 d!1357629))

(declare-fun d!1357631 () Bool)

(declare-fun size!35893 (List!49994) Int)

(assert (=> d!1357631 (= (length!224 lt!1644332) (size!35893 lt!1644332))))

(declare-fun bs!789007 () Bool)

(assert (= bs!789007 d!1357631))

(declare-fun m!5151835 () Bool)

(assert (=> bs!789007 m!5151835))

(assert (=> b!4451520 d!1357631))

(declare-fun d!1357633 () Bool)

(declare-fun size!35894 (List!49991) Int)

(assert (=> d!1357633 (= (length!225 (toList!3718 lt!1644116)) (size!35894 (toList!3718 lt!1644116)))))

(declare-fun bs!789008 () Bool)

(assert (= bs!789008 d!1357633))

(declare-fun m!5151837 () Bool)

(assert (=> bs!789008 m!5151837))

(assert (=> b!4451520 d!1357633))

(declare-fun bs!789009 () Bool)

(declare-fun d!1357635 () Bool)

(assert (= bs!789009 (and d!1357635 b!4451965)))

(declare-fun lambda!159203 () Int)

(assert (=> bs!789009 (= (= (extractMap!926 (t!356938 (toList!3717 lm!1616))) lt!1644603) (= lambda!159203 lambda!159198))))

(declare-fun bs!789010 () Bool)

(assert (= bs!789010 (and d!1357635 d!1357387)))

(assert (=> bs!789010 (not (= lambda!159203 lambda!159085))))

(assert (=> bs!789009 (= lambda!159203 lambda!159197)))

(declare-fun bs!789011 () Bool)

(assert (= bs!789011 (and d!1357635 d!1357447)))

(assert (=> bs!789011 (= (= (extractMap!926 (t!356938 (toList!3717 lm!1616))) lt!1644481) (= lambda!159203 lambda!159177))))

(declare-fun bs!789012 () Bool)

(assert (= bs!789012 (and d!1357635 d!1357603)))

(assert (=> bs!789012 (= (= (extractMap!926 (t!356938 (toList!3717 lm!1616))) lt!1644617) (= lambda!159203 lambda!159199))))

(declare-fun bs!789013 () Bool)

(assert (= bs!789013 (and d!1357635 b!4451968)))

(assert (=> bs!789013 (= lambda!159203 lambda!159196)))

(declare-fun bs!789014 () Bool)

(assert (= bs!789014 (and d!1357635 b!4451737)))

(assert (=> bs!789014 (= (= (extractMap!926 (t!356938 (toList!3717 lm!1616))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159203 lambda!159175))))

(declare-fun bs!789015 () Bool)

(assert (= bs!789015 (and d!1357635 b!4451740)))

(assert (=> bs!789015 (= (= (extractMap!926 (t!356938 (toList!3717 lm!1616))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159203 lambda!159174))))

(assert (=> bs!789014 (= (= (extractMap!926 (t!356938 (toList!3717 lm!1616))) lt!1644467) (= lambda!159203 lambda!159176))))

(assert (=> d!1357635 true))

(assert (=> d!1357635 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) lambda!159203)))

(declare-fun lt!1644628 () Unit!85492)

(declare-fun choose!28339 (ListMap!2961) Unit!85492)

(assert (=> d!1357635 (= lt!1644628 (choose!28339 (extractMap!926 (t!356938 (toList!3717 lm!1616)))))))

(assert (=> d!1357635 (= (lemmaContainsAllItsOwnKeys!217 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) lt!1644628)))

(declare-fun bs!789016 () Bool)

(assert (= bs!789016 d!1357635))

(declare-fun m!5151839 () Bool)

(assert (=> bs!789016 m!5151839))

(assert (=> bs!789016 m!5151149))

(declare-fun m!5151841 () Bool)

(assert (=> bs!789016 m!5151841))

(assert (=> bm!309830 d!1357635))

(declare-fun c!757966 () Bool)

(declare-fun d!1357637 () Bool)

(assert (=> d!1357637 (= c!757966 ((_ is Nil!49867) (t!356937 (toList!3718 (+!1267 lt!1644116 (tuple2!49839 key!3717 newValue!93))))))))

(declare-fun e!2772249 () (InoxSet tuple2!49838))

(assert (=> d!1357637 (= (content!8033 (t!356937 (toList!3718 (+!1267 lt!1644116 (tuple2!49839 key!3717 newValue!93))))) e!2772249)))

(declare-fun b!4451984 () Bool)

(assert (=> b!4451984 (= e!2772249 ((as const (Array tuple2!49838 Bool)) false))))

(declare-fun b!4451985 () Bool)

(assert (=> b!4451985 (= e!2772249 ((_ map or) (store ((as const (Array tuple2!49838 Bool)) false) (h!55610 (t!356937 (toList!3718 (+!1267 lt!1644116 (tuple2!49839 key!3717 newValue!93))))) true) (content!8033 (t!356937 (t!356937 (toList!3718 (+!1267 lt!1644116 (tuple2!49839 key!3717 newValue!93))))))))))

(assert (= (and d!1357637 c!757966) b!4451984))

(assert (= (and d!1357637 (not c!757966)) b!4451985))

(declare-fun m!5151843 () Bool)

(assert (=> b!4451985 m!5151843))

(declare-fun m!5151845 () Bool)

(assert (=> b!4451985 m!5151845))

(assert (=> b!4451964 d!1357637))

(declare-fun d!1357639 () Bool)

(declare-fun res!1844804 () Bool)

(declare-fun e!2772250 () Bool)

(assert (=> d!1357639 (=> res!1844804 e!2772250)))

(assert (=> d!1357639 (= res!1844804 (and ((_ is Cons!49868) (t!356938 (toList!3717 lm!1616))) (= (_1!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))) hash!366)))))

(assert (=> d!1357639 (= (containsKey!1295 (t!356938 (toList!3717 lm!1616)) hash!366) e!2772250)))

(declare-fun b!4451986 () Bool)

(declare-fun e!2772251 () Bool)

(assert (=> b!4451986 (= e!2772250 e!2772251)))

(declare-fun res!1844805 () Bool)

(assert (=> b!4451986 (=> (not res!1844805) (not e!2772251))))

(assert (=> b!4451986 (= res!1844805 (and (or (not ((_ is Cons!49868) (t!356938 (toList!3717 lm!1616)))) (bvsle (_1!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))) hash!366)) ((_ is Cons!49868) (t!356938 (toList!3717 lm!1616))) (bvslt (_1!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))) hash!366)))))

(declare-fun b!4451987 () Bool)

(assert (=> b!4451987 (= e!2772251 (containsKey!1295 (t!356938 (t!356938 (toList!3717 lm!1616))) hash!366))))

(assert (= (and d!1357639 (not res!1844804)) b!4451986))

(assert (= (and b!4451986 res!1844805) b!4451987))

(declare-fun m!5151847 () Bool)

(assert (=> b!4451987 m!5151847))

(assert (=> b!4451433 d!1357639))

(declare-fun d!1357641 () Bool)

(declare-fun res!1844806 () Bool)

(declare-fun e!2772252 () Bool)

(assert (=> d!1357641 (=> res!1844806 e!2772252)))

(assert (=> d!1357641 (= res!1844806 ((_ is Nil!49867) (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))

(assert (=> d!1357641 (= (forall!9758 (_2!28214 (h!55611 (toList!3717 lt!1644119))) lambda!159177) e!2772252)))

(declare-fun b!4451988 () Bool)

(declare-fun e!2772253 () Bool)

(assert (=> b!4451988 (= e!2772252 e!2772253)))

(declare-fun res!1844807 () Bool)

(assert (=> b!4451988 (=> (not res!1844807) (not e!2772253))))

(assert (=> b!4451988 (= res!1844807 (dynLambda!20940 lambda!159177 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(declare-fun b!4451989 () Bool)

(assert (=> b!4451989 (= e!2772253 (forall!9758 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))) lambda!159177))))

(assert (= (and d!1357641 (not res!1844806)) b!4451988))

(assert (= (and b!4451988 res!1844807) b!4451989))

(declare-fun b_lambda!147051 () Bool)

(assert (=> (not b_lambda!147051) (not b!4451988)))

(declare-fun m!5151849 () Bool)

(assert (=> b!4451988 m!5151849))

(declare-fun m!5151851 () Bool)

(assert (=> b!4451989 m!5151851))

(assert (=> d!1357447 d!1357641))

(assert (=> d!1357447 d!1357411))

(declare-fun d!1357643 () Bool)

(declare-fun res!1844812 () Bool)

(declare-fun e!2772258 () Bool)

(assert (=> d!1357643 (=> res!1844812 e!2772258)))

(assert (=> d!1357643 (= res!1844812 (or ((_ is Nil!49867) (toList!3718 lt!1644149)) ((_ is Nil!49867) (t!356937 (toList!3718 lt!1644149)))))))

(assert (=> d!1357643 (= (noDuplicatedKeys!199 (toList!3718 lt!1644149)) e!2772258)))

(declare-fun b!4451994 () Bool)

(declare-fun e!2772259 () Bool)

(assert (=> b!4451994 (= e!2772258 e!2772259)))

(declare-fun res!1844813 () Bool)

(assert (=> b!4451994 (=> (not res!1844813) (not e!2772259))))

(assert (=> b!4451994 (= res!1844813 (not (containsKey!1296 (t!356937 (toList!3718 lt!1644149)) (_1!28213 (h!55610 (toList!3718 lt!1644149))))))))

(declare-fun b!4451995 () Bool)

(assert (=> b!4451995 (= e!2772259 (noDuplicatedKeys!199 (t!356937 (toList!3718 lt!1644149))))))

(assert (= (and d!1357643 (not res!1844812)) b!4451994))

(assert (= (and b!4451994 res!1844813) b!4451995))

(declare-fun m!5151853 () Bool)

(assert (=> b!4451994 m!5151853))

(declare-fun m!5151855 () Bool)

(assert (=> b!4451995 m!5151855))

(assert (=> d!1357553 d!1357643))

(declare-fun bs!789017 () Bool)

(declare-fun b!4451999 () Bool)

(assert (= bs!789017 (and b!4451999 d!1357635)))

(declare-fun lambda!159204 () Int)

(assert (=> bs!789017 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159204 lambda!159203))))

(declare-fun bs!789018 () Bool)

(assert (= bs!789018 (and b!4451999 b!4451965)))

(assert (=> bs!789018 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) lt!1644603) (= lambda!159204 lambda!159198))))

(declare-fun bs!789019 () Bool)

(assert (= bs!789019 (and b!4451999 d!1357387)))

(assert (=> bs!789019 (not (= lambda!159204 lambda!159085))))

(assert (=> bs!789018 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159204 lambda!159197))))

(declare-fun bs!789020 () Bool)

(assert (= bs!789020 (and b!4451999 d!1357447)))

(assert (=> bs!789020 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) lt!1644481) (= lambda!159204 lambda!159177))))

(declare-fun bs!789021 () Bool)

(assert (= bs!789021 (and b!4451999 d!1357603)))

(assert (=> bs!789021 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) lt!1644617) (= lambda!159204 lambda!159199))))

(declare-fun bs!789022 () Bool)

(assert (= bs!789022 (and b!4451999 b!4451968)))

(assert (=> bs!789022 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159204 lambda!159196))))

(declare-fun bs!789023 () Bool)

(assert (= bs!789023 (and b!4451999 b!4451737)))

(assert (=> bs!789023 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159204 lambda!159175))))

(declare-fun bs!789024 () Bool)

(assert (= bs!789024 (and b!4451999 b!4451740)))

(assert (=> bs!789024 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159204 lambda!159174))))

(assert (=> bs!789023 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) lt!1644467) (= lambda!159204 lambda!159176))))

(assert (=> b!4451999 true))

(declare-fun bs!789025 () Bool)

(declare-fun b!4451996 () Bool)

(assert (= bs!789025 (and b!4451996 d!1357635)))

(declare-fun lambda!159205 () Int)

(assert (=> bs!789025 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159205 lambda!159203))))

(declare-fun bs!789026 () Bool)

(assert (= bs!789026 (and b!4451996 b!4451965)))

(assert (=> bs!789026 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) lt!1644603) (= lambda!159205 lambda!159198))))

(declare-fun bs!789027 () Bool)

(assert (= bs!789027 (and b!4451996 d!1357387)))

(assert (=> bs!789027 (not (= lambda!159205 lambda!159085))))

(assert (=> bs!789026 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159205 lambda!159197))))

(declare-fun bs!789028 () Bool)

(assert (= bs!789028 (and b!4451996 d!1357447)))

(assert (=> bs!789028 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) lt!1644481) (= lambda!159205 lambda!159177))))

(declare-fun bs!789029 () Bool)

(assert (= bs!789029 (and b!4451996 d!1357603)))

(assert (=> bs!789029 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) lt!1644617) (= lambda!159205 lambda!159199))))

(declare-fun bs!789030 () Bool)

(assert (= bs!789030 (and b!4451996 b!4451999)))

(assert (=> bs!789030 (= lambda!159205 lambda!159204)))

(declare-fun bs!789031 () Bool)

(assert (= bs!789031 (and b!4451996 b!4451968)))

(assert (=> bs!789031 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159205 lambda!159196))))

(declare-fun bs!789032 () Bool)

(assert (= bs!789032 (and b!4451996 b!4451737)))

(assert (=> bs!789032 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159205 lambda!159175))))

(declare-fun bs!789033 () Bool)

(assert (= bs!789033 (and b!4451996 b!4451740)))

(assert (=> bs!789033 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159205 lambda!159174))))

(assert (=> bs!789032 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) lt!1644467) (= lambda!159205 lambda!159176))))

(assert (=> b!4451996 true))

(declare-fun lambda!159206 () Int)

(declare-fun lt!1644631 () ListMap!2961)

(assert (=> bs!789025 (= (= lt!1644631 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159206 lambda!159203))))

(assert (=> bs!789026 (= (= lt!1644631 lt!1644603) (= lambda!159206 lambda!159198))))

(assert (=> bs!789027 (not (= lambda!159206 lambda!159085))))

(assert (=> bs!789026 (= (= lt!1644631 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159206 lambda!159197))))

(assert (=> bs!789028 (= (= lt!1644631 lt!1644481) (= lambda!159206 lambda!159177))))

(assert (=> bs!789029 (= (= lt!1644631 lt!1644617) (= lambda!159206 lambda!159199))))

(assert (=> bs!789031 (= (= lt!1644631 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159206 lambda!159196))))

(assert (=> bs!789032 (= (= lt!1644631 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159206 lambda!159175))))

(assert (=> bs!789033 (= (= lt!1644631 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159206 lambda!159174))))

(assert (=> bs!789032 (= (= lt!1644631 lt!1644467) (= lambda!159206 lambda!159176))))

(assert (=> b!4451996 (= (= lt!1644631 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159206 lambda!159205))))

(assert (=> bs!789030 (= (= lt!1644631 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159206 lambda!159204))))

(assert (=> b!4451996 true))

(declare-fun bs!789034 () Bool)

(declare-fun d!1357645 () Bool)

(assert (= bs!789034 (and d!1357645 d!1357635)))

(declare-fun lambda!159207 () Int)

(declare-fun lt!1644645 () ListMap!2961)

(assert (=> bs!789034 (= (= lt!1644645 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159207 lambda!159203))))

(declare-fun bs!789035 () Bool)

(assert (= bs!789035 (and d!1357645 b!4451965)))

(assert (=> bs!789035 (= (= lt!1644645 lt!1644603) (= lambda!159207 lambda!159198))))

(declare-fun bs!789036 () Bool)

(assert (= bs!789036 (and d!1357645 d!1357387)))

(assert (=> bs!789036 (not (= lambda!159207 lambda!159085))))

(assert (=> bs!789035 (= (= lt!1644645 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159207 lambda!159197))))

(declare-fun bs!789037 () Bool)

(assert (= bs!789037 (and d!1357645 d!1357447)))

(assert (=> bs!789037 (= (= lt!1644645 lt!1644481) (= lambda!159207 lambda!159177))))

(declare-fun bs!789038 () Bool)

(assert (= bs!789038 (and d!1357645 d!1357603)))

(assert (=> bs!789038 (= (= lt!1644645 lt!1644617) (= lambda!159207 lambda!159199))))

(declare-fun bs!789039 () Bool)

(assert (= bs!789039 (and d!1357645 b!4451737)))

(assert (=> bs!789039 (= (= lt!1644645 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159207 lambda!159175))))

(declare-fun bs!789040 () Bool)

(assert (= bs!789040 (and d!1357645 b!4451740)))

(assert (=> bs!789040 (= (= lt!1644645 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159207 lambda!159174))))

(assert (=> bs!789039 (= (= lt!1644645 lt!1644467) (= lambda!159207 lambda!159176))))

(declare-fun bs!789041 () Bool)

(assert (= bs!789041 (and d!1357645 b!4451996)))

(assert (=> bs!789041 (= (= lt!1644645 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159207 lambda!159205))))

(declare-fun bs!789042 () Bool)

(assert (= bs!789042 (and d!1357645 b!4451999)))

(assert (=> bs!789042 (= (= lt!1644645 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159207 lambda!159204))))

(assert (=> bs!789041 (= (= lt!1644645 lt!1644631) (= lambda!159207 lambda!159206))))

(declare-fun bs!789043 () Bool)

(assert (= bs!789043 (and d!1357645 b!4451968)))

(assert (=> bs!789043 (= (= lt!1644645 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159207 lambda!159196))))

(assert (=> d!1357645 true))

(declare-fun e!2772262 () ListMap!2961)

(assert (=> b!4451996 (= e!2772262 lt!1644631)))

(declare-fun lt!1644648 () ListMap!2961)

(assert (=> b!4451996 (= lt!1644648 (+!1267 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119)))))))))

(assert (=> b!4451996 (= lt!1644631 (addToMapMapFromBucket!471 (t!356937 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119))))) (+!1267 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119))))))))))

(declare-fun lt!1644629 () Unit!85492)

(declare-fun call!309838 () Unit!85492)

(assert (=> b!4451996 (= lt!1644629 call!309838)))

(assert (=> b!4451996 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) lambda!159205)))

(declare-fun lt!1644649 () Unit!85492)

(assert (=> b!4451996 (= lt!1644649 lt!1644629)))

(assert (=> b!4451996 (forall!9758 (toList!3718 lt!1644648) lambda!159206)))

(declare-fun lt!1644637 () Unit!85492)

(declare-fun Unit!85562 () Unit!85492)

(assert (=> b!4451996 (= lt!1644637 Unit!85562)))

(declare-fun call!309839 () Bool)

(assert (=> b!4451996 call!309839))

(declare-fun lt!1644633 () Unit!85492)

(declare-fun Unit!85563 () Unit!85492)

(assert (=> b!4451996 (= lt!1644633 Unit!85563)))

(declare-fun lt!1644639 () Unit!85492)

(declare-fun Unit!85564 () Unit!85492)

(assert (=> b!4451996 (= lt!1644639 Unit!85564)))

(declare-fun lt!1644630 () Unit!85492)

(assert (=> b!4451996 (= lt!1644630 (forallContained!2161 (toList!3718 lt!1644648) lambda!159206 (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119)))))))))

(assert (=> b!4451996 (contains!12462 lt!1644648 (_1!28213 (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119)))))))))

(declare-fun lt!1644644 () Unit!85492)

(declare-fun Unit!85565 () Unit!85492)

(assert (=> b!4451996 (= lt!1644644 Unit!85565)))

(assert (=> b!4451996 (contains!12462 lt!1644631 (_1!28213 (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119)))))))))

(declare-fun lt!1644638 () Unit!85492)

(declare-fun Unit!85566 () Unit!85492)

(assert (=> b!4451996 (= lt!1644638 Unit!85566)))

(assert (=> b!4451996 (forall!9758 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119)))) lambda!159206)))

(declare-fun lt!1644636 () Unit!85492)

(declare-fun Unit!85567 () Unit!85492)

(assert (=> b!4451996 (= lt!1644636 Unit!85567)))

(assert (=> b!4451996 (forall!9758 (toList!3718 lt!1644648) lambda!159206)))

(declare-fun lt!1644642 () Unit!85492)

(declare-fun Unit!85568 () Unit!85492)

(assert (=> b!4451996 (= lt!1644642 Unit!85568)))

(declare-fun lt!1644641 () Unit!85492)

(declare-fun Unit!85569 () Unit!85492)

(assert (=> b!4451996 (= lt!1644641 Unit!85569)))

(declare-fun lt!1644647 () Unit!85492)

(assert (=> b!4451996 (= lt!1644647 (addForallContainsKeyThenBeforeAdding!217 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) lt!1644631 (_1!28213 (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119)))))) (_2!28213 (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119))))))))))

(assert (=> b!4451996 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) lambda!159206)))

(declare-fun lt!1644634 () Unit!85492)

(assert (=> b!4451996 (= lt!1644634 lt!1644647)))

(assert (=> b!4451996 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) lambda!159206)))

(declare-fun lt!1644640 () Unit!85492)

(declare-fun Unit!85570 () Unit!85492)

(assert (=> b!4451996 (= lt!1644640 Unit!85570)))

(declare-fun res!1844814 () Bool)

(declare-fun call!309837 () Bool)

(assert (=> b!4451996 (= res!1844814 call!309837)))

(declare-fun e!2772260 () Bool)

(assert (=> b!4451996 (=> (not res!1844814) (not e!2772260))))

(assert (=> b!4451996 e!2772260))

(declare-fun lt!1644632 () Unit!85492)

(declare-fun Unit!85571 () Unit!85492)

(assert (=> b!4451996 (= lt!1644632 Unit!85571)))

(declare-fun b!4451997 () Bool)

(declare-fun res!1844816 () Bool)

(declare-fun e!2772261 () Bool)

(assert (=> b!4451997 (=> (not res!1844816) (not e!2772261))))

(assert (=> b!4451997 (= res!1844816 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) lambda!159207))))

(declare-fun bm!309832 () Bool)

(declare-fun c!757967 () Bool)

(assert (=> bm!309832 (= call!309837 (forall!9758 (ite c!757967 (toList!3718 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119))))) (ite c!757967 lambda!159204 lambda!159206)))))

(declare-fun b!4451998 () Bool)

(assert (=> b!4451998 (= e!2772261 (invariantList!860 (toList!3718 lt!1644645)))))

(declare-fun bm!309833 () Bool)

(assert (=> bm!309833 (= call!309838 (lemmaContainsAllItsOwnKeys!217 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))))))

(declare-fun bm!309834 () Bool)

(assert (=> bm!309834 (= call!309839 (forall!9758 (ite c!757967 (toList!3718 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (t!356937 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119)))))) (ite c!757967 lambda!159204 lambda!159206)))))

(assert (=> d!1357645 e!2772261))

(declare-fun res!1844815 () Bool)

(assert (=> d!1357645 (=> (not res!1844815) (not e!2772261))))

(assert (=> d!1357645 (= res!1844815 (forall!9758 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119)))) lambda!159207))))

(assert (=> d!1357645 (= lt!1644645 e!2772262)))

(assert (=> d!1357645 (= c!757967 ((_ is Nil!49867) (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119))))))))

(assert (=> d!1357645 (noDuplicateKeys!865 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119)))))))

(assert (=> d!1357645 (= (addToMapMapFromBucket!471 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119)))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) lt!1644645)))

(assert (=> b!4451999 (= e!2772262 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))))))

(declare-fun lt!1644635 () Unit!85492)

(assert (=> b!4451999 (= lt!1644635 call!309838)))

(assert (=> b!4451999 call!309837))

(declare-fun lt!1644646 () Unit!85492)

(assert (=> b!4451999 (= lt!1644646 lt!1644635)))

(assert (=> b!4451999 call!309839))

(declare-fun lt!1644643 () Unit!85492)

(declare-fun Unit!85572 () Unit!85492)

(assert (=> b!4451999 (= lt!1644643 Unit!85572)))

(declare-fun b!4452000 () Bool)

(assert (=> b!4452000 (= e!2772260 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) lambda!159206))))

(assert (= (and d!1357645 c!757967) b!4451999))

(assert (= (and d!1357645 (not c!757967)) b!4451996))

(assert (= (and b!4451996 res!1844814) b!4452000))

(assert (= (or b!4451999 b!4451996) bm!309833))

(assert (= (or b!4451999 b!4451996) bm!309832))

(assert (= (or b!4451999 b!4451996) bm!309834))

(assert (= (and d!1357645 res!1844815) b!4451997))

(assert (= (and b!4451997 res!1844816) b!4451998))

(declare-fun m!5151857 () Bool)

(assert (=> bm!309834 m!5151857))

(declare-fun m!5151859 () Bool)

(assert (=> b!4451997 m!5151859))

(declare-fun m!5151861 () Bool)

(assert (=> b!4452000 m!5151861))

(declare-fun m!5151863 () Bool)

(assert (=> bm!309832 m!5151863))

(declare-fun m!5151865 () Bool)

(assert (=> d!1357645 m!5151865))

(assert (=> d!1357645 m!5151821))

(declare-fun m!5151867 () Bool)

(assert (=> b!4451998 m!5151867))

(assert (=> bm!309833 m!5151527))

(declare-fun m!5151869 () Bool)

(assert (=> bm!309833 m!5151869))

(declare-fun m!5151871 () Bool)

(assert (=> b!4451996 m!5151871))

(assert (=> b!4451996 m!5151861))

(assert (=> b!4451996 m!5151527))

(declare-fun m!5151873 () Bool)

(assert (=> b!4451996 m!5151873))

(declare-fun m!5151875 () Bool)

(assert (=> b!4451996 m!5151875))

(declare-fun m!5151877 () Bool)

(assert (=> b!4451996 m!5151877))

(declare-fun m!5151879 () Bool)

(assert (=> b!4451996 m!5151879))

(assert (=> b!4451996 m!5151861))

(declare-fun m!5151881 () Bool)

(assert (=> b!4451996 m!5151881))

(assert (=> b!4451996 m!5151527))

(declare-fun m!5151883 () Bool)

(assert (=> b!4451996 m!5151883))

(assert (=> b!4451996 m!5151883))

(declare-fun m!5151885 () Bool)

(assert (=> b!4451996 m!5151885))

(declare-fun m!5151887 () Bool)

(assert (=> b!4451996 m!5151887))

(assert (=> b!4451996 m!5151879))

(assert (=> b!4451761 d!1357645))

(declare-fun bs!789044 () Bool)

(declare-fun d!1357647 () Bool)

(assert (= bs!789044 (and d!1357647 start!435780)))

(declare-fun lambda!159208 () Int)

(assert (=> bs!789044 (= lambda!159208 lambda!159068)))

(declare-fun bs!789045 () Bool)

(assert (= bs!789045 (and d!1357647 d!1357333)))

(assert (=> bs!789045 (= lambda!159208 lambda!159077)))

(declare-fun bs!789046 () Bool)

(assert (= bs!789046 (and d!1357647 d!1357385)))

(assert (=> bs!789046 (= lambda!159208 lambda!159082)))

(declare-fun bs!789047 () Bool)

(assert (= bs!789047 (and d!1357647 d!1357519)))

(assert (=> bs!789047 (= lambda!159208 lambda!159180)))

(declare-fun bs!789048 () Bool)

(assert (= bs!789048 (and d!1357647 d!1357391)))

(assert (=> bs!789048 (not (= lambda!159208 lambda!159088))))

(declare-fun bs!789049 () Bool)

(assert (= bs!789049 (and d!1357647 d!1357605)))

(assert (=> bs!789049 (= lambda!159208 lambda!159200)))

(declare-fun lt!1644650 () ListMap!2961)

(assert (=> d!1357647 (invariantList!860 (toList!3718 lt!1644650))))

(declare-fun e!2772263 () ListMap!2961)

(assert (=> d!1357647 (= lt!1644650 e!2772263)))

(declare-fun c!757968 () Bool)

(assert (=> d!1357647 (= c!757968 ((_ is Cons!49868) (t!356938 (t!356938 (toList!3717 lt!1644119)))))))

(assert (=> d!1357647 (forall!9756 (t!356938 (t!356938 (toList!3717 lt!1644119))) lambda!159208)))

(assert (=> d!1357647 (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119)))) lt!1644650)))

(declare-fun b!4452001 () Bool)

(assert (=> b!4452001 (= e!2772263 (addToMapMapFromBucket!471 (_2!28214 (h!55611 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (extractMap!926 (t!356938 (t!356938 (t!356938 (toList!3717 lt!1644119)))))))))

(declare-fun b!4452002 () Bool)

(assert (=> b!4452002 (= e!2772263 (ListMap!2962 Nil!49867))))

(assert (= (and d!1357647 c!757968) b!4452001))

(assert (= (and d!1357647 (not c!757968)) b!4452002))

(declare-fun m!5151889 () Bool)

(assert (=> d!1357647 m!5151889))

(declare-fun m!5151891 () Bool)

(assert (=> d!1357647 m!5151891))

(declare-fun m!5151893 () Bool)

(assert (=> b!4452001 m!5151893))

(assert (=> b!4452001 m!5151893))

(declare-fun m!5151895 () Bool)

(assert (=> b!4452001 m!5151895))

(assert (=> b!4451761 d!1357647))

(declare-fun lt!1644651 () Bool)

(declare-fun d!1357649 () Bool)

(assert (=> d!1357649 (= lt!1644651 (select (content!8036 lt!1644222) (tuple2!49841 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(declare-fun e!2772265 () Bool)

(assert (=> d!1357649 (= lt!1644651 e!2772265)))

(declare-fun res!1844818 () Bool)

(assert (=> d!1357649 (=> (not res!1844818) (not e!2772265))))

(assert (=> d!1357649 (= res!1844818 ((_ is Cons!49868) lt!1644222))))

(assert (=> d!1357649 (= (contains!12467 lt!1644222 (tuple2!49841 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194)))) lt!1644651)))

(declare-fun b!4452003 () Bool)

(declare-fun e!2772264 () Bool)

(assert (=> b!4452003 (= e!2772265 e!2772264)))

(declare-fun res!1844817 () Bool)

(assert (=> b!4452003 (=> res!1844817 e!2772264)))

(assert (=> b!4452003 (= res!1844817 (= (h!55611 lt!1644222) (tuple2!49841 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(declare-fun b!4452004 () Bool)

(assert (=> b!4452004 (= e!2772264 (contains!12467 (t!356938 lt!1644222) (tuple2!49841 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (= (and d!1357649 res!1844818) b!4452003))

(assert (= (and b!4452003 (not res!1844817)) b!4452004))

(declare-fun m!5151897 () Bool)

(assert (=> d!1357649 m!5151897))

(declare-fun m!5151899 () Bool)

(assert (=> d!1357649 m!5151899))

(declare-fun m!5151901 () Bool)

(assert (=> b!4452004 m!5151901))

(assert (=> b!4451914 d!1357649))

(declare-fun d!1357651 () Bool)

(assert (=> d!1357651 (= ($colon$colon!830 e!2772216 (ite c!757956 (h!55611 (toList!3717 lm!1616)) (tuple2!49841 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194))))) (Cons!49868 (ite c!757956 (h!55611 (toList!3717 lm!1616)) (tuple2!49841 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194)))) e!2772216))))

(assert (=> bm!309828 d!1357651))

(declare-fun d!1357653 () Bool)

(declare-fun res!1844819 () Bool)

(declare-fun e!2772266 () Bool)

(assert (=> d!1357653 (=> res!1844819 e!2772266)))

(assert (=> d!1357653 (= res!1844819 ((_ is Nil!49868) (t!356938 (t!356938 (toList!3717 lm!1616)))))))

(assert (=> d!1357653 (= (forall!9756 (t!356938 (t!356938 (toList!3717 lm!1616))) lambda!159068) e!2772266)))

(declare-fun b!4452005 () Bool)

(declare-fun e!2772267 () Bool)

(assert (=> b!4452005 (= e!2772266 e!2772267)))

(declare-fun res!1844820 () Bool)

(assert (=> b!4452005 (=> (not res!1844820) (not e!2772267))))

(assert (=> b!4452005 (= res!1844820 (dynLambda!20938 lambda!159068 (h!55611 (t!356938 (t!356938 (toList!3717 lm!1616))))))))

(declare-fun b!4452006 () Bool)

(assert (=> b!4452006 (= e!2772267 (forall!9756 (t!356938 (t!356938 (t!356938 (toList!3717 lm!1616)))) lambda!159068))))

(assert (= (and d!1357653 (not res!1844819)) b!4452005))

(assert (= (and b!4452005 res!1844820) b!4452006))

(declare-fun b_lambda!147053 () Bool)

(assert (=> (not b_lambda!147053) (not b!4452005)))

(declare-fun m!5151903 () Bool)

(assert (=> b!4452005 m!5151903))

(declare-fun m!5151905 () Bool)

(assert (=> b!4452006 m!5151905))

(assert (=> b!4451793 d!1357653))

(declare-fun bs!789050 () Bool)

(declare-fun d!1357655 () Bool)

(assert (= bs!789050 (and d!1357655 d!1357635)))

(declare-fun lambda!159213 () Int)

(assert (=> bs!789050 (= (= lt!1644603 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159213 lambda!159203))))

(declare-fun bs!789051 () Bool)

(assert (= bs!789051 (and d!1357655 d!1357387)))

(assert (=> bs!789051 (not (= lambda!159213 lambda!159085))))

(declare-fun bs!789052 () Bool)

(assert (= bs!789052 (and d!1357655 b!4451965)))

(assert (=> bs!789052 (= (= lt!1644603 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159213 lambda!159197))))

(declare-fun bs!789053 () Bool)

(assert (= bs!789053 (and d!1357655 d!1357447)))

(assert (=> bs!789053 (= (= lt!1644603 lt!1644481) (= lambda!159213 lambda!159177))))

(declare-fun bs!789054 () Bool)

(assert (= bs!789054 (and d!1357655 d!1357603)))

(assert (=> bs!789054 (= (= lt!1644603 lt!1644617) (= lambda!159213 lambda!159199))))

(declare-fun bs!789055 () Bool)

(assert (= bs!789055 (and d!1357655 b!4451737)))

(assert (=> bs!789055 (= (= lt!1644603 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159213 lambda!159175))))

(declare-fun bs!789056 () Bool)

(assert (= bs!789056 (and d!1357655 d!1357645)))

(assert (=> bs!789056 (= (= lt!1644603 lt!1644645) (= lambda!159213 lambda!159207))))

(assert (=> bs!789052 (= lambda!159213 lambda!159198)))

(declare-fun bs!789057 () Bool)

(assert (= bs!789057 (and d!1357655 b!4451740)))

(assert (=> bs!789057 (= (= lt!1644603 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159213 lambda!159174))))

(assert (=> bs!789055 (= (= lt!1644603 lt!1644467) (= lambda!159213 lambda!159176))))

(declare-fun bs!789058 () Bool)

(assert (= bs!789058 (and d!1357655 b!4451996)))

(assert (=> bs!789058 (= (= lt!1644603 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159213 lambda!159205))))

(declare-fun bs!789059 () Bool)

(assert (= bs!789059 (and d!1357655 b!4451999)))

(assert (=> bs!789059 (= (= lt!1644603 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159213 lambda!159204))))

(assert (=> bs!789058 (= (= lt!1644603 lt!1644631) (= lambda!159213 lambda!159206))))

(declare-fun bs!789060 () Bool)

(assert (= bs!789060 (and d!1357655 b!4451968)))

(assert (=> bs!789060 (= (= lt!1644603 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159213 lambda!159196))))

(assert (=> d!1357655 true))

(assert (=> d!1357655 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) lambda!159213)))

(declare-fun lt!1644654 () Unit!85492)

(declare-fun choose!28340 (ListMap!2961 ListMap!2961 K!11235 V!11481) Unit!85492)

(assert (=> d!1357655 (= lt!1644654 (choose!28340 (extractMap!926 (t!356938 (toList!3717 lm!1616))) lt!1644603 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> d!1357655 (forall!9758 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (tuple2!49839 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))) lambda!159213)))

(assert (=> d!1357655 (= (addForallContainsKeyThenBeforeAdding!217 (extractMap!926 (t!356938 (toList!3717 lm!1616))) lt!1644603 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) lt!1644654)))

(declare-fun bs!789061 () Bool)

(assert (= bs!789061 d!1357655))

(declare-fun m!5151907 () Bool)

(assert (=> bs!789061 m!5151907))

(assert (=> bs!789061 m!5151149))

(declare-fun m!5151909 () Bool)

(assert (=> bs!789061 m!5151909))

(assert (=> bs!789061 m!5151149))

(declare-fun m!5151911 () Bool)

(assert (=> bs!789061 m!5151911))

(declare-fun m!5151913 () Bool)

(assert (=> bs!789061 m!5151913))

(assert (=> b!4451965 d!1357655))

(declare-fun b!4452008 () Bool)

(declare-fun e!2772273 () List!49994)

(assert (=> b!4452008 (= e!2772273 (keys!17104 lt!1644603))))

(declare-fun bm!309835 () Bool)

(declare-fun call!309840 () Bool)

(assert (=> bm!309835 (= call!309840 (contains!12468 e!2772273 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(declare-fun c!757970 () Bool)

(declare-fun c!757971 () Bool)

(assert (=> bm!309835 (= c!757970 c!757971)))

(declare-fun b!4452009 () Bool)

(declare-fun e!2772271 () Unit!85492)

(declare-fun Unit!85573 () Unit!85492)

(assert (=> b!4452009 (= e!2772271 Unit!85573)))

(declare-fun b!4452010 () Bool)

(declare-fun e!2772272 () Bool)

(assert (=> b!4452010 (= e!2772272 (not (contains!12468 (keys!17104 lt!1644603) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))))

(declare-fun b!4452011 () Bool)

(declare-fun e!2772270 () Unit!85492)

(declare-fun lt!1644655 () Unit!85492)

(assert (=> b!4452011 (= e!2772270 lt!1644655)))

(declare-fun lt!1644659 () Unit!85492)

(assert (=> b!4452011 (= lt!1644659 (lemmaContainsKeyImpliesGetValueByKeyDefined!729 (toList!3718 lt!1644603) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> b!4452011 (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644603) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(declare-fun lt!1644660 () Unit!85492)

(assert (=> b!4452011 (= lt!1644660 lt!1644659)))

(assert (=> b!4452011 (= lt!1644655 (lemmaInListThenGetKeysListContains!303 (toList!3718 lt!1644603) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> b!4452011 call!309840))

(declare-fun b!4452012 () Bool)

(assert (=> b!4452012 (= e!2772273 (getKeysList!306 (toList!3718 lt!1644603)))))

(declare-fun b!4452013 () Bool)

(declare-fun e!2772269 () Bool)

(declare-fun e!2772268 () Bool)

(assert (=> b!4452013 (= e!2772269 e!2772268)))

(declare-fun res!1844821 () Bool)

(assert (=> b!4452013 (=> (not res!1844821) (not e!2772268))))

(assert (=> b!4452013 (= res!1844821 (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644603) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))))

(declare-fun b!4452014 () Bool)

(assert (=> b!4452014 false))

(declare-fun lt!1644657 () Unit!85492)

(declare-fun lt!1644656 () Unit!85492)

(assert (=> b!4452014 (= lt!1644657 lt!1644656)))

(assert (=> b!4452014 (containsKey!1296 (toList!3718 lt!1644603) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(assert (=> b!4452014 (= lt!1644656 (lemmaInGetKeysListThenContainsKey!304 (toList!3718 lt!1644603) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(declare-fun Unit!85574 () Unit!85492)

(assert (=> b!4452014 (= e!2772271 Unit!85574)))

(declare-fun d!1357657 () Bool)

(assert (=> d!1357657 e!2772269))

(declare-fun res!1844823 () Bool)

(assert (=> d!1357657 (=> res!1844823 e!2772269)))

(assert (=> d!1357657 (= res!1844823 e!2772272)))

(declare-fun res!1844822 () Bool)

(assert (=> d!1357657 (=> (not res!1844822) (not e!2772272))))

(declare-fun lt!1644661 () Bool)

(assert (=> d!1357657 (= res!1844822 (not lt!1644661))))

(declare-fun lt!1644662 () Bool)

(assert (=> d!1357657 (= lt!1644661 lt!1644662)))

(declare-fun lt!1644658 () Unit!85492)

(assert (=> d!1357657 (= lt!1644658 e!2772270)))

(assert (=> d!1357657 (= c!757971 lt!1644662)))

(assert (=> d!1357657 (= lt!1644662 (containsKey!1296 (toList!3718 lt!1644603) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> d!1357657 (= (contains!12462 lt!1644603 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) lt!1644661)))

(declare-fun b!4452015 () Bool)

(assert (=> b!4452015 (= e!2772270 e!2772271)))

(declare-fun c!757969 () Bool)

(assert (=> b!4452015 (= c!757969 call!309840)))

(declare-fun b!4452016 () Bool)

(assert (=> b!4452016 (= e!2772268 (contains!12468 (keys!17104 lt!1644603) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (= (and d!1357657 c!757971) b!4452011))

(assert (= (and d!1357657 (not c!757971)) b!4452015))

(assert (= (and b!4452015 c!757969) b!4452014))

(assert (= (and b!4452015 (not c!757969)) b!4452009))

(assert (= (or b!4452011 b!4452015) bm!309835))

(assert (= (and bm!309835 c!757970) b!4452012))

(assert (= (and bm!309835 (not c!757970)) b!4452008))

(assert (= (and d!1357657 res!1844822) b!4452010))

(assert (= (and d!1357657 (not res!1844823)) b!4452013))

(assert (= (and b!4452013 res!1844821) b!4452016))

(declare-fun m!5151915 () Bool)

(assert (=> b!4452013 m!5151915))

(assert (=> b!4452013 m!5151915))

(declare-fun m!5151917 () Bool)

(assert (=> b!4452013 m!5151917))

(declare-fun m!5151919 () Bool)

(assert (=> b!4452014 m!5151919))

(declare-fun m!5151921 () Bool)

(assert (=> b!4452014 m!5151921))

(declare-fun m!5151923 () Bool)

(assert (=> bm!309835 m!5151923))

(declare-fun m!5151925 () Bool)

(assert (=> b!4452012 m!5151925))

(declare-fun m!5151927 () Bool)

(assert (=> b!4452010 m!5151927))

(assert (=> b!4452010 m!5151927))

(declare-fun m!5151929 () Bool)

(assert (=> b!4452010 m!5151929))

(assert (=> b!4452008 m!5151927))

(declare-fun m!5151931 () Bool)

(assert (=> b!4452011 m!5151931))

(assert (=> b!4452011 m!5151915))

(assert (=> b!4452011 m!5151915))

(assert (=> b!4452011 m!5151917))

(declare-fun m!5151933 () Bool)

(assert (=> b!4452011 m!5151933))

(assert (=> b!4452016 m!5151927))

(assert (=> b!4452016 m!5151927))

(assert (=> b!4452016 m!5151929))

(assert (=> d!1357657 m!5151919))

(assert (=> b!4451965 d!1357657))

(declare-fun d!1357659 () Bool)

(declare-fun res!1844824 () Bool)

(declare-fun e!2772274 () Bool)

(assert (=> d!1357659 (=> res!1844824 e!2772274)))

(assert (=> d!1357659 (= res!1844824 ((_ is Nil!49867) (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616))))))))

(assert (=> d!1357659 (= (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) lambda!159197) e!2772274)))

(declare-fun b!4452017 () Bool)

(declare-fun e!2772275 () Bool)

(assert (=> b!4452017 (= e!2772274 e!2772275)))

(declare-fun res!1844825 () Bool)

(assert (=> b!4452017 (=> (not res!1844825) (not e!2772275))))

(assert (=> b!4452017 (= res!1844825 (dynLambda!20940 lambda!159197 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))))))))

(declare-fun b!4452018 () Bool)

(assert (=> b!4452018 (= e!2772275 (forall!9758 (t!356937 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616))))) lambda!159197))))

(assert (= (and d!1357659 (not res!1844824)) b!4452017))

(assert (= (and b!4452017 res!1844825) b!4452018))

(declare-fun b_lambda!147055 () Bool)

(assert (=> (not b_lambda!147055) (not b!4452017)))

(declare-fun m!5151935 () Bool)

(assert (=> b!4452017 m!5151935))

(declare-fun m!5151937 () Bool)

(assert (=> b!4452018 m!5151937))

(assert (=> b!4451965 d!1357659))

(declare-fun d!1357661 () Bool)

(assert (=> d!1357661 (dynLambda!20940 lambda!159198 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))

(declare-fun lt!1644665 () Unit!85492)

(declare-fun choose!28341 (List!49991 Int tuple2!49838) Unit!85492)

(assert (=> d!1357661 (= lt!1644665 (choose!28341 (toList!3718 lt!1644620) lambda!159198 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(declare-fun e!2772278 () Bool)

(assert (=> d!1357661 e!2772278))

(declare-fun res!1844828 () Bool)

(assert (=> d!1357661 (=> (not res!1844828) (not e!2772278))))

(assert (=> d!1357661 (= res!1844828 (forall!9758 (toList!3718 lt!1644620) lambda!159198))))

(assert (=> d!1357661 (= (forallContained!2161 (toList!3718 lt!1644620) lambda!159198 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644665)))

(declare-fun b!4452021 () Bool)

(assert (=> b!4452021 (= e!2772278 (contains!12466 (toList!3718 lt!1644620) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(assert (= (and d!1357661 res!1844828) b!4452021))

(declare-fun b_lambda!147057 () Bool)

(assert (=> (not b_lambda!147057) (not d!1357661)))

(declare-fun m!5151939 () Bool)

(assert (=> d!1357661 m!5151939))

(declare-fun m!5151941 () Bool)

(assert (=> d!1357661 m!5151941))

(assert (=> d!1357661 m!5151793))

(declare-fun m!5151943 () Bool)

(assert (=> b!4452021 m!5151943))

(assert (=> b!4451965 d!1357661))

(declare-fun bs!789062 () Bool)

(declare-fun b!4452025 () Bool)

(assert (= bs!789062 (and b!4452025 d!1357635)))

(declare-fun lambda!159214 () Int)

(assert (=> bs!789062 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159214 lambda!159203))))

(declare-fun bs!789063 () Bool)

(assert (= bs!789063 (and b!4452025 d!1357387)))

(assert (=> bs!789063 (not (= lambda!159214 lambda!159085))))

(declare-fun bs!789064 () Bool)

(assert (= bs!789064 (and b!4452025 b!4451965)))

(assert (=> bs!789064 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159214 lambda!159197))))

(declare-fun bs!789065 () Bool)

(assert (= bs!789065 (and b!4452025 d!1357447)))

(assert (=> bs!789065 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644481) (= lambda!159214 lambda!159177))))

(declare-fun bs!789066 () Bool)

(assert (= bs!789066 (and b!4452025 d!1357603)))

(assert (=> bs!789066 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644617) (= lambda!159214 lambda!159199))))

(declare-fun bs!789067 () Bool)

(assert (= bs!789067 (and b!4452025 b!4451737)))

(assert (=> bs!789067 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159214 lambda!159175))))

(declare-fun bs!789068 () Bool)

(assert (= bs!789068 (and b!4452025 d!1357645)))

(assert (=> bs!789068 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644645) (= lambda!159214 lambda!159207))))

(assert (=> bs!789064 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644603) (= lambda!159214 lambda!159198))))

(declare-fun bs!789069 () Bool)

(assert (= bs!789069 (and b!4452025 b!4451740)))

(assert (=> bs!789069 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159214 lambda!159174))))

(assert (=> bs!789067 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644467) (= lambda!159214 lambda!159176))))

(declare-fun bs!789070 () Bool)

(assert (= bs!789070 (and b!4452025 d!1357655)))

(assert (=> bs!789070 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644603) (= lambda!159214 lambda!159213))))

(declare-fun bs!789071 () Bool)

(assert (= bs!789071 (and b!4452025 b!4451996)))

(assert (=> bs!789071 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159214 lambda!159205))))

(declare-fun bs!789072 () Bool)

(assert (= bs!789072 (and b!4452025 b!4451999)))

(assert (=> bs!789072 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159214 lambda!159204))))

(assert (=> bs!789071 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644631) (= lambda!159214 lambda!159206))))

(declare-fun bs!789073 () Bool)

(assert (= bs!789073 (and b!4452025 b!4451968)))

(assert (=> bs!789073 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159214 lambda!159196))))

(assert (=> b!4452025 true))

(declare-fun bs!789074 () Bool)

(declare-fun b!4452022 () Bool)

(assert (= bs!789074 (and b!4452022 d!1357635)))

(declare-fun lambda!159215 () Int)

(assert (=> bs!789074 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159215 lambda!159203))))

(declare-fun bs!789075 () Bool)

(assert (= bs!789075 (and b!4452022 d!1357387)))

(assert (=> bs!789075 (not (= lambda!159215 lambda!159085))))

(declare-fun bs!789076 () Bool)

(assert (= bs!789076 (and b!4452022 d!1357447)))

(assert (=> bs!789076 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644481) (= lambda!159215 lambda!159177))))

(declare-fun bs!789077 () Bool)

(assert (= bs!789077 (and b!4452022 d!1357603)))

(assert (=> bs!789077 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644617) (= lambda!159215 lambda!159199))))

(declare-fun bs!789078 () Bool)

(assert (= bs!789078 (and b!4452022 b!4451737)))

(assert (=> bs!789078 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159215 lambda!159175))))

(declare-fun bs!789079 () Bool)

(assert (= bs!789079 (and b!4452022 d!1357645)))

(assert (=> bs!789079 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644645) (= lambda!159215 lambda!159207))))

(declare-fun bs!789080 () Bool)

(assert (= bs!789080 (and b!4452022 b!4451965)))

(assert (=> bs!789080 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644603) (= lambda!159215 lambda!159198))))

(assert (=> bs!789080 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159215 lambda!159197))))

(declare-fun bs!789081 () Bool)

(assert (= bs!789081 (and b!4452022 b!4452025)))

(assert (=> bs!789081 (= lambda!159215 lambda!159214)))

(declare-fun bs!789082 () Bool)

(assert (= bs!789082 (and b!4452022 b!4451740)))

(assert (=> bs!789082 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159215 lambda!159174))))

(assert (=> bs!789078 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644467) (= lambda!159215 lambda!159176))))

(declare-fun bs!789083 () Bool)

(assert (= bs!789083 (and b!4452022 d!1357655)))

(assert (=> bs!789083 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644603) (= lambda!159215 lambda!159213))))

(declare-fun bs!789084 () Bool)

(assert (= bs!789084 (and b!4452022 b!4451996)))

(assert (=> bs!789084 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159215 lambda!159205))))

(declare-fun bs!789085 () Bool)

(assert (= bs!789085 (and b!4452022 b!4451999)))

(assert (=> bs!789085 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159215 lambda!159204))))

(assert (=> bs!789084 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644631) (= lambda!159215 lambda!159206))))

(declare-fun bs!789086 () Bool)

(assert (= bs!789086 (and b!4452022 b!4451968)))

(assert (=> bs!789086 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159215 lambda!159196))))

(assert (=> b!4452022 true))

(declare-fun lt!1644668 () ListMap!2961)

(declare-fun lambda!159216 () Int)

(assert (=> bs!789074 (= (= lt!1644668 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159216 lambda!159203))))

(assert (=> bs!789075 (not (= lambda!159216 lambda!159085))))

(assert (=> bs!789076 (= (= lt!1644668 lt!1644481) (= lambda!159216 lambda!159177))))

(assert (=> bs!789077 (= (= lt!1644668 lt!1644617) (= lambda!159216 lambda!159199))))

(assert (=> b!4452022 (= (= lt!1644668 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159216 lambda!159215))))

(assert (=> bs!789078 (= (= lt!1644668 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159216 lambda!159175))))

(assert (=> bs!789079 (= (= lt!1644668 lt!1644645) (= lambda!159216 lambda!159207))))

(assert (=> bs!789080 (= (= lt!1644668 lt!1644603) (= lambda!159216 lambda!159198))))

(assert (=> bs!789080 (= (= lt!1644668 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159216 lambda!159197))))

(assert (=> bs!789081 (= (= lt!1644668 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159216 lambda!159214))))

(assert (=> bs!789082 (= (= lt!1644668 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159216 lambda!159174))))

(assert (=> bs!789078 (= (= lt!1644668 lt!1644467) (= lambda!159216 lambda!159176))))

(assert (=> bs!789083 (= (= lt!1644668 lt!1644603) (= lambda!159216 lambda!159213))))

(assert (=> bs!789084 (= (= lt!1644668 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159216 lambda!159205))))

(assert (=> bs!789085 (= (= lt!1644668 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159216 lambda!159204))))

(assert (=> bs!789084 (= (= lt!1644668 lt!1644631) (= lambda!159216 lambda!159206))))

(assert (=> bs!789086 (= (= lt!1644668 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159216 lambda!159196))))

(assert (=> b!4452022 true))

(declare-fun bs!789087 () Bool)

(declare-fun d!1357663 () Bool)

(assert (= bs!789087 (and d!1357663 d!1357635)))

(declare-fun lt!1644682 () ListMap!2961)

(declare-fun lambda!159217 () Int)

(assert (=> bs!789087 (= (= lt!1644682 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159217 lambda!159203))))

(declare-fun bs!789088 () Bool)

(assert (= bs!789088 (and d!1357663 d!1357387)))

(assert (=> bs!789088 (not (= lambda!159217 lambda!159085))))

(declare-fun bs!789089 () Bool)

(assert (= bs!789089 (and d!1357663 b!4452022)))

(assert (=> bs!789089 (= (= lt!1644682 lt!1644668) (= lambda!159217 lambda!159216))))

(declare-fun bs!789090 () Bool)

(assert (= bs!789090 (and d!1357663 d!1357447)))

(assert (=> bs!789090 (= (= lt!1644682 lt!1644481) (= lambda!159217 lambda!159177))))

(declare-fun bs!789091 () Bool)

(assert (= bs!789091 (and d!1357663 d!1357603)))

(assert (=> bs!789091 (= (= lt!1644682 lt!1644617) (= lambda!159217 lambda!159199))))

(assert (=> bs!789089 (= (= lt!1644682 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159217 lambda!159215))))

(declare-fun bs!789092 () Bool)

(assert (= bs!789092 (and d!1357663 b!4451737)))

(assert (=> bs!789092 (= (= lt!1644682 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159217 lambda!159175))))

(declare-fun bs!789093 () Bool)

(assert (= bs!789093 (and d!1357663 d!1357645)))

(assert (=> bs!789093 (= (= lt!1644682 lt!1644645) (= lambda!159217 lambda!159207))))

(declare-fun bs!789094 () Bool)

(assert (= bs!789094 (and d!1357663 b!4451965)))

(assert (=> bs!789094 (= (= lt!1644682 lt!1644603) (= lambda!159217 lambda!159198))))

(assert (=> bs!789094 (= (= lt!1644682 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159217 lambda!159197))))

(declare-fun bs!789095 () Bool)

(assert (= bs!789095 (and d!1357663 b!4452025)))

(assert (=> bs!789095 (= (= lt!1644682 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159217 lambda!159214))))

(declare-fun bs!789096 () Bool)

(assert (= bs!789096 (and d!1357663 b!4451740)))

(assert (=> bs!789096 (= (= lt!1644682 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159217 lambda!159174))))

(assert (=> bs!789092 (= (= lt!1644682 lt!1644467) (= lambda!159217 lambda!159176))))

(declare-fun bs!789097 () Bool)

(assert (= bs!789097 (and d!1357663 d!1357655)))

(assert (=> bs!789097 (= (= lt!1644682 lt!1644603) (= lambda!159217 lambda!159213))))

(declare-fun bs!789098 () Bool)

(assert (= bs!789098 (and d!1357663 b!4451996)))

(assert (=> bs!789098 (= (= lt!1644682 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159217 lambda!159205))))

(declare-fun bs!789099 () Bool)

(assert (= bs!789099 (and d!1357663 b!4451999)))

(assert (=> bs!789099 (= (= lt!1644682 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159217 lambda!159204))))

(assert (=> bs!789098 (= (= lt!1644682 lt!1644631) (= lambda!159217 lambda!159206))))

(declare-fun bs!789100 () Bool)

(assert (= bs!789100 (and d!1357663 b!4451968)))

(assert (=> bs!789100 (= (= lt!1644682 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159217 lambda!159196))))

(assert (=> d!1357663 true))

(declare-fun e!2772281 () ListMap!2961)

(assert (=> b!4452022 (= e!2772281 lt!1644668)))

(declare-fun lt!1644685 () ListMap!2961)

(assert (=> b!4452022 (= lt!1644685 (+!1267 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> b!4452022 (= lt!1644668 (addToMapMapFromBucket!471 (t!356937 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (+!1267 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))))

(declare-fun lt!1644666 () Unit!85492)

(declare-fun call!309842 () Unit!85492)

(assert (=> b!4452022 (= lt!1644666 call!309842)))

(assert (=> b!4452022 (forall!9758 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) lambda!159215)))

(declare-fun lt!1644686 () Unit!85492)

(assert (=> b!4452022 (= lt!1644686 lt!1644666)))

(assert (=> b!4452022 (forall!9758 (toList!3718 lt!1644685) lambda!159216)))

(declare-fun lt!1644674 () Unit!85492)

(declare-fun Unit!85575 () Unit!85492)

(assert (=> b!4452022 (= lt!1644674 Unit!85575)))

(declare-fun call!309843 () Bool)

(assert (=> b!4452022 call!309843))

(declare-fun lt!1644670 () Unit!85492)

(declare-fun Unit!85576 () Unit!85492)

(assert (=> b!4452022 (= lt!1644670 Unit!85576)))

(declare-fun lt!1644676 () Unit!85492)

(declare-fun Unit!85577 () Unit!85492)

(assert (=> b!4452022 (= lt!1644676 Unit!85577)))

(declare-fun lt!1644667 () Unit!85492)

(assert (=> b!4452022 (= lt!1644667 (forallContained!2161 (toList!3718 lt!1644685) lambda!159216 (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> b!4452022 (contains!12462 lt!1644685 (_1!28213 (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(declare-fun lt!1644681 () Unit!85492)

(declare-fun Unit!85578 () Unit!85492)

(assert (=> b!4452022 (= lt!1644681 Unit!85578)))

(assert (=> b!4452022 (contains!12462 lt!1644668 (_1!28213 (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(declare-fun lt!1644675 () Unit!85492)

(declare-fun Unit!85579 () Unit!85492)

(assert (=> b!4452022 (= lt!1644675 Unit!85579)))

(assert (=> b!4452022 (forall!9758 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))) lambda!159216)))

(declare-fun lt!1644673 () Unit!85492)

(declare-fun Unit!85580 () Unit!85492)

(assert (=> b!4452022 (= lt!1644673 Unit!85580)))

(assert (=> b!4452022 (forall!9758 (toList!3718 lt!1644685) lambda!159216)))

(declare-fun lt!1644679 () Unit!85492)

(declare-fun Unit!85581 () Unit!85492)

(assert (=> b!4452022 (= lt!1644679 Unit!85581)))

(declare-fun lt!1644678 () Unit!85492)

(declare-fun Unit!85582 () Unit!85492)

(assert (=> b!4452022 (= lt!1644678 Unit!85582)))

(declare-fun lt!1644684 () Unit!85492)

(assert (=> b!4452022 (= lt!1644684 (addForallContainsKeyThenBeforeAdding!217 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644668 (_1!28213 (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (_2!28213 (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))))

(assert (=> b!4452022 (forall!9758 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) lambda!159216)))

(declare-fun lt!1644671 () Unit!85492)

(assert (=> b!4452022 (= lt!1644671 lt!1644684)))

(assert (=> b!4452022 (forall!9758 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) lambda!159216)))

(declare-fun lt!1644677 () Unit!85492)

(declare-fun Unit!85583 () Unit!85492)

(assert (=> b!4452022 (= lt!1644677 Unit!85583)))

(declare-fun res!1844829 () Bool)

(declare-fun call!309841 () Bool)

(assert (=> b!4452022 (= res!1844829 call!309841)))

(declare-fun e!2772279 () Bool)

(assert (=> b!4452022 (=> (not res!1844829) (not e!2772279))))

(assert (=> b!4452022 e!2772279))

(declare-fun lt!1644669 () Unit!85492)

(declare-fun Unit!85584 () Unit!85492)

(assert (=> b!4452022 (= lt!1644669 Unit!85584)))

(declare-fun b!4452023 () Bool)

(declare-fun res!1844831 () Bool)

(declare-fun e!2772280 () Bool)

(assert (=> b!4452023 (=> (not res!1844831) (not e!2772280))))

(assert (=> b!4452023 (= res!1844831 (forall!9758 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) lambda!159217))))

(declare-fun c!757972 () Bool)

(declare-fun bm!309836 () Bool)

(assert (=> bm!309836 (= call!309841 (forall!9758 (ite c!757972 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (ite c!757972 lambda!159214 lambda!159216)))))

(declare-fun b!4452024 () Bool)

(assert (=> b!4452024 (= e!2772280 (invariantList!860 (toList!3718 lt!1644682)))))

(declare-fun bm!309837 () Bool)

(assert (=> bm!309837 (= call!309842 (lemmaContainsAllItsOwnKeys!217 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(declare-fun bm!309838 () Bool)

(assert (=> bm!309838 (= call!309843 (forall!9758 (ite c!757972 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (t!356937 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (ite c!757972 lambda!159214 lambda!159216)))))

(assert (=> d!1357663 e!2772280))

(declare-fun res!1844830 () Bool)

(assert (=> d!1357663 (=> (not res!1844830) (not e!2772280))))

(assert (=> d!1357663 (= res!1844830 (forall!9758 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))) lambda!159217))))

(assert (=> d!1357663 (= lt!1644682 e!2772281)))

(assert (=> d!1357663 (= c!757972 ((_ is Nil!49867) (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(assert (=> d!1357663 (noDuplicateKeys!865 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))

(assert (=> d!1357663 (= (addToMapMapFromBucket!471 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) lt!1644682)))

(assert (=> b!4452025 (= e!2772281 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(declare-fun lt!1644672 () Unit!85492)

(assert (=> b!4452025 (= lt!1644672 call!309842)))

(assert (=> b!4452025 call!309841))

(declare-fun lt!1644683 () Unit!85492)

(assert (=> b!4452025 (= lt!1644683 lt!1644672)))

(assert (=> b!4452025 call!309843))

(declare-fun lt!1644680 () Unit!85492)

(declare-fun Unit!85585 () Unit!85492)

(assert (=> b!4452025 (= lt!1644680 Unit!85585)))

(declare-fun b!4452026 () Bool)

(assert (=> b!4452026 (= e!2772279 (forall!9758 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) lambda!159216))))

(assert (= (and d!1357663 c!757972) b!4452025))

(assert (= (and d!1357663 (not c!757972)) b!4452022))

(assert (= (and b!4452022 res!1844829) b!4452026))

(assert (= (or b!4452025 b!4452022) bm!309837))

(assert (= (or b!4452025 b!4452022) bm!309836))

(assert (= (or b!4452025 b!4452022) bm!309838))

(assert (= (and d!1357663 res!1844830) b!4452023))

(assert (= (and b!4452023 res!1844831) b!4452024))

(declare-fun m!5151945 () Bool)

(assert (=> bm!309838 m!5151945))

(declare-fun m!5151947 () Bool)

(assert (=> b!4452023 m!5151947))

(declare-fun m!5151949 () Bool)

(assert (=> b!4452026 m!5151949))

(declare-fun m!5151951 () Bool)

(assert (=> bm!309836 m!5151951))

(declare-fun m!5151953 () Bool)

(assert (=> d!1357663 m!5151953))

(assert (=> d!1357663 m!5151817))

(declare-fun m!5151955 () Bool)

(assert (=> b!4452024 m!5151955))

(assert (=> bm!309837 m!5151797))

(declare-fun m!5151957 () Bool)

(assert (=> bm!309837 m!5151957))

(declare-fun m!5151959 () Bool)

(assert (=> b!4452022 m!5151959))

(assert (=> b!4452022 m!5151949))

(assert (=> b!4452022 m!5151797))

(declare-fun m!5151961 () Bool)

(assert (=> b!4452022 m!5151961))

(declare-fun m!5151963 () Bool)

(assert (=> b!4452022 m!5151963))

(declare-fun m!5151965 () Bool)

(assert (=> b!4452022 m!5151965))

(declare-fun m!5151967 () Bool)

(assert (=> b!4452022 m!5151967))

(assert (=> b!4452022 m!5151949))

(declare-fun m!5151969 () Bool)

(assert (=> b!4452022 m!5151969))

(assert (=> b!4452022 m!5151797))

(declare-fun m!5151971 () Bool)

(assert (=> b!4452022 m!5151971))

(assert (=> b!4452022 m!5151971))

(declare-fun m!5151973 () Bool)

(assert (=> b!4452022 m!5151973))

(declare-fun m!5151975 () Bool)

(assert (=> b!4452022 m!5151975))

(assert (=> b!4452022 m!5151967))

(assert (=> b!4451965 d!1357663))

(declare-fun d!1357665 () Bool)

(declare-fun res!1844832 () Bool)

(declare-fun e!2772282 () Bool)

(assert (=> d!1357665 (=> res!1844832 e!2772282)))

(assert (=> d!1357665 (= res!1844832 ((_ is Nil!49867) (_2!28214 (h!55611 (toList!3717 lm!1616)))))))

(assert (=> d!1357665 (= (forall!9758 (_2!28214 (h!55611 (toList!3717 lm!1616))) lambda!159198) e!2772282)))

(declare-fun b!4452027 () Bool)

(declare-fun e!2772283 () Bool)

(assert (=> b!4452027 (= e!2772282 e!2772283)))

(declare-fun res!1844833 () Bool)

(assert (=> b!4452027 (=> (not res!1844833) (not e!2772283))))

(assert (=> b!4452027 (= res!1844833 (dynLambda!20940 lambda!159198 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(declare-fun b!4452028 () Bool)

(assert (=> b!4452028 (= e!2772283 (forall!9758 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))) lambda!159198))))

(assert (= (and d!1357665 (not res!1844832)) b!4452027))

(assert (= (and b!4452027 res!1844833) b!4452028))

(declare-fun b_lambda!147059 () Bool)

(assert (=> (not b_lambda!147059) (not b!4452027)))

(assert (=> b!4452027 m!5151939))

(declare-fun m!5151977 () Bool)

(assert (=> b!4452028 m!5151977))

(assert (=> b!4451965 d!1357665))

(declare-fun d!1357667 () Bool)

(declare-fun res!1844834 () Bool)

(declare-fun e!2772284 () Bool)

(assert (=> d!1357667 (=> res!1844834 e!2772284)))

(assert (=> d!1357667 (= res!1844834 ((_ is Nil!49867) (toList!3718 lt!1644620)))))

(assert (=> d!1357667 (= (forall!9758 (toList!3718 lt!1644620) lambda!159198) e!2772284)))

(declare-fun b!4452029 () Bool)

(declare-fun e!2772285 () Bool)

(assert (=> b!4452029 (= e!2772284 e!2772285)))

(declare-fun res!1844835 () Bool)

(assert (=> b!4452029 (=> (not res!1844835) (not e!2772285))))

(assert (=> b!4452029 (= res!1844835 (dynLambda!20940 lambda!159198 (h!55610 (toList!3718 lt!1644620))))))

(declare-fun b!4452030 () Bool)

(assert (=> b!4452030 (= e!2772285 (forall!9758 (t!356937 (toList!3718 lt!1644620)) lambda!159198))))

(assert (= (and d!1357667 (not res!1844834)) b!4452029))

(assert (= (and b!4452029 res!1844835) b!4452030))

(declare-fun b_lambda!147061 () Bool)

(assert (=> (not b_lambda!147061) (not b!4452029)))

(declare-fun m!5151979 () Bool)

(assert (=> b!4452029 m!5151979))

(declare-fun m!5151981 () Bool)

(assert (=> b!4452030 m!5151981))

(assert (=> b!4451965 d!1357667))

(declare-fun d!1357669 () Bool)

(declare-fun e!2772286 () Bool)

(assert (=> d!1357669 e!2772286))

(declare-fun res!1844836 () Bool)

(assert (=> d!1357669 (=> (not res!1844836) (not e!2772286))))

(declare-fun lt!1644688 () ListMap!2961)

(assert (=> d!1357669 (= res!1844836 (contains!12462 lt!1644688 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(declare-fun lt!1644689 () List!49991)

(assert (=> d!1357669 (= lt!1644688 (ListMap!2962 lt!1644689))))

(declare-fun lt!1644687 () Unit!85492)

(declare-fun lt!1644690 () Unit!85492)

(assert (=> d!1357669 (= lt!1644687 lt!1644690)))

(assert (=> d!1357669 (= (getValueByKey!824 lt!1644689 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (Some!10837 (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> d!1357669 (= lt!1644690 (lemmaContainsTupThenGetReturnValue!539 lt!1644689 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> d!1357669 (= lt!1644689 (insertNoDuplicatedKeys!234 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> d!1357669 (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) lt!1644688)))

(declare-fun b!4452031 () Bool)

(declare-fun res!1844837 () Bool)

(assert (=> b!4452031 (=> (not res!1844837) (not e!2772286))))

(assert (=> b!4452031 (= res!1844837 (= (getValueByKey!824 (toList!3718 lt!1644688) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (Some!10837 (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))))

(declare-fun b!4452032 () Bool)

(assert (=> b!4452032 (= e!2772286 (contains!12466 (toList!3718 lt!1644688) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(assert (= (and d!1357669 res!1844836) b!4452031))

(assert (= (and b!4452031 res!1844837) b!4452032))

(declare-fun m!5151983 () Bool)

(assert (=> d!1357669 m!5151983))

(declare-fun m!5151985 () Bool)

(assert (=> d!1357669 m!5151985))

(declare-fun m!5151987 () Bool)

(assert (=> d!1357669 m!5151987))

(declare-fun m!5151989 () Bool)

(assert (=> d!1357669 m!5151989))

(declare-fun m!5151991 () Bool)

(assert (=> b!4452031 m!5151991))

(declare-fun m!5151993 () Bool)

(assert (=> b!4452032 m!5151993))

(assert (=> b!4451965 d!1357669))

(declare-fun b!4452033 () Bool)

(declare-fun e!2772292 () List!49994)

(assert (=> b!4452033 (= e!2772292 (keys!17104 lt!1644620))))

(declare-fun bm!309839 () Bool)

(declare-fun call!309844 () Bool)

(assert (=> bm!309839 (= call!309844 (contains!12468 e!2772292 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(declare-fun c!757974 () Bool)

(declare-fun c!757975 () Bool)

(assert (=> bm!309839 (= c!757974 c!757975)))

(declare-fun b!4452034 () Bool)

(declare-fun e!2772290 () Unit!85492)

(declare-fun Unit!85586 () Unit!85492)

(assert (=> b!4452034 (= e!2772290 Unit!85586)))

(declare-fun b!4452035 () Bool)

(declare-fun e!2772291 () Bool)

(assert (=> b!4452035 (= e!2772291 (not (contains!12468 (keys!17104 lt!1644620) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))))

(declare-fun b!4452036 () Bool)

(declare-fun e!2772289 () Unit!85492)

(declare-fun lt!1644691 () Unit!85492)

(assert (=> b!4452036 (= e!2772289 lt!1644691)))

(declare-fun lt!1644695 () Unit!85492)

(assert (=> b!4452036 (= lt!1644695 (lemmaContainsKeyImpliesGetValueByKeyDefined!729 (toList!3718 lt!1644620) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> b!4452036 (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644620) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(declare-fun lt!1644696 () Unit!85492)

(assert (=> b!4452036 (= lt!1644696 lt!1644695)))

(assert (=> b!4452036 (= lt!1644691 (lemmaInListThenGetKeysListContains!303 (toList!3718 lt!1644620) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> b!4452036 call!309844))

(declare-fun b!4452037 () Bool)

(assert (=> b!4452037 (= e!2772292 (getKeysList!306 (toList!3718 lt!1644620)))))

(declare-fun b!4452038 () Bool)

(declare-fun e!2772288 () Bool)

(declare-fun e!2772287 () Bool)

(assert (=> b!4452038 (= e!2772288 e!2772287)))

(declare-fun res!1844838 () Bool)

(assert (=> b!4452038 (=> (not res!1844838) (not e!2772287))))

(assert (=> b!4452038 (= res!1844838 (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644620) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))))

(declare-fun b!4452039 () Bool)

(assert (=> b!4452039 false))

(declare-fun lt!1644693 () Unit!85492)

(declare-fun lt!1644692 () Unit!85492)

(assert (=> b!4452039 (= lt!1644693 lt!1644692)))

(assert (=> b!4452039 (containsKey!1296 (toList!3718 lt!1644620) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(assert (=> b!4452039 (= lt!1644692 (lemmaInGetKeysListThenContainsKey!304 (toList!3718 lt!1644620) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(declare-fun Unit!85587 () Unit!85492)

(assert (=> b!4452039 (= e!2772290 Unit!85587)))

(declare-fun d!1357671 () Bool)

(assert (=> d!1357671 e!2772288))

(declare-fun res!1844840 () Bool)

(assert (=> d!1357671 (=> res!1844840 e!2772288)))

(assert (=> d!1357671 (= res!1844840 e!2772291)))

(declare-fun res!1844839 () Bool)

(assert (=> d!1357671 (=> (not res!1844839) (not e!2772291))))

(declare-fun lt!1644697 () Bool)

(assert (=> d!1357671 (= res!1844839 (not lt!1644697))))

(declare-fun lt!1644698 () Bool)

(assert (=> d!1357671 (= lt!1644697 lt!1644698)))

(declare-fun lt!1644694 () Unit!85492)

(assert (=> d!1357671 (= lt!1644694 e!2772289)))

(assert (=> d!1357671 (= c!757975 lt!1644698)))

(assert (=> d!1357671 (= lt!1644698 (containsKey!1296 (toList!3718 lt!1644620) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> d!1357671 (= (contains!12462 lt!1644620 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) lt!1644697)))

(declare-fun b!4452040 () Bool)

(assert (=> b!4452040 (= e!2772289 e!2772290)))

(declare-fun c!757973 () Bool)

(assert (=> b!4452040 (= c!757973 call!309844)))

(declare-fun b!4452041 () Bool)

(assert (=> b!4452041 (= e!2772287 (contains!12468 (keys!17104 lt!1644620) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (= (and d!1357671 c!757975) b!4452036))

(assert (= (and d!1357671 (not c!757975)) b!4452040))

(assert (= (and b!4452040 c!757973) b!4452039))

(assert (= (and b!4452040 (not c!757973)) b!4452034))

(assert (= (or b!4452036 b!4452040) bm!309839))

(assert (= (and bm!309839 c!757974) b!4452037))

(assert (= (and bm!309839 (not c!757974)) b!4452033))

(assert (= (and d!1357671 res!1844839) b!4452035))

(assert (= (and d!1357671 (not res!1844840)) b!4452038))

(assert (= (and b!4452038 res!1844838) b!4452041))

(declare-fun m!5151995 () Bool)

(assert (=> b!4452038 m!5151995))

(assert (=> b!4452038 m!5151995))

(declare-fun m!5151997 () Bool)

(assert (=> b!4452038 m!5151997))

(declare-fun m!5151999 () Bool)

(assert (=> b!4452039 m!5151999))

(declare-fun m!5152001 () Bool)

(assert (=> b!4452039 m!5152001))

(declare-fun m!5152003 () Bool)

(assert (=> bm!309839 m!5152003))

(declare-fun m!5152005 () Bool)

(assert (=> b!4452037 m!5152005))

(declare-fun m!5152007 () Bool)

(assert (=> b!4452035 m!5152007))

(assert (=> b!4452035 m!5152007))

(declare-fun m!5152009 () Bool)

(assert (=> b!4452035 m!5152009))

(assert (=> b!4452033 m!5152007))

(declare-fun m!5152011 () Bool)

(assert (=> b!4452036 m!5152011))

(assert (=> b!4452036 m!5151995))

(assert (=> b!4452036 m!5151995))

(assert (=> b!4452036 m!5151997))

(declare-fun m!5152013 () Bool)

(assert (=> b!4452036 m!5152013))

(assert (=> b!4452041 m!5152007))

(assert (=> b!4452041 m!5152007))

(assert (=> b!4452041 m!5152009))

(assert (=> d!1357671 m!5151999))

(assert (=> b!4451965 d!1357671))

(declare-fun d!1357673 () Bool)

(declare-fun res!1844841 () Bool)

(declare-fun e!2772293 () Bool)

(assert (=> d!1357673 (=> res!1844841 e!2772293)))

(assert (=> d!1357673 (= res!1844841 ((_ is Nil!49867) (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616))))))))

(assert (=> d!1357673 (= (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) lambda!159198) e!2772293)))

(declare-fun b!4452042 () Bool)

(declare-fun e!2772294 () Bool)

(assert (=> b!4452042 (= e!2772293 e!2772294)))

(declare-fun res!1844842 () Bool)

(assert (=> b!4452042 (=> (not res!1844842) (not e!2772294))))

(assert (=> b!4452042 (= res!1844842 (dynLambda!20940 lambda!159198 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))))))))

(declare-fun b!4452043 () Bool)

(assert (=> b!4452043 (= e!2772294 (forall!9758 (t!356937 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616))))) lambda!159198))))

(assert (= (and d!1357673 (not res!1844841)) b!4452042))

(assert (= (and b!4452042 res!1844842) b!4452043))

(declare-fun b_lambda!147063 () Bool)

(assert (=> (not b_lambda!147063) (not b!4452042)))

(declare-fun m!5152015 () Bool)

(assert (=> b!4452042 m!5152015))

(declare-fun m!5152017 () Bool)

(assert (=> b!4452043 m!5152017))

(assert (=> b!4451965 d!1357673))

(declare-fun lt!1644699 () Bool)

(declare-fun d!1357675 () Bool)

(assert (=> d!1357675 (= lt!1644699 (select (content!8035 (keys!17104 lt!1644187)) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun e!2772296 () Bool)

(assert (=> d!1357675 (= lt!1644699 e!2772296)))

(declare-fun res!1844843 () Bool)

(assert (=> d!1357675 (=> (not res!1844843) (not e!2772296))))

(assert (=> d!1357675 (= res!1844843 ((_ is Cons!49870) (keys!17104 lt!1644187)))))

(assert (=> d!1357675 (= (contains!12468 (keys!17104 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))) lt!1644699)))

(declare-fun b!4452044 () Bool)

(declare-fun e!2772295 () Bool)

(assert (=> b!4452044 (= e!2772296 e!2772295)))

(declare-fun res!1844844 () Bool)

(assert (=> b!4452044 (=> res!1844844 e!2772295)))

(assert (=> b!4452044 (= res!1844844 (= (h!55615 (keys!17104 lt!1644187)) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun b!4452045 () Bool)

(assert (=> b!4452045 (= e!2772295 (contains!12468 (t!356940 (keys!17104 lt!1644187)) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(assert (= (and d!1357675 res!1844843) b!4452044))

(assert (= (and b!4452044 (not res!1844844)) b!4452045))

(assert (=> d!1357675 m!5151663))

(declare-fun m!5152019 () Bool)

(assert (=> d!1357675 m!5152019))

(declare-fun m!5152021 () Bool)

(assert (=> d!1357675 m!5152021))

(declare-fun m!5152023 () Bool)

(assert (=> b!4452045 m!5152023))

(assert (=> b!4451843 d!1357675))

(declare-fun bs!789101 () Bool)

(declare-fun b!4452047 () Bool)

(assert (= bs!789101 (and b!4452047 b!4451521)))

(declare-fun lambda!159218 () Int)

(assert (=> bs!789101 (= (= (toList!3718 lt!1644187) (toList!3718 lt!1644116)) (= lambda!159218 lambda!159132))))

(declare-fun bs!789102 () Bool)

(assert (= bs!789102 (and b!4452047 b!4451818)))

(assert (=> bs!789102 (= (= (toList!3718 lt!1644187) (t!356937 (toList!3718 lt!1644116))) (= lambda!159218 lambda!159192))))

(declare-fun bs!789103 () Bool)

(assert (= bs!789103 (and b!4452047 b!4451817)))

(assert (=> bs!789103 (= (= (toList!3718 lt!1644187) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159218 lambda!159193))))

(declare-fun bs!789104 () Bool)

(assert (= bs!789104 (and b!4452047 b!4451816)))

(assert (=> bs!789104 (= (= (toList!3718 lt!1644187) (toList!3718 lt!1644116)) (= lambda!159218 lambda!159194))))

(assert (=> b!4452047 true))

(declare-fun bs!789105 () Bool)

(declare-fun b!4452048 () Bool)

(assert (= bs!789105 (and b!4452048 b!4451522)))

(declare-fun lambda!159219 () Int)

(assert (=> bs!789105 (= lambda!159219 lambda!159133)))

(declare-fun bs!789106 () Bool)

(assert (= bs!789106 (and b!4452048 b!4451814)))

(assert (=> bs!789106 (= lambda!159219 lambda!159195)))

(declare-fun d!1357677 () Bool)

(declare-fun e!2772297 () Bool)

(assert (=> d!1357677 e!2772297))

(declare-fun res!1844847 () Bool)

(assert (=> d!1357677 (=> (not res!1844847) (not e!2772297))))

(declare-fun lt!1644700 () List!49994)

(assert (=> d!1357677 (= res!1844847 (noDuplicate!684 lt!1644700))))

(assert (=> d!1357677 (= lt!1644700 (getKeysList!306 (toList!3718 lt!1644187)))))

(assert (=> d!1357677 (= (keys!17104 lt!1644187) lt!1644700)))

(declare-fun b!4452046 () Bool)

(declare-fun res!1844845 () Bool)

(assert (=> b!4452046 (=> (not res!1844845) (not e!2772297))))

(assert (=> b!4452046 (= res!1844845 (= (length!224 lt!1644700) (length!225 (toList!3718 lt!1644187))))))

(declare-fun res!1844846 () Bool)

(assert (=> b!4452047 (=> (not res!1844846) (not e!2772297))))

(assert (=> b!4452047 (= res!1844846 (forall!9760 lt!1644700 lambda!159218))))

(assert (=> b!4452048 (= e!2772297 (= (content!8035 lt!1644700) (content!8035 (map!10914 (toList!3718 lt!1644187) lambda!159219))))))

(assert (= (and d!1357677 res!1844847) b!4452046))

(assert (= (and b!4452046 res!1844845) b!4452047))

(assert (= (and b!4452047 res!1844846) b!4452048))

(declare-fun m!5152025 () Bool)

(assert (=> d!1357677 m!5152025))

(assert (=> d!1357677 m!5151661))

(declare-fun m!5152027 () Bool)

(assert (=> b!4452046 m!5152027))

(declare-fun m!5152029 () Bool)

(assert (=> b!4452046 m!5152029))

(declare-fun m!5152031 () Bool)

(assert (=> b!4452047 m!5152031))

(declare-fun m!5152033 () Bool)

(assert (=> b!4452048 m!5152033))

(declare-fun m!5152035 () Bool)

(assert (=> b!4452048 m!5152035))

(assert (=> b!4452048 m!5152035))

(declare-fun m!5152037 () Bool)

(assert (=> b!4452048 m!5152037))

(assert (=> b!4451843 d!1357677))

(declare-fun d!1357679 () Bool)

(declare-fun res!1844848 () Bool)

(declare-fun e!2772298 () Bool)

(assert (=> d!1357679 (=> res!1844848 e!2772298)))

(assert (=> d!1357679 (= res!1844848 ((_ is Nil!49867) (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119))))))))

(assert (=> d!1357679 (= (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) lambda!159176) e!2772298)))

(declare-fun b!4452049 () Bool)

(declare-fun e!2772299 () Bool)

(assert (=> b!4452049 (= e!2772298 e!2772299)))

(declare-fun res!1844849 () Bool)

(assert (=> b!4452049 (=> (not res!1844849) (not e!2772299))))

(assert (=> b!4452049 (= res!1844849 (dynLambda!20940 lambda!159176 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))))))))

(declare-fun b!4452050 () Bool)

(assert (=> b!4452050 (= e!2772299 (forall!9758 (t!356937 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119))))) lambda!159176))))

(assert (= (and d!1357679 (not res!1844848)) b!4452049))

(assert (= (and b!4452049 res!1844849) b!4452050))

(declare-fun b_lambda!147065 () Bool)

(assert (=> (not b_lambda!147065) (not b!4452049)))

(declare-fun m!5152039 () Bool)

(assert (=> b!4452049 m!5152039))

(declare-fun m!5152041 () Bool)

(assert (=> b!4452050 m!5152041))

(assert (=> b!4451741 d!1357679))

(declare-fun d!1357681 () Bool)

(assert (=> d!1357681 (subseq!629 lt!1644579 lt!1644579)))

(declare-fun lt!1644703 () Unit!85492)

(declare-fun choose!28343 (List!49994) Unit!85492)

(assert (=> d!1357681 (= lt!1644703 (choose!28343 lt!1644579))))

(assert (=> d!1357681 (= (lemmaSubseqRefl!113 lt!1644579) lt!1644703)))

(declare-fun bs!789107 () Bool)

(assert (= bs!789107 d!1357681))

(assert (=> bs!789107 m!5151701))

(declare-fun m!5152043 () Bool)

(assert (=> bs!789107 m!5152043))

(assert (=> b!4451884 d!1357681))

(declare-fun b!4452061 () Bool)

(declare-fun e!2772311 () Bool)

(assert (=> b!4452061 (= e!2772311 (subseq!629 (t!356940 lt!1644579) (t!356940 lt!1644579)))))

(declare-fun b!4452060 () Bool)

(declare-fun e!2772310 () Bool)

(declare-fun e!2772308 () Bool)

(assert (=> b!4452060 (= e!2772310 e!2772308)))

(declare-fun res!1844859 () Bool)

(assert (=> b!4452060 (=> res!1844859 e!2772308)))

(assert (=> b!4452060 (= res!1844859 e!2772311)))

(declare-fun res!1844861 () Bool)

(assert (=> b!4452060 (=> (not res!1844861) (not e!2772311))))

(assert (=> b!4452060 (= res!1844861 (= (h!55615 lt!1644579) (h!55615 lt!1644579)))))

(declare-fun b!4452062 () Bool)

(assert (=> b!4452062 (= e!2772308 (subseq!629 lt!1644579 (t!356940 lt!1644579)))))

(declare-fun b!4452059 () Bool)

(declare-fun e!2772309 () Bool)

(assert (=> b!4452059 (= e!2772309 e!2772310)))

(declare-fun res!1844858 () Bool)

(assert (=> b!4452059 (=> (not res!1844858) (not e!2772310))))

(assert (=> b!4452059 (= res!1844858 ((_ is Cons!49870) lt!1644579))))

(declare-fun d!1357683 () Bool)

(declare-fun res!1844860 () Bool)

(assert (=> d!1357683 (=> res!1844860 e!2772309)))

(assert (=> d!1357683 (= res!1844860 ((_ is Nil!49870) lt!1644579))))

(assert (=> d!1357683 (= (subseq!629 lt!1644579 lt!1644579) e!2772309)))

(assert (= (and d!1357683 (not res!1844860)) b!4452059))

(assert (= (and b!4452059 res!1844858) b!4452060))

(assert (= (and b!4452060 res!1844861) b!4452061))

(assert (= (and b!4452060 (not res!1844859)) b!4452062))

(declare-fun m!5152045 () Bool)

(assert (=> b!4452061 m!5152045))

(declare-fun m!5152047 () Bool)

(assert (=> b!4452062 m!5152047))

(assert (=> b!4451884 d!1357683))

(declare-fun d!1357685 () Bool)

(declare-fun res!1844866 () Bool)

(declare-fun e!2772316 () Bool)

(assert (=> d!1357685 (=> res!1844866 e!2772316)))

(assert (=> d!1357685 (= res!1844866 ((_ is Nil!49870) lt!1644332))))

(assert (=> d!1357685 (= (noDuplicate!684 lt!1644332) e!2772316)))

(declare-fun b!4452067 () Bool)

(declare-fun e!2772317 () Bool)

(assert (=> b!4452067 (= e!2772316 e!2772317)))

(declare-fun res!1844867 () Bool)

(assert (=> b!4452067 (=> (not res!1844867) (not e!2772317))))

(assert (=> b!4452067 (= res!1844867 (not (contains!12468 (t!356940 lt!1644332) (h!55615 lt!1644332))))))

(declare-fun b!4452068 () Bool)

(assert (=> b!4452068 (= e!2772317 (noDuplicate!684 (t!356940 lt!1644332)))))

(assert (= (and d!1357685 (not res!1844866)) b!4452067))

(assert (= (and b!4452067 res!1844867) b!4452068))

(declare-fun m!5152049 () Bool)

(assert (=> b!4452067 m!5152049))

(declare-fun m!5152051 () Bool)

(assert (=> b!4452068 m!5152051))

(assert (=> d!1357435 d!1357685))

(assert (=> d!1357435 d!1357557))

(declare-fun d!1357687 () Bool)

(declare-fun res!1844872 () Bool)

(declare-fun e!2772322 () Bool)

(assert (=> d!1357687 (=> res!1844872 e!2772322)))

(assert (=> d!1357687 (= res!1844872 ((_ is Nil!49870) lt!1644535))))

(assert (=> d!1357687 (= (forall!9760 lt!1644535 lambda!159194) e!2772322)))

(declare-fun b!4452073 () Bool)

(declare-fun e!2772323 () Bool)

(assert (=> b!4452073 (= e!2772322 e!2772323)))

(declare-fun res!1844873 () Bool)

(assert (=> b!4452073 (=> (not res!1844873) (not e!2772323))))

(declare-fun dynLambda!20942 (Int K!11235) Bool)

(assert (=> b!4452073 (= res!1844873 (dynLambda!20942 lambda!159194 (h!55615 lt!1644535)))))

(declare-fun b!4452074 () Bool)

(assert (=> b!4452074 (= e!2772323 (forall!9760 (t!356940 lt!1644535) lambda!159194))))

(assert (= (and d!1357687 (not res!1844872)) b!4452073))

(assert (= (and b!4452073 res!1844873) b!4452074))

(declare-fun b_lambda!147067 () Bool)

(assert (=> (not b_lambda!147067) (not b!4452073)))

(declare-fun m!5152053 () Bool)

(assert (=> b!4452073 m!5152053))

(declare-fun m!5152055 () Bool)

(assert (=> b!4452074 m!5152055))

(assert (=> b!4451816 d!1357687))

(declare-fun d!1357689 () Bool)

(assert (=> d!1357689 (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun lt!1644704 () Unit!85492)

(assert (=> d!1357689 (= lt!1644704 (choose!28332 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(assert (=> d!1357689 (invariantList!860 (toList!3718 lt!1644187))))

(assert (=> d!1357689 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!729 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))) lt!1644704)))

(declare-fun bs!789108 () Bool)

(assert (= bs!789108 d!1357689))

(assert (=> bs!789108 m!5151061))

(assert (=> bs!789108 m!5151061))

(assert (=> bs!789108 m!5151653))

(declare-fun m!5152057 () Bool)

(assert (=> bs!789108 m!5152057))

(declare-fun m!5152059 () Bool)

(assert (=> bs!789108 m!5152059))

(assert (=> b!4451838 d!1357689))

(declare-fun d!1357691 () Bool)

(assert (=> d!1357691 (= (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93)))) (not (isEmpty!28406 (getValueByKey!824 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))))

(declare-fun bs!789109 () Bool)

(assert (= bs!789109 d!1357691))

(assert (=> bs!789109 m!5151061))

(declare-fun m!5152061 () Bool)

(assert (=> bs!789109 m!5152061))

(assert (=> b!4451838 d!1357691))

(assert (=> b!4451838 d!1357419))

(declare-fun d!1357693 () Bool)

(assert (=> d!1357693 (contains!12468 (getKeysList!306 (toList!3718 lt!1644187)) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))

(declare-fun lt!1644705 () Unit!85492)

(assert (=> d!1357693 (= lt!1644705 (choose!28333 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(assert (=> d!1357693 (invariantList!860 (toList!3718 lt!1644187))))

(assert (=> d!1357693 (= (lemmaInListThenGetKeysListContains!303 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))) lt!1644705)))

(declare-fun bs!789110 () Bool)

(assert (= bs!789110 d!1357693))

(assert (=> bs!789110 m!5151661))

(assert (=> bs!789110 m!5151661))

(declare-fun m!5152063 () Bool)

(assert (=> bs!789110 m!5152063))

(declare-fun m!5152065 () Bool)

(assert (=> bs!789110 m!5152065))

(assert (=> bs!789110 m!5152059))

(assert (=> b!4451838 d!1357693))

(declare-fun d!1357695 () Bool)

(declare-fun res!1844874 () Bool)

(declare-fun e!2772324 () Bool)

(assert (=> d!1357695 (=> res!1844874 e!2772324)))

(assert (=> d!1357695 (= res!1844874 ((_ is Nil!49867) (ite c!757904 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(assert (=> d!1357695 (= (forall!9758 (ite c!757904 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (_2!28214 (h!55611 (toList!3717 lt!1644119)))) (ite c!757904 lambda!159174 lambda!159176)) e!2772324)))

(declare-fun b!4452075 () Bool)

(declare-fun e!2772325 () Bool)

(assert (=> b!4452075 (= e!2772324 e!2772325)))

(declare-fun res!1844875 () Bool)

(assert (=> b!4452075 (=> (not res!1844875) (not e!2772325))))

(assert (=> b!4452075 (= res!1844875 (dynLambda!20940 (ite c!757904 lambda!159174 lambda!159176) (h!55610 (ite c!757904 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(declare-fun b!4452076 () Bool)

(assert (=> b!4452076 (= e!2772325 (forall!9758 (t!356937 (ite c!757904 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (ite c!757904 lambda!159174 lambda!159176)))))

(assert (= (and d!1357695 (not res!1844874)) b!4452075))

(assert (= (and b!4452075 res!1844875) b!4452076))

(declare-fun b_lambda!147069 () Bool)

(assert (=> (not b_lambda!147069) (not b!4452075)))

(declare-fun m!5152067 () Bool)

(assert (=> b!4452075 m!5152067))

(declare-fun m!5152069 () Bool)

(assert (=> b!4452076 m!5152069))

(assert (=> bm!309798 d!1357695))

(declare-fun d!1357697 () Bool)

(declare-fun res!1844876 () Bool)

(declare-fun e!2772326 () Bool)

(assert (=> d!1357697 (=> res!1844876 e!2772326)))

(assert (=> d!1357697 (= res!1844876 (not ((_ is Cons!49867) (t!356937 (_2!28214 (tuple2!49841 hash!366 newBucket!194))))))))

(assert (=> d!1357697 (= (noDuplicateKeys!865 (t!356937 (_2!28214 (tuple2!49841 hash!366 newBucket!194)))) e!2772326)))

(declare-fun b!4452077 () Bool)

(declare-fun e!2772327 () Bool)

(assert (=> b!4452077 (= e!2772326 e!2772327)))

(declare-fun res!1844877 () Bool)

(assert (=> b!4452077 (=> (not res!1844877) (not e!2772327))))

(assert (=> b!4452077 (= res!1844877 (not (containsKey!1294 (t!356937 (t!356937 (_2!28214 (tuple2!49841 hash!366 newBucket!194)))) (_1!28213 (h!55610 (t!356937 (_2!28214 (tuple2!49841 hash!366 newBucket!194))))))))))

(declare-fun b!4452078 () Bool)

(assert (=> b!4452078 (= e!2772327 (noDuplicateKeys!865 (t!356937 (t!356937 (_2!28214 (tuple2!49841 hash!366 newBucket!194))))))))

(assert (= (and d!1357697 (not res!1844876)) b!4452077))

(assert (= (and b!4452077 res!1844877) b!4452078))

(declare-fun m!5152071 () Bool)

(assert (=> b!4452077 m!5152071))

(declare-fun m!5152073 () Bool)

(assert (=> b!4452078 m!5152073))

(assert (=> b!4451946 d!1357697))

(declare-fun d!1357699 () Bool)

(declare-fun res!1844878 () Bool)

(declare-fun e!2772328 () Bool)

(assert (=> d!1357699 (=> res!1844878 e!2772328)))

(assert (=> d!1357699 (= res!1844878 (and ((_ is Cons!49868) lt!1644599) (= (_1!28214 (h!55611 lt!1644599)) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (=> d!1357699 (= (containsKey!1295 lt!1644599 (_1!28214 (tuple2!49841 hash!366 newBucket!194))) e!2772328)))

(declare-fun b!4452079 () Bool)

(declare-fun e!2772329 () Bool)

(assert (=> b!4452079 (= e!2772328 e!2772329)))

(declare-fun res!1844879 () Bool)

(assert (=> b!4452079 (=> (not res!1844879) (not e!2772329))))

(assert (=> b!4452079 (= res!1844879 (and (or (not ((_ is Cons!49868) lt!1644599)) (bvsle (_1!28214 (h!55611 lt!1644599)) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))) ((_ is Cons!49868) lt!1644599) (bvslt (_1!28214 (h!55611 lt!1644599)) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(declare-fun b!4452080 () Bool)

(assert (=> b!4452080 (= e!2772329 (containsKey!1295 (t!356938 lt!1644599) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(assert (= (and d!1357699 (not res!1844878)) b!4452079))

(assert (= (and b!4452079 res!1844879) b!4452080))

(declare-fun m!5152075 () Bool)

(assert (=> b!4452080 m!5152075))

(assert (=> b!4451942 d!1357699))

(declare-fun d!1357701 () Bool)

(declare-fun lt!1644706 () Bool)

(assert (=> d!1357701 (= lt!1644706 (select (content!8035 (t!356940 e!2771879)) key!3717))))

(declare-fun e!2772331 () Bool)

(assert (=> d!1357701 (= lt!1644706 e!2772331)))

(declare-fun res!1844880 () Bool)

(assert (=> d!1357701 (=> (not res!1844880) (not e!2772331))))

(assert (=> d!1357701 (= res!1844880 ((_ is Cons!49870) (t!356940 e!2771879)))))

(assert (=> d!1357701 (= (contains!12468 (t!356940 e!2771879) key!3717) lt!1644706)))

(declare-fun b!4452081 () Bool)

(declare-fun e!2772330 () Bool)

(assert (=> b!4452081 (= e!2772331 e!2772330)))

(declare-fun res!1844881 () Bool)

(assert (=> b!4452081 (=> res!1844881 e!2772330)))

(assert (=> b!4452081 (= res!1844881 (= (h!55615 (t!356940 e!2771879)) key!3717))))

(declare-fun b!4452082 () Bool)

(assert (=> b!4452082 (= e!2772330 (contains!12468 (t!356940 (t!356940 e!2771879)) key!3717))))

(assert (= (and d!1357701 res!1844880) b!4452081))

(assert (= (and b!4452081 (not res!1844881)) b!4452082))

(declare-fun m!5152077 () Bool)

(assert (=> d!1357701 m!5152077))

(declare-fun m!5152079 () Bool)

(assert (=> d!1357701 m!5152079))

(declare-fun m!5152081 () Bool)

(assert (=> b!4452082 m!5152081))

(assert (=> b!4451950 d!1357701))

(declare-fun d!1357703 () Bool)

(declare-fun res!1844882 () Bool)

(declare-fun e!2772332 () Bool)

(assert (=> d!1357703 (=> res!1844882 e!2772332)))

(assert (=> d!1357703 (= res!1844882 (not ((_ is Cons!49867) (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> d!1357703 (= (noDuplicateKeys!865 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616))))) e!2772332)))

(declare-fun b!4452083 () Bool)

(declare-fun e!2772333 () Bool)

(assert (=> b!4452083 (= e!2772332 e!2772333)))

(declare-fun res!1844883 () Bool)

(assert (=> b!4452083 (=> (not res!1844883) (not e!2772333))))

(assert (=> b!4452083 (= res!1844883 (not (containsKey!1294 (t!356937 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (_1!28213 (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))))

(declare-fun b!4452084 () Bool)

(assert (=> b!4452084 (= e!2772333 (noDuplicateKeys!865 (t!356937 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (= (and d!1357703 (not res!1844882)) b!4452083))

(assert (= (and b!4452083 res!1844883) b!4452084))

(declare-fun m!5152083 () Bool)

(assert (=> b!4452083 m!5152083))

(declare-fun m!5152085 () Bool)

(assert (=> b!4452084 m!5152085))

(assert (=> b!4451976 d!1357703))

(declare-fun d!1357705 () Bool)

(declare-fun res!1844884 () Bool)

(declare-fun e!2772334 () Bool)

(assert (=> d!1357705 (=> res!1844884 e!2772334)))

(assert (=> d!1357705 (= res!1844884 ((_ is Nil!49868) (t!356938 (toList!3717 lm!1616))))))

(assert (=> d!1357705 (= (forall!9756 (t!356938 (toList!3717 lm!1616)) lambda!159088) e!2772334)))

(declare-fun b!4452085 () Bool)

(declare-fun e!2772335 () Bool)

(assert (=> b!4452085 (= e!2772334 e!2772335)))

(declare-fun res!1844885 () Bool)

(assert (=> b!4452085 (=> (not res!1844885) (not e!2772335))))

(assert (=> b!4452085 (= res!1844885 (dynLambda!20938 lambda!159088 (h!55611 (t!356938 (toList!3717 lm!1616)))))))

(declare-fun b!4452086 () Bool)

(assert (=> b!4452086 (= e!2772335 (forall!9756 (t!356938 (t!356938 (toList!3717 lm!1616))) lambda!159088))))

(assert (= (and d!1357705 (not res!1844884)) b!4452085))

(assert (= (and b!4452085 res!1844885) b!4452086))

(declare-fun b_lambda!147071 () Bool)

(assert (=> (not b_lambda!147071) (not b!4452085)))

(declare-fun m!5152087 () Bool)

(assert (=> b!4452085 m!5152087))

(declare-fun m!5152089 () Bool)

(assert (=> b!4452086 m!5152089))

(assert (=> b!4451427 d!1357705))

(declare-fun d!1357707 () Bool)

(declare-fun res!1844886 () Bool)

(declare-fun e!2772336 () Bool)

(assert (=> d!1357707 (=> res!1844886 e!2772336)))

(assert (=> d!1357707 (= res!1844886 (or ((_ is Nil!49868) (t!356938 (toList!3717 lm!1616))) ((_ is Nil!49868) (t!356938 (t!356938 (toList!3717 lm!1616))))))))

(assert (=> d!1357707 (= (isStrictlySorted!285 (t!356938 (toList!3717 lm!1616))) e!2772336)))

(declare-fun b!4452087 () Bool)

(declare-fun e!2772337 () Bool)

(assert (=> b!4452087 (= e!2772336 e!2772337)))

(declare-fun res!1844887 () Bool)

(assert (=> b!4452087 (=> (not res!1844887) (not e!2772337))))

(assert (=> b!4452087 (= res!1844887 (bvslt (_1!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))) (_1!28214 (h!55611 (t!356938 (t!356938 (toList!3717 lm!1616)))))))))

(declare-fun b!4452088 () Bool)

(assert (=> b!4452088 (= e!2772337 (isStrictlySorted!285 (t!356938 (t!356938 (toList!3717 lm!1616)))))))

(assert (= (and d!1357707 (not res!1844886)) b!4452087))

(assert (= (and b!4452087 res!1844887) b!4452088))

(declare-fun m!5152091 () Bool)

(assert (=> b!4452088 m!5152091))

(assert (=> b!4451830 d!1357707))

(declare-fun b!4452089 () Bool)

(declare-fun e!2772342 () List!49991)

(declare-fun lt!1644714 () List!49991)

(assert (=> b!4452089 (= e!2772342 lt!1644714)))

(declare-fun call!309848 () List!49991)

(assert (=> b!4452089 (= lt!1644714 call!309848)))

(declare-fun c!757978 () Bool)

(assert (=> b!4452089 (= c!757978 (containsKey!1296 (insertNoDuplicatedKeys!234 (t!356937 (t!356937 (toList!3718 lt!1644116))) (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))) (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644116))))))))

(declare-fun lt!1644716 () Unit!85492)

(declare-fun e!2772338 () Unit!85492)

(assert (=> b!4452089 (= lt!1644716 e!2772338)))

(declare-fun bm!309840 () Bool)

(declare-fun call!309845 () List!49991)

(assert (=> bm!309840 (= call!309848 call!309845)))

(declare-fun c!757977 () Bool)

(declare-fun c!757976 () Bool)

(assert (=> bm!309840 (= c!757977 c!757976)))

(declare-fun b!4452090 () Bool)

(assert (=> b!4452090 (= c!757976 ((_ is Cons!49867) (t!356937 (toList!3718 lt!1644116))))))

(declare-fun e!2772344 () List!49991)

(assert (=> b!4452090 (= e!2772344 e!2772342)))

(declare-fun b!4452091 () Bool)

(declare-fun e!2772341 () List!49991)

(declare-fun call!309846 () List!49991)

(assert (=> b!4452091 (= e!2772341 call!309846)))

(declare-fun lt!1644707 () List!49994)

(declare-fun call!309847 () List!49994)

(assert (=> b!4452091 (= lt!1644707 call!309847)))

(declare-fun lt!1644711 () Unit!85492)

(assert (=> b!4452091 (= lt!1644711 (lemmaSubseqRefl!113 lt!1644707))))

(assert (=> b!4452091 (subseq!629 lt!1644707 lt!1644707)))

(declare-fun lt!1644712 () Unit!85492)

(assert (=> b!4452091 (= lt!1644712 lt!1644711)))

(declare-fun b!4452092 () Bool)

(declare-fun e!2772339 () Bool)

(assert (=> b!4452092 (= e!2772339 (not (containsKey!1296 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))))

(declare-fun b!4452093 () Bool)

(assert (=> b!4452093 false))

(declare-fun lt!1644717 () Unit!85492)

(declare-fun lt!1644710 () Unit!85492)

(assert (=> b!4452093 (= lt!1644717 lt!1644710)))

(assert (=> b!4452093 (containsKey!1296 (t!356937 (t!356937 (toList!3718 lt!1644116))) (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644116)))))))

(assert (=> b!4452093 (= lt!1644710 (lemmaInGetKeysListThenContainsKey!304 (t!356937 (t!356937 (toList!3718 lt!1644116))) (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644116))))))))

(declare-fun lt!1644713 () Unit!85492)

(declare-fun lt!1644708 () Unit!85492)

(assert (=> b!4452093 (= lt!1644713 lt!1644708)))

(assert (=> b!4452093 (contains!12468 call!309847 (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644116)))))))

(declare-fun lt!1644709 () List!49991)

(assert (=> b!4452093 (= lt!1644708 (lemmaInListThenGetKeysListContains!303 lt!1644709 (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644116))))))))

(assert (=> b!4452093 (= lt!1644709 (insertNoDuplicatedKeys!234 (t!356937 (t!356937 (toList!3718 lt!1644116))) (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun Unit!85588 () Unit!85492)

(assert (=> b!4452093 (= e!2772338 Unit!85588)))

(declare-fun b!4452094 () Bool)

(declare-fun res!1844891 () Bool)

(declare-fun e!2772343 () Bool)

(assert (=> b!4452094 (=> (not res!1844891) (not e!2772343))))

(declare-fun lt!1644715 () List!49991)

(assert (=> b!4452094 (= res!1844891 (contains!12466 lt!1644715 (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))))))

(declare-fun b!4452095 () Bool)

(assert (=> b!4452095 (= e!2772341 e!2772344)))

(declare-fun res!1844890 () Bool)

(assert (=> b!4452095 (= res!1844890 ((_ is Cons!49867) (t!356937 (toList!3718 lt!1644116))))))

(assert (=> b!4452095 (=> (not res!1844890) (not e!2772339))))

(declare-fun c!757980 () Bool)

(assert (=> b!4452095 (= c!757980 e!2772339)))

(declare-fun b!4452096 () Bool)

(declare-fun e!2772340 () List!49991)

(assert (=> b!4452096 (= e!2772340 Nil!49867)))

(declare-fun b!4452097 () Bool)

(assert (=> b!4452097 (= e!2772344 call!309845)))

(declare-fun b!4452098 () Bool)

(declare-fun res!1844889 () Bool)

(assert (=> b!4452098 (=> (not res!1844889) (not e!2772343))))

(assert (=> b!4452098 (= res!1844889 (containsKey!1296 lt!1644715 (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun b!4452099 () Bool)

(assert (=> b!4452099 (= e!2772340 (insertNoDuplicatedKeys!234 (t!356937 (t!356937 (toList!3718 lt!1644116))) (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun bm!309841 () Bool)

(declare-fun c!757979 () Bool)

(assert (=> bm!309841 (= call!309846 ($colon$colon!829 (ite c!757979 (t!356937 (t!356937 (toList!3718 lt!1644116))) (ite c!757980 (t!356937 (toList!3718 lt!1644116)) e!2772340)) (ite (or c!757979 c!757980) (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))) (ite c!757976 (h!55610 (t!356937 (toList!3718 lt!1644116))) (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))))))))

(declare-fun b!4452100 () Bool)

(declare-fun Unit!85589 () Unit!85492)

(assert (=> b!4452100 (= e!2772338 Unit!85589)))

(declare-fun bm!309842 () Bool)

(assert (=> bm!309842 (= call!309847 (getKeysList!306 (ite c!757979 (t!356937 (toList!3718 lt!1644116)) lt!1644709)))))

(declare-fun d!1357709 () Bool)

(assert (=> d!1357709 e!2772343))

(declare-fun res!1844888 () Bool)

(assert (=> d!1357709 (=> (not res!1844888) (not e!2772343))))

(assert (=> d!1357709 (= res!1844888 (invariantList!860 lt!1644715))))

(assert (=> d!1357709 (= lt!1644715 e!2772341)))

(assert (=> d!1357709 (= c!757979 (and ((_ is Cons!49867) (t!356937 (toList!3718 lt!1644116))) (= (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644116)))) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))))

(assert (=> d!1357709 (invariantList!860 (t!356937 (toList!3718 lt!1644116)))))

(assert (=> d!1357709 (= (insertNoDuplicatedKeys!234 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))) lt!1644715)))

(declare-fun b!4452101 () Bool)

(assert (=> b!4452101 (= e!2772342 call!309848)))

(declare-fun bm!309843 () Bool)

(assert (=> bm!309843 (= call!309845 call!309846)))

(declare-fun b!4452102 () Bool)

(assert (=> b!4452102 (= e!2772343 (= (content!8035 (getKeysList!306 lt!1644715)) ((_ map or) (content!8035 (getKeysList!306 (t!356937 (toList!3718 lt!1644116)))) (store ((as const (Array K!11235 Bool)) false) (_1!28213 (tuple2!49839 key!3717 newValue!93)) true))))))

(assert (= (and d!1357709 c!757979) b!4452091))

(assert (= (and d!1357709 (not c!757979)) b!4452095))

(assert (= (and b!4452095 res!1844890) b!4452092))

(assert (= (and b!4452095 c!757980) b!4452097))

(assert (= (and b!4452095 (not c!757980)) b!4452090))

(assert (= (and b!4452090 c!757976) b!4452089))

(assert (= (and b!4452090 (not c!757976)) b!4452101))

(assert (= (and b!4452089 c!757978) b!4452093))

(assert (= (and b!4452089 (not c!757978)) b!4452100))

(assert (= (or b!4452089 b!4452101) bm!309840))

(assert (= (and bm!309840 c!757977) b!4452099))

(assert (= (and bm!309840 (not c!757977)) b!4452096))

(assert (= (or b!4452097 bm!309840) bm!309843))

(assert (= (or b!4452091 b!4452093) bm!309842))

(assert (= (or b!4452091 bm!309843) bm!309841))

(assert (= (and d!1357709 res!1844888) b!4452098))

(assert (= (and b!4452098 res!1844889) b!4452094))

(assert (= (and b!4452094 res!1844891) b!4452102))

(declare-fun m!5152093 () Bool)

(assert (=> b!4452089 m!5152093))

(assert (=> b!4452089 m!5152093))

(declare-fun m!5152095 () Bool)

(assert (=> b!4452089 m!5152095))

(declare-fun m!5152097 () Bool)

(assert (=> b!4452092 m!5152097))

(declare-fun m!5152099 () Bool)

(assert (=> b!4452094 m!5152099))

(assert (=> b!4452099 m!5152093))

(assert (=> b!4452102 m!5151689))

(assert (=> b!4452102 m!5151627))

(declare-fun m!5152101 () Bool)

(assert (=> b!4452102 m!5152101))

(assert (=> b!4452102 m!5151627))

(declare-fun m!5152103 () Bool)

(assert (=> b!4452102 m!5152103))

(assert (=> b!4452102 m!5152101))

(declare-fun m!5152105 () Bool)

(assert (=> b!4452102 m!5152105))

(declare-fun m!5152107 () Bool)

(assert (=> bm!309841 m!5152107))

(declare-fun m!5152109 () Bool)

(assert (=> b!4452091 m!5152109))

(declare-fun m!5152111 () Bool)

(assert (=> b!4452091 m!5152111))

(declare-fun m!5152113 () Bool)

(assert (=> b!4452098 m!5152113))

(declare-fun m!5152115 () Bool)

(assert (=> bm!309842 m!5152115))

(declare-fun m!5152117 () Bool)

(assert (=> d!1357709 m!5152117))

(declare-fun m!5152119 () Bool)

(assert (=> d!1357709 m!5152119))

(assert (=> b!4452093 m!5152093))

(declare-fun m!5152121 () Bool)

(assert (=> b!4452093 m!5152121))

(declare-fun m!5152123 () Bool)

(assert (=> b!4452093 m!5152123))

(declare-fun m!5152125 () Bool)

(assert (=> b!4452093 m!5152125))

(declare-fun m!5152127 () Bool)

(assert (=> b!4452093 m!5152127))

(assert (=> b!4451892 d!1357709))

(assert (=> b!4451835 d!1357677))

(declare-fun d!1357711 () Bool)

(declare-fun res!1844892 () Bool)

(declare-fun e!2772345 () Bool)

(assert (=> d!1357711 (=> res!1844892 e!2772345)))

(assert (=> d!1357711 (= res!1844892 (and ((_ is Cons!49867) lt!1644188) (= (_1!28213 (h!55610 lt!1644188)) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))))

(assert (=> d!1357711 (= (containsKey!1296 lt!1644188 (_1!28213 (tuple2!49839 key!3717 newValue!93))) e!2772345)))

(declare-fun b!4452103 () Bool)

(declare-fun e!2772346 () Bool)

(assert (=> b!4452103 (= e!2772345 e!2772346)))

(declare-fun res!1844893 () Bool)

(assert (=> b!4452103 (=> (not res!1844893) (not e!2772346))))

(assert (=> b!4452103 (= res!1844893 ((_ is Cons!49867) lt!1644188))))

(declare-fun b!4452104 () Bool)

(assert (=> b!4452104 (= e!2772346 (containsKey!1296 (t!356937 lt!1644188) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(assert (= (and d!1357711 (not res!1844892)) b!4452103))

(assert (= (and b!4452103 res!1844893) b!4452104))

(declare-fun m!5152129 () Bool)

(assert (=> b!4452104 m!5152129))

(assert (=> b!4451852 d!1357711))

(declare-fun lt!1644718 () Bool)

(declare-fun d!1357713 () Bool)

(assert (=> d!1357713 (= lt!1644718 (select (content!8033 lt!1644587) (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))))))

(declare-fun e!2772347 () Bool)

(assert (=> d!1357713 (= lt!1644718 e!2772347)))

(declare-fun res!1844895 () Bool)

(assert (=> d!1357713 (=> (not res!1844895) (not e!2772347))))

(assert (=> d!1357713 (= res!1844895 ((_ is Cons!49867) lt!1644587))))

(assert (=> d!1357713 (= (contains!12466 lt!1644587 (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))) lt!1644718)))

(declare-fun b!4452105 () Bool)

(declare-fun e!2772348 () Bool)

(assert (=> b!4452105 (= e!2772347 e!2772348)))

(declare-fun res!1844894 () Bool)

(assert (=> b!4452105 (=> res!1844894 e!2772348)))

(assert (=> b!4452105 (= res!1844894 (= (h!55610 lt!1644587) (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))))))

(declare-fun b!4452106 () Bool)

(assert (=> b!4452106 (= e!2772348 (contains!12466 (t!356937 lt!1644587) (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))))))

(assert (= (and d!1357713 res!1844895) b!4452105))

(assert (= (and b!4452105 (not res!1844894)) b!4452106))

(declare-fun m!5152131 () Bool)

(assert (=> d!1357713 m!5152131))

(declare-fun m!5152133 () Bool)

(assert (=> d!1357713 m!5152133))

(declare-fun m!5152135 () Bool)

(assert (=> b!4452106 m!5152135))

(assert (=> b!4451887 d!1357713))

(assert (=> b!4451969 d!1357673))

(declare-fun d!1357715 () Bool)

(declare-fun res!1844896 () Bool)

(declare-fun e!2772349 () Bool)

(assert (=> d!1357715 (=> res!1844896 e!2772349)))

(assert (=> d!1357715 (= res!1844896 (and ((_ is Cons!49868) lt!1644222) (= (_1!28214 (h!55611 lt!1644222)) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (=> d!1357715 (= (containsKey!1295 lt!1644222 (_1!28214 (tuple2!49841 hash!366 newBucket!194))) e!2772349)))

(declare-fun b!4452107 () Bool)

(declare-fun e!2772350 () Bool)

(assert (=> b!4452107 (= e!2772349 e!2772350)))

(declare-fun res!1844897 () Bool)

(assert (=> b!4452107 (=> (not res!1844897) (not e!2772350))))

(assert (=> b!4452107 (= res!1844897 (and (or (not ((_ is Cons!49868) lt!1644222)) (bvsle (_1!28214 (h!55611 lt!1644222)) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))) ((_ is Cons!49868) lt!1644222) (bvslt (_1!28214 (h!55611 lt!1644222)) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(declare-fun b!4452108 () Bool)

(assert (=> b!4452108 (= e!2772350 (containsKey!1295 (t!356938 lt!1644222) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(assert (= (and d!1357715 (not res!1844896)) b!4452107))

(assert (= (and b!4452107 res!1844897) b!4452108))

(declare-fun m!5152137 () Bool)

(assert (=> b!4452108 m!5152137))

(assert (=> b!4451913 d!1357715))

(declare-fun d!1357717 () Bool)

(assert (=> d!1357717 (= (isDefined!8125 (getValueByKey!823 (toList!3717 lt!1644225) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))) (not (isEmpty!28407 (getValueByKey!823 (toList!3717 lt!1644225) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))))

(declare-fun bs!789111 () Bool)

(assert (= bs!789111 d!1357717))

(assert (=> bs!789111 m!5151113))

(declare-fun m!5152139 () Bool)

(assert (=> bs!789111 m!5152139))

(assert (=> b!4451904 d!1357717))

(assert (=> b!4451904 d!1357417))

(declare-fun d!1357719 () Bool)

(assert (=> d!1357719 (= (length!224 lt!1644535) (size!35893 lt!1644535))))

(declare-fun bs!789112 () Bool)

(assert (= bs!789112 d!1357719))

(declare-fun m!5152141 () Bool)

(assert (=> bs!789112 m!5152141))

(assert (=> b!4451820 d!1357719))

(assert (=> b!4451820 d!1357633))

(assert (=> bs!789005 d!1357611))

(declare-fun d!1357721 () Bool)

(assert (=> d!1357721 (= (invariantList!860 (toList!3718 lt!1644508)) (noDuplicatedKeys!199 (toList!3718 lt!1644508)))))

(declare-fun bs!789113 () Bool)

(assert (= bs!789113 d!1357721))

(declare-fun m!5152143 () Bool)

(assert (=> bs!789113 m!5152143))

(assert (=> d!1357519 d!1357721))

(declare-fun d!1357723 () Bool)

(declare-fun res!1844898 () Bool)

(declare-fun e!2772351 () Bool)

(assert (=> d!1357723 (=> res!1844898 e!2772351)))

(assert (=> d!1357723 (= res!1844898 ((_ is Nil!49868) (t!356938 (toList!3717 lt!1644119))))))

(assert (=> d!1357723 (= (forall!9756 (t!356938 (toList!3717 lt!1644119)) lambda!159180) e!2772351)))

(declare-fun b!4452109 () Bool)

(declare-fun e!2772352 () Bool)

(assert (=> b!4452109 (= e!2772351 e!2772352)))

(declare-fun res!1844899 () Bool)

(assert (=> b!4452109 (=> (not res!1844899) (not e!2772352))))

(assert (=> b!4452109 (= res!1844899 (dynLambda!20938 lambda!159180 (h!55611 (t!356938 (toList!3717 lt!1644119)))))))

(declare-fun b!4452110 () Bool)

(assert (=> b!4452110 (= e!2772352 (forall!9756 (t!356938 (t!356938 (toList!3717 lt!1644119))) lambda!159180))))

(assert (= (and d!1357723 (not res!1844898)) b!4452109))

(assert (= (and b!4452109 res!1844899) b!4452110))

(declare-fun b_lambda!147073 () Bool)

(assert (=> (not b_lambda!147073) (not b!4452109)))

(declare-fun m!5152145 () Bool)

(assert (=> b!4452109 m!5152145))

(declare-fun m!5152147 () Bool)

(assert (=> b!4452110 m!5152147))

(assert (=> d!1357519 d!1357723))

(assert (=> d!1357569 d!1357525))

(declare-fun d!1357725 () Bool)

(assert (=> d!1357725 (containsKey!1296 (toList!3718 lt!1644116) key!3717)))

(assert (=> d!1357725 true))

(declare-fun _$15!690 () Unit!85492)

(assert (=> d!1357725 (= (choose!28334 (toList!3718 lt!1644116) key!3717) _$15!690)))

(declare-fun bs!789114 () Bool)

(assert (= bs!789114 d!1357725))

(assert (=> bs!789114 m!5151129))

(assert (=> d!1357569 d!1357725))

(declare-fun d!1357727 () Bool)

(assert (=> d!1357727 (= (invariantList!860 (toList!3718 lt!1644116)) (noDuplicatedKeys!199 (toList!3718 lt!1644116)))))

(declare-fun bs!789115 () Bool)

(assert (= bs!789115 d!1357727))

(declare-fun m!5152149 () Bool)

(assert (=> bs!789115 m!5152149))

(assert (=> d!1357569 d!1357727))

(declare-fun d!1357729 () Bool)

(assert (=> d!1357729 (= (invariantList!860 (toList!3718 lt!1644617)) (noDuplicatedKeys!199 (toList!3718 lt!1644617)))))

(declare-fun bs!789116 () Bool)

(assert (= bs!789116 d!1357729))

(declare-fun m!5152151 () Bool)

(assert (=> bs!789116 m!5152151))

(assert (=> b!4451967 d!1357729))

(declare-fun d!1357731 () Bool)

(declare-fun c!757983 () Bool)

(assert (=> d!1357731 (= c!757983 ((_ is Nil!49868) (toList!3717 lt!1644225)))))

(declare-fun e!2772355 () (InoxSet tuple2!49840))

(assert (=> d!1357731 (= (content!8036 (toList!3717 lt!1644225)) e!2772355)))

(declare-fun b!4452115 () Bool)

(assert (=> b!4452115 (= e!2772355 ((as const (Array tuple2!49840 Bool)) false))))

(declare-fun b!4452116 () Bool)

(assert (=> b!4452116 (= e!2772355 ((_ map or) (store ((as const (Array tuple2!49840 Bool)) false) (h!55611 (toList!3717 lt!1644225)) true) (content!8036 (t!356938 (toList!3717 lt!1644225)))))))

(assert (= (and d!1357731 c!757983) b!4452115))

(assert (= (and d!1357731 (not c!757983)) b!4452116))

(declare-fun m!5152153 () Bool)

(assert (=> b!4452116 m!5152153))

(declare-fun m!5152155 () Bool)

(assert (=> b!4452116 m!5152155))

(assert (=> d!1357531 d!1357731))

(declare-fun d!1357733 () Bool)

(declare-fun res!1844900 () Bool)

(declare-fun e!2772356 () Bool)

(assert (=> d!1357733 (=> res!1844900 e!2772356)))

(assert (=> d!1357733 (= res!1844900 ((_ is Nil!49867) (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119))))))))

(assert (=> d!1357733 (= (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) lambda!159177) e!2772356)))

(declare-fun b!4452117 () Bool)

(declare-fun e!2772357 () Bool)

(assert (=> b!4452117 (= e!2772356 e!2772357)))

(declare-fun res!1844901 () Bool)

(assert (=> b!4452117 (=> (not res!1844901) (not e!2772357))))

(assert (=> b!4452117 (= res!1844901 (dynLambda!20940 lambda!159177 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))))))))

(declare-fun b!4452118 () Bool)

(assert (=> b!4452118 (= e!2772357 (forall!9758 (t!356937 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119))))) lambda!159177))))

(assert (= (and d!1357733 (not res!1844900)) b!4452117))

(assert (= (and b!4452117 res!1844901) b!4452118))

(declare-fun b_lambda!147075 () Bool)

(assert (=> (not b_lambda!147075) (not b!4452117)))

(declare-fun m!5152157 () Bool)

(assert (=> b!4452117 m!5152157))

(declare-fun m!5152159 () Bool)

(assert (=> b!4452118 m!5152159))

(assert (=> b!4451738 d!1357733))

(declare-fun d!1357735 () Bool)

(declare-fun c!757984 () Bool)

(assert (=> d!1357735 (= c!757984 ((_ is Nil!49867) (t!356937 (toList!3718 (extractMap!926 (toList!3717 lt!1644119))))))))

(declare-fun e!2772358 () (InoxSet tuple2!49838))

(assert (=> d!1357735 (= (content!8033 (t!356937 (toList!3718 (extractMap!926 (toList!3717 lt!1644119))))) e!2772358)))

(declare-fun b!4452119 () Bool)

(assert (=> b!4452119 (= e!2772358 ((as const (Array tuple2!49838 Bool)) false))))

(declare-fun b!4452120 () Bool)

(assert (=> b!4452120 (= e!2772358 ((_ map or) (store ((as const (Array tuple2!49838 Bool)) false) (h!55610 (t!356937 (toList!3718 (extractMap!926 (toList!3717 lt!1644119))))) true) (content!8033 (t!356937 (t!356937 (toList!3718 (extractMap!926 (toList!3717 lt!1644119))))))))))

(assert (= (and d!1357735 c!757984) b!4452119))

(assert (= (and d!1357735 (not c!757984)) b!4452120))

(declare-fun m!5152161 () Bool)

(assert (=> b!4452120 m!5152161))

(declare-fun m!5152163 () Bool)

(assert (=> b!4452120 m!5152163))

(assert (=> b!4451962 d!1357735))

(declare-fun bs!789117 () Bool)

(declare-fun d!1357737 () Bool)

(assert (= bs!789117 (and d!1357737 d!1357635)))

(declare-fun lambda!159220 () Int)

(assert (=> bs!789117 (not (= lambda!159220 lambda!159203))))

(declare-fun bs!789118 () Bool)

(assert (= bs!789118 (and d!1357737 d!1357387)))

(assert (=> bs!789118 (= (= (_1!28214 (h!55611 (toList!3717 lm!1616))) hash!366) (= lambda!159220 lambda!159085))))

(declare-fun bs!789119 () Bool)

(assert (= bs!789119 (and d!1357737 b!4452022)))

(assert (=> bs!789119 (not (= lambda!159220 lambda!159216))))

(declare-fun bs!789120 () Bool)

(assert (= bs!789120 (and d!1357737 d!1357447)))

(assert (=> bs!789120 (not (= lambda!159220 lambda!159177))))

(declare-fun bs!789121 () Bool)

(assert (= bs!789121 (and d!1357737 d!1357603)))

(assert (=> bs!789121 (not (= lambda!159220 lambda!159199))))

(declare-fun bs!789122 () Bool)

(assert (= bs!789122 (and d!1357737 b!4451737)))

(assert (=> bs!789122 (not (= lambda!159220 lambda!159175))))

(declare-fun bs!789123 () Bool)

(assert (= bs!789123 (and d!1357737 d!1357645)))

(assert (=> bs!789123 (not (= lambda!159220 lambda!159207))))

(declare-fun bs!789124 () Bool)

(assert (= bs!789124 (and d!1357737 b!4451965)))

(assert (=> bs!789124 (not (= lambda!159220 lambda!159198))))

(assert (=> bs!789124 (not (= lambda!159220 lambda!159197))))

(declare-fun bs!789125 () Bool)

(assert (= bs!789125 (and d!1357737 b!4452025)))

(assert (=> bs!789125 (not (= lambda!159220 lambda!159214))))

(declare-fun bs!789126 () Bool)

(assert (= bs!789126 (and d!1357737 b!4451740)))

(assert (=> bs!789126 (not (= lambda!159220 lambda!159174))))

(assert (=> bs!789122 (not (= lambda!159220 lambda!159176))))

(declare-fun bs!789127 () Bool)

(assert (= bs!789127 (and d!1357737 d!1357663)))

(assert (=> bs!789127 (not (= lambda!159220 lambda!159217))))

(assert (=> bs!789119 (not (= lambda!159220 lambda!159215))))

(declare-fun bs!789128 () Bool)

(assert (= bs!789128 (and d!1357737 d!1357655)))

(assert (=> bs!789128 (not (= lambda!159220 lambda!159213))))

(declare-fun bs!789129 () Bool)

(assert (= bs!789129 (and d!1357737 b!4451996)))

(assert (=> bs!789129 (not (= lambda!159220 lambda!159205))))

(declare-fun bs!789130 () Bool)

(assert (= bs!789130 (and d!1357737 b!4451999)))

(assert (=> bs!789130 (not (= lambda!159220 lambda!159204))))

(assert (=> bs!789129 (not (= lambda!159220 lambda!159206))))

(declare-fun bs!789131 () Bool)

(assert (= bs!789131 (and d!1357737 b!4451968)))

(assert (=> bs!789131 (not (= lambda!159220 lambda!159196))))

(assert (=> d!1357737 true))

(assert (=> d!1357737 true))

(assert (=> d!1357737 (= (allKeysSameHash!825 (_2!28214 (h!55611 (toList!3717 lm!1616))) (_1!28214 (h!55611 (toList!3717 lm!1616))) hashF!1220) (forall!9758 (_2!28214 (h!55611 (toList!3717 lm!1616))) lambda!159220))))

(declare-fun bs!789132 () Bool)

(assert (= bs!789132 d!1357737))

(declare-fun m!5152165 () Bool)

(assert (=> bs!789132 m!5152165))

(assert (=> bs!789004 d!1357737))

(assert (=> b!4451837 d!1357675))

(assert (=> b!4451837 d!1357677))

(declare-fun d!1357739 () Bool)

(assert (=> d!1357739 (= (isEmpty!28407 (getValueByKey!823 (toList!3717 lm!1616) hash!366)) (not ((_ is Some!10836) (getValueByKey!823 (toList!3717 lm!1616) hash!366))))))

(assert (=> d!1357609 d!1357739))

(declare-fun b!4452121 () Bool)

(declare-fun e!2772361 () List!49992)

(declare-fun call!309850 () List!49992)

(assert (=> b!4452121 (= e!2772361 call!309850)))

(declare-fun b!4452122 () Bool)

(declare-fun e!2772360 () List!49992)

(declare-fun call!309851 () List!49992)

(assert (=> b!4452122 (= e!2772360 call!309851)))

(declare-fun e!2772359 () Bool)

(declare-fun lt!1644719 () List!49992)

(declare-fun b!4452123 () Bool)

(assert (=> b!4452123 (= e!2772359 (contains!12467 lt!1644719 (tuple2!49841 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(declare-fun bm!309844 () Bool)

(assert (=> bm!309844 (= call!309850 call!309851)))

(declare-fun b!4452125 () Bool)

(assert (=> b!4452125 (= e!2772361 call!309850)))

(declare-fun bm!309845 () Bool)

(declare-fun call!309849 () List!49992)

(assert (=> bm!309845 (= call!309851 call!309849)))

(declare-fun c!757986 () Bool)

(declare-fun b!4452126 () Bool)

(assert (=> b!4452126 (= c!757986 (and ((_ is Cons!49868) (t!356938 (toList!3717 lm!1616))) (bvsgt (_1!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (=> b!4452126 (= e!2772360 e!2772361)))

(declare-fun e!2772363 () List!49992)

(declare-fun b!4452127 () Bool)

(assert (=> b!4452127 (= e!2772363 (insertStrictlySorted!314 (t!356938 (t!356938 (toList!3717 lm!1616))) (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun c!757987 () Bool)

(declare-fun b!4452124 () Bool)

(assert (=> b!4452124 (= e!2772363 (ite c!757987 (t!356938 (t!356938 (toList!3717 lm!1616))) (ite c!757986 (Cons!49868 (h!55611 (t!356938 (toList!3717 lm!1616))) (t!356938 (t!356938 (toList!3717 lm!1616)))) Nil!49868)))))

(declare-fun d!1357741 () Bool)

(assert (=> d!1357741 e!2772359))

(declare-fun res!1844903 () Bool)

(assert (=> d!1357741 (=> (not res!1844903) (not e!2772359))))

(assert (=> d!1357741 (= res!1844903 (isStrictlySorted!285 lt!1644719))))

(declare-fun e!2772362 () List!49992)

(assert (=> d!1357741 (= lt!1644719 e!2772362)))

(declare-fun c!757985 () Bool)

(assert (=> d!1357741 (= c!757985 (and ((_ is Cons!49868) (t!356938 (toList!3717 lm!1616))) (bvslt (_1!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (=> d!1357741 (isStrictlySorted!285 (t!356938 (toList!3717 lm!1616)))))

(assert (=> d!1357741 (= (insertStrictlySorted!314 (t!356938 (toList!3717 lm!1616)) (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194))) lt!1644719)))

(declare-fun b!4452128 () Bool)

(declare-fun res!1844902 () Bool)

(assert (=> b!4452128 (=> (not res!1844902) (not e!2772359))))

(assert (=> b!4452128 (= res!1844902 (containsKey!1295 lt!1644719 (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun bm!309846 () Bool)

(assert (=> bm!309846 (= call!309849 ($colon$colon!830 e!2772363 (ite c!757985 (h!55611 (t!356938 (toList!3717 lm!1616))) (tuple2!49841 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194))))))))

(declare-fun c!757988 () Bool)

(assert (=> bm!309846 (= c!757988 c!757985)))

(declare-fun b!4452129 () Bool)

(assert (=> b!4452129 (= e!2772362 e!2772360)))

(assert (=> b!4452129 (= c!757987 (and ((_ is Cons!49868) (t!356938 (toList!3717 lm!1616))) (= (_1!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(declare-fun b!4452130 () Bool)

(assert (=> b!4452130 (= e!2772362 call!309849)))

(assert (= (and d!1357741 c!757985) b!4452130))

(assert (= (and d!1357741 (not c!757985)) b!4452129))

(assert (= (and b!4452129 c!757987) b!4452122))

(assert (= (and b!4452129 (not c!757987)) b!4452126))

(assert (= (and b!4452126 c!757986) b!4452125))

(assert (= (and b!4452126 (not c!757986)) b!4452121))

(assert (= (or b!4452125 b!4452121) bm!309844))

(assert (= (or b!4452122 bm!309844) bm!309845))

(assert (= (or b!4452130 bm!309845) bm!309846))

(assert (= (and bm!309846 c!757988) b!4452127))

(assert (= (and bm!309846 (not c!757988)) b!4452124))

(assert (= (and d!1357741 res!1844903) b!4452128))

(assert (= (and b!4452128 res!1844902) b!4452123))

(declare-fun m!5152167 () Bool)

(assert (=> d!1357741 m!5152167))

(assert (=> d!1357741 m!5151639))

(declare-fun m!5152169 () Bool)

(assert (=> b!4452128 m!5152169))

(declare-fun m!5152171 () Bool)

(assert (=> b!4452127 m!5152171))

(declare-fun m!5152173 () Bool)

(assert (=> bm!309846 m!5152173))

(declare-fun m!5152175 () Bool)

(assert (=> b!4452123 m!5152175))

(assert (=> b!4451941 d!1357741))

(declare-fun d!1357743 () Bool)

(declare-fun c!757989 () Bool)

(assert (=> d!1357743 (= c!757989 ((_ is Nil!49867) (toList!3718 lt!1644187)))))

(declare-fun e!2772364 () (InoxSet tuple2!49838))

(assert (=> d!1357743 (= (content!8033 (toList!3718 lt!1644187)) e!2772364)))

(declare-fun b!4452131 () Bool)

(assert (=> b!4452131 (= e!2772364 ((as const (Array tuple2!49838 Bool)) false))))

(declare-fun b!4452132 () Bool)

(assert (=> b!4452132 (= e!2772364 ((_ map or) (store ((as const (Array tuple2!49838 Bool)) false) (h!55610 (toList!3718 lt!1644187)) true) (content!8033 (t!356937 (toList!3718 lt!1644187)))))))

(assert (= (and d!1357743 c!757989) b!4452131))

(assert (= (and d!1357743 (not c!757989)) b!4452132))

(declare-fun m!5152177 () Bool)

(assert (=> b!4452132 m!5152177))

(declare-fun m!5152179 () Bool)

(assert (=> b!4452132 m!5152179))

(assert (=> d!1357523 d!1357743))

(declare-fun d!1357745 () Bool)

(declare-fun res!1844904 () Bool)

(declare-fun e!2772365 () Bool)

(assert (=> d!1357745 (=> res!1844904 e!2772365)))

(assert (=> d!1357745 (= res!1844904 ((_ is Nil!49868) (t!356938 (toList!3717 lt!1644119))))))

(assert (=> d!1357745 (= (forall!9756 (t!356938 (toList!3717 lt!1644119)) lambda!159077) e!2772365)))

(declare-fun b!4452133 () Bool)

(declare-fun e!2772366 () Bool)

(assert (=> b!4452133 (= e!2772365 e!2772366)))

(declare-fun res!1844905 () Bool)

(assert (=> b!4452133 (=> (not res!1844905) (not e!2772366))))

(assert (=> b!4452133 (= res!1844905 (dynLambda!20938 lambda!159077 (h!55611 (t!356938 (toList!3717 lt!1644119)))))))

(declare-fun b!4452134 () Bool)

(assert (=> b!4452134 (= e!2772366 (forall!9756 (t!356938 (t!356938 (toList!3717 lt!1644119))) lambda!159077))))

(assert (= (and d!1357745 (not res!1844904)) b!4452133))

(assert (= (and b!4452133 res!1844905) b!4452134))

(declare-fun b_lambda!147077 () Bool)

(assert (=> (not b_lambda!147077) (not b!4452133)))

(declare-fun m!5152181 () Bool)

(assert (=> b!4452133 m!5152181))

(declare-fun m!5152183 () Bool)

(assert (=> b!4452134 m!5152183))

(assert (=> b!4451795 d!1357745))

(declare-fun d!1357747 () Bool)

(declare-fun res!1844906 () Bool)

(declare-fun e!2772367 () Bool)

(assert (=> d!1357747 (=> res!1844906 e!2772367)))

(assert (=> d!1357747 (= res!1844906 (and ((_ is Cons!49867) (t!356937 (_2!28214 (tuple2!49841 hash!366 newBucket!194)))) (= (_1!28213 (h!55610 (t!356937 (_2!28214 (tuple2!49841 hash!366 newBucket!194))))) (_1!28213 (h!55610 (_2!28214 (tuple2!49841 hash!366 newBucket!194)))))))))

(assert (=> d!1357747 (= (containsKey!1294 (t!356937 (_2!28214 (tuple2!49841 hash!366 newBucket!194))) (_1!28213 (h!55610 (_2!28214 (tuple2!49841 hash!366 newBucket!194))))) e!2772367)))

(declare-fun b!4452135 () Bool)

(declare-fun e!2772368 () Bool)

(assert (=> b!4452135 (= e!2772367 e!2772368)))

(declare-fun res!1844907 () Bool)

(assert (=> b!4452135 (=> (not res!1844907) (not e!2772368))))

(assert (=> b!4452135 (= res!1844907 ((_ is Cons!49867) (t!356937 (_2!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(declare-fun b!4452136 () Bool)

(assert (=> b!4452136 (= e!2772368 (containsKey!1294 (t!356937 (t!356937 (_2!28214 (tuple2!49841 hash!366 newBucket!194)))) (_1!28213 (h!55610 (_2!28214 (tuple2!49841 hash!366 newBucket!194))))))))

(assert (= (and d!1357747 (not res!1844906)) b!4452135))

(assert (= (and b!4452135 res!1844907) b!4452136))

(declare-fun m!5152185 () Bool)

(assert (=> b!4452136 m!5152185))

(assert (=> b!4451945 d!1357747))

(declare-fun d!1357749 () Bool)

(declare-fun res!1844908 () Bool)

(declare-fun e!2772369 () Bool)

(assert (=> d!1357749 (=> res!1844908 e!2772369)))

(assert (=> d!1357749 (= res!1844908 (not ((_ is Cons!49867) (t!356937 (t!356937 newBucket!194)))))))

(assert (=> d!1357749 (= (noDuplicateKeys!865 (t!356937 (t!356937 newBucket!194))) e!2772369)))

(declare-fun b!4452137 () Bool)

(declare-fun e!2772370 () Bool)

(assert (=> b!4452137 (= e!2772369 e!2772370)))

(declare-fun res!1844909 () Bool)

(assert (=> b!4452137 (=> (not res!1844909) (not e!2772370))))

(assert (=> b!4452137 (= res!1844909 (not (containsKey!1294 (t!356937 (t!356937 (t!356937 newBucket!194))) (_1!28213 (h!55610 (t!356937 (t!356937 newBucket!194)))))))))

(declare-fun b!4452138 () Bool)

(assert (=> b!4452138 (= e!2772370 (noDuplicateKeys!865 (t!356937 (t!356937 (t!356937 newBucket!194)))))))

(assert (= (and d!1357749 (not res!1844908)) b!4452137))

(assert (= (and b!4452137 res!1844909) b!4452138))

(declare-fun m!5152187 () Bool)

(assert (=> b!4452137 m!5152187))

(declare-fun m!5152189 () Bool)

(assert (=> b!4452138 m!5152189))

(assert (=> b!4451948 d!1357749))

(declare-fun d!1357751 () Bool)

(declare-fun res!1844910 () Bool)

(declare-fun e!2772371 () Bool)

(assert (=> d!1357751 (=> res!1844910 e!2772371)))

(assert (=> d!1357751 (= res!1844910 (and ((_ is Cons!49867) lt!1644587) (= (_1!28213 (h!55610 lt!1644587)) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))))

(assert (=> d!1357751 (= (containsKey!1296 lt!1644587 (_1!28213 (tuple2!49839 key!3717 newValue!93))) e!2772371)))

(declare-fun b!4452139 () Bool)

(declare-fun e!2772372 () Bool)

(assert (=> b!4452139 (= e!2772371 e!2772372)))

(declare-fun res!1844911 () Bool)

(assert (=> b!4452139 (=> (not res!1844911) (not e!2772372))))

(assert (=> b!4452139 (= res!1844911 ((_ is Cons!49867) lt!1644587))))

(declare-fun b!4452140 () Bool)

(assert (=> b!4452140 (= e!2772372 (containsKey!1296 (t!356937 lt!1644587) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(assert (= (and d!1357751 (not res!1844910)) b!4452139))

(assert (= (and b!4452139 res!1844911) b!4452140))

(declare-fun m!5152191 () Bool)

(assert (=> b!4452140 m!5152191))

(assert (=> b!4451891 d!1357751))

(declare-fun lt!1644720 () Bool)

(declare-fun d!1357753 () Bool)

(assert (=> d!1357753 (= lt!1644720 (select (content!8036 (t!356938 (toList!3717 lt!1644225))) (tuple2!49841 hash!366 newBucket!194)))))

(declare-fun e!2772374 () Bool)

(assert (=> d!1357753 (= lt!1644720 e!2772374)))

(declare-fun res!1844913 () Bool)

(assert (=> d!1357753 (=> (not res!1844913) (not e!2772374))))

(assert (=> d!1357753 (= res!1844913 ((_ is Cons!49868) (t!356938 (toList!3717 lt!1644225))))))

(assert (=> d!1357753 (= (contains!12467 (t!356938 (toList!3717 lt!1644225)) (tuple2!49841 hash!366 newBucket!194)) lt!1644720)))

(declare-fun b!4452141 () Bool)

(declare-fun e!2772373 () Bool)

(assert (=> b!4452141 (= e!2772374 e!2772373)))

(declare-fun res!1844912 () Bool)

(assert (=> b!4452141 (=> res!1844912 e!2772373)))

(assert (=> b!4452141 (= res!1844912 (= (h!55611 (t!356938 (toList!3717 lt!1644225))) (tuple2!49841 hash!366 newBucket!194)))))

(declare-fun b!4452142 () Bool)

(assert (=> b!4452142 (= e!2772373 (contains!12467 (t!356938 (t!356938 (toList!3717 lt!1644225))) (tuple2!49841 hash!366 newBucket!194)))))

(assert (= (and d!1357753 res!1844913) b!4452141))

(assert (= (and b!4452141 (not res!1844912)) b!4452142))

(assert (=> d!1357753 m!5152155))

(declare-fun m!5152193 () Bool)

(assert (=> d!1357753 m!5152193))

(declare-fun m!5152195 () Bool)

(assert (=> b!4452142 m!5152195))

(assert (=> b!4451787 d!1357753))

(assert (=> bs!789002 d!1357411))

(declare-fun d!1357755 () Bool)

(declare-fun res!1844914 () Bool)

(declare-fun e!2772375 () Bool)

(assert (=> d!1357755 (=> res!1844914 e!2772375)))

(assert (=> d!1357755 (= res!1844914 ((_ is Nil!49868) (t!356938 (t!356938 (toList!3717 lt!1644119)))))))

(assert (=> d!1357755 (= (forall!9756 (t!356938 (t!356938 (toList!3717 lt!1644119))) lambda!159068) e!2772375)))

(declare-fun b!4452143 () Bool)

(declare-fun e!2772376 () Bool)

(assert (=> b!4452143 (= e!2772375 e!2772376)))

(declare-fun res!1844915 () Bool)

(assert (=> b!4452143 (=> (not res!1844915) (not e!2772376))))

(assert (=> b!4452143 (= res!1844915 (dynLambda!20938 lambda!159068 (h!55611 (t!356938 (t!356938 (toList!3717 lt!1644119))))))))

(declare-fun b!4452144 () Bool)

(assert (=> b!4452144 (= e!2772376 (forall!9756 (t!356938 (t!356938 (t!356938 (toList!3717 lt!1644119)))) lambda!159068))))

(assert (= (and d!1357755 (not res!1844914)) b!4452143))

(assert (= (and b!4452143 res!1844915) b!4452144))

(declare-fun b_lambda!147079 () Bool)

(assert (=> (not b_lambda!147079) (not b!4452143)))

(declare-fun m!5152197 () Bool)

(assert (=> b!4452143 m!5152197))

(declare-fun m!5152199 () Bool)

(assert (=> b!4452144 m!5152199))

(assert (=> b!4451764 d!1357755))

(declare-fun d!1357757 () Bool)

(declare-fun res!1844916 () Bool)

(declare-fun e!2772377 () Bool)

(assert (=> d!1357757 (=> res!1844916 e!2772377)))

(assert (=> d!1357757 (= res!1844916 (and ((_ is Cons!49867) (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (= (_1!28213 (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))))

(assert (=> d!1357757 (= (containsKey!1294 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) e!2772377)))

(declare-fun b!4452145 () Bool)

(declare-fun e!2772378 () Bool)

(assert (=> b!4452145 (= e!2772377 e!2772378)))

(declare-fun res!1844917 () Bool)

(assert (=> b!4452145 (=> (not res!1844917) (not e!2772378))))

(assert (=> b!4452145 (= res!1844917 ((_ is Cons!49867) (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(declare-fun b!4452146 () Bool)

(assert (=> b!4452146 (= e!2772378 (containsKey!1294 (t!356937 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (= (and d!1357757 (not res!1844916)) b!4452145))

(assert (= (and b!4452145 res!1844917) b!4452146))

(declare-fun m!5152201 () Bool)

(assert (=> b!4452146 m!5152201))

(assert (=> b!4451975 d!1357757))

(declare-fun d!1357759 () Bool)

(declare-fun res!1844918 () Bool)

(declare-fun e!2772379 () Bool)

(assert (=> d!1357759 (=> res!1844918 e!2772379)))

(assert (=> d!1357759 (= res!1844918 (and ((_ is Cons!49867) (t!356937 (toList!3718 lt!1644116))) (= (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644116)))) key!3717)))))

(assert (=> d!1357759 (= (containsKey!1296 (t!356937 (toList!3718 lt!1644116)) key!3717) e!2772379)))

(declare-fun b!4452147 () Bool)

(declare-fun e!2772380 () Bool)

(assert (=> b!4452147 (= e!2772379 e!2772380)))

(declare-fun res!1844919 () Bool)

(assert (=> b!4452147 (=> (not res!1844919) (not e!2772380))))

(assert (=> b!4452147 (= res!1844919 ((_ is Cons!49867) (t!356937 (toList!3718 lt!1644116))))))

(declare-fun b!4452148 () Bool)

(assert (=> b!4452148 (= e!2772380 (containsKey!1296 (t!356937 (t!356937 (toList!3718 lt!1644116))) key!3717))))

(assert (= (and d!1357759 (not res!1844918)) b!4452147))

(assert (= (and b!4452147 res!1844919) b!4452148))

(declare-fun m!5152203 () Bool)

(assert (=> b!4452148 m!5152203))

(assert (=> b!4451778 d!1357759))

(assert (=> d!1357575 d!1357573))

(declare-fun d!1357761 () Bool)

(assert (=> d!1357761 (= (getValueByKey!824 lt!1644188 (_1!28213 (tuple2!49839 key!3717 newValue!93))) (Some!10837 (_2!28213 (tuple2!49839 key!3717 newValue!93))))))

(assert (=> d!1357761 true))

(declare-fun _$40!396 () Unit!85492)

(assert (=> d!1357761 (= (choose!28335 lt!1644188 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))) _$40!396)))

(declare-fun bs!789133 () Bool)

(assert (= bs!789133 d!1357761))

(assert (=> bs!789133 m!5151055))

(assert (=> d!1357575 d!1357761))

(declare-fun d!1357763 () Bool)

(assert (=> d!1357763 (= (invariantList!860 lt!1644188) (noDuplicatedKeys!199 lt!1644188))))

(declare-fun bs!789134 () Bool)

(assert (= bs!789134 d!1357763))

(declare-fun m!5152205 () Bool)

(assert (=> bs!789134 m!5152205))

(assert (=> d!1357575 d!1357763))

(declare-fun d!1357765 () Bool)

(declare-fun res!1844920 () Bool)

(declare-fun e!2772381 () Bool)

(assert (=> d!1357765 (=> res!1844920 e!2772381)))

(assert (=> d!1357765 (= res!1844920 (or ((_ is Nil!49867) (toList!3718 lt!1644253)) ((_ is Nil!49867) (t!356937 (toList!3718 lt!1644253)))))))

(assert (=> d!1357765 (= (noDuplicatedKeys!199 (toList!3718 lt!1644253)) e!2772381)))

(declare-fun b!4452149 () Bool)

(declare-fun e!2772382 () Bool)

(assert (=> b!4452149 (= e!2772381 e!2772382)))

(declare-fun res!1844921 () Bool)

(assert (=> b!4452149 (=> (not res!1844921) (not e!2772382))))

(assert (=> b!4452149 (= res!1844921 (not (containsKey!1296 (t!356937 (toList!3718 lt!1644253)) (_1!28213 (h!55610 (toList!3718 lt!1644253))))))))

(declare-fun b!4452150 () Bool)

(assert (=> b!4452150 (= e!2772382 (noDuplicatedKeys!199 (t!356937 (toList!3718 lt!1644253))))))

(assert (= (and d!1357765 (not res!1844920)) b!4452149))

(assert (= (and b!4452149 res!1844921) b!4452150))

(declare-fun m!5152207 () Bool)

(assert (=> b!4452149 m!5152207))

(declare-fun m!5152209 () Bool)

(assert (=> b!4452150 m!5152209))

(assert (=> d!1357407 d!1357765))

(declare-fun bs!789135 () Bool)

(declare-fun b!4452155 () Bool)

(assert (= bs!789135 (and b!4452155 b!4451817)))

(declare-fun lambda!159221 () Int)

(assert (=> bs!789135 (= (= (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159221 lambda!159193))))

(declare-fun bs!789136 () Bool)

(assert (= bs!789136 (and b!4452155 b!4451818)))

(assert (=> bs!789136 (= (= (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (toList!3718 lt!1644116))) (= lambda!159221 lambda!159192))))

(declare-fun bs!789137 () Bool)

(assert (= bs!789137 (and b!4452155 b!4451816)))

(assert (=> bs!789137 (= (= (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (toList!3718 lt!1644116)) (= lambda!159221 lambda!159194))))

(declare-fun bs!789138 () Bool)

(assert (= bs!789138 (and b!4452155 b!4452047)))

(assert (=> bs!789138 (= (= (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (toList!3718 lt!1644187)) (= lambda!159221 lambda!159218))))

(declare-fun bs!789139 () Bool)

(assert (= bs!789139 (and b!4452155 b!4451521)))

(assert (=> bs!789139 (= (= (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (toList!3718 lt!1644116)) (= lambda!159221 lambda!159132))))

(assert (=> b!4452155 true))

(declare-fun bs!789140 () Bool)

(declare-fun b!4452154 () Bool)

(assert (= bs!789140 (and b!4452154 b!4451817)))

(declare-fun lambda!159222 () Int)

(assert (=> bs!789140 (= (= (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159222 lambda!159193))))

(declare-fun bs!789141 () Bool)

(assert (= bs!789141 (and b!4452154 b!4451818)))

(assert (=> bs!789141 (= (= (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (t!356937 (toList!3718 lt!1644116))) (= lambda!159222 lambda!159192))))

(declare-fun bs!789142 () Bool)

(assert (= bs!789142 (and b!4452154 b!4452155)))

(assert (=> bs!789142 (= (= (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (= lambda!159222 lambda!159221))))

(declare-fun bs!789143 () Bool)

(assert (= bs!789143 (and b!4452154 b!4451816)))

(assert (=> bs!789143 (= (= (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (toList!3718 lt!1644116)) (= lambda!159222 lambda!159194))))

(declare-fun bs!789144 () Bool)

(assert (= bs!789144 (and b!4452154 b!4452047)))

(assert (=> bs!789144 (= (= (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (toList!3718 lt!1644187)) (= lambda!159222 lambda!159218))))

(declare-fun bs!789145 () Bool)

(assert (= bs!789145 (and b!4452154 b!4451521)))

(assert (=> bs!789145 (= (= (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (toList!3718 lt!1644116)) (= lambda!159222 lambda!159132))))

(assert (=> b!4452154 true))

(declare-fun bs!789146 () Bool)

(declare-fun b!4452153 () Bool)

(assert (= bs!789146 (and b!4452153 b!4451817)))

(declare-fun lambda!159223 () Int)

(assert (=> bs!789146 (= (= (ite c!757943 (toList!3718 lt!1644116) lt!1644581) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159223 lambda!159193))))

(declare-fun bs!789147 () Bool)

(assert (= bs!789147 (and b!4452153 b!4451818)))

(assert (=> bs!789147 (= (= (ite c!757943 (toList!3718 lt!1644116) lt!1644581) (t!356937 (toList!3718 lt!1644116))) (= lambda!159223 lambda!159192))))

(declare-fun bs!789148 () Bool)

(assert (= bs!789148 (and b!4452153 b!4452155)))

(assert (=> bs!789148 (= (= (ite c!757943 (toList!3718 lt!1644116) lt!1644581) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (= lambda!159223 lambda!159221))))

(declare-fun bs!789149 () Bool)

(assert (= bs!789149 (and b!4452153 b!4452154)))

(assert (=> bs!789149 (= (= (ite c!757943 (toList!3718 lt!1644116) lt!1644581) (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))) (= lambda!159223 lambda!159222))))

(declare-fun bs!789150 () Bool)

(assert (= bs!789150 (and b!4452153 b!4451816)))

(assert (=> bs!789150 (= (= (ite c!757943 (toList!3718 lt!1644116) lt!1644581) (toList!3718 lt!1644116)) (= lambda!159223 lambda!159194))))

(declare-fun bs!789151 () Bool)

(assert (= bs!789151 (and b!4452153 b!4452047)))

(assert (=> bs!789151 (= (= (ite c!757943 (toList!3718 lt!1644116) lt!1644581) (toList!3718 lt!1644187)) (= lambda!159223 lambda!159218))))

(declare-fun bs!789152 () Bool)

(assert (= bs!789152 (and b!4452153 b!4451521)))

(assert (=> bs!789152 (= (= (ite c!757943 (toList!3718 lt!1644116) lt!1644581) (toList!3718 lt!1644116)) (= lambda!159223 lambda!159132))))

(assert (=> b!4452153 true))

(declare-fun bs!789153 () Bool)

(declare-fun b!4452151 () Bool)

(assert (= bs!789153 (and b!4452151 b!4451522)))

(declare-fun lambda!159224 () Int)

(assert (=> bs!789153 (= lambda!159224 lambda!159133)))

(declare-fun bs!789154 () Bool)

(assert (= bs!789154 (and b!4452151 b!4451814)))

(assert (=> bs!789154 (= lambda!159224 lambda!159195)))

(declare-fun bs!789155 () Bool)

(assert (= bs!789155 (and b!4452151 b!4452048)))

(assert (=> bs!789155 (= lambda!159224 lambda!159219)))

(declare-fun e!2772383 () Bool)

(declare-fun lt!1644726 () List!49994)

(assert (=> b!4452151 (= e!2772383 (= (content!8035 lt!1644726) (content!8035 (map!10914 (ite c!757943 (toList!3718 lt!1644116) lt!1644581) lambda!159224))))))

(declare-fun b!4452152 () Bool)

(declare-fun e!2772386 () Unit!85492)

(declare-fun Unit!85594 () Unit!85492)

(assert (=> b!4452152 (= e!2772386 Unit!85594)))

(declare-fun res!1844923 () Bool)

(assert (=> b!4452153 (=> (not res!1844923) (not e!2772383))))

(assert (=> b!4452153 (= res!1844923 (forall!9760 lt!1644726 lambda!159223))))

(declare-fun e!2772385 () List!49994)

(assert (=> b!4452154 (= e!2772385 (Cons!49870 (_1!28213 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (getKeysList!306 (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))))))

(declare-fun c!757992 () Bool)

(assert (=> b!4452154 (= c!757992 (containsKey!1296 (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (_1!28213 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))))))

(declare-fun lt!1644723 () Unit!85492)

(assert (=> b!4452154 (= lt!1644723 e!2772386)))

(declare-fun c!757990 () Bool)

(assert (=> b!4452154 (= c!757990 (contains!12468 (getKeysList!306 (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (_1!28213 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))))))

(declare-fun lt!1644724 () Unit!85492)

(declare-fun e!2772384 () Unit!85492)

(assert (=> b!4452154 (= lt!1644724 e!2772384)))

(declare-fun lt!1644725 () List!49994)

(assert (=> b!4452154 (= lt!1644725 (getKeysList!306 (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))))))

(declare-fun lt!1644727 () Unit!85492)

(assert (=> b!4452154 (= lt!1644727 (lemmaForallContainsAddHeadPreserves!106 (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) lt!1644725 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))))))

(assert (=> b!4452154 (forall!9760 lt!1644725 lambda!159222)))

(declare-fun lt!1644721 () Unit!85492)

(assert (=> b!4452154 (= lt!1644721 lt!1644727)))

(assert (=> b!4452155 false))

(declare-fun lt!1644722 () Unit!85492)

(assert (=> b!4452155 (= lt!1644722 (forallContained!2163 (getKeysList!306 (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) lambda!159221 (_1!28213 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))))))

(declare-fun Unit!85595 () Unit!85492)

(assert (=> b!4452155 (= e!2772384 Unit!85595)))

(declare-fun b!4452156 () Bool)

(declare-fun Unit!85596 () Unit!85492)

(assert (=> b!4452156 (= e!2772384 Unit!85596)))

(declare-fun b!4452157 () Bool)

(declare-fun res!1844922 () Bool)

(assert (=> b!4452157 (=> (not res!1844922) (not e!2772383))))

(assert (=> b!4452157 (= res!1844922 (= (length!224 lt!1644726) (length!225 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))))))

(declare-fun d!1357767 () Bool)

(assert (=> d!1357767 e!2772383))

(declare-fun res!1844924 () Bool)

(assert (=> d!1357767 (=> (not res!1844924) (not e!2772383))))

(assert (=> d!1357767 (= res!1844924 (noDuplicate!684 lt!1644726))))

(assert (=> d!1357767 (= lt!1644726 e!2772385)))

(declare-fun c!757991 () Bool)

(assert (=> d!1357767 (= c!757991 ((_ is Cons!49867) (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))))

(assert (=> d!1357767 (invariantList!860 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))))

(assert (=> d!1357767 (= (getKeysList!306 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) lt!1644726)))

(declare-fun b!4452158 () Bool)

(assert (=> b!4452158 (= e!2772385 Nil!49870)))

(declare-fun b!4452159 () Bool)

(assert (=> b!4452159 false))

(declare-fun Unit!85597 () Unit!85492)

(assert (=> b!4452159 (= e!2772386 Unit!85597)))

(assert (= (and d!1357767 c!757991) b!4452154))

(assert (= (and d!1357767 (not c!757991)) b!4452158))

(assert (= (and b!4452154 c!757992) b!4452159))

(assert (= (and b!4452154 (not c!757992)) b!4452152))

(assert (= (and b!4452154 c!757990) b!4452155))

(assert (= (and b!4452154 (not c!757990)) b!4452156))

(assert (= (and d!1357767 res!1844924) b!4452157))

(assert (= (and b!4452157 res!1844922) b!4452153))

(assert (= (and b!4452153 res!1844923) b!4452151))

(declare-fun m!5152211 () Bool)

(assert (=> b!4452151 m!5152211))

(declare-fun m!5152213 () Bool)

(assert (=> b!4452151 m!5152213))

(assert (=> b!4452151 m!5152213))

(declare-fun m!5152215 () Bool)

(assert (=> b!4452151 m!5152215))

(declare-fun m!5152217 () Bool)

(assert (=> b!4452157 m!5152217))

(declare-fun m!5152219 () Bool)

(assert (=> b!4452157 m!5152219))

(declare-fun m!5152221 () Bool)

(assert (=> b!4452154 m!5152221))

(declare-fun m!5152223 () Bool)

(assert (=> b!4452154 m!5152223))

(declare-fun m!5152225 () Bool)

(assert (=> b!4452154 m!5152225))

(declare-fun m!5152227 () Bool)

(assert (=> b!4452154 m!5152227))

(assert (=> b!4452154 m!5152227))

(declare-fun m!5152229 () Bool)

(assert (=> b!4452154 m!5152229))

(assert (=> b!4452155 m!5152227))

(assert (=> b!4452155 m!5152227))

(declare-fun m!5152231 () Bool)

(assert (=> b!4452155 m!5152231))

(declare-fun m!5152233 () Bool)

(assert (=> b!4452153 m!5152233))

(declare-fun m!5152235 () Bool)

(assert (=> d!1357767 m!5152235))

(declare-fun m!5152237 () Bool)

(assert (=> d!1357767 m!5152237))

(assert (=> bm!309818 d!1357767))

(declare-fun d!1357769 () Bool)

(declare-fun res!1844925 () Bool)

(declare-fun e!2772387 () Bool)

(assert (=> d!1357769 (=> res!1844925 e!2772387)))

(assert (=> d!1357769 (= res!1844925 (and ((_ is Cons!49867) (toList!3718 lt!1644187)) (= (_1!28213 (h!55610 (toList!3718 lt!1644187))) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))))

(assert (=> d!1357769 (= (containsKey!1296 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))) e!2772387)))

(declare-fun b!4452160 () Bool)

(declare-fun e!2772388 () Bool)

(assert (=> b!4452160 (= e!2772387 e!2772388)))

(declare-fun res!1844926 () Bool)

(assert (=> b!4452160 (=> (not res!1844926) (not e!2772388))))

(assert (=> b!4452160 (= res!1844926 ((_ is Cons!49867) (toList!3718 lt!1644187)))))

(declare-fun b!4452161 () Bool)

(assert (=> b!4452161 (= e!2772388 (containsKey!1296 (t!356937 (toList!3718 lt!1644187)) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(assert (= (and d!1357769 (not res!1844925)) b!4452160))

(assert (= (and b!4452160 res!1844926) b!4452161))

(declare-fun m!5152239 () Bool)

(assert (=> b!4452161 m!5152239))

(assert (=> d!1357571 d!1357769))

(declare-fun d!1357771 () Bool)

(declare-fun res!1844927 () Bool)

(declare-fun e!2772389 () Bool)

(assert (=> d!1357771 (=> res!1844927 e!2772389)))

(assert (=> d!1357771 (= res!1844927 (not ((_ is Cons!49867) (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119)))))))))

(assert (=> d!1357771 (= (noDuplicateKeys!865 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119))))) e!2772389)))

(declare-fun b!4452162 () Bool)

(declare-fun e!2772390 () Bool)

(assert (=> b!4452162 (= e!2772389 e!2772390)))

(declare-fun res!1844928 () Bool)

(assert (=> b!4452162 (=> (not res!1844928) (not e!2772390))))

(assert (=> b!4452162 (= res!1844928 (not (containsKey!1294 (t!356937 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119))))) (_1!28213 (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119)))))))))))

(declare-fun b!4452163 () Bool)

(assert (=> b!4452163 (= e!2772390 (noDuplicateKeys!865 (t!356937 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119)))))))))

(assert (= (and d!1357771 (not res!1844927)) b!4452162))

(assert (= (and b!4452162 res!1844928) b!4452163))

(declare-fun m!5152241 () Bool)

(assert (=> b!4452162 m!5152241))

(declare-fun m!5152243 () Bool)

(assert (=> b!4452163 m!5152243))

(assert (=> bs!789001 d!1357771))

(declare-fun d!1357773 () Bool)

(declare-fun res!1844929 () Bool)

(declare-fun e!2772391 () Bool)

(assert (=> d!1357773 (=> res!1844929 e!2772391)))

(assert (=> d!1357773 (= res!1844929 (not ((_ is Cons!49867) (_2!28214 (h!55611 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194))))))))))

(assert (=> d!1357773 (= (noDuplicateKeys!865 (_2!28214 (h!55611 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194)))))) e!2772391)))

(declare-fun b!4452164 () Bool)

(declare-fun e!2772392 () Bool)

(assert (=> b!4452164 (= e!2772391 e!2772392)))

(declare-fun res!1844930 () Bool)

(assert (=> b!4452164 (=> (not res!1844930) (not e!2772392))))

(assert (=> b!4452164 (= res!1844930 (not (containsKey!1294 (t!356937 (_2!28214 (h!55611 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194)))))) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194))))))))))))

(declare-fun b!4452165 () Bool)

(assert (=> b!4452165 (= e!2772392 (noDuplicateKeys!865 (t!356937 (_2!28214 (h!55611 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194))))))))))

(assert (= (and d!1357773 (not res!1844929)) b!4452164))

(assert (= (and b!4452164 res!1844930) b!4452165))

(declare-fun m!5152245 () Bool)

(assert (=> b!4452164 m!5152245))

(declare-fun m!5152247 () Bool)

(assert (=> b!4452165 m!5152247))

(assert (=> bs!789006 d!1357773))

(declare-fun d!1357775 () Bool)

(declare-fun res!1844931 () Bool)

(declare-fun e!2772393 () Bool)

(assert (=> d!1357775 (=> res!1844931 e!2772393)))

(assert (=> d!1357775 (= res!1844931 ((_ is Nil!49870) lt!1644535))))

(assert (=> d!1357775 (= (noDuplicate!684 lt!1644535) e!2772393)))

(declare-fun b!4452166 () Bool)

(declare-fun e!2772394 () Bool)

(assert (=> b!4452166 (= e!2772393 e!2772394)))

(declare-fun res!1844932 () Bool)

(assert (=> b!4452166 (=> (not res!1844932) (not e!2772394))))

(assert (=> b!4452166 (= res!1844932 (not (contains!12468 (t!356940 lt!1644535) (h!55615 lt!1644535))))))

(declare-fun b!4452167 () Bool)

(assert (=> b!4452167 (= e!2772394 (noDuplicate!684 (t!356940 lt!1644535)))))

(assert (= (and d!1357775 (not res!1844931)) b!4452166))

(assert (= (and b!4452166 res!1844932) b!4452167))

(declare-fun m!5152249 () Bool)

(assert (=> b!4452166 m!5152249))

(declare-fun m!5152251 () Bool)

(assert (=> b!4452167 m!5152251))

(assert (=> d!1357557 d!1357775))

(assert (=> d!1357557 d!1357727))

(declare-fun d!1357777 () Bool)

(assert (=> d!1357777 (contains!12468 (getKeysList!306 lt!1644581) (_1!28213 (h!55610 (toList!3718 lt!1644116))))))

(declare-fun lt!1644728 () Unit!85492)

(assert (=> d!1357777 (= lt!1644728 (choose!28333 lt!1644581 (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(assert (=> d!1357777 (invariantList!860 lt!1644581)))

(assert (=> d!1357777 (= (lemmaInListThenGetKeysListContains!303 lt!1644581 (_1!28213 (h!55610 (toList!3718 lt!1644116)))) lt!1644728)))

(declare-fun bs!789156 () Bool)

(assert (= bs!789156 d!1357777))

(declare-fun m!5152253 () Bool)

(assert (=> bs!789156 m!5152253))

(assert (=> bs!789156 m!5152253))

(declare-fun m!5152255 () Bool)

(assert (=> bs!789156 m!5152255))

(declare-fun m!5152257 () Bool)

(assert (=> bs!789156 m!5152257))

(declare-fun m!5152259 () Bool)

(assert (=> bs!789156 m!5152259))

(assert (=> b!4451886 d!1357777))

(assert (=> b!4451886 d!1357709))

(declare-fun d!1357779 () Bool)

(assert (=> d!1357779 (containsKey!1296 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (h!55610 (toList!3718 lt!1644116))))))

(declare-fun lt!1644729 () Unit!85492)

(assert (=> d!1357779 (= lt!1644729 (choose!28334 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(assert (=> d!1357779 (invariantList!860 (t!356937 (toList!3718 lt!1644116)))))

(assert (=> d!1357779 (= (lemmaInGetKeysListThenContainsKey!304 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (h!55610 (toList!3718 lt!1644116)))) lt!1644729)))

(declare-fun bs!789157 () Bool)

(assert (= bs!789157 d!1357779))

(assert (=> bs!789157 m!5151623))

(declare-fun m!5152261 () Bool)

(assert (=> bs!789157 m!5152261))

(assert (=> bs!789157 m!5152119))

(assert (=> b!4451886 d!1357779))

(declare-fun d!1357781 () Bool)

(declare-fun lt!1644730 () Bool)

(assert (=> d!1357781 (= lt!1644730 (select (content!8035 call!309823) (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(declare-fun e!2772396 () Bool)

(assert (=> d!1357781 (= lt!1644730 e!2772396)))

(declare-fun res!1844933 () Bool)

(assert (=> d!1357781 (=> (not res!1844933) (not e!2772396))))

(assert (=> d!1357781 (= res!1844933 ((_ is Cons!49870) call!309823))))

(assert (=> d!1357781 (= (contains!12468 call!309823 (_1!28213 (h!55610 (toList!3718 lt!1644116)))) lt!1644730)))

(declare-fun b!4452168 () Bool)

(declare-fun e!2772395 () Bool)

(assert (=> b!4452168 (= e!2772396 e!2772395)))

(declare-fun res!1844934 () Bool)

(assert (=> b!4452168 (=> res!1844934 e!2772395)))

(assert (=> b!4452168 (= res!1844934 (= (h!55615 call!309823) (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(declare-fun b!4452169 () Bool)

(assert (=> b!4452169 (= e!2772395 (contains!12468 (t!356940 call!309823) (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(assert (= (and d!1357781 res!1844933) b!4452168))

(assert (= (and b!4452168 (not res!1844934)) b!4452169))

(declare-fun m!5152263 () Bool)

(assert (=> d!1357781 m!5152263))

(declare-fun m!5152265 () Bool)

(assert (=> d!1357781 m!5152265))

(declare-fun m!5152267 () Bool)

(assert (=> b!4452169 m!5152267))

(assert (=> b!4451886 d!1357781))

(declare-fun d!1357783 () Bool)

(declare-fun res!1844935 () Bool)

(declare-fun e!2772397 () Bool)

(assert (=> d!1357783 (=> res!1844935 e!2772397)))

(assert (=> d!1357783 (= res!1844935 (and ((_ is Cons!49867) (t!356937 (toList!3718 lt!1644116))) (= (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644116)))) (_1!28213 (h!55610 (toList!3718 lt!1644116))))))))

(assert (=> d!1357783 (= (containsKey!1296 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (h!55610 (toList!3718 lt!1644116)))) e!2772397)))

(declare-fun b!4452170 () Bool)

(declare-fun e!2772398 () Bool)

(assert (=> b!4452170 (= e!2772397 e!2772398)))

(declare-fun res!1844936 () Bool)

(assert (=> b!4452170 (=> (not res!1844936) (not e!2772398))))

(assert (=> b!4452170 (= res!1844936 ((_ is Cons!49867) (t!356937 (toList!3718 lt!1644116))))))

(declare-fun b!4452171 () Bool)

(assert (=> b!4452171 (= e!2772398 (containsKey!1296 (t!356937 (t!356937 (toList!3718 lt!1644116))) (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(assert (= (and d!1357783 (not res!1844935)) b!4452170))

(assert (= (and b!4452170 res!1844936) b!4452171))

(declare-fun m!5152269 () Bool)

(assert (=> b!4452171 m!5152269))

(assert (=> b!4451886 d!1357783))

(declare-fun d!1357785 () Bool)

(declare-fun c!757995 () Bool)

(assert (=> d!1357785 (= c!757995 ((_ is Nil!49870) lt!1644332))))

(declare-fun e!2772401 () (InoxSet K!11235))

(assert (=> d!1357785 (= (content!8035 lt!1644332) e!2772401)))

(declare-fun b!4452176 () Bool)

(assert (=> b!4452176 (= e!2772401 ((as const (Array K!11235 Bool)) false))))

(declare-fun b!4452177 () Bool)

(assert (=> b!4452177 (= e!2772401 ((_ map or) (store ((as const (Array K!11235 Bool)) false) (h!55615 lt!1644332) true) (content!8035 (t!356940 lt!1644332))))))

(assert (= (and d!1357785 c!757995) b!4452176))

(assert (= (and d!1357785 (not c!757995)) b!4452177))

(declare-fun m!5152271 () Bool)

(assert (=> b!4452177 m!5152271))

(declare-fun m!5152273 () Bool)

(assert (=> b!4452177 m!5152273))

(assert (=> b!4451522 d!1357785))

(declare-fun d!1357787 () Bool)

(declare-fun c!757996 () Bool)

(assert (=> d!1357787 (= c!757996 ((_ is Nil!49870) (map!10914 (toList!3718 lt!1644116) lambda!159133)))))

(declare-fun e!2772402 () (InoxSet K!11235))

(assert (=> d!1357787 (= (content!8035 (map!10914 (toList!3718 lt!1644116) lambda!159133)) e!2772402)))

(declare-fun b!4452178 () Bool)

(assert (=> b!4452178 (= e!2772402 ((as const (Array K!11235 Bool)) false))))

(declare-fun b!4452179 () Bool)

(assert (=> b!4452179 (= e!2772402 ((_ map or) (store ((as const (Array K!11235 Bool)) false) (h!55615 (map!10914 (toList!3718 lt!1644116) lambda!159133)) true) (content!8035 (t!356940 (map!10914 (toList!3718 lt!1644116) lambda!159133)))))))

(assert (= (and d!1357787 c!757996) b!4452178))

(assert (= (and d!1357787 (not c!757996)) b!4452179))

(declare-fun m!5152275 () Bool)

(assert (=> b!4452179 m!5152275))

(declare-fun m!5152277 () Bool)

(assert (=> b!4452179 m!5152277))

(assert (=> b!4451522 d!1357787))

(declare-fun d!1357789 () Bool)

(declare-fun lt!1644733 () List!49994)

(assert (=> d!1357789 (= (size!35893 lt!1644733) (size!35894 (toList!3718 lt!1644116)))))

(declare-fun e!2772405 () List!49994)

(assert (=> d!1357789 (= lt!1644733 e!2772405)))

(declare-fun c!757999 () Bool)

(assert (=> d!1357789 (= c!757999 ((_ is Nil!49867) (toList!3718 lt!1644116)))))

(assert (=> d!1357789 (= (map!10914 (toList!3718 lt!1644116) lambda!159133) lt!1644733)))

(declare-fun b!4452184 () Bool)

(assert (=> b!4452184 (= e!2772405 Nil!49870)))

(declare-fun b!4452185 () Bool)

(declare-fun $colon$colon!831 (List!49994 K!11235) List!49994)

(declare-fun dynLambda!20943 (Int tuple2!49838) K!11235)

(assert (=> b!4452185 (= e!2772405 ($colon$colon!831 (map!10914 (t!356937 (toList!3718 lt!1644116)) lambda!159133) (dynLambda!20943 lambda!159133 (h!55610 (toList!3718 lt!1644116)))))))

(assert (= (and d!1357789 c!757999) b!4452184))

(assert (= (and d!1357789 (not c!757999)) b!4452185))

(declare-fun b_lambda!147081 () Bool)

(assert (=> (not b_lambda!147081) (not b!4452185)))

(declare-fun m!5152279 () Bool)

(assert (=> d!1357789 m!5152279))

(assert (=> d!1357789 m!5151837))

(declare-fun m!5152281 () Bool)

(assert (=> b!4452185 m!5152281))

(declare-fun m!5152283 () Bool)

(assert (=> b!4452185 m!5152283))

(assert (=> b!4452185 m!5152281))

(assert (=> b!4452185 m!5152283))

(declare-fun m!5152285 () Bool)

(assert (=> b!4452185 m!5152285))

(assert (=> b!4451522 d!1357789))

(assert (=> d!1357585 d!1357583))

(declare-fun d!1357791 () Bool)

(assert (=> d!1357791 (= (getValueByKey!823 lt!1644222 (_1!28214 (tuple2!49841 hash!366 newBucket!194))) (Some!10836 (_2!28214 (tuple2!49841 hash!366 newBucket!194))))))

(assert (=> d!1357791 true))

(declare-fun _$23!251 () Unit!85492)

(assert (=> d!1357791 (= (choose!28336 lt!1644222 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194))) _$23!251)))

(declare-fun bs!789158 () Bool)

(assert (= bs!789158 d!1357791))

(assert (=> bs!789158 m!5151107))

(assert (=> d!1357585 d!1357791))

(declare-fun d!1357793 () Bool)

(declare-fun res!1844937 () Bool)

(declare-fun e!2772406 () Bool)

(assert (=> d!1357793 (=> res!1844937 e!2772406)))

(assert (=> d!1357793 (= res!1844937 (or ((_ is Nil!49868) lt!1644222) ((_ is Nil!49868) (t!356938 lt!1644222))))))

(assert (=> d!1357793 (= (isStrictlySorted!285 lt!1644222) e!2772406)))

(declare-fun b!4452186 () Bool)

(declare-fun e!2772407 () Bool)

(assert (=> b!4452186 (= e!2772406 e!2772407)))

(declare-fun res!1844938 () Bool)

(assert (=> b!4452186 (=> (not res!1844938) (not e!2772407))))

(assert (=> b!4452186 (= res!1844938 (bvslt (_1!28214 (h!55611 lt!1644222)) (_1!28214 (h!55611 (t!356938 lt!1644222)))))))

(declare-fun b!4452187 () Bool)

(assert (=> b!4452187 (= e!2772407 (isStrictlySorted!285 (t!356938 lt!1644222)))))

(assert (= (and d!1357793 (not res!1844937)) b!4452186))

(assert (= (and b!4452186 res!1844938) b!4452187))

(declare-fun m!5152287 () Bool)

(assert (=> b!4452187 m!5152287))

(assert (=> d!1357585 d!1357793))

(declare-fun e!2772409 () Option!10838)

(declare-fun b!4452190 () Bool)

(assert (=> b!4452190 (= e!2772409 (getValueByKey!824 (t!356937 (t!356937 lt!1644188)) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun b!4452189 () Bool)

(declare-fun e!2772408 () Option!10838)

(assert (=> b!4452189 (= e!2772408 e!2772409)))

(declare-fun c!758001 () Bool)

(assert (=> b!4452189 (= c!758001 (and ((_ is Cons!49867) (t!356937 lt!1644188)) (not (= (_1!28213 (h!55610 (t!356937 lt!1644188))) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))))

(declare-fun b!4452191 () Bool)

(assert (=> b!4452191 (= e!2772409 None!10837)))

(declare-fun d!1357795 () Bool)

(declare-fun c!758000 () Bool)

(assert (=> d!1357795 (= c!758000 (and ((_ is Cons!49867) (t!356937 lt!1644188)) (= (_1!28213 (h!55610 (t!356937 lt!1644188))) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))))

(assert (=> d!1357795 (= (getValueByKey!824 (t!356937 lt!1644188) (_1!28213 (tuple2!49839 key!3717 newValue!93))) e!2772408)))

(declare-fun b!4452188 () Bool)

(assert (=> b!4452188 (= e!2772408 (Some!10837 (_2!28213 (h!55610 (t!356937 lt!1644188)))))))

(assert (= (and d!1357795 c!758000) b!4452188))

(assert (= (and d!1357795 (not c!758000)) b!4452189))

(assert (= (and b!4452189 c!758001) b!4452190))

(assert (= (and b!4452189 (not c!758001)) b!4452191))

(declare-fun m!5152289 () Bool)

(assert (=> b!4452190 m!5152289))

(assert (=> b!4451846 d!1357795))

(declare-fun d!1357797 () Bool)

(declare-fun lt!1644734 () Bool)

(assert (=> d!1357797 (= lt!1644734 (select (content!8035 (getKeysList!306 (toList!3718 lt!1644116))) key!3717))))

(declare-fun e!2772411 () Bool)

(assert (=> d!1357797 (= lt!1644734 e!2772411)))

(declare-fun res!1844939 () Bool)

(assert (=> d!1357797 (=> (not res!1844939) (not e!2772411))))

(assert (=> d!1357797 (= res!1844939 ((_ is Cons!49870) (getKeysList!306 (toList!3718 lt!1644116))))))

(assert (=> d!1357797 (= (contains!12468 (getKeysList!306 (toList!3718 lt!1644116)) key!3717) lt!1644734)))

(declare-fun b!4452192 () Bool)

(declare-fun e!2772410 () Bool)

(assert (=> b!4452192 (= e!2772411 e!2772410)))

(declare-fun res!1844940 () Bool)

(assert (=> b!4452192 (=> res!1844940 e!2772410)))

(assert (=> b!4452192 (= res!1844940 (= (h!55615 (getKeysList!306 (toList!3718 lt!1644116))) key!3717))))

(declare-fun b!4452193 () Bool)

(assert (=> b!4452193 (= e!2772410 (contains!12468 (t!356940 (getKeysList!306 (toList!3718 lt!1644116))) key!3717))))

(assert (= (and d!1357797 res!1844939) b!4452192))

(assert (= (and b!4452192 (not res!1844940)) b!4452193))

(assert (=> d!1357797 m!5151135))

(assert (=> d!1357797 m!5151693))

(declare-fun m!5152291 () Bool)

(assert (=> d!1357797 m!5152291))

(declare-fun m!5152293 () Bool)

(assert (=> b!4452193 m!5152293))

(assert (=> d!1357567 d!1357797))

(assert (=> d!1357567 d!1357557))

(declare-fun d!1357799 () Bool)

(assert (=> d!1357799 (contains!12468 (getKeysList!306 (toList!3718 lt!1644116)) key!3717)))

(assert (=> d!1357799 true))

(declare-fun _$14!951 () Unit!85492)

(assert (=> d!1357799 (= (choose!28333 (toList!3718 lt!1644116) key!3717) _$14!951)))

(declare-fun bs!789159 () Bool)

(assert (= bs!789159 d!1357799))

(assert (=> bs!789159 m!5151135))

(assert (=> bs!789159 m!5151135))

(assert (=> bs!789159 m!5151647))

(assert (=> d!1357567 d!1357799))

(assert (=> d!1357567 d!1357727))

(declare-fun b!4452196 () Bool)

(declare-fun e!2772413 () Option!10837)

(assert (=> b!4452196 (= e!2772413 (getValueByKey!823 (t!356938 (t!356938 (toList!3717 lm!1616))) hash!366))))

(declare-fun b!4452194 () Bool)

(declare-fun e!2772412 () Option!10837)

(assert (=> b!4452194 (= e!2772412 (Some!10836 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616))))))))

(declare-fun d!1357801 () Bool)

(declare-fun c!758002 () Bool)

(assert (=> d!1357801 (= c!758002 (and ((_ is Cons!49868) (t!356938 (toList!3717 lm!1616))) (= (_1!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))) hash!366)))))

(assert (=> d!1357801 (= (getValueByKey!823 (t!356938 (toList!3717 lm!1616)) hash!366) e!2772412)))

(declare-fun b!4452197 () Bool)

(assert (=> b!4452197 (= e!2772413 None!10836)))

(declare-fun b!4452195 () Bool)

(assert (=> b!4452195 (= e!2772412 e!2772413)))

(declare-fun c!758003 () Bool)

(assert (=> b!4452195 (= c!758003 (and ((_ is Cons!49868) (t!356938 (toList!3717 lm!1616))) (not (= (_1!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))) hash!366))))))

(assert (= (and d!1357801 c!758002) b!4452194))

(assert (= (and d!1357801 (not c!758002)) b!4452195))

(assert (= (and b!4452195 c!758003) b!4452196))

(assert (= (and b!4452195 (not c!758003)) b!4452197))

(declare-fun m!5152295 () Bool)

(assert (=> b!4452196 m!5152295))

(assert (=> b!4451790 d!1357801))

(declare-fun d!1357803 () Bool)

(declare-fun res!1844941 () Bool)

(declare-fun e!2772414 () Bool)

(assert (=> d!1357803 (=> res!1844941 e!2772414)))

(assert (=> d!1357803 (= res!1844941 (and ((_ is Cons!49867) (t!356937 (t!356937 newBucket!194))) (= (_1!28213 (h!55610 (t!356937 (t!356937 newBucket!194)))) (_1!28213 (h!55610 (t!356937 newBucket!194))))))))

(assert (=> d!1357803 (= (containsKey!1294 (t!356937 (t!356937 newBucket!194)) (_1!28213 (h!55610 (t!356937 newBucket!194)))) e!2772414)))

(declare-fun b!4452198 () Bool)

(declare-fun e!2772415 () Bool)

(assert (=> b!4452198 (= e!2772414 e!2772415)))

(declare-fun res!1844942 () Bool)

(assert (=> b!4452198 (=> (not res!1844942) (not e!2772415))))

(assert (=> b!4452198 (= res!1844942 ((_ is Cons!49867) (t!356937 (t!356937 newBucket!194))))))

(declare-fun b!4452199 () Bool)

(assert (=> b!4452199 (= e!2772415 (containsKey!1294 (t!356937 (t!356937 (t!356937 newBucket!194))) (_1!28213 (h!55610 (t!356937 newBucket!194)))))))

(assert (= (and d!1357803 (not res!1844941)) b!4452198))

(assert (= (and b!4452198 res!1844942) b!4452199))

(declare-fun m!5152297 () Bool)

(assert (=> b!4452199 m!5152297))

(assert (=> b!4451947 d!1357803))

(declare-fun e!2772417 () Option!10838)

(declare-fun b!4452202 () Bool)

(assert (=> b!4452202 (= e!2772417 (getValueByKey!824 (t!356937 (t!356937 (toList!3718 lt!1644187))) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun b!4452201 () Bool)

(declare-fun e!2772416 () Option!10838)

(assert (=> b!4452201 (= e!2772416 e!2772417)))

(declare-fun c!758005 () Bool)

(assert (=> b!4452201 (= c!758005 (and ((_ is Cons!49867) (t!356937 (toList!3718 lt!1644187))) (not (= (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644187)))) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))))

(declare-fun b!4452203 () Bool)

(assert (=> b!4452203 (= e!2772417 None!10837)))

(declare-fun c!758004 () Bool)

(declare-fun d!1357805 () Bool)

(assert (=> d!1357805 (= c!758004 (and ((_ is Cons!49867) (t!356937 (toList!3718 lt!1644187))) (= (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644187)))) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))))

(assert (=> d!1357805 (= (getValueByKey!824 (t!356937 (toList!3718 lt!1644187)) (_1!28213 (tuple2!49839 key!3717 newValue!93))) e!2772416)))

(declare-fun b!4452200 () Bool)

(assert (=> b!4452200 (= e!2772416 (Some!10837 (_2!28213 (h!55610 (t!356937 (toList!3718 lt!1644187))))))))

(assert (= (and d!1357805 c!758004) b!4452200))

(assert (= (and d!1357805 (not c!758004)) b!4452201))

(assert (= (and b!4452201 c!758005) b!4452202))

(assert (= (and b!4452201 (not c!758005)) b!4452203))

(declare-fun m!5152299 () Bool)

(assert (=> b!4452202 m!5152299))

(assert (=> b!4451462 d!1357805))

(declare-fun d!1357807 () Bool)

(declare-fun res!1844943 () Bool)

(declare-fun e!2772418 () Bool)

(assert (=> d!1357807 (=> res!1844943 e!2772418)))

(assert (=> d!1357807 (= res!1844943 ((_ is Nil!49867) (ite c!757904 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> d!1357807 (= (forall!9758 (ite c!757904 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (ite c!757904 lambda!159174 lambda!159176)) e!2772418)))

(declare-fun b!4452204 () Bool)

(declare-fun e!2772419 () Bool)

(assert (=> b!4452204 (= e!2772418 e!2772419)))

(declare-fun res!1844944 () Bool)

(assert (=> b!4452204 (=> (not res!1844944) (not e!2772419))))

(assert (=> b!4452204 (= res!1844944 (dynLambda!20940 (ite c!757904 lambda!159174 lambda!159176) (h!55610 (ite c!757904 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))))

(declare-fun b!4452205 () Bool)

(assert (=> b!4452205 (= e!2772419 (forall!9758 (t!356937 (ite c!757904 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (ite c!757904 lambda!159174 lambda!159176)))))

(assert (= (and d!1357807 (not res!1844943)) b!4452204))

(assert (= (and b!4452204 res!1844944) b!4452205))

(declare-fun b_lambda!147083 () Bool)

(assert (=> (not b_lambda!147083) (not b!4452204)))

(declare-fun m!5152301 () Bool)

(assert (=> b!4452204 m!5152301))

(declare-fun m!5152303 () Bool)

(assert (=> b!4452205 m!5152303))

(assert (=> bm!309800 d!1357807))

(assert (=> b!4451841 d!1357769))

(declare-fun d!1357809 () Bool)

(assert (=> d!1357809 (containsKey!1296 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))

(declare-fun lt!1644735 () Unit!85492)

(assert (=> d!1357809 (= lt!1644735 (choose!28334 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(assert (=> d!1357809 (invariantList!860 (toList!3718 lt!1644187))))

(assert (=> d!1357809 (= (lemmaInGetKeysListThenContainsKey!304 (toList!3718 lt!1644187) (_1!28213 (tuple2!49839 key!3717 newValue!93))) lt!1644735)))

(declare-fun bs!789160 () Bool)

(assert (= bs!789160 d!1357809))

(assert (=> bs!789160 m!5151655))

(declare-fun m!5152305 () Bool)

(assert (=> bs!789160 m!5152305))

(assert (=> bs!789160 m!5152059))

(assert (=> b!4451841 d!1357809))

(declare-fun d!1357811 () Bool)

(declare-fun res!1844945 () Bool)

(declare-fun e!2772420 () Bool)

(assert (=> d!1357811 (=> res!1844945 e!2772420)))

(assert (=> d!1357811 (= res!1844945 ((_ is Nil!49867) (ite c!757964 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(assert (=> d!1357811 (= (forall!9758 (ite c!757964 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (_2!28214 (h!55611 (toList!3717 lm!1616)))) (ite c!757964 lambda!159196 lambda!159198)) e!2772420)))

(declare-fun b!4452206 () Bool)

(declare-fun e!2772421 () Bool)

(assert (=> b!4452206 (= e!2772420 e!2772421)))

(declare-fun res!1844946 () Bool)

(assert (=> b!4452206 (=> (not res!1844946) (not e!2772421))))

(assert (=> b!4452206 (= res!1844946 (dynLambda!20940 (ite c!757964 lambda!159196 lambda!159198) (h!55610 (ite c!757964 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(declare-fun b!4452207 () Bool)

(assert (=> b!4452207 (= e!2772421 (forall!9758 (t!356937 (ite c!757964 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (_2!28214 (h!55611 (toList!3717 lm!1616))))) (ite c!757964 lambda!159196 lambda!159198)))))

(assert (= (and d!1357811 (not res!1844945)) b!4452206))

(assert (= (and b!4452206 res!1844946) b!4452207))

(declare-fun b_lambda!147085 () Bool)

(assert (=> (not b_lambda!147085) (not b!4452206)))

(declare-fun m!5152307 () Bool)

(assert (=> b!4452206 m!5152307))

(declare-fun m!5152309 () Bool)

(assert (=> b!4452207 m!5152309))

(assert (=> bm!309829 d!1357811))

(declare-fun d!1357813 () Bool)

(assert (=> d!1357813 (= (invariantList!860 lt!1644587) (noDuplicatedKeys!199 lt!1644587))))

(declare-fun bs!789161 () Bool)

(assert (= bs!789161 d!1357813))

(declare-fun m!5152311 () Bool)

(assert (=> bs!789161 m!5152311))

(assert (=> d!1357577 d!1357813))

(assert (=> d!1357577 d!1357727))

(declare-fun d!1357815 () Bool)

(declare-fun e!2772422 () Bool)

(assert (=> d!1357815 e!2772422))

(declare-fun res!1844947 () Bool)

(assert (=> d!1357815 (=> (not res!1844947) (not e!2772422))))

(declare-fun lt!1644737 () ListMap!2961)

(assert (=> d!1357815 (= res!1844947 (contains!12462 lt!1644737 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(declare-fun lt!1644738 () List!49991)

(assert (=> d!1357815 (= lt!1644737 (ListMap!2962 lt!1644738))))

(declare-fun lt!1644736 () Unit!85492)

(declare-fun lt!1644739 () Unit!85492)

(assert (=> d!1357815 (= lt!1644736 lt!1644739)))

(assert (=> d!1357815 (= (getValueByKey!824 lt!1644738 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (Some!10837 (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> d!1357815 (= lt!1644739 (lemmaContainsTupThenGetReturnValue!539 lt!1644738 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> d!1357815 (= lt!1644738 (insertNoDuplicatedKeys!234 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> d!1357815 (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644737)))

(declare-fun b!4452208 () Bool)

(declare-fun res!1844948 () Bool)

(assert (=> b!4452208 (=> (not res!1844948) (not e!2772422))))

(assert (=> b!4452208 (= res!1844948 (= (getValueByKey!824 (toList!3718 lt!1644737) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (Some!10837 (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))))

(declare-fun b!4452209 () Bool)

(assert (=> b!4452209 (= e!2772422 (contains!12466 (toList!3718 lt!1644737) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(assert (= (and d!1357815 res!1844947) b!4452208))

(assert (= (and b!4452208 res!1844948) b!4452209))

(declare-fun m!5152313 () Bool)

(assert (=> d!1357815 m!5152313))

(declare-fun m!5152315 () Bool)

(assert (=> d!1357815 m!5152315))

(declare-fun m!5152317 () Bool)

(assert (=> d!1357815 m!5152317))

(declare-fun m!5152319 () Bool)

(assert (=> d!1357815 m!5152319))

(declare-fun m!5152321 () Bool)

(assert (=> b!4452208 m!5152321))

(declare-fun m!5152323 () Bool)

(assert (=> b!4452209 m!5152323))

(assert (=> b!4451737 d!1357815))

(declare-fun bs!789162 () Bool)

(declare-fun b!4452213 () Bool)

(assert (= bs!789162 (and b!4452213 d!1357635)))

(declare-fun lambda!159225 () Int)

(assert (=> bs!789162 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159225 lambda!159203))))

(declare-fun bs!789163 () Bool)

(assert (= bs!789163 (and b!4452213 d!1357387)))

(assert (=> bs!789163 (not (= lambda!159225 lambda!159085))))

(declare-fun bs!789164 () Bool)

(assert (= bs!789164 (and b!4452213 b!4452022)))

(assert (=> bs!789164 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644668) (= lambda!159225 lambda!159216))))

(declare-fun bs!789165 () Bool)

(assert (= bs!789165 (and b!4452213 d!1357447)))

(assert (=> bs!789165 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644481) (= lambda!159225 lambda!159177))))

(declare-fun bs!789166 () Bool)

(assert (= bs!789166 (and b!4452213 d!1357603)))

(assert (=> bs!789166 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644617) (= lambda!159225 lambda!159199))))

(declare-fun bs!789167 () Bool)

(assert (= bs!789167 (and b!4452213 b!4451737)))

(assert (=> bs!789167 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159225 lambda!159175))))

(declare-fun bs!789168 () Bool)

(assert (= bs!789168 (and b!4452213 d!1357737)))

(assert (=> bs!789168 (not (= lambda!159225 lambda!159220))))

(declare-fun bs!789169 () Bool)

(assert (= bs!789169 (and b!4452213 d!1357645)))

(assert (=> bs!789169 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644645) (= lambda!159225 lambda!159207))))

(declare-fun bs!789170 () Bool)

(assert (= bs!789170 (and b!4452213 b!4451965)))

(assert (=> bs!789170 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644603) (= lambda!159225 lambda!159198))))

(assert (=> bs!789170 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159225 lambda!159197))))

(declare-fun bs!789171 () Bool)

(assert (= bs!789171 (and b!4452213 b!4452025)))

(assert (=> bs!789171 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159225 lambda!159214))))

(declare-fun bs!789172 () Bool)

(assert (= bs!789172 (and b!4452213 b!4451740)))

(assert (=> bs!789172 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159225 lambda!159174))))

(assert (=> bs!789167 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644467) (= lambda!159225 lambda!159176))))

(declare-fun bs!789173 () Bool)

(assert (= bs!789173 (and b!4452213 d!1357663)))

(assert (=> bs!789173 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644682) (= lambda!159225 lambda!159217))))

(assert (=> bs!789164 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159225 lambda!159215))))

(declare-fun bs!789174 () Bool)

(assert (= bs!789174 (and b!4452213 d!1357655)))

(assert (=> bs!789174 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644603) (= lambda!159225 lambda!159213))))

(declare-fun bs!789175 () Bool)

(assert (= bs!789175 (and b!4452213 b!4451996)))

(assert (=> bs!789175 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159225 lambda!159205))))

(declare-fun bs!789176 () Bool)

(assert (= bs!789176 (and b!4452213 b!4451999)))

(assert (=> bs!789176 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159225 lambda!159204))))

(assert (=> bs!789175 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644631) (= lambda!159225 lambda!159206))))

(declare-fun bs!789177 () Bool)

(assert (= bs!789177 (and b!4452213 b!4451968)))

(assert (=> bs!789177 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159225 lambda!159196))))

(assert (=> b!4452213 true))

(declare-fun bs!789178 () Bool)

(declare-fun b!4452210 () Bool)

(assert (= bs!789178 (and b!4452210 d!1357635)))

(declare-fun lambda!159226 () Int)

(assert (=> bs!789178 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159226 lambda!159203))))

(declare-fun bs!789179 () Bool)

(assert (= bs!789179 (and b!4452210 d!1357387)))

(assert (=> bs!789179 (not (= lambda!159226 lambda!159085))))

(declare-fun bs!789180 () Bool)

(assert (= bs!789180 (and b!4452210 b!4452022)))

(assert (=> bs!789180 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644668) (= lambda!159226 lambda!159216))))

(declare-fun bs!789181 () Bool)

(assert (= bs!789181 (and b!4452210 b!4452213)))

(assert (=> bs!789181 (= lambda!159226 lambda!159225)))

(declare-fun bs!789182 () Bool)

(assert (= bs!789182 (and b!4452210 d!1357447)))

(assert (=> bs!789182 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644481) (= lambda!159226 lambda!159177))))

(declare-fun bs!789183 () Bool)

(assert (= bs!789183 (and b!4452210 d!1357603)))

(assert (=> bs!789183 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644617) (= lambda!159226 lambda!159199))))

(declare-fun bs!789184 () Bool)

(assert (= bs!789184 (and b!4452210 b!4451737)))

(assert (=> bs!789184 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159226 lambda!159175))))

(declare-fun bs!789185 () Bool)

(assert (= bs!789185 (and b!4452210 d!1357737)))

(assert (=> bs!789185 (not (= lambda!159226 lambda!159220))))

(declare-fun bs!789186 () Bool)

(assert (= bs!789186 (and b!4452210 d!1357645)))

(assert (=> bs!789186 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644645) (= lambda!159226 lambda!159207))))

(declare-fun bs!789187 () Bool)

(assert (= bs!789187 (and b!4452210 b!4451965)))

(assert (=> bs!789187 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644603) (= lambda!159226 lambda!159198))))

(assert (=> bs!789187 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159226 lambda!159197))))

(declare-fun bs!789188 () Bool)

(assert (= bs!789188 (and b!4452210 b!4452025)))

(assert (=> bs!789188 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159226 lambda!159214))))

(declare-fun bs!789189 () Bool)

(assert (= bs!789189 (and b!4452210 b!4451740)))

(assert (=> bs!789189 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159226 lambda!159174))))

(assert (=> bs!789184 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644467) (= lambda!159226 lambda!159176))))

(declare-fun bs!789190 () Bool)

(assert (= bs!789190 (and b!4452210 d!1357663)))

(assert (=> bs!789190 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644682) (= lambda!159226 lambda!159217))))

(assert (=> bs!789180 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159226 lambda!159215))))

(declare-fun bs!789191 () Bool)

(assert (= bs!789191 (and b!4452210 d!1357655)))

(assert (=> bs!789191 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644603) (= lambda!159226 lambda!159213))))

(declare-fun bs!789192 () Bool)

(assert (= bs!789192 (and b!4452210 b!4451996)))

(assert (=> bs!789192 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159226 lambda!159205))))

(declare-fun bs!789193 () Bool)

(assert (= bs!789193 (and b!4452210 b!4451999)))

(assert (=> bs!789193 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159226 lambda!159204))))

(assert (=> bs!789192 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644631) (= lambda!159226 lambda!159206))))

(declare-fun bs!789194 () Bool)

(assert (= bs!789194 (and b!4452210 b!4451968)))

(assert (=> bs!789194 (= (= (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159226 lambda!159196))))

(assert (=> b!4452210 true))

(declare-fun lt!1644742 () ListMap!2961)

(declare-fun lambda!159227 () Int)

(assert (=> bs!789178 (= (= lt!1644742 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159227 lambda!159203))))

(assert (=> bs!789179 (not (= lambda!159227 lambda!159085))))

(assert (=> bs!789180 (= (= lt!1644742 lt!1644668) (= lambda!159227 lambda!159216))))

(assert (=> b!4452210 (= (= lt!1644742 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159227 lambda!159226))))

(assert (=> bs!789181 (= (= lt!1644742 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159227 lambda!159225))))

(assert (=> bs!789182 (= (= lt!1644742 lt!1644481) (= lambda!159227 lambda!159177))))

(assert (=> bs!789183 (= (= lt!1644742 lt!1644617) (= lambda!159227 lambda!159199))))

(assert (=> bs!789184 (= (= lt!1644742 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159227 lambda!159175))))

(assert (=> bs!789185 (not (= lambda!159227 lambda!159220))))

(assert (=> bs!789186 (= (= lt!1644742 lt!1644645) (= lambda!159227 lambda!159207))))

(assert (=> bs!789187 (= (= lt!1644742 lt!1644603) (= lambda!159227 lambda!159198))))

(assert (=> bs!789187 (= (= lt!1644742 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159227 lambda!159197))))

(assert (=> bs!789188 (= (= lt!1644742 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159227 lambda!159214))))

(assert (=> bs!789189 (= (= lt!1644742 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159227 lambda!159174))))

(assert (=> bs!789184 (= (= lt!1644742 lt!1644467) (= lambda!159227 lambda!159176))))

(assert (=> bs!789190 (= (= lt!1644742 lt!1644682) (= lambda!159227 lambda!159217))))

(assert (=> bs!789180 (= (= lt!1644742 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159227 lambda!159215))))

(assert (=> bs!789191 (= (= lt!1644742 lt!1644603) (= lambda!159227 lambda!159213))))

(assert (=> bs!789192 (= (= lt!1644742 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159227 lambda!159205))))

(assert (=> bs!789193 (= (= lt!1644742 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159227 lambda!159204))))

(assert (=> bs!789192 (= (= lt!1644742 lt!1644631) (= lambda!159227 lambda!159206))))

(assert (=> bs!789194 (= (= lt!1644742 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159227 lambda!159196))))

(assert (=> b!4452210 true))

(declare-fun bs!789195 () Bool)

(declare-fun d!1357817 () Bool)

(assert (= bs!789195 (and d!1357817 d!1357635)))

(declare-fun lt!1644756 () ListMap!2961)

(declare-fun lambda!159228 () Int)

(assert (=> bs!789195 (= (= lt!1644756 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159228 lambda!159203))))

(declare-fun bs!789196 () Bool)

(assert (= bs!789196 (and d!1357817 d!1357387)))

(assert (=> bs!789196 (not (= lambda!159228 lambda!159085))))

(declare-fun bs!789197 () Bool)

(assert (= bs!789197 (and d!1357817 b!4452022)))

(assert (=> bs!789197 (= (= lt!1644756 lt!1644668) (= lambda!159228 lambda!159216))))

(declare-fun bs!789198 () Bool)

(assert (= bs!789198 (and d!1357817 b!4452210)))

(assert (=> bs!789198 (= (= lt!1644756 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159228 lambda!159226))))

(declare-fun bs!789199 () Bool)

(assert (= bs!789199 (and d!1357817 b!4452213)))

(assert (=> bs!789199 (= (= lt!1644756 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159228 lambda!159225))))

(declare-fun bs!789200 () Bool)

(assert (= bs!789200 (and d!1357817 d!1357447)))

(assert (=> bs!789200 (= (= lt!1644756 lt!1644481) (= lambda!159228 lambda!159177))))

(declare-fun bs!789201 () Bool)

(assert (= bs!789201 (and d!1357817 d!1357603)))

(assert (=> bs!789201 (= (= lt!1644756 lt!1644617) (= lambda!159228 lambda!159199))))

(assert (=> bs!789198 (= (= lt!1644756 lt!1644742) (= lambda!159228 lambda!159227))))

(declare-fun bs!789202 () Bool)

(assert (= bs!789202 (and d!1357817 b!4451737)))

(assert (=> bs!789202 (= (= lt!1644756 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159228 lambda!159175))))

(declare-fun bs!789203 () Bool)

(assert (= bs!789203 (and d!1357817 d!1357737)))

(assert (=> bs!789203 (not (= lambda!159228 lambda!159220))))

(declare-fun bs!789204 () Bool)

(assert (= bs!789204 (and d!1357817 d!1357645)))

(assert (=> bs!789204 (= (= lt!1644756 lt!1644645) (= lambda!159228 lambda!159207))))

(declare-fun bs!789205 () Bool)

(assert (= bs!789205 (and d!1357817 b!4451965)))

(assert (=> bs!789205 (= (= lt!1644756 lt!1644603) (= lambda!159228 lambda!159198))))

(assert (=> bs!789205 (= (= lt!1644756 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159228 lambda!159197))))

(declare-fun bs!789206 () Bool)

(assert (= bs!789206 (and d!1357817 b!4452025)))

(assert (=> bs!789206 (= (= lt!1644756 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159228 lambda!159214))))

(declare-fun bs!789207 () Bool)

(assert (= bs!789207 (and d!1357817 b!4451740)))

(assert (=> bs!789207 (= (= lt!1644756 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159228 lambda!159174))))

(assert (=> bs!789202 (= (= lt!1644756 lt!1644467) (= lambda!159228 lambda!159176))))

(declare-fun bs!789208 () Bool)

(assert (= bs!789208 (and d!1357817 d!1357663)))

(assert (=> bs!789208 (= (= lt!1644756 lt!1644682) (= lambda!159228 lambda!159217))))

(assert (=> bs!789197 (= (= lt!1644756 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159228 lambda!159215))))

(declare-fun bs!789209 () Bool)

(assert (= bs!789209 (and d!1357817 d!1357655)))

(assert (=> bs!789209 (= (= lt!1644756 lt!1644603) (= lambda!159228 lambda!159213))))

(declare-fun bs!789210 () Bool)

(assert (= bs!789210 (and d!1357817 b!4451996)))

(assert (=> bs!789210 (= (= lt!1644756 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159228 lambda!159205))))

(declare-fun bs!789211 () Bool)

(assert (= bs!789211 (and d!1357817 b!4451999)))

(assert (=> bs!789211 (= (= lt!1644756 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159228 lambda!159204))))

(assert (=> bs!789210 (= (= lt!1644756 lt!1644631) (= lambda!159228 lambda!159206))))

(declare-fun bs!789212 () Bool)

(assert (= bs!789212 (and d!1357817 b!4451968)))

(assert (=> bs!789212 (= (= lt!1644756 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159228 lambda!159196))))

(assert (=> d!1357817 true))

(declare-fun e!2772425 () ListMap!2961)

(assert (=> b!4452210 (= e!2772425 lt!1644742)))

(declare-fun lt!1644759 () ListMap!2961)

(assert (=> b!4452210 (= lt!1644759 (+!1267 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> b!4452210 (= lt!1644742 (addToMapMapFromBucket!471 (t!356937 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (+!1267 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))))

(declare-fun lt!1644740 () Unit!85492)

(declare-fun call!309853 () Unit!85492)

(assert (=> b!4452210 (= lt!1644740 call!309853)))

(assert (=> b!4452210 (forall!9758 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) lambda!159226)))

(declare-fun lt!1644760 () Unit!85492)

(assert (=> b!4452210 (= lt!1644760 lt!1644740)))

(assert (=> b!4452210 (forall!9758 (toList!3718 lt!1644759) lambda!159227)))

(declare-fun lt!1644748 () Unit!85492)

(declare-fun Unit!85604 () Unit!85492)

(assert (=> b!4452210 (= lt!1644748 Unit!85604)))

(declare-fun call!309854 () Bool)

(assert (=> b!4452210 call!309854))

(declare-fun lt!1644744 () Unit!85492)

(declare-fun Unit!85605 () Unit!85492)

(assert (=> b!4452210 (= lt!1644744 Unit!85605)))

(declare-fun lt!1644750 () Unit!85492)

(declare-fun Unit!85606 () Unit!85492)

(assert (=> b!4452210 (= lt!1644750 Unit!85606)))

(declare-fun lt!1644741 () Unit!85492)

(assert (=> b!4452210 (= lt!1644741 (forallContained!2161 (toList!3718 lt!1644759) lambda!159227 (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> b!4452210 (contains!12462 lt!1644759 (_1!28213 (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(declare-fun lt!1644755 () Unit!85492)

(declare-fun Unit!85607 () Unit!85492)

(assert (=> b!4452210 (= lt!1644755 Unit!85607)))

(assert (=> b!4452210 (contains!12462 lt!1644742 (_1!28213 (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(declare-fun lt!1644749 () Unit!85492)

(declare-fun Unit!85608 () Unit!85492)

(assert (=> b!4452210 (= lt!1644749 Unit!85608)))

(assert (=> b!4452210 (forall!9758 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))) lambda!159227)))

(declare-fun lt!1644747 () Unit!85492)

(declare-fun Unit!85609 () Unit!85492)

(assert (=> b!4452210 (= lt!1644747 Unit!85609)))

(assert (=> b!4452210 (forall!9758 (toList!3718 lt!1644759) lambda!159227)))

(declare-fun lt!1644753 () Unit!85492)

(declare-fun Unit!85610 () Unit!85492)

(assert (=> b!4452210 (= lt!1644753 Unit!85610)))

(declare-fun lt!1644752 () Unit!85492)

(declare-fun Unit!85611 () Unit!85492)

(assert (=> b!4452210 (= lt!1644752 Unit!85611)))

(declare-fun lt!1644758 () Unit!85492)

(assert (=> b!4452210 (= lt!1644758 (addForallContainsKeyThenBeforeAdding!217 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644742 (_1!28213 (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (_2!28213 (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))))

(assert (=> b!4452210 (forall!9758 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) lambda!159227)))

(declare-fun lt!1644745 () Unit!85492)

(assert (=> b!4452210 (= lt!1644745 lt!1644758)))

(assert (=> b!4452210 (forall!9758 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) lambda!159227)))

(declare-fun lt!1644751 () Unit!85492)

(declare-fun Unit!85612 () Unit!85492)

(assert (=> b!4452210 (= lt!1644751 Unit!85612)))

(declare-fun res!1844949 () Bool)

(declare-fun call!309852 () Bool)

(assert (=> b!4452210 (= res!1844949 call!309852)))

(declare-fun e!2772423 () Bool)

(assert (=> b!4452210 (=> (not res!1844949) (not e!2772423))))

(assert (=> b!4452210 e!2772423))

(declare-fun lt!1644743 () Unit!85492)

(declare-fun Unit!85613 () Unit!85492)

(assert (=> b!4452210 (= lt!1644743 Unit!85613)))

(declare-fun b!4452211 () Bool)

(declare-fun res!1844951 () Bool)

(declare-fun e!2772424 () Bool)

(assert (=> b!4452211 (=> (not res!1844951) (not e!2772424))))

(assert (=> b!4452211 (= res!1844951 (forall!9758 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) lambda!159228))))

(declare-fun bm!309847 () Bool)

(declare-fun c!758006 () Bool)

(assert (=> bm!309847 (= call!309852 (forall!9758 (ite c!758006 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (ite c!758006 lambda!159225 lambda!159227)))))

(declare-fun b!4452212 () Bool)

(assert (=> b!4452212 (= e!2772424 (invariantList!860 (toList!3718 lt!1644756)))))

(declare-fun bm!309848 () Bool)

(assert (=> bm!309848 (= call!309853 (lemmaContainsAllItsOwnKeys!217 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(declare-fun bm!309849 () Bool)

(assert (=> bm!309849 (= call!309854 (forall!9758 (ite c!758006 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (t!356937 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (ite c!758006 lambda!159225 lambda!159227)))))

(assert (=> d!1357817 e!2772424))

(declare-fun res!1844950 () Bool)

(assert (=> d!1357817 (=> (not res!1844950) (not e!2772424))))

(assert (=> d!1357817 (= res!1844950 (forall!9758 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))) lambda!159228))))

(assert (=> d!1357817 (= lt!1644756 e!2772425)))

(assert (=> d!1357817 (= c!758006 ((_ is Nil!49867) (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(assert (=> d!1357817 (noDuplicateKeys!865 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))

(assert (=> d!1357817 (= (addToMapMapFromBucket!471 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) lt!1644756)))

(assert (=> b!4452213 (= e!2772425 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(declare-fun lt!1644746 () Unit!85492)

(assert (=> b!4452213 (= lt!1644746 call!309853)))

(assert (=> b!4452213 call!309852))

(declare-fun lt!1644757 () Unit!85492)

(assert (=> b!4452213 (= lt!1644757 lt!1644746)))

(assert (=> b!4452213 call!309854))

(declare-fun lt!1644754 () Unit!85492)

(declare-fun Unit!85614 () Unit!85492)

(assert (=> b!4452213 (= lt!1644754 Unit!85614)))

(declare-fun b!4452214 () Bool)

(assert (=> b!4452214 (= e!2772423 (forall!9758 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) lambda!159227))))

(assert (= (and d!1357817 c!758006) b!4452213))

(assert (= (and d!1357817 (not c!758006)) b!4452210))

(assert (= (and b!4452210 res!1844949) b!4452214))

(assert (= (or b!4452213 b!4452210) bm!309848))

(assert (= (or b!4452213 b!4452210) bm!309847))

(assert (= (or b!4452213 b!4452210) bm!309849))

(assert (= (and d!1357817 res!1844950) b!4452211))

(assert (= (and b!4452211 res!1844951) b!4452212))

(declare-fun m!5152325 () Bool)

(assert (=> bm!309849 m!5152325))

(declare-fun m!5152327 () Bool)

(assert (=> b!4452211 m!5152327))

(declare-fun m!5152329 () Bool)

(assert (=> b!4452214 m!5152329))

(declare-fun m!5152331 () Bool)

(assert (=> bm!309847 m!5152331))

(declare-fun m!5152333 () Bool)

(assert (=> d!1357817 m!5152333))

(assert (=> d!1357817 m!5151183))

(declare-fun m!5152335 () Bool)

(assert (=> b!4452212 m!5152335))

(assert (=> bm!309848 m!5151517))

(declare-fun m!5152337 () Bool)

(assert (=> bm!309848 m!5152337))

(declare-fun m!5152339 () Bool)

(assert (=> b!4452210 m!5152339))

(assert (=> b!4452210 m!5152329))

(assert (=> b!4452210 m!5151517))

(declare-fun m!5152341 () Bool)

(assert (=> b!4452210 m!5152341))

(declare-fun m!5152343 () Bool)

(assert (=> b!4452210 m!5152343))

(declare-fun m!5152345 () Bool)

(assert (=> b!4452210 m!5152345))

(declare-fun m!5152347 () Bool)

(assert (=> b!4452210 m!5152347))

(assert (=> b!4452210 m!5152329))

(declare-fun m!5152349 () Bool)

(assert (=> b!4452210 m!5152349))

(assert (=> b!4452210 m!5151517))

(declare-fun m!5152351 () Bool)

(assert (=> b!4452210 m!5152351))

(assert (=> b!4452210 m!5152351))

(declare-fun m!5152353 () Bool)

(assert (=> b!4452210 m!5152353))

(declare-fun m!5152355 () Bool)

(assert (=> b!4452210 m!5152355))

(assert (=> b!4452210 m!5152347))

(assert (=> b!4451737 d!1357817))

(declare-fun d!1357819 () Bool)

(declare-fun res!1844952 () Bool)

(declare-fun e!2772426 () Bool)

(assert (=> d!1357819 (=> res!1844952 e!2772426)))

(assert (=> d!1357819 (= res!1844952 ((_ is Nil!49867) (toList!3718 lt!1644484)))))

(assert (=> d!1357819 (= (forall!9758 (toList!3718 lt!1644484) lambda!159176) e!2772426)))

(declare-fun b!4452215 () Bool)

(declare-fun e!2772427 () Bool)

(assert (=> b!4452215 (= e!2772426 e!2772427)))

(declare-fun res!1844953 () Bool)

(assert (=> b!4452215 (=> (not res!1844953) (not e!2772427))))

(assert (=> b!4452215 (= res!1844953 (dynLambda!20940 lambda!159176 (h!55610 (toList!3718 lt!1644484))))))

(declare-fun b!4452216 () Bool)

(assert (=> b!4452216 (= e!2772427 (forall!9758 (t!356937 (toList!3718 lt!1644484)) lambda!159176))))

(assert (= (and d!1357819 (not res!1844952)) b!4452215))

(assert (= (and b!4452215 res!1844953) b!4452216))

(declare-fun b_lambda!147087 () Bool)

(assert (=> (not b_lambda!147087) (not b!4452215)))

(declare-fun m!5152357 () Bool)

(assert (=> b!4452215 m!5152357))

(declare-fun m!5152359 () Bool)

(assert (=> b!4452216 m!5152359))

(assert (=> b!4451737 d!1357819))

(declare-fun d!1357821 () Bool)

(declare-fun res!1844954 () Bool)

(declare-fun e!2772428 () Bool)

(assert (=> d!1357821 (=> res!1844954 e!2772428)))

(assert (=> d!1357821 (= res!1844954 ((_ is Nil!49867) (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119))))))))

(assert (=> d!1357821 (= (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) lambda!159175) e!2772428)))

(declare-fun b!4452217 () Bool)

(declare-fun e!2772429 () Bool)

(assert (=> b!4452217 (= e!2772428 e!2772429)))

(declare-fun res!1844955 () Bool)

(assert (=> b!4452217 (=> (not res!1844955) (not e!2772429))))

(assert (=> b!4452217 (= res!1844955 (dynLambda!20940 lambda!159175 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))))))))

(declare-fun b!4452218 () Bool)

(assert (=> b!4452218 (= e!2772429 (forall!9758 (t!356937 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119))))) lambda!159175))))

(assert (= (and d!1357821 (not res!1844954)) b!4452217))

(assert (= (and b!4452217 res!1844955) b!4452218))

(declare-fun b_lambda!147089 () Bool)

(assert (=> (not b_lambda!147089) (not b!4452217)))

(declare-fun m!5152361 () Bool)

(assert (=> b!4452217 m!5152361))

(declare-fun m!5152363 () Bool)

(assert (=> b!4452218 m!5152363))

(assert (=> b!4451737 d!1357821))

(declare-fun bs!789213 () Bool)

(declare-fun d!1357823 () Bool)

(assert (= bs!789213 (and d!1357823 d!1357817)))

(declare-fun lambda!159229 () Int)

(assert (=> bs!789213 (= (= lt!1644467 lt!1644756) (= lambda!159229 lambda!159228))))

(declare-fun bs!789214 () Bool)

(assert (= bs!789214 (and d!1357823 d!1357635)))

(assert (=> bs!789214 (= (= lt!1644467 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159229 lambda!159203))))

(declare-fun bs!789215 () Bool)

(assert (= bs!789215 (and d!1357823 d!1357387)))

(assert (=> bs!789215 (not (= lambda!159229 lambda!159085))))

(declare-fun bs!789216 () Bool)

(assert (= bs!789216 (and d!1357823 b!4452022)))

(assert (=> bs!789216 (= (= lt!1644467 lt!1644668) (= lambda!159229 lambda!159216))))

(declare-fun bs!789217 () Bool)

(assert (= bs!789217 (and d!1357823 b!4452210)))

(assert (=> bs!789217 (= (= lt!1644467 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159229 lambda!159226))))

(declare-fun bs!789218 () Bool)

(assert (= bs!789218 (and d!1357823 b!4452213)))

(assert (=> bs!789218 (= (= lt!1644467 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159229 lambda!159225))))

(declare-fun bs!789219 () Bool)

(assert (= bs!789219 (and d!1357823 d!1357447)))

(assert (=> bs!789219 (= (= lt!1644467 lt!1644481) (= lambda!159229 lambda!159177))))

(declare-fun bs!789220 () Bool)

(assert (= bs!789220 (and d!1357823 d!1357603)))

(assert (=> bs!789220 (= (= lt!1644467 lt!1644617) (= lambda!159229 lambda!159199))))

(assert (=> bs!789217 (= (= lt!1644467 lt!1644742) (= lambda!159229 lambda!159227))))

(declare-fun bs!789221 () Bool)

(assert (= bs!789221 (and d!1357823 b!4451737)))

(assert (=> bs!789221 (= (= lt!1644467 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159229 lambda!159175))))

(declare-fun bs!789222 () Bool)

(assert (= bs!789222 (and d!1357823 d!1357737)))

(assert (=> bs!789222 (not (= lambda!159229 lambda!159220))))

(declare-fun bs!789223 () Bool)

(assert (= bs!789223 (and d!1357823 d!1357645)))

(assert (=> bs!789223 (= (= lt!1644467 lt!1644645) (= lambda!159229 lambda!159207))))

(declare-fun bs!789224 () Bool)

(assert (= bs!789224 (and d!1357823 b!4451965)))

(assert (=> bs!789224 (= (= lt!1644467 lt!1644603) (= lambda!159229 lambda!159198))))

(assert (=> bs!789224 (= (= lt!1644467 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159229 lambda!159197))))

(declare-fun bs!789225 () Bool)

(assert (= bs!789225 (and d!1357823 b!4452025)))

(assert (=> bs!789225 (= (= lt!1644467 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159229 lambda!159214))))

(declare-fun bs!789226 () Bool)

(assert (= bs!789226 (and d!1357823 b!4451740)))

(assert (=> bs!789226 (= (= lt!1644467 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159229 lambda!159174))))

(assert (=> bs!789221 (= lambda!159229 lambda!159176)))

(declare-fun bs!789227 () Bool)

(assert (= bs!789227 (and d!1357823 d!1357663)))

(assert (=> bs!789227 (= (= lt!1644467 lt!1644682) (= lambda!159229 lambda!159217))))

(assert (=> bs!789216 (= (= lt!1644467 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159229 lambda!159215))))

(declare-fun bs!789228 () Bool)

(assert (= bs!789228 (and d!1357823 d!1357655)))

(assert (=> bs!789228 (= (= lt!1644467 lt!1644603) (= lambda!159229 lambda!159213))))

(declare-fun bs!789229 () Bool)

(assert (= bs!789229 (and d!1357823 b!4451996)))

(assert (=> bs!789229 (= (= lt!1644467 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159229 lambda!159205))))

(declare-fun bs!789230 () Bool)

(assert (= bs!789230 (and d!1357823 b!4451999)))

(assert (=> bs!789230 (= (= lt!1644467 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159229 lambda!159204))))

(assert (=> bs!789229 (= (= lt!1644467 lt!1644631) (= lambda!159229 lambda!159206))))

(declare-fun bs!789231 () Bool)

(assert (= bs!789231 (and d!1357823 b!4451968)))

(assert (=> bs!789231 (= (= lt!1644467 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159229 lambda!159196))))

(assert (=> d!1357823 true))

(assert (=> d!1357823 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) lambda!159229)))

(declare-fun lt!1644761 () Unit!85492)

(assert (=> d!1357823 (= lt!1644761 (choose!28340 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644467 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> d!1357823 (forall!9758 (toList!3718 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (tuple2!49839 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))) lambda!159229)))

(assert (=> d!1357823 (= (addForallContainsKeyThenBeforeAdding!217 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644467 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (_2!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) lt!1644761)))

(declare-fun bs!789232 () Bool)

(assert (= bs!789232 d!1357823))

(declare-fun m!5152365 () Bool)

(assert (=> bs!789232 m!5152365))

(assert (=> bs!789232 m!5151005))

(declare-fun m!5152367 () Bool)

(assert (=> bs!789232 m!5152367))

(assert (=> bs!789232 m!5151005))

(declare-fun m!5152369 () Bool)

(assert (=> bs!789232 m!5152369))

(declare-fun m!5152371 () Bool)

(assert (=> bs!789232 m!5152371))

(assert (=> b!4451737 d!1357823))

(declare-fun d!1357825 () Bool)

(assert (=> d!1357825 (dynLambda!20940 lambda!159176 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))

(declare-fun lt!1644762 () Unit!85492)

(assert (=> d!1357825 (= lt!1644762 (choose!28341 (toList!3718 lt!1644484) lambda!159176 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(declare-fun e!2772430 () Bool)

(assert (=> d!1357825 e!2772430))

(declare-fun res!1844956 () Bool)

(assert (=> d!1357825 (=> (not res!1844956) (not e!2772430))))

(assert (=> d!1357825 (= res!1844956 (forall!9758 (toList!3718 lt!1644484) lambda!159176))))

(assert (=> d!1357825 (= (forallContained!2161 (toList!3718 lt!1644484) lambda!159176 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) lt!1644762)))

(declare-fun b!4452219 () Bool)

(assert (=> b!4452219 (= e!2772430 (contains!12466 (toList!3718 lt!1644484) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(assert (= (and d!1357825 res!1844956) b!4452219))

(declare-fun b_lambda!147091 () Bool)

(assert (=> (not b_lambda!147091) (not d!1357825)))

(declare-fun m!5152373 () Bool)

(assert (=> d!1357825 m!5152373))

(declare-fun m!5152375 () Bool)

(assert (=> d!1357825 m!5152375))

(assert (=> d!1357825 m!5151513))

(declare-fun m!5152377 () Bool)

(assert (=> b!4452219 m!5152377))

(assert (=> b!4451737 d!1357825))

(declare-fun b!4452220 () Bool)

(declare-fun e!2772436 () List!49994)

(assert (=> b!4452220 (= e!2772436 (keys!17104 lt!1644467))))

(declare-fun bm!309850 () Bool)

(declare-fun call!309855 () Bool)

(assert (=> bm!309850 (= call!309855 (contains!12468 e!2772436 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(declare-fun c!758008 () Bool)

(declare-fun c!758009 () Bool)

(assert (=> bm!309850 (= c!758008 c!758009)))

(declare-fun b!4452221 () Bool)

(declare-fun e!2772434 () Unit!85492)

(declare-fun Unit!85615 () Unit!85492)

(assert (=> b!4452221 (= e!2772434 Unit!85615)))

(declare-fun b!4452222 () Bool)

(declare-fun e!2772435 () Bool)

(assert (=> b!4452222 (= e!2772435 (not (contains!12468 (keys!17104 lt!1644467) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))))

(declare-fun b!4452223 () Bool)

(declare-fun e!2772433 () Unit!85492)

(declare-fun lt!1644763 () Unit!85492)

(assert (=> b!4452223 (= e!2772433 lt!1644763)))

(declare-fun lt!1644767 () Unit!85492)

(assert (=> b!4452223 (= lt!1644767 (lemmaContainsKeyImpliesGetValueByKeyDefined!729 (toList!3718 lt!1644467) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> b!4452223 (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644467) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(declare-fun lt!1644768 () Unit!85492)

(assert (=> b!4452223 (= lt!1644768 lt!1644767)))

(assert (=> b!4452223 (= lt!1644763 (lemmaInListThenGetKeysListContains!303 (toList!3718 lt!1644467) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> b!4452223 call!309855))

(declare-fun b!4452224 () Bool)

(assert (=> b!4452224 (= e!2772436 (getKeysList!306 (toList!3718 lt!1644467)))))

(declare-fun b!4452225 () Bool)

(declare-fun e!2772432 () Bool)

(declare-fun e!2772431 () Bool)

(assert (=> b!4452225 (= e!2772432 e!2772431)))

(declare-fun res!1844957 () Bool)

(assert (=> b!4452225 (=> (not res!1844957) (not e!2772431))))

(assert (=> b!4452225 (= res!1844957 (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644467) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))))

(declare-fun b!4452226 () Bool)

(assert (=> b!4452226 false))

(declare-fun lt!1644765 () Unit!85492)

(declare-fun lt!1644764 () Unit!85492)

(assert (=> b!4452226 (= lt!1644765 lt!1644764)))

(assert (=> b!4452226 (containsKey!1296 (toList!3718 lt!1644467) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(assert (=> b!4452226 (= lt!1644764 (lemmaInGetKeysListThenContainsKey!304 (toList!3718 lt!1644467) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(declare-fun Unit!85617 () Unit!85492)

(assert (=> b!4452226 (= e!2772434 Unit!85617)))

(declare-fun d!1357827 () Bool)

(assert (=> d!1357827 e!2772432))

(declare-fun res!1844959 () Bool)

(assert (=> d!1357827 (=> res!1844959 e!2772432)))

(assert (=> d!1357827 (= res!1844959 e!2772435)))

(declare-fun res!1844958 () Bool)

(assert (=> d!1357827 (=> (not res!1844958) (not e!2772435))))

(declare-fun lt!1644769 () Bool)

(assert (=> d!1357827 (= res!1844958 (not lt!1644769))))

(declare-fun lt!1644770 () Bool)

(assert (=> d!1357827 (= lt!1644769 lt!1644770)))

(declare-fun lt!1644766 () Unit!85492)

(assert (=> d!1357827 (= lt!1644766 e!2772433)))

(assert (=> d!1357827 (= c!758009 lt!1644770)))

(assert (=> d!1357827 (= lt!1644770 (containsKey!1296 (toList!3718 lt!1644467) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> d!1357827 (= (contains!12462 lt!1644467 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) lt!1644769)))

(declare-fun b!4452227 () Bool)

(assert (=> b!4452227 (= e!2772433 e!2772434)))

(declare-fun c!758007 () Bool)

(assert (=> b!4452227 (= c!758007 call!309855)))

(declare-fun b!4452228 () Bool)

(assert (=> b!4452228 (= e!2772431 (contains!12468 (keys!17104 lt!1644467) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (= (and d!1357827 c!758009) b!4452223))

(assert (= (and d!1357827 (not c!758009)) b!4452227))

(assert (= (and b!4452227 c!758007) b!4452226))

(assert (= (and b!4452227 (not c!758007)) b!4452221))

(assert (= (or b!4452223 b!4452227) bm!309850))

(assert (= (and bm!309850 c!758008) b!4452224))

(assert (= (and bm!309850 (not c!758008)) b!4452220))

(assert (= (and d!1357827 res!1844958) b!4452222))

(assert (= (and d!1357827 (not res!1844959)) b!4452225))

(assert (= (and b!4452225 res!1844957) b!4452228))

(declare-fun m!5152379 () Bool)

(assert (=> b!4452225 m!5152379))

(assert (=> b!4452225 m!5152379))

(declare-fun m!5152381 () Bool)

(assert (=> b!4452225 m!5152381))

(declare-fun m!5152383 () Bool)

(assert (=> b!4452226 m!5152383))

(declare-fun m!5152385 () Bool)

(assert (=> b!4452226 m!5152385))

(declare-fun m!5152387 () Bool)

(assert (=> bm!309850 m!5152387))

(declare-fun m!5152389 () Bool)

(assert (=> b!4452224 m!5152389))

(declare-fun m!5152391 () Bool)

(assert (=> b!4452222 m!5152391))

(assert (=> b!4452222 m!5152391))

(declare-fun m!5152393 () Bool)

(assert (=> b!4452222 m!5152393))

(assert (=> b!4452220 m!5152391))

(declare-fun m!5152395 () Bool)

(assert (=> b!4452223 m!5152395))

(assert (=> b!4452223 m!5152379))

(assert (=> b!4452223 m!5152379))

(assert (=> b!4452223 m!5152381))

(declare-fun m!5152397 () Bool)

(assert (=> b!4452223 m!5152397))

(assert (=> b!4452228 m!5152391))

(assert (=> b!4452228 m!5152391))

(assert (=> b!4452228 m!5152393))

(assert (=> d!1357827 m!5152383))

(assert (=> b!4451737 d!1357827))

(declare-fun b!4452229 () Bool)

(declare-fun e!2772442 () List!49994)

(assert (=> b!4452229 (= e!2772442 (keys!17104 lt!1644484))))

(declare-fun bm!309851 () Bool)

(declare-fun call!309856 () Bool)

(assert (=> bm!309851 (= call!309856 (contains!12468 e!2772442 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(declare-fun c!758011 () Bool)

(declare-fun c!758012 () Bool)

(assert (=> bm!309851 (= c!758011 c!758012)))

(declare-fun b!4452230 () Bool)

(declare-fun e!2772440 () Unit!85492)

(declare-fun Unit!85627 () Unit!85492)

(assert (=> b!4452230 (= e!2772440 Unit!85627)))

(declare-fun b!4452231 () Bool)

(declare-fun e!2772441 () Bool)

(assert (=> b!4452231 (= e!2772441 (not (contains!12468 (keys!17104 lt!1644484) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))))

(declare-fun b!4452232 () Bool)

(declare-fun e!2772439 () Unit!85492)

(declare-fun lt!1644771 () Unit!85492)

(assert (=> b!4452232 (= e!2772439 lt!1644771)))

(declare-fun lt!1644775 () Unit!85492)

(assert (=> b!4452232 (= lt!1644775 (lemmaContainsKeyImpliesGetValueByKeyDefined!729 (toList!3718 lt!1644484) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> b!4452232 (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644484) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(declare-fun lt!1644776 () Unit!85492)

(assert (=> b!4452232 (= lt!1644776 lt!1644775)))

(assert (=> b!4452232 (= lt!1644771 (lemmaInListThenGetKeysListContains!303 (toList!3718 lt!1644484) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> b!4452232 call!309856))

(declare-fun b!4452233 () Bool)

(assert (=> b!4452233 (= e!2772442 (getKeysList!306 (toList!3718 lt!1644484)))))

(declare-fun b!4452234 () Bool)

(declare-fun e!2772438 () Bool)

(declare-fun e!2772437 () Bool)

(assert (=> b!4452234 (= e!2772438 e!2772437)))

(declare-fun res!1844960 () Bool)

(assert (=> b!4452234 (=> (not res!1844960) (not e!2772437))))

(assert (=> b!4452234 (= res!1844960 (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644484) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))))

(declare-fun b!4452235 () Bool)

(assert (=> b!4452235 false))

(declare-fun lt!1644773 () Unit!85492)

(declare-fun lt!1644772 () Unit!85492)

(assert (=> b!4452235 (= lt!1644773 lt!1644772)))

(assert (=> b!4452235 (containsKey!1296 (toList!3718 lt!1644484) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(assert (=> b!4452235 (= lt!1644772 (lemmaInGetKeysListThenContainsKey!304 (toList!3718 lt!1644484) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(declare-fun Unit!85629 () Unit!85492)

(assert (=> b!4452235 (= e!2772440 Unit!85629)))

(declare-fun d!1357829 () Bool)

(assert (=> d!1357829 e!2772438))

(declare-fun res!1844962 () Bool)

(assert (=> d!1357829 (=> res!1844962 e!2772438)))

(assert (=> d!1357829 (= res!1844962 e!2772441)))

(declare-fun res!1844961 () Bool)

(assert (=> d!1357829 (=> (not res!1844961) (not e!2772441))))

(declare-fun lt!1644777 () Bool)

(assert (=> d!1357829 (= res!1844961 (not lt!1644777))))

(declare-fun lt!1644778 () Bool)

(assert (=> d!1357829 (= lt!1644777 lt!1644778)))

(declare-fun lt!1644774 () Unit!85492)

(assert (=> d!1357829 (= lt!1644774 e!2772439)))

(assert (=> d!1357829 (= c!758012 lt!1644778)))

(assert (=> d!1357829 (= lt!1644778 (containsKey!1296 (toList!3718 lt!1644484) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> d!1357829 (= (contains!12462 lt!1644484 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) lt!1644777)))

(declare-fun b!4452236 () Bool)

(assert (=> b!4452236 (= e!2772439 e!2772440)))

(declare-fun c!758010 () Bool)

(assert (=> b!4452236 (= c!758010 call!309856)))

(declare-fun b!4452237 () Bool)

(assert (=> b!4452237 (= e!2772437 (contains!12468 (keys!17104 lt!1644484) (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (= (and d!1357829 c!758012) b!4452232))

(assert (= (and d!1357829 (not c!758012)) b!4452236))

(assert (= (and b!4452236 c!758010) b!4452235))

(assert (= (and b!4452236 (not c!758010)) b!4452230))

(assert (= (or b!4452232 b!4452236) bm!309851))

(assert (= (and bm!309851 c!758011) b!4452233))

(assert (= (and bm!309851 (not c!758011)) b!4452229))

(assert (= (and d!1357829 res!1844961) b!4452231))

(assert (= (and d!1357829 (not res!1844962)) b!4452234))

(assert (= (and b!4452234 res!1844960) b!4452237))

(declare-fun m!5152399 () Bool)

(assert (=> b!4452234 m!5152399))

(assert (=> b!4452234 m!5152399))

(declare-fun m!5152401 () Bool)

(assert (=> b!4452234 m!5152401))

(declare-fun m!5152403 () Bool)

(assert (=> b!4452235 m!5152403))

(declare-fun m!5152405 () Bool)

(assert (=> b!4452235 m!5152405))

(declare-fun m!5152407 () Bool)

(assert (=> bm!309851 m!5152407))

(declare-fun m!5152409 () Bool)

(assert (=> b!4452233 m!5152409))

(declare-fun m!5152411 () Bool)

(assert (=> b!4452231 m!5152411))

(assert (=> b!4452231 m!5152411))

(declare-fun m!5152413 () Bool)

(assert (=> b!4452231 m!5152413))

(assert (=> b!4452229 m!5152411))

(declare-fun m!5152415 () Bool)

(assert (=> b!4452232 m!5152415))

(assert (=> b!4452232 m!5152399))

(assert (=> b!4452232 m!5152399))

(assert (=> b!4452232 m!5152401))

(declare-fun m!5152417 () Bool)

(assert (=> b!4452232 m!5152417))

(assert (=> b!4452237 m!5152411))

(assert (=> b!4452237 m!5152411))

(assert (=> b!4452237 m!5152413))

(assert (=> d!1357829 m!5152403))

(assert (=> b!4451737 d!1357829))

(declare-fun d!1357831 () Bool)

(declare-fun res!1844963 () Bool)

(declare-fun e!2772443 () Bool)

(assert (=> d!1357831 (=> res!1844963 e!2772443)))

(assert (=> d!1357831 (= res!1844963 ((_ is Nil!49867) (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))

(assert (=> d!1357831 (= (forall!9758 (_2!28214 (h!55611 (toList!3717 lt!1644119))) lambda!159176) e!2772443)))

(declare-fun b!4452238 () Bool)

(declare-fun e!2772444 () Bool)

(assert (=> b!4452238 (= e!2772443 e!2772444)))

(declare-fun res!1844964 () Bool)

(assert (=> b!4452238 (=> (not res!1844964) (not e!2772444))))

(assert (=> b!4452238 (= res!1844964 (dynLambda!20940 lambda!159176 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))))))

(declare-fun b!4452239 () Bool)

(assert (=> b!4452239 (= e!2772444 (forall!9758 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))) lambda!159176))))

(assert (= (and d!1357831 (not res!1844963)) b!4452238))

(assert (= (and b!4452238 res!1844964) b!4452239))

(declare-fun b_lambda!147093 () Bool)

(assert (=> (not b_lambda!147093) (not b!4452238)))

(assert (=> b!4452238 m!5152373))

(declare-fun m!5152419 () Bool)

(assert (=> b!4452239 m!5152419))

(assert (=> b!4451737 d!1357831))

(assert (=> b!4451737 d!1357679))

(declare-fun d!1357833 () Bool)

(declare-fun c!758013 () Bool)

(assert (=> d!1357833 (= c!758013 ((_ is Nil!49870) lt!1644535))))

(declare-fun e!2772445 () (InoxSet K!11235))

(assert (=> d!1357833 (= (content!8035 lt!1644535) e!2772445)))

(declare-fun b!4452240 () Bool)

(assert (=> b!4452240 (= e!2772445 ((as const (Array K!11235 Bool)) false))))

(declare-fun b!4452241 () Bool)

(assert (=> b!4452241 (= e!2772445 ((_ map or) (store ((as const (Array K!11235 Bool)) false) (h!55615 lt!1644535) true) (content!8035 (t!356940 lt!1644535))))))

(assert (= (and d!1357833 c!758013) b!4452240))

(assert (= (and d!1357833 (not c!758013)) b!4452241))

(declare-fun m!5152421 () Bool)

(assert (=> b!4452241 m!5152421))

(declare-fun m!5152423 () Bool)

(assert (=> b!4452241 m!5152423))

(assert (=> b!4451814 d!1357833))

(declare-fun d!1357835 () Bool)

(declare-fun c!758014 () Bool)

(assert (=> d!1357835 (= c!758014 ((_ is Nil!49870) (map!10914 (toList!3718 lt!1644116) lambda!159195)))))

(declare-fun e!2772446 () (InoxSet K!11235))

(assert (=> d!1357835 (= (content!8035 (map!10914 (toList!3718 lt!1644116) lambda!159195)) e!2772446)))

(declare-fun b!4452242 () Bool)

(assert (=> b!4452242 (= e!2772446 ((as const (Array K!11235 Bool)) false))))

(declare-fun b!4452243 () Bool)

(assert (=> b!4452243 (= e!2772446 ((_ map or) (store ((as const (Array K!11235 Bool)) false) (h!55615 (map!10914 (toList!3718 lt!1644116) lambda!159195)) true) (content!8035 (t!356940 (map!10914 (toList!3718 lt!1644116) lambda!159195)))))))

(assert (= (and d!1357835 c!758014) b!4452242))

(assert (= (and d!1357835 (not c!758014)) b!4452243))

(declare-fun m!5152425 () Bool)

(assert (=> b!4452243 m!5152425))

(declare-fun m!5152427 () Bool)

(assert (=> b!4452243 m!5152427))

(assert (=> b!4451814 d!1357835))

(declare-fun d!1357837 () Bool)

(declare-fun lt!1644779 () List!49994)

(assert (=> d!1357837 (= (size!35893 lt!1644779) (size!35894 (toList!3718 lt!1644116)))))

(declare-fun e!2772447 () List!49994)

(assert (=> d!1357837 (= lt!1644779 e!2772447)))

(declare-fun c!758015 () Bool)

(assert (=> d!1357837 (= c!758015 ((_ is Nil!49867) (toList!3718 lt!1644116)))))

(assert (=> d!1357837 (= (map!10914 (toList!3718 lt!1644116) lambda!159195) lt!1644779)))

(declare-fun b!4452244 () Bool)

(assert (=> b!4452244 (= e!2772447 Nil!49870)))

(declare-fun b!4452245 () Bool)

(assert (=> b!4452245 (= e!2772447 ($colon$colon!831 (map!10914 (t!356937 (toList!3718 lt!1644116)) lambda!159195) (dynLambda!20943 lambda!159195 (h!55610 (toList!3718 lt!1644116)))))))

(assert (= (and d!1357837 c!758015) b!4452244))

(assert (= (and d!1357837 (not c!758015)) b!4452245))

(declare-fun b_lambda!147095 () Bool)

(assert (=> (not b_lambda!147095) (not b!4452245)))

(declare-fun m!5152429 () Bool)

(assert (=> d!1357837 m!5152429))

(assert (=> d!1357837 m!5151837))

(declare-fun m!5152431 () Bool)

(assert (=> b!4452245 m!5152431))

(declare-fun m!5152433 () Bool)

(assert (=> b!4452245 m!5152433))

(assert (=> b!4452245 m!5152431))

(assert (=> b!4452245 m!5152433))

(declare-fun m!5152435 () Bool)

(assert (=> b!4452245 m!5152435))

(assert (=> b!4451814 d!1357837))

(assert (=> d!1357423 d!1357421))

(assert (=> d!1357423 d!1357377))

(declare-fun d!1357839 () Bool)

(declare-fun c!758016 () Bool)

(assert (=> d!1357839 (= c!758016 ((_ is Nil!49870) (getKeysList!306 lt!1644587)))))

(declare-fun e!2772448 () (InoxSet K!11235))

(assert (=> d!1357839 (= (content!8035 (getKeysList!306 lt!1644587)) e!2772448)))

(declare-fun b!4452246 () Bool)

(assert (=> b!4452246 (= e!2772448 ((as const (Array K!11235 Bool)) false))))

(declare-fun b!4452247 () Bool)

(assert (=> b!4452247 (= e!2772448 ((_ map or) (store ((as const (Array K!11235 Bool)) false) (h!55615 (getKeysList!306 lt!1644587)) true) (content!8035 (t!356940 (getKeysList!306 lt!1644587)))))))

(assert (= (and d!1357839 c!758016) b!4452246))

(assert (= (and d!1357839 (not c!758016)) b!4452247))

(declare-fun m!5152437 () Bool)

(assert (=> b!4452247 m!5152437))

(declare-fun m!5152439 () Bool)

(assert (=> b!4452247 m!5152439))

(assert (=> b!4451895 d!1357839))

(declare-fun bs!789233 () Bool)

(declare-fun b!4452252 () Bool)

(assert (= bs!789233 (and b!4452252 b!4451817)))

(declare-fun lambda!159230 () Int)

(assert (=> bs!789233 (= (= (t!356937 lt!1644587) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159230 lambda!159193))))

(declare-fun bs!789234 () Bool)

(assert (= bs!789234 (and b!4452252 b!4452153)))

(assert (=> bs!789234 (= (= (t!356937 lt!1644587) (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (= lambda!159230 lambda!159223))))

(declare-fun bs!789235 () Bool)

(assert (= bs!789235 (and b!4452252 b!4451818)))

(assert (=> bs!789235 (= (= (t!356937 lt!1644587) (t!356937 (toList!3718 lt!1644116))) (= lambda!159230 lambda!159192))))

(declare-fun bs!789236 () Bool)

(assert (= bs!789236 (and b!4452252 b!4452155)))

(assert (=> bs!789236 (= (= (t!356937 lt!1644587) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (= lambda!159230 lambda!159221))))

(declare-fun bs!789237 () Bool)

(assert (= bs!789237 (and b!4452252 b!4452154)))

(assert (=> bs!789237 (= (= (t!356937 lt!1644587) (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))) (= lambda!159230 lambda!159222))))

(declare-fun bs!789238 () Bool)

(assert (= bs!789238 (and b!4452252 b!4451816)))

(assert (=> bs!789238 (= (= (t!356937 lt!1644587) (toList!3718 lt!1644116)) (= lambda!159230 lambda!159194))))

(declare-fun bs!789239 () Bool)

(assert (= bs!789239 (and b!4452252 b!4452047)))

(assert (=> bs!789239 (= (= (t!356937 lt!1644587) (toList!3718 lt!1644187)) (= lambda!159230 lambda!159218))))

(declare-fun bs!789240 () Bool)

(assert (= bs!789240 (and b!4452252 b!4451521)))

(assert (=> bs!789240 (= (= (t!356937 lt!1644587) (toList!3718 lt!1644116)) (= lambda!159230 lambda!159132))))

(assert (=> b!4452252 true))

(declare-fun bs!789241 () Bool)

(declare-fun b!4452251 () Bool)

(assert (= bs!789241 (and b!4452251 b!4451817)))

(declare-fun lambda!159231 () Int)

(assert (=> bs!789241 (= (= (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587)) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159231 lambda!159193))))

(declare-fun bs!789242 () Bool)

(assert (= bs!789242 (and b!4452251 b!4452153)))

(assert (=> bs!789242 (= (= (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587)) (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (= lambda!159231 lambda!159223))))

(declare-fun bs!789243 () Bool)

(assert (= bs!789243 (and b!4452251 b!4451818)))

(assert (=> bs!789243 (= (= (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587)) (t!356937 (toList!3718 lt!1644116))) (= lambda!159231 lambda!159192))))

(declare-fun bs!789244 () Bool)

(assert (= bs!789244 (and b!4452251 b!4452154)))

(assert (=> bs!789244 (= (= (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587)) (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))) (= lambda!159231 lambda!159222))))

(declare-fun bs!789245 () Bool)

(assert (= bs!789245 (and b!4452251 b!4451816)))

(assert (=> bs!789245 (= (= (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587)) (toList!3718 lt!1644116)) (= lambda!159231 lambda!159194))))

(declare-fun bs!789246 () Bool)

(assert (= bs!789246 (and b!4452251 b!4452155)))

(assert (=> bs!789246 (= (= (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (= lambda!159231 lambda!159221))))

(declare-fun bs!789247 () Bool)

(assert (= bs!789247 (and b!4452251 b!4452252)))

(assert (=> bs!789247 (= (= (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587)) (t!356937 lt!1644587)) (= lambda!159231 lambda!159230))))

(declare-fun bs!789248 () Bool)

(assert (= bs!789248 (and b!4452251 b!4452047)))

(assert (=> bs!789248 (= (= (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587)) (toList!3718 lt!1644187)) (= lambda!159231 lambda!159218))))

(declare-fun bs!789249 () Bool)

(assert (= bs!789249 (and b!4452251 b!4451521)))

(assert (=> bs!789249 (= (= (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587)) (toList!3718 lt!1644116)) (= lambda!159231 lambda!159132))))

(assert (=> b!4452251 true))

(declare-fun bs!789250 () Bool)

(declare-fun b!4452250 () Bool)

(assert (= bs!789250 (and b!4452250 b!4451817)))

(declare-fun lambda!159232 () Int)

(assert (=> bs!789250 (= (= lt!1644587 (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159232 lambda!159193))))

(declare-fun bs!789251 () Bool)

(assert (= bs!789251 (and b!4452250 b!4452153)))

(assert (=> bs!789251 (= (= lt!1644587 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (= lambda!159232 lambda!159223))))

(declare-fun bs!789252 () Bool)

(assert (= bs!789252 (and b!4452250 b!4451818)))

(assert (=> bs!789252 (= (= lt!1644587 (t!356937 (toList!3718 lt!1644116))) (= lambda!159232 lambda!159192))))

(declare-fun bs!789253 () Bool)

(assert (= bs!789253 (and b!4452250 b!4452154)))

(assert (=> bs!789253 (= (= lt!1644587 (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))) (= lambda!159232 lambda!159222))))

(declare-fun bs!789254 () Bool)

(assert (= bs!789254 (and b!4452250 b!4451816)))

(assert (=> bs!789254 (= (= lt!1644587 (toList!3718 lt!1644116)) (= lambda!159232 lambda!159194))))

(declare-fun bs!789255 () Bool)

(assert (= bs!789255 (and b!4452250 b!4452251)))

(assert (=> bs!789255 (= (= lt!1644587 (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587))) (= lambda!159232 lambda!159231))))

(declare-fun bs!789256 () Bool)

(assert (= bs!789256 (and b!4452250 b!4452155)))

(assert (=> bs!789256 (= (= lt!1644587 (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (= lambda!159232 lambda!159221))))

(declare-fun bs!789257 () Bool)

(assert (= bs!789257 (and b!4452250 b!4452252)))

(assert (=> bs!789257 (= (= lt!1644587 (t!356937 lt!1644587)) (= lambda!159232 lambda!159230))))

(declare-fun bs!789258 () Bool)

(assert (= bs!789258 (and b!4452250 b!4452047)))

(assert (=> bs!789258 (= (= lt!1644587 (toList!3718 lt!1644187)) (= lambda!159232 lambda!159218))))

(declare-fun bs!789259 () Bool)

(assert (= bs!789259 (and b!4452250 b!4451521)))

(assert (=> bs!789259 (= (= lt!1644587 (toList!3718 lt!1644116)) (= lambda!159232 lambda!159132))))

(assert (=> b!4452250 true))

(declare-fun bs!789260 () Bool)

(declare-fun b!4452248 () Bool)

(assert (= bs!789260 (and b!4452248 b!4451522)))

(declare-fun lambda!159233 () Int)

(assert (=> bs!789260 (= lambda!159233 lambda!159133)))

(declare-fun bs!789261 () Bool)

(assert (= bs!789261 (and b!4452248 b!4451814)))

(assert (=> bs!789261 (= lambda!159233 lambda!159195)))

(declare-fun bs!789262 () Bool)

(assert (= bs!789262 (and b!4452248 b!4452048)))

(assert (=> bs!789262 (= lambda!159233 lambda!159219)))

(declare-fun bs!789263 () Bool)

(assert (= bs!789263 (and b!4452248 b!4452151)))

(assert (=> bs!789263 (= lambda!159233 lambda!159224)))

(declare-fun e!2772449 () Bool)

(declare-fun lt!1644785 () List!49994)

(assert (=> b!4452248 (= e!2772449 (= (content!8035 lt!1644785) (content!8035 (map!10914 lt!1644587 lambda!159233))))))

(declare-fun b!4452249 () Bool)

(declare-fun e!2772452 () Unit!85492)

(declare-fun Unit!85630 () Unit!85492)

(assert (=> b!4452249 (= e!2772452 Unit!85630)))

(declare-fun res!1844966 () Bool)

(assert (=> b!4452250 (=> (not res!1844966) (not e!2772449))))

(assert (=> b!4452250 (= res!1844966 (forall!9760 lt!1644785 lambda!159232))))

(declare-fun e!2772451 () List!49994)

(assert (=> b!4452251 (= e!2772451 (Cons!49870 (_1!28213 (h!55610 lt!1644587)) (getKeysList!306 (t!356937 lt!1644587))))))

(declare-fun c!758019 () Bool)

(assert (=> b!4452251 (= c!758019 (containsKey!1296 (t!356937 lt!1644587) (_1!28213 (h!55610 lt!1644587))))))

(declare-fun lt!1644782 () Unit!85492)

(assert (=> b!4452251 (= lt!1644782 e!2772452)))

(declare-fun c!758017 () Bool)

(assert (=> b!4452251 (= c!758017 (contains!12468 (getKeysList!306 (t!356937 lt!1644587)) (_1!28213 (h!55610 lt!1644587))))))

(declare-fun lt!1644783 () Unit!85492)

(declare-fun e!2772450 () Unit!85492)

(assert (=> b!4452251 (= lt!1644783 e!2772450)))

(declare-fun lt!1644784 () List!49994)

(assert (=> b!4452251 (= lt!1644784 (getKeysList!306 (t!356937 lt!1644587)))))

(declare-fun lt!1644786 () Unit!85492)

(assert (=> b!4452251 (= lt!1644786 (lemmaForallContainsAddHeadPreserves!106 (t!356937 lt!1644587) lt!1644784 (h!55610 lt!1644587)))))

(assert (=> b!4452251 (forall!9760 lt!1644784 lambda!159231)))

(declare-fun lt!1644780 () Unit!85492)

(assert (=> b!4452251 (= lt!1644780 lt!1644786)))

(assert (=> b!4452252 false))

(declare-fun lt!1644781 () Unit!85492)

(assert (=> b!4452252 (= lt!1644781 (forallContained!2163 (getKeysList!306 (t!356937 lt!1644587)) lambda!159230 (_1!28213 (h!55610 lt!1644587))))))

(declare-fun Unit!85631 () Unit!85492)

(assert (=> b!4452252 (= e!2772450 Unit!85631)))

(declare-fun b!4452253 () Bool)

(declare-fun Unit!85632 () Unit!85492)

(assert (=> b!4452253 (= e!2772450 Unit!85632)))

(declare-fun b!4452254 () Bool)

(declare-fun res!1844965 () Bool)

(assert (=> b!4452254 (=> (not res!1844965) (not e!2772449))))

(assert (=> b!4452254 (= res!1844965 (= (length!224 lt!1644785) (length!225 lt!1644587)))))

(declare-fun d!1357841 () Bool)

(assert (=> d!1357841 e!2772449))

(declare-fun res!1844967 () Bool)

(assert (=> d!1357841 (=> (not res!1844967) (not e!2772449))))

(assert (=> d!1357841 (= res!1844967 (noDuplicate!684 lt!1644785))))

(assert (=> d!1357841 (= lt!1644785 e!2772451)))

(declare-fun c!758018 () Bool)

(assert (=> d!1357841 (= c!758018 ((_ is Cons!49867) lt!1644587))))

(assert (=> d!1357841 (invariantList!860 lt!1644587)))

(assert (=> d!1357841 (= (getKeysList!306 lt!1644587) lt!1644785)))

(declare-fun b!4452255 () Bool)

(assert (=> b!4452255 (= e!2772451 Nil!49870)))

(declare-fun b!4452256 () Bool)

(assert (=> b!4452256 false))

(declare-fun Unit!85633 () Unit!85492)

(assert (=> b!4452256 (= e!2772452 Unit!85633)))

(assert (= (and d!1357841 c!758018) b!4452251))

(assert (= (and d!1357841 (not c!758018)) b!4452255))

(assert (= (and b!4452251 c!758019) b!4452256))

(assert (= (and b!4452251 (not c!758019)) b!4452249))

(assert (= (and b!4452251 c!758017) b!4452252))

(assert (= (and b!4452251 (not c!758017)) b!4452253))

(assert (= (and d!1357841 res!1844967) b!4452254))

(assert (= (and b!4452254 res!1844965) b!4452250))

(assert (= (and b!4452250 res!1844966) b!4452248))

(declare-fun m!5152441 () Bool)

(assert (=> b!4452248 m!5152441))

(declare-fun m!5152443 () Bool)

(assert (=> b!4452248 m!5152443))

(assert (=> b!4452248 m!5152443))

(declare-fun m!5152445 () Bool)

(assert (=> b!4452248 m!5152445))

(declare-fun m!5152447 () Bool)

(assert (=> b!4452254 m!5152447))

(declare-fun m!5152449 () Bool)

(assert (=> b!4452254 m!5152449))

(declare-fun m!5152451 () Bool)

(assert (=> b!4452251 m!5152451))

(declare-fun m!5152453 () Bool)

(assert (=> b!4452251 m!5152453))

(declare-fun m!5152455 () Bool)

(assert (=> b!4452251 m!5152455))

(declare-fun m!5152457 () Bool)

(assert (=> b!4452251 m!5152457))

(assert (=> b!4452251 m!5152457))

(declare-fun m!5152459 () Bool)

(assert (=> b!4452251 m!5152459))

(assert (=> b!4452252 m!5152457))

(assert (=> b!4452252 m!5152457))

(declare-fun m!5152461 () Bool)

(assert (=> b!4452252 m!5152461))

(declare-fun m!5152463 () Bool)

(assert (=> b!4452250 m!5152463))

(declare-fun m!5152465 () Bool)

(assert (=> d!1357841 m!5152465))

(assert (=> d!1357841 m!5151707))

(assert (=> b!4451895 d!1357841))

(declare-fun d!1357843 () Bool)

(declare-fun c!758020 () Bool)

(assert (=> d!1357843 (= c!758020 ((_ is Nil!49870) (getKeysList!306 (toList!3718 lt!1644116))))))

(declare-fun e!2772453 () (InoxSet K!11235))

(assert (=> d!1357843 (= (content!8035 (getKeysList!306 (toList!3718 lt!1644116))) e!2772453)))

(declare-fun b!4452257 () Bool)

(assert (=> b!4452257 (= e!2772453 ((as const (Array K!11235 Bool)) false))))

(declare-fun b!4452258 () Bool)

(assert (=> b!4452258 (= e!2772453 ((_ map or) (store ((as const (Array K!11235 Bool)) false) (h!55615 (getKeysList!306 (toList!3718 lt!1644116))) true) (content!8035 (t!356940 (getKeysList!306 (toList!3718 lt!1644116))))))))

(assert (= (and d!1357843 c!758020) b!4452257))

(assert (= (and d!1357843 (not c!758020)) b!4452258))

(declare-fun m!5152467 () Bool)

(assert (=> b!4452258 m!5152467))

(declare-fun m!5152469 () Bool)

(assert (=> b!4452258 m!5152469))

(assert (=> b!4451895 d!1357843))

(assert (=> b!4451895 d!1357557))

(assert (=> d!1357607 d!1357609))

(assert (=> d!1357607 d!1357549))

(declare-fun d!1357845 () Bool)

(assert (=> d!1357845 (isDefined!8125 (getValueByKey!823 (toList!3717 lm!1616) hash!366))))

(assert (=> d!1357845 true))

(declare-fun _$13!1496 () Unit!85492)

(assert (=> d!1357845 (= (choose!28338 (toList!3717 lm!1616) hash!366) _$13!1496)))

(declare-fun bs!789264 () Bool)

(assert (= bs!789264 d!1357845))

(assert (=> bs!789264 m!5150959))

(assert (=> bs!789264 m!5150959))

(assert (=> bs!789264 m!5151099))

(assert (=> d!1357607 d!1357845))

(assert (=> d!1357607 d!1357559))

(declare-fun d!1357847 () Bool)

(assert (=> d!1357847 (= (invariantList!860 (toList!3718 lt!1644622)) (noDuplicatedKeys!199 (toList!3718 lt!1644622)))))

(declare-fun bs!789265 () Bool)

(assert (= bs!789265 d!1357847))

(declare-fun m!5152471 () Bool)

(assert (=> bs!789265 m!5152471))

(assert (=> d!1357605 d!1357847))

(declare-fun d!1357849 () Bool)

(declare-fun res!1844968 () Bool)

(declare-fun e!2772454 () Bool)

(assert (=> d!1357849 (=> res!1844968 e!2772454)))

(assert (=> d!1357849 (= res!1844968 ((_ is Nil!49868) (t!356938 (toList!3717 lm!1616))))))

(assert (=> d!1357849 (= (forall!9756 (t!356938 (toList!3717 lm!1616)) lambda!159200) e!2772454)))

(declare-fun b!4452259 () Bool)

(declare-fun e!2772455 () Bool)

(assert (=> b!4452259 (= e!2772454 e!2772455)))

(declare-fun res!1844969 () Bool)

(assert (=> b!4452259 (=> (not res!1844969) (not e!2772455))))

(assert (=> b!4452259 (= res!1844969 (dynLambda!20938 lambda!159200 (h!55611 (t!356938 (toList!3717 lm!1616)))))))

(declare-fun b!4452260 () Bool)

(assert (=> b!4452260 (= e!2772455 (forall!9756 (t!356938 (t!356938 (toList!3717 lm!1616))) lambda!159200))))

(assert (= (and d!1357849 (not res!1844968)) b!4452259))

(assert (= (and b!4452259 res!1844969) b!4452260))

(declare-fun b_lambda!147097 () Bool)

(assert (=> (not b_lambda!147097) (not b!4452259)))

(declare-fun m!5152473 () Bool)

(assert (=> b!4452259 m!5152473))

(declare-fun m!5152475 () Bool)

(assert (=> b!4452260 m!5152475))

(assert (=> d!1357605 d!1357849))

(declare-fun bs!789266 () Bool)

(declare-fun d!1357851 () Bool)

(assert (= bs!789266 (and d!1357851 d!1357817)))

(declare-fun lambda!159234 () Int)

(assert (=> bs!789266 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644756) (= lambda!159234 lambda!159228))))

(declare-fun bs!789267 () Bool)

(assert (= bs!789267 (and d!1357851 d!1357635)))

(assert (=> bs!789267 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159234 lambda!159203))))

(declare-fun bs!789268 () Bool)

(assert (= bs!789268 (and d!1357851 d!1357387)))

(assert (=> bs!789268 (not (= lambda!159234 lambda!159085))))

(declare-fun bs!789269 () Bool)

(assert (= bs!789269 (and d!1357851 b!4452022)))

(assert (=> bs!789269 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644668) (= lambda!159234 lambda!159216))))

(declare-fun bs!789270 () Bool)

(assert (= bs!789270 (and d!1357851 b!4452210)))

(assert (=> bs!789270 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159234 lambda!159226))))

(declare-fun bs!789271 () Bool)

(assert (= bs!789271 (and d!1357851 b!4452213)))

(assert (=> bs!789271 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159234 lambda!159225))))

(declare-fun bs!789272 () Bool)

(assert (= bs!789272 (and d!1357851 d!1357447)))

(assert (=> bs!789272 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644481) (= lambda!159234 lambda!159177))))

(declare-fun bs!789273 () Bool)

(assert (= bs!789273 (and d!1357851 d!1357603)))

(assert (=> bs!789273 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644617) (= lambda!159234 lambda!159199))))

(assert (=> bs!789270 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644742) (= lambda!159234 lambda!159227))))

(declare-fun bs!789274 () Bool)

(assert (= bs!789274 (and d!1357851 d!1357823)))

(assert (=> bs!789274 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644467) (= lambda!159234 lambda!159229))))

(declare-fun bs!789275 () Bool)

(assert (= bs!789275 (and d!1357851 b!4451737)))

(assert (=> bs!789275 (= lambda!159234 lambda!159175)))

(declare-fun bs!789276 () Bool)

(assert (= bs!789276 (and d!1357851 d!1357737)))

(assert (=> bs!789276 (not (= lambda!159234 lambda!159220))))

(declare-fun bs!789277 () Bool)

(assert (= bs!789277 (and d!1357851 d!1357645)))

(assert (=> bs!789277 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644645) (= lambda!159234 lambda!159207))))

(declare-fun bs!789278 () Bool)

(assert (= bs!789278 (and d!1357851 b!4451965)))

(assert (=> bs!789278 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644603) (= lambda!159234 lambda!159198))))

(assert (=> bs!789278 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159234 lambda!159197))))

(declare-fun bs!789279 () Bool)

(assert (= bs!789279 (and d!1357851 b!4452025)))

(assert (=> bs!789279 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159234 lambda!159214))))

(declare-fun bs!789280 () Bool)

(assert (= bs!789280 (and d!1357851 b!4451740)))

(assert (=> bs!789280 (= lambda!159234 lambda!159174)))

(assert (=> bs!789275 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644467) (= lambda!159234 lambda!159176))))

(declare-fun bs!789281 () Bool)

(assert (= bs!789281 (and d!1357851 d!1357663)))

(assert (=> bs!789281 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644682) (= lambda!159234 lambda!159217))))

(assert (=> bs!789269 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159234 lambda!159215))))

(declare-fun bs!789282 () Bool)

(assert (= bs!789282 (and d!1357851 d!1357655)))

(assert (=> bs!789282 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644603) (= lambda!159234 lambda!159213))))

(declare-fun bs!789283 () Bool)

(assert (= bs!789283 (and d!1357851 b!4451996)))

(assert (=> bs!789283 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159234 lambda!159205))))

(declare-fun bs!789284 () Bool)

(assert (= bs!789284 (and d!1357851 b!4451999)))

(assert (=> bs!789284 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159234 lambda!159204))))

(assert (=> bs!789283 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) lt!1644631) (= lambda!159234 lambda!159206))))

(declare-fun bs!789285 () Bool)

(assert (= bs!789285 (and d!1357851 b!4451968)))

(assert (=> bs!789285 (= (= (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159234 lambda!159196))))

(assert (=> d!1357851 true))

(assert (=> d!1357851 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) lambda!159234)))

(declare-fun lt!1644787 () Unit!85492)

(assert (=> d!1357851 (= lt!1644787 (choose!28339 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))))))

(assert (=> d!1357851 (= (lemmaContainsAllItsOwnKeys!217 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) lt!1644787)))

(declare-fun bs!789286 () Bool)

(assert (= bs!789286 d!1357851))

(declare-fun m!5152477 () Bool)

(assert (=> bs!789286 m!5152477))

(assert (=> bs!789286 m!5151005))

(declare-fun m!5152479 () Bool)

(assert (=> bs!789286 m!5152479))

(assert (=> bm!309799 d!1357851))

(declare-fun d!1357855 () Bool)

(declare-fun res!1844970 () Bool)

(declare-fun e!2772456 () Bool)

(assert (=> d!1357855 (=> res!1844970 e!2772456)))

(assert (=> d!1357855 (= res!1844970 (or ((_ is Nil!49868) lt!1644599) ((_ is Nil!49868) (t!356938 lt!1644599))))))

(assert (=> d!1357855 (= (isStrictlySorted!285 lt!1644599) e!2772456)))

(declare-fun b!4452261 () Bool)

(declare-fun e!2772457 () Bool)

(assert (=> b!4452261 (= e!2772456 e!2772457)))

(declare-fun res!1844971 () Bool)

(assert (=> b!4452261 (=> (not res!1844971) (not e!2772457))))

(assert (=> b!4452261 (= res!1844971 (bvslt (_1!28214 (h!55611 lt!1644599)) (_1!28214 (h!55611 (t!356938 lt!1644599)))))))

(declare-fun b!4452262 () Bool)

(assert (=> b!4452262 (= e!2772457 (isStrictlySorted!285 (t!356938 lt!1644599)))))

(assert (= (and d!1357855 (not res!1844970)) b!4452261))

(assert (= (and b!4452261 res!1844971) b!4452262))

(declare-fun m!5152481 () Bool)

(assert (=> b!4452262 m!5152481))

(assert (=> d!1357587 d!1357855))

(assert (=> d!1357587 d!1357559))

(declare-fun d!1357857 () Bool)

(assert (=> d!1357857 (dynLambda!20942 lambda!159192 (_1!28213 (h!55610 (toList!3718 lt!1644116))))))

(declare-fun lt!1644790 () Unit!85492)

(declare-fun choose!28344 (List!49994 Int K!11235) Unit!85492)

(assert (=> d!1357857 (= lt!1644790 (choose!28344 (getKeysList!306 (t!356937 (toList!3718 lt!1644116))) lambda!159192 (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(declare-fun e!2772466 () Bool)

(assert (=> d!1357857 e!2772466))

(declare-fun res!1844980 () Bool)

(assert (=> d!1357857 (=> (not res!1844980) (not e!2772466))))

(assert (=> d!1357857 (= res!1844980 (forall!9760 (getKeysList!306 (t!356937 (toList!3718 lt!1644116))) lambda!159192))))

(assert (=> d!1357857 (= (forallContained!2163 (getKeysList!306 (t!356937 (toList!3718 lt!1644116))) lambda!159192 (_1!28213 (h!55610 (toList!3718 lt!1644116)))) lt!1644790)))

(declare-fun b!4452271 () Bool)

(assert (=> b!4452271 (= e!2772466 (contains!12468 (getKeysList!306 (t!356937 (toList!3718 lt!1644116))) (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(assert (= (and d!1357857 res!1844980) b!4452271))

(declare-fun b_lambda!147101 () Bool)

(assert (=> (not b_lambda!147101) (not d!1357857)))

(declare-fun m!5152487 () Bool)

(assert (=> d!1357857 m!5152487))

(assert (=> d!1357857 m!5151627))

(declare-fun m!5152489 () Bool)

(assert (=> d!1357857 m!5152489))

(assert (=> d!1357857 m!5151627))

(declare-fun m!5152491 () Bool)

(assert (=> d!1357857 m!5152491))

(assert (=> b!4452271 m!5151627))

(assert (=> b!4452271 m!5151629))

(assert (=> b!4451818 d!1357857))

(declare-fun bs!789287 () Bool)

(declare-fun b!4452276 () Bool)

(assert (= bs!789287 (and b!4452276 b!4451817)))

(declare-fun lambda!159235 () Int)

(assert (=> bs!789287 (= (= (t!356937 (t!356937 (toList!3718 lt!1644116))) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159235 lambda!159193))))

(declare-fun bs!789288 () Bool)

(assert (= bs!789288 (and b!4452276 b!4452153)))

(assert (=> bs!789288 (= (= (t!356937 (t!356937 (toList!3718 lt!1644116))) (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (= lambda!159235 lambda!159223))))

(declare-fun bs!789289 () Bool)

(assert (= bs!789289 (and b!4452276 b!4451818)))

(assert (=> bs!789289 (= (= (t!356937 (t!356937 (toList!3718 lt!1644116))) (t!356937 (toList!3718 lt!1644116))) (= lambda!159235 lambda!159192))))

(declare-fun bs!789290 () Bool)

(assert (= bs!789290 (and b!4452276 b!4452154)))

(assert (=> bs!789290 (= (= (t!356937 (t!356937 (toList!3718 lt!1644116))) (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))) (= lambda!159235 lambda!159222))))

(declare-fun bs!789291 () Bool)

(assert (= bs!789291 (and b!4452276 b!4452250)))

(assert (=> bs!789291 (= (= (t!356937 (t!356937 (toList!3718 lt!1644116))) lt!1644587) (= lambda!159235 lambda!159232))))

(declare-fun bs!789292 () Bool)

(assert (= bs!789292 (and b!4452276 b!4451816)))

(assert (=> bs!789292 (= (= (t!356937 (t!356937 (toList!3718 lt!1644116))) (toList!3718 lt!1644116)) (= lambda!159235 lambda!159194))))

(declare-fun bs!789293 () Bool)

(assert (= bs!789293 (and b!4452276 b!4452251)))

(assert (=> bs!789293 (= (= (t!356937 (t!356937 (toList!3718 lt!1644116))) (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587))) (= lambda!159235 lambda!159231))))

(declare-fun bs!789294 () Bool)

(assert (= bs!789294 (and b!4452276 b!4452155)))

(assert (=> bs!789294 (= (= (t!356937 (t!356937 (toList!3718 lt!1644116))) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (= lambda!159235 lambda!159221))))

(declare-fun bs!789295 () Bool)

(assert (= bs!789295 (and b!4452276 b!4452252)))

(assert (=> bs!789295 (= (= (t!356937 (t!356937 (toList!3718 lt!1644116))) (t!356937 lt!1644587)) (= lambda!159235 lambda!159230))))

(declare-fun bs!789296 () Bool)

(assert (= bs!789296 (and b!4452276 b!4452047)))

(assert (=> bs!789296 (= (= (t!356937 (t!356937 (toList!3718 lt!1644116))) (toList!3718 lt!1644187)) (= lambda!159235 lambda!159218))))

(declare-fun bs!789297 () Bool)

(assert (= bs!789297 (and b!4452276 b!4451521)))

(assert (=> bs!789297 (= (= (t!356937 (t!356937 (toList!3718 lt!1644116))) (toList!3718 lt!1644116)) (= lambda!159235 lambda!159132))))

(assert (=> b!4452276 true))

(declare-fun bs!789298 () Bool)

(declare-fun b!4452275 () Bool)

(assert (= bs!789298 (and b!4452275 b!4451817)))

(declare-fun lambda!159236 () Int)

(assert (=> bs!789298 (= (= (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159236 lambda!159193))))

(declare-fun bs!789299 () Bool)

(assert (= bs!789299 (and b!4452275 b!4452153)))

(assert (=> bs!789299 (= (= (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (= lambda!159236 lambda!159223))))

(declare-fun bs!789300 () Bool)

(assert (= bs!789300 (and b!4452275 b!4452276)))

(assert (=> bs!789300 (= (= (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (= lambda!159236 lambda!159235))))

(declare-fun bs!789301 () Bool)

(assert (= bs!789301 (and b!4452275 b!4451818)))

(assert (=> bs!789301 (= (= (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (t!356937 (toList!3718 lt!1644116))) (= lambda!159236 lambda!159192))))

(declare-fun bs!789302 () Bool)

(assert (= bs!789302 (and b!4452275 b!4452154)))

(assert (=> bs!789302 (= (= (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))) (= lambda!159236 lambda!159222))))

(declare-fun bs!789303 () Bool)

(assert (= bs!789303 (and b!4452275 b!4452250)))

(assert (=> bs!789303 (= (= (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116)))) lt!1644587) (= lambda!159236 lambda!159232))))

(declare-fun bs!789304 () Bool)

(assert (= bs!789304 (and b!4452275 b!4451816)))

(assert (=> bs!789304 (= (= (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (toList!3718 lt!1644116)) (= lambda!159236 lambda!159194))))

(declare-fun bs!789305 () Bool)

(assert (= bs!789305 (and b!4452275 b!4452251)))

(assert (=> bs!789305 (= (= (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587))) (= lambda!159236 lambda!159231))))

(declare-fun bs!789306 () Bool)

(assert (= bs!789306 (and b!4452275 b!4452155)))

(assert (=> bs!789306 (= (= (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (= lambda!159236 lambda!159221))))

(declare-fun bs!789307 () Bool)

(assert (= bs!789307 (and b!4452275 b!4452252)))

(assert (=> bs!789307 (= (= (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (t!356937 lt!1644587)) (= lambda!159236 lambda!159230))))

(declare-fun bs!789308 () Bool)

(assert (= bs!789308 (and b!4452275 b!4452047)))

(assert (=> bs!789308 (= (= (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (toList!3718 lt!1644187)) (= lambda!159236 lambda!159218))))

(declare-fun bs!789309 () Bool)

(assert (= bs!789309 (and b!4452275 b!4451521)))

(assert (=> bs!789309 (= (= (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (toList!3718 lt!1644116)) (= lambda!159236 lambda!159132))))

(assert (=> b!4452275 true))

(declare-fun bs!789310 () Bool)

(declare-fun b!4452274 () Bool)

(assert (= bs!789310 (and b!4452274 b!4451817)))

(declare-fun lambda!159237 () Int)

(assert (=> bs!789310 (= (= (t!356937 (toList!3718 lt!1644116)) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159237 lambda!159193))))

(declare-fun bs!789311 () Bool)

(assert (= bs!789311 (and b!4452274 b!4452153)))

(assert (=> bs!789311 (= (= (t!356937 (toList!3718 lt!1644116)) (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (= lambda!159237 lambda!159223))))

(declare-fun bs!789312 () Bool)

(assert (= bs!789312 (and b!4452274 b!4452276)))

(assert (=> bs!789312 (= (= (t!356937 (toList!3718 lt!1644116)) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (= lambda!159237 lambda!159235))))

(declare-fun bs!789313 () Bool)

(assert (= bs!789313 (and b!4452274 b!4451818)))

(assert (=> bs!789313 (= lambda!159237 lambda!159192)))

(declare-fun bs!789314 () Bool)

(assert (= bs!789314 (and b!4452274 b!4452154)))

(assert (=> bs!789314 (= (= (t!356937 (toList!3718 lt!1644116)) (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))) (= lambda!159237 lambda!159222))))

(declare-fun bs!789315 () Bool)

(assert (= bs!789315 (and b!4452274 b!4452275)))

(assert (=> bs!789315 (= (= (t!356937 (toList!3718 lt!1644116)) (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116))))) (= lambda!159237 lambda!159236))))

(declare-fun bs!789316 () Bool)

(assert (= bs!789316 (and b!4452274 b!4452250)))

(assert (=> bs!789316 (= (= (t!356937 (toList!3718 lt!1644116)) lt!1644587) (= lambda!159237 lambda!159232))))

(declare-fun bs!789317 () Bool)

(assert (= bs!789317 (and b!4452274 b!4451816)))

(assert (=> bs!789317 (= (= (t!356937 (toList!3718 lt!1644116)) (toList!3718 lt!1644116)) (= lambda!159237 lambda!159194))))

(declare-fun bs!789318 () Bool)

(assert (= bs!789318 (and b!4452274 b!4452251)))

(assert (=> bs!789318 (= (= (t!356937 (toList!3718 lt!1644116)) (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587))) (= lambda!159237 lambda!159231))))

(declare-fun bs!789319 () Bool)

(assert (= bs!789319 (and b!4452274 b!4452155)))

(assert (=> bs!789319 (= (= (t!356937 (toList!3718 lt!1644116)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (= lambda!159237 lambda!159221))))

(declare-fun bs!789320 () Bool)

(assert (= bs!789320 (and b!4452274 b!4452252)))

(assert (=> bs!789320 (= (= (t!356937 (toList!3718 lt!1644116)) (t!356937 lt!1644587)) (= lambda!159237 lambda!159230))))

(declare-fun bs!789321 () Bool)

(assert (= bs!789321 (and b!4452274 b!4452047)))

(assert (=> bs!789321 (= (= (t!356937 (toList!3718 lt!1644116)) (toList!3718 lt!1644187)) (= lambda!159237 lambda!159218))))

(declare-fun bs!789322 () Bool)

(assert (= bs!789322 (and b!4452274 b!4451521)))

(assert (=> bs!789322 (= (= (t!356937 (toList!3718 lt!1644116)) (toList!3718 lt!1644116)) (= lambda!159237 lambda!159132))))

(assert (=> b!4452274 true))

(declare-fun bs!789323 () Bool)

(declare-fun b!4452272 () Bool)

(assert (= bs!789323 (and b!4452272 b!4452151)))

(declare-fun lambda!159240 () Int)

(assert (=> bs!789323 (= lambda!159240 lambda!159224)))

(declare-fun bs!789324 () Bool)

(assert (= bs!789324 (and b!4452272 b!4451814)))

(assert (=> bs!789324 (= lambda!159240 lambda!159195)))

(declare-fun bs!789325 () Bool)

(assert (= bs!789325 (and b!4452272 b!4452048)))

(assert (=> bs!789325 (= lambda!159240 lambda!159219)))

(declare-fun bs!789326 () Bool)

(assert (= bs!789326 (and b!4452272 b!4451522)))

(assert (=> bs!789326 (= lambda!159240 lambda!159133)))

(declare-fun bs!789327 () Bool)

(assert (= bs!789327 (and b!4452272 b!4452248)))

(assert (=> bs!789327 (= lambda!159240 lambda!159233)))

(declare-fun lt!1644796 () List!49994)

(declare-fun e!2772467 () Bool)

(assert (=> b!4452272 (= e!2772467 (= (content!8035 lt!1644796) (content!8035 (map!10914 (t!356937 (toList!3718 lt!1644116)) lambda!159240))))))

(declare-fun b!4452273 () Bool)

(declare-fun e!2772470 () Unit!85492)

(declare-fun Unit!85638 () Unit!85492)

(assert (=> b!4452273 (= e!2772470 Unit!85638)))

(declare-fun res!1844982 () Bool)

(assert (=> b!4452274 (=> (not res!1844982) (not e!2772467))))

(assert (=> b!4452274 (= res!1844982 (forall!9760 lt!1644796 lambda!159237))))

(declare-fun e!2772469 () List!49994)

(assert (=> b!4452275 (= e!2772469 (Cons!49870 (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644116)))) (getKeysList!306 (t!356937 (t!356937 (toList!3718 lt!1644116))))))))

(declare-fun c!758023 () Bool)

(assert (=> b!4452275 (= c!758023 (containsKey!1296 (t!356937 (t!356937 (toList!3718 lt!1644116))) (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644116))))))))

(declare-fun lt!1644793 () Unit!85492)

(assert (=> b!4452275 (= lt!1644793 e!2772470)))

(declare-fun c!758021 () Bool)

(assert (=> b!4452275 (= c!758021 (contains!12468 (getKeysList!306 (t!356937 (t!356937 (toList!3718 lt!1644116)))) (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644116))))))))

(declare-fun lt!1644794 () Unit!85492)

(declare-fun e!2772468 () Unit!85492)

(assert (=> b!4452275 (= lt!1644794 e!2772468)))

(declare-fun lt!1644795 () List!49994)

(assert (=> b!4452275 (= lt!1644795 (getKeysList!306 (t!356937 (t!356937 (toList!3718 lt!1644116)))))))

(declare-fun lt!1644797 () Unit!85492)

(assert (=> b!4452275 (= lt!1644797 (lemmaForallContainsAddHeadPreserves!106 (t!356937 (t!356937 (toList!3718 lt!1644116))) lt!1644795 (h!55610 (t!356937 (toList!3718 lt!1644116)))))))

(assert (=> b!4452275 (forall!9760 lt!1644795 lambda!159236)))

(declare-fun lt!1644791 () Unit!85492)

(assert (=> b!4452275 (= lt!1644791 lt!1644797)))

(assert (=> b!4452276 false))

(declare-fun lt!1644792 () Unit!85492)

(assert (=> b!4452276 (= lt!1644792 (forallContained!2163 (getKeysList!306 (t!356937 (t!356937 (toList!3718 lt!1644116)))) lambda!159235 (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644116))))))))

(declare-fun Unit!85644 () Unit!85492)

(assert (=> b!4452276 (= e!2772468 Unit!85644)))

(declare-fun b!4452277 () Bool)

(declare-fun Unit!85645 () Unit!85492)

(assert (=> b!4452277 (= e!2772468 Unit!85645)))

(declare-fun b!4452278 () Bool)

(declare-fun res!1844981 () Bool)

(assert (=> b!4452278 (=> (not res!1844981) (not e!2772467))))

(assert (=> b!4452278 (= res!1844981 (= (length!224 lt!1644796) (length!225 (t!356937 (toList!3718 lt!1644116)))))))

(declare-fun d!1357861 () Bool)

(assert (=> d!1357861 e!2772467))

(declare-fun res!1844983 () Bool)

(assert (=> d!1357861 (=> (not res!1844983) (not e!2772467))))

(assert (=> d!1357861 (= res!1844983 (noDuplicate!684 lt!1644796))))

(assert (=> d!1357861 (= lt!1644796 e!2772469)))

(declare-fun c!758022 () Bool)

(assert (=> d!1357861 (= c!758022 ((_ is Cons!49867) (t!356937 (toList!3718 lt!1644116))))))

(assert (=> d!1357861 (invariantList!860 (t!356937 (toList!3718 lt!1644116)))))

(assert (=> d!1357861 (= (getKeysList!306 (t!356937 (toList!3718 lt!1644116))) lt!1644796)))

(declare-fun b!4452279 () Bool)

(assert (=> b!4452279 (= e!2772469 Nil!49870)))

(declare-fun b!4452280 () Bool)

(assert (=> b!4452280 false))

(declare-fun Unit!85648 () Unit!85492)

(assert (=> b!4452280 (= e!2772470 Unit!85648)))

(assert (= (and d!1357861 c!758022) b!4452275))

(assert (= (and d!1357861 (not c!758022)) b!4452279))

(assert (= (and b!4452275 c!758023) b!4452280))

(assert (= (and b!4452275 (not c!758023)) b!4452273))

(assert (= (and b!4452275 c!758021) b!4452276))

(assert (= (and b!4452275 (not c!758021)) b!4452277))

(assert (= (and d!1357861 res!1844983) b!4452278))

(assert (= (and b!4452278 res!1844981) b!4452274))

(assert (= (and b!4452274 res!1844982) b!4452272))

(declare-fun m!5152493 () Bool)

(assert (=> b!4452272 m!5152493))

(declare-fun m!5152495 () Bool)

(assert (=> b!4452272 m!5152495))

(assert (=> b!4452272 m!5152495))

(declare-fun m!5152497 () Bool)

(assert (=> b!4452272 m!5152497))

(declare-fun m!5152499 () Bool)

(assert (=> b!4452278 m!5152499))

(declare-fun m!5152501 () Bool)

(assert (=> b!4452278 m!5152501))

(declare-fun m!5152503 () Bool)

(assert (=> b!4452275 m!5152503))

(assert (=> b!4452275 m!5152123))

(declare-fun m!5152505 () Bool)

(assert (=> b!4452275 m!5152505))

(declare-fun m!5152507 () Bool)

(assert (=> b!4452275 m!5152507))

(assert (=> b!4452275 m!5152507))

(declare-fun m!5152509 () Bool)

(assert (=> b!4452275 m!5152509))

(assert (=> b!4452276 m!5152507))

(assert (=> b!4452276 m!5152507))

(declare-fun m!5152511 () Bool)

(assert (=> b!4452276 m!5152511))

(declare-fun m!5152513 () Bool)

(assert (=> b!4452274 m!5152513))

(declare-fun m!5152515 () Bool)

(assert (=> d!1357861 m!5152515))

(assert (=> d!1357861 m!5152119))

(assert (=> b!4451818 d!1357861))

(declare-fun d!1357863 () Bool)

(assert (=> d!1357863 (= (isEmpty!28406 (getValueByKey!824 (toList!3718 lt!1644116) key!3717)) (not ((_ is Some!10837) (getValueByKey!824 (toList!3718 lt!1644116) key!3717))))))

(assert (=> d!1357563 d!1357863))

(declare-fun d!1357867 () Bool)

(declare-fun res!1844984 () Bool)

(declare-fun e!2772471 () Bool)

(assert (=> d!1357867 (=> res!1844984 e!2772471)))

(assert (=> d!1357867 (= res!1844984 ((_ is Nil!49867) (_2!28214 (h!55611 (toList!3717 lm!1616)))))))

(assert (=> d!1357867 (= (forall!9758 (_2!28214 (h!55611 (toList!3717 lm!1616))) lambda!159199) e!2772471)))

(declare-fun b!4452281 () Bool)

(declare-fun e!2772472 () Bool)

(assert (=> b!4452281 (= e!2772471 e!2772472)))

(declare-fun res!1844985 () Bool)

(assert (=> b!4452281 (=> (not res!1844985) (not e!2772472))))

(assert (=> b!4452281 (= res!1844985 (dynLambda!20940 lambda!159199 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))

(declare-fun b!4452282 () Bool)

(assert (=> b!4452282 (= e!2772472 (forall!9758 (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))) lambda!159199))))

(assert (= (and d!1357867 (not res!1844984)) b!4452281))

(assert (= (and b!4452281 res!1844985) b!4452282))

(declare-fun b_lambda!147103 () Bool)

(assert (=> (not b_lambda!147103) (not b!4452281)))

(declare-fun m!5152521 () Bool)

(assert (=> b!4452281 m!5152521))

(declare-fun m!5152523 () Bool)

(assert (=> b!4452282 m!5152523))

(assert (=> d!1357603 d!1357867))

(assert (=> d!1357603 d!1357611))

(declare-fun d!1357871 () Bool)

(declare-fun res!1844986 () Bool)

(declare-fun e!2772473 () Bool)

(assert (=> d!1357871 (=> res!1844986 e!2772473)))

(assert (=> d!1357871 (= res!1844986 (not ((_ is Cons!49867) (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))))))))

(assert (=> d!1357871 (= (noDuplicateKeys!865 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616))))) e!2772473)))

(declare-fun b!4452283 () Bool)

(declare-fun e!2772474 () Bool)

(assert (=> b!4452283 (= e!2772473 e!2772474)))

(declare-fun res!1844987 () Bool)

(assert (=> b!4452283 (=> (not res!1844987) (not e!2772474))))

(assert (=> b!4452283 (= res!1844987 (not (containsKey!1294 (t!356937 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616))))) (_1!28213 (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))))))))))

(declare-fun b!4452284 () Bool)

(assert (=> b!4452284 (= e!2772474 (noDuplicateKeys!865 (t!356937 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))))))))

(assert (= (and d!1357871 (not res!1844986)) b!4452283))

(assert (= (and b!4452283 res!1844987) b!4452284))

(declare-fun m!5152525 () Bool)

(assert (=> b!4452283 m!5152525))

(declare-fun m!5152527 () Bool)

(assert (=> b!4452284 m!5152527))

(assert (=> bs!789003 d!1357871))

(declare-fun d!1357873 () Bool)

(declare-fun c!758024 () Bool)

(assert (=> d!1357873 (= c!758024 ((_ is Nil!49870) (keys!17104 lt!1644116)))))

(declare-fun e!2772475 () (InoxSet K!11235))

(assert (=> d!1357873 (= (content!8035 (keys!17104 lt!1644116)) e!2772475)))

(declare-fun b!4452285 () Bool)

(assert (=> b!4452285 (= e!2772475 ((as const (Array K!11235 Bool)) false))))

(declare-fun b!4452286 () Bool)

(assert (=> b!4452286 (= e!2772475 ((_ map or) (store ((as const (Array K!11235 Bool)) false) (h!55615 (keys!17104 lt!1644116)) true) (content!8035 (t!356940 (keys!17104 lt!1644116)))))))

(assert (= (and d!1357873 c!758024) b!4452285))

(assert (= (and d!1357873 (not c!758024)) b!4452286))

(declare-fun m!5152529 () Bool)

(assert (=> b!4452286 m!5152529))

(declare-fun m!5152531 () Bool)

(assert (=> b!4452286 m!5152531))

(assert (=> d!1357429 d!1357873))

(assert (=> b!4451974 d!1357415))

(declare-fun d!1357875 () Bool)

(declare-fun res!1844988 () Bool)

(declare-fun e!2772476 () Bool)

(assert (=> d!1357875 (=> res!1844988 e!2772476)))

(assert (=> d!1357875 (= res!1844988 ((_ is Nil!49870) lt!1644332))))

(assert (=> d!1357875 (= (forall!9760 lt!1644332 lambda!159132) e!2772476)))

(declare-fun b!4452287 () Bool)

(declare-fun e!2772477 () Bool)

(assert (=> b!4452287 (= e!2772476 e!2772477)))

(declare-fun res!1844989 () Bool)

(assert (=> b!4452287 (=> (not res!1844989) (not e!2772477))))

(assert (=> b!4452287 (= res!1844989 (dynLambda!20942 lambda!159132 (h!55615 lt!1644332)))))

(declare-fun b!4452288 () Bool)

(assert (=> b!4452288 (= e!2772477 (forall!9760 (t!356940 lt!1644332) lambda!159132))))

(assert (= (and d!1357875 (not res!1844988)) b!4452287))

(assert (= (and b!4452287 res!1844989) b!4452288))

(declare-fun b_lambda!147105 () Bool)

(assert (=> (not b_lambda!147105) (not b!4452287)))

(declare-fun m!5152533 () Bool)

(assert (=> b!4452287 m!5152533))

(declare-fun m!5152535 () Bool)

(assert (=> b!4452288 m!5152535))

(assert (=> b!4451521 d!1357875))

(declare-fun b!4452291 () Bool)

(declare-fun e!2772479 () Option!10838)

(assert (=> b!4452291 (= e!2772479 (getValueByKey!824 (t!356937 (t!356937 (toList!3718 lt!1644116))) key!3717))))

(declare-fun b!4452290 () Bool)

(declare-fun e!2772478 () Option!10838)

(assert (=> b!4452290 (= e!2772478 e!2772479)))

(declare-fun c!758026 () Bool)

(assert (=> b!4452290 (= c!758026 (and ((_ is Cons!49867) (t!356937 (toList!3718 lt!1644116))) (not (= (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644116)))) key!3717))))))

(declare-fun b!4452292 () Bool)

(assert (=> b!4452292 (= e!2772479 None!10837)))

(declare-fun d!1357877 () Bool)

(declare-fun c!758025 () Bool)

(assert (=> d!1357877 (= c!758025 (and ((_ is Cons!49867) (t!356937 (toList!3718 lt!1644116))) (= (_1!28213 (h!55610 (t!356937 (toList!3718 lt!1644116)))) key!3717)))))

(assert (=> d!1357877 (= (getValueByKey!824 (t!356937 (toList!3718 lt!1644116)) key!3717) e!2772478)))

(declare-fun b!4452289 () Bool)

(assert (=> b!4452289 (= e!2772478 (Some!10837 (_2!28213 (h!55610 (t!356937 (toList!3718 lt!1644116))))))))

(assert (= (and d!1357877 c!758025) b!4452289))

(assert (= (and d!1357877 (not c!758025)) b!4452290))

(assert (= (and b!4452290 c!758026) b!4452291))

(assert (= (and b!4452290 (not c!758026)) b!4452292))

(declare-fun m!5152537 () Bool)

(assert (=> b!4452291 m!5152537))

(assert (=> b!4451833 d!1357877))

(declare-fun d!1357881 () Bool)

(declare-fun res!1844995 () Bool)

(declare-fun e!2772482 () Bool)

(assert (=> d!1357881 (=> res!1844995 e!2772482)))

(assert (=> d!1357881 (= res!1844995 ((_ is Nil!49867) (ite c!757964 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> d!1357881 (= (forall!9758 (ite c!757964 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (ite c!757964 lambda!159196 lambda!159198)) e!2772482)))

(declare-fun b!4452295 () Bool)

(declare-fun e!2772483 () Bool)

(assert (=> b!4452295 (= e!2772482 e!2772483)))

(declare-fun res!1844996 () Bool)

(assert (=> b!4452295 (=> (not res!1844996) (not e!2772483))))

(assert (=> b!4452295 (= res!1844996 (dynLambda!20940 (ite c!757964 lambda!159196 lambda!159198) (h!55610 (ite c!757964 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616))))))))))

(declare-fun b!4452296 () Bool)

(assert (=> b!4452296 (= e!2772483 (forall!9758 (t!356937 (ite c!757964 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (ite c!757964 lambda!159196 lambda!159198)))))

(assert (= (and d!1357881 (not res!1844995)) b!4452295))

(assert (= (and b!4452295 res!1844996) b!4452296))

(declare-fun b_lambda!147107 () Bool)

(assert (=> (not b_lambda!147107) (not b!4452295)))

(declare-fun m!5152543 () Bool)

(assert (=> b!4452295 m!5152543))

(declare-fun m!5152545 () Bool)

(assert (=> b!4452296 m!5152545))

(assert (=> bm!309831 d!1357881))

(declare-fun d!1357889 () Bool)

(assert (=> d!1357889 (isDefined!8125 (getValueByKey!823 (toList!3717 lt!1644225) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun lt!1644802 () Unit!85492)

(assert (=> d!1357889 (= lt!1644802 (choose!28338 (toList!3717 lt!1644225) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun e!2772488 () Bool)

(assert (=> d!1357889 e!2772488))

(declare-fun res!1845001 () Bool)

(assert (=> d!1357889 (=> (not res!1845001) (not e!2772488))))

(assert (=> d!1357889 (= res!1845001 (isStrictlySorted!285 (toList!3717 lt!1644225)))))

(assert (=> d!1357889 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!728 (toList!3717 lt!1644225) (_1!28214 (tuple2!49841 hash!366 newBucket!194))) lt!1644802)))

(declare-fun b!4452301 () Bool)

(assert (=> b!4452301 (= e!2772488 (containsKey!1295 (toList!3717 lt!1644225) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(assert (= (and d!1357889 res!1845001) b!4452301))

(assert (=> d!1357889 m!5151113))

(assert (=> d!1357889 m!5151113))

(assert (=> d!1357889 m!5151723))

(declare-fun m!5152553 () Bool)

(assert (=> d!1357889 m!5152553))

(declare-fun m!5152555 () Bool)

(assert (=> d!1357889 m!5152555))

(assert (=> b!4452301 m!5151719))

(assert (=> b!4451902 d!1357889))

(assert (=> b!4451902 d!1357717))

(assert (=> b!4451902 d!1357417))

(declare-fun d!1357893 () Bool)

(declare-fun res!1845004 () Bool)

(declare-fun e!2772491 () Bool)

(assert (=> d!1357893 (=> res!1845004 e!2772491)))

(assert (=> d!1357893 (= res!1845004 (not ((_ is Cons!49867) (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> d!1357893 (= (noDuplicateKeys!865 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) e!2772491)))

(declare-fun b!4452304 () Bool)

(declare-fun e!2772492 () Bool)

(assert (=> b!4452304 (= e!2772491 e!2772492)))

(declare-fun res!1845005 () Bool)

(assert (=> b!4452304 (=> (not res!1845005) (not e!2772492))))

(assert (=> b!4452304 (= res!1845005 (not (containsKey!1294 (t!356937 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (_1!28213 (h!55610 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))))

(declare-fun b!4452305 () Bool)

(assert (=> b!4452305 (= e!2772492 (noDuplicateKeys!865 (t!356937 (t!356937 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (= (and d!1357893 (not res!1845004)) b!4452304))

(assert (= (and b!4452304 res!1845005) b!4452305))

(declare-fun m!5152561 () Bool)

(assert (=> b!4452304 m!5152561))

(declare-fun m!5152563 () Bool)

(assert (=> b!4452305 m!5152563))

(assert (=> b!4451423 d!1357893))

(declare-fun d!1357897 () Bool)

(declare-fun lt!1644803 () Bool)

(assert (=> d!1357897 (= lt!1644803 (select (content!8035 (t!356940 (keys!17104 lt!1644116))) key!3717))))

(declare-fun e!2772496 () Bool)

(assert (=> d!1357897 (= lt!1644803 e!2772496)))

(declare-fun res!1845008 () Bool)

(assert (=> d!1357897 (=> (not res!1845008) (not e!2772496))))

(assert (=> d!1357897 (= res!1845008 ((_ is Cons!49870) (t!356940 (keys!17104 lt!1644116))))))

(assert (=> d!1357897 (= (contains!12468 (t!356940 (keys!17104 lt!1644116)) key!3717) lt!1644803)))

(declare-fun b!4452308 () Bool)

(declare-fun e!2772495 () Bool)

(assert (=> b!4452308 (= e!2772496 e!2772495)))

(declare-fun res!1845009 () Bool)

(assert (=> b!4452308 (=> res!1845009 e!2772495)))

(assert (=> b!4452308 (= res!1845009 (= (h!55615 (t!356940 (keys!17104 lt!1644116))) key!3717))))

(declare-fun b!4452309 () Bool)

(assert (=> b!4452309 (= e!2772495 (contains!12468 (t!356940 (t!356940 (keys!17104 lt!1644116))) key!3717))))

(assert (= (and d!1357897 res!1845008) b!4452308))

(assert (= (and b!4452308 (not res!1845009)) b!4452309))

(assert (=> d!1357897 m!5152531))

(declare-fun m!5152569 () Bool)

(assert (=> d!1357897 m!5152569))

(declare-fun m!5152571 () Bool)

(assert (=> b!4452309 m!5152571))

(assert (=> b!4451495 d!1357897))

(declare-fun d!1357901 () Bool)

(declare-fun res!1845012 () Bool)

(declare-fun e!2772499 () Bool)

(assert (=> d!1357901 (=> res!1845012 e!2772499)))

(assert (=> d!1357901 (= res!1845012 (and ((_ is Cons!49867) (insertNoDuplicatedKeys!234 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))) (= (_1!28213 (h!55610 (insertNoDuplicatedKeys!234 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))))) (_1!28213 (h!55610 (toList!3718 lt!1644116))))))))

(assert (=> d!1357901 (= (containsKey!1296 (insertNoDuplicatedKeys!234 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))) (_1!28213 (h!55610 (toList!3718 lt!1644116)))) e!2772499)))

(declare-fun b!4452312 () Bool)

(declare-fun e!2772500 () Bool)

(assert (=> b!4452312 (= e!2772499 e!2772500)))

(declare-fun res!1845013 () Bool)

(assert (=> b!4452312 (=> (not res!1845013) (not e!2772500))))

(assert (=> b!4452312 (= res!1845013 ((_ is Cons!49867) (insertNoDuplicatedKeys!234 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))))))

(declare-fun b!4452313 () Bool)

(assert (=> b!4452313 (= e!2772500 (containsKey!1296 (t!356937 (insertNoDuplicatedKeys!234 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))) (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(assert (= (and d!1357901 (not res!1845012)) b!4452312))

(assert (= (and b!4452312 res!1845013) b!4452313))

(declare-fun m!5152575 () Bool)

(assert (=> b!4452313 m!5152575))

(assert (=> b!4451882 d!1357901))

(assert (=> b!4451882 d!1357709))

(assert (=> b!4451840 d!1357691))

(assert (=> b!4451840 d!1357419))

(declare-fun d!1357905 () Bool)

(assert (=> d!1357905 (= (hash!2354 hashF!1220 (_1!28213 (h!55610 newBucket!194))) (hash!2356 hashF!1220 (_1!28213 (h!55610 newBucket!194))))))

(declare-fun bs!789336 () Bool)

(assert (= bs!789336 d!1357905))

(declare-fun m!5152577 () Bool)

(assert (=> bs!789336 m!5152577))

(assert (=> bs!789000 d!1357905))

(declare-fun bs!789342 () Bool)

(declare-fun b!4452317 () Bool)

(assert (= bs!789342 (and b!4452317 d!1357817)))

(declare-fun lambda!159243 () Int)

(assert (=> bs!789342 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644756) (= lambda!159243 lambda!159228))))

(declare-fun bs!789345 () Bool)

(assert (= bs!789345 (and b!4452317 d!1357851)))

(assert (=> bs!789345 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159243 lambda!159234))))

(declare-fun bs!789347 () Bool)

(assert (= bs!789347 (and b!4452317 d!1357635)))

(assert (=> bs!789347 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159243 lambda!159203))))

(declare-fun bs!789348 () Bool)

(assert (= bs!789348 (and b!4452317 d!1357387)))

(assert (=> bs!789348 (not (= lambda!159243 lambda!159085))))

(declare-fun bs!789349 () Bool)

(assert (= bs!789349 (and b!4452317 b!4452022)))

(assert (=> bs!789349 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644668) (= lambda!159243 lambda!159216))))

(declare-fun bs!789351 () Bool)

(assert (= bs!789351 (and b!4452317 b!4452210)))

(assert (=> bs!789351 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159243 lambda!159226))))

(declare-fun bs!789352 () Bool)

(assert (= bs!789352 (and b!4452317 b!4452213)))

(assert (=> bs!789352 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159243 lambda!159225))))

(declare-fun bs!789353 () Bool)

(assert (= bs!789353 (and b!4452317 d!1357447)))

(assert (=> bs!789353 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644481) (= lambda!159243 lambda!159177))))

(declare-fun bs!789354 () Bool)

(assert (= bs!789354 (and b!4452317 d!1357603)))

(assert (=> bs!789354 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644617) (= lambda!159243 lambda!159199))))

(assert (=> bs!789351 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644742) (= lambda!159243 lambda!159227))))

(declare-fun bs!789355 () Bool)

(assert (= bs!789355 (and b!4452317 d!1357823)))

(assert (=> bs!789355 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644467) (= lambda!159243 lambda!159229))))

(declare-fun bs!789356 () Bool)

(assert (= bs!789356 (and b!4452317 b!4451737)))

(assert (=> bs!789356 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159243 lambda!159175))))

(declare-fun bs!789357 () Bool)

(assert (= bs!789357 (and b!4452317 d!1357737)))

(assert (=> bs!789357 (not (= lambda!159243 lambda!159220))))

(declare-fun bs!789358 () Bool)

(assert (= bs!789358 (and b!4452317 d!1357645)))

(assert (=> bs!789358 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644645) (= lambda!159243 lambda!159207))))

(declare-fun bs!789359 () Bool)

(assert (= bs!789359 (and b!4452317 b!4451965)))

(assert (=> bs!789359 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644603) (= lambda!159243 lambda!159198))))

(assert (=> bs!789359 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159243 lambda!159197))))

(declare-fun bs!789360 () Bool)

(assert (= bs!789360 (and b!4452317 b!4452025)))

(assert (=> bs!789360 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159243 lambda!159214))))

(declare-fun bs!789361 () Bool)

(assert (= bs!789361 (and b!4452317 b!4451740)))

(assert (=> bs!789361 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159243 lambda!159174))))

(assert (=> bs!789356 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644467) (= lambda!159243 lambda!159176))))

(declare-fun bs!789362 () Bool)

(assert (= bs!789362 (and b!4452317 d!1357663)))

(assert (=> bs!789362 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644682) (= lambda!159243 lambda!159217))))

(assert (=> bs!789349 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159243 lambda!159215))))

(declare-fun bs!789363 () Bool)

(assert (= bs!789363 (and b!4452317 d!1357655)))

(assert (=> bs!789363 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644603) (= lambda!159243 lambda!159213))))

(declare-fun bs!789364 () Bool)

(assert (= bs!789364 (and b!4452317 b!4451996)))

(assert (=> bs!789364 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159243 lambda!159205))))

(declare-fun bs!789365 () Bool)

(assert (= bs!789365 (and b!4452317 b!4451999)))

(assert (=> bs!789365 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159243 lambda!159204))))

(assert (=> bs!789364 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644631) (= lambda!159243 lambda!159206))))

(declare-fun bs!789366 () Bool)

(assert (= bs!789366 (and b!4452317 b!4451968)))

(assert (=> bs!789366 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159243 lambda!159196))))

(assert (=> b!4452317 true))

(declare-fun bs!789367 () Bool)

(declare-fun b!4452314 () Bool)

(assert (= bs!789367 (and b!4452314 d!1357817)))

(declare-fun lambda!159244 () Int)

(assert (=> bs!789367 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644756) (= lambda!159244 lambda!159228))))

(declare-fun bs!789368 () Bool)

(assert (= bs!789368 (and b!4452314 d!1357851)))

(assert (=> bs!789368 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159244 lambda!159234))))

(declare-fun bs!789369 () Bool)

(assert (= bs!789369 (and b!4452314 d!1357635)))

(assert (=> bs!789369 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159244 lambda!159203))))

(declare-fun bs!789370 () Bool)

(assert (= bs!789370 (and b!4452314 b!4452022)))

(assert (=> bs!789370 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644668) (= lambda!159244 lambda!159216))))

(declare-fun bs!789372 () Bool)

(assert (= bs!789372 (and b!4452314 b!4452210)))

(assert (=> bs!789372 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159244 lambda!159226))))

(declare-fun bs!789374 () Bool)

(assert (= bs!789374 (and b!4452314 b!4452213)))

(assert (=> bs!789374 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159244 lambda!159225))))

(declare-fun bs!789375 () Bool)

(assert (= bs!789375 (and b!4452314 d!1357447)))

(assert (=> bs!789375 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644481) (= lambda!159244 lambda!159177))))

(declare-fun bs!789377 () Bool)

(assert (= bs!789377 (and b!4452314 d!1357603)))

(assert (=> bs!789377 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644617) (= lambda!159244 lambda!159199))))

(assert (=> bs!789372 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644742) (= lambda!159244 lambda!159227))))

(declare-fun bs!789379 () Bool)

(assert (= bs!789379 (and b!4452314 d!1357823)))

(assert (=> bs!789379 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644467) (= lambda!159244 lambda!159229))))

(declare-fun bs!789380 () Bool)

(assert (= bs!789380 (and b!4452314 b!4451737)))

(assert (=> bs!789380 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159244 lambda!159175))))

(declare-fun bs!789381 () Bool)

(assert (= bs!789381 (and b!4452314 d!1357737)))

(assert (=> bs!789381 (not (= lambda!159244 lambda!159220))))

(declare-fun bs!789383 () Bool)

(assert (= bs!789383 (and b!4452314 d!1357645)))

(assert (=> bs!789383 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644645) (= lambda!159244 lambda!159207))))

(declare-fun bs!789385 () Bool)

(assert (= bs!789385 (and b!4452314 b!4451965)))

(assert (=> bs!789385 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644603) (= lambda!159244 lambda!159198))))

(declare-fun bs!789386 () Bool)

(assert (= bs!789386 (and b!4452314 b!4452317)))

(assert (=> bs!789386 (= lambda!159244 lambda!159243)))

(declare-fun bs!789387 () Bool)

(assert (= bs!789387 (and b!4452314 d!1357387)))

(assert (=> bs!789387 (not (= lambda!159244 lambda!159085))))

(assert (=> bs!789385 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159244 lambda!159197))))

(declare-fun bs!789388 () Bool)

(assert (= bs!789388 (and b!4452314 b!4452025)))

(assert (=> bs!789388 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159244 lambda!159214))))

(declare-fun bs!789389 () Bool)

(assert (= bs!789389 (and b!4452314 b!4451740)))

(assert (=> bs!789389 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159244 lambda!159174))))

(assert (=> bs!789380 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644467) (= lambda!159244 lambda!159176))))

(declare-fun bs!789390 () Bool)

(assert (= bs!789390 (and b!4452314 d!1357663)))

(assert (=> bs!789390 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644682) (= lambda!159244 lambda!159217))))

(assert (=> bs!789370 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159244 lambda!159215))))

(declare-fun bs!789391 () Bool)

(assert (= bs!789391 (and b!4452314 d!1357655)))

(assert (=> bs!789391 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644603) (= lambda!159244 lambda!159213))))

(declare-fun bs!789392 () Bool)

(assert (= bs!789392 (and b!4452314 b!4451996)))

(assert (=> bs!789392 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159244 lambda!159205))))

(declare-fun bs!789393 () Bool)

(assert (= bs!789393 (and b!4452314 b!4451999)))

(assert (=> bs!789393 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159244 lambda!159204))))

(assert (=> bs!789392 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644631) (= lambda!159244 lambda!159206))))

(declare-fun bs!789394 () Bool)

(assert (= bs!789394 (and b!4452314 b!4451968)))

(assert (=> bs!789394 (= (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159244 lambda!159196))))

(assert (=> b!4452314 true))

(declare-fun lambda!159247 () Int)

(declare-fun lt!1644806 () ListMap!2961)

(assert (=> bs!789367 (= (= lt!1644806 lt!1644756) (= lambda!159247 lambda!159228))))

(assert (=> bs!789368 (= (= lt!1644806 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159247 lambda!159234))))

(assert (=> bs!789369 (= (= lt!1644806 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159247 lambda!159203))))

(assert (=> bs!789370 (= (= lt!1644806 lt!1644668) (= lambda!159247 lambda!159216))))

(assert (=> bs!789372 (= (= lt!1644806 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159247 lambda!159226))))

(assert (=> bs!789374 (= (= lt!1644806 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159247 lambda!159225))))

(assert (=> bs!789375 (= (= lt!1644806 lt!1644481) (= lambda!159247 lambda!159177))))

(assert (=> bs!789377 (= (= lt!1644806 lt!1644617) (= lambda!159247 lambda!159199))))

(assert (=> bs!789379 (= (= lt!1644806 lt!1644467) (= lambda!159247 lambda!159229))))

(assert (=> bs!789380 (= (= lt!1644806 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159247 lambda!159175))))

(assert (=> bs!789381 (not (= lambda!159247 lambda!159220))))

(assert (=> bs!789383 (= (= lt!1644806 lt!1644645) (= lambda!159247 lambda!159207))))

(assert (=> bs!789385 (= (= lt!1644806 lt!1644603) (= lambda!159247 lambda!159198))))

(assert (=> bs!789386 (= (= lt!1644806 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616))))) (= lambda!159247 lambda!159243))))

(assert (=> bs!789387 (not (= lambda!159247 lambda!159085))))

(assert (=> bs!789385 (= (= lt!1644806 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159247 lambda!159197))))

(assert (=> bs!789388 (= (= lt!1644806 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159247 lambda!159214))))

(assert (=> b!4452314 (= (= lt!1644806 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616))))) (= lambda!159247 lambda!159244))))

(assert (=> bs!789372 (= (= lt!1644806 lt!1644742) (= lambda!159247 lambda!159227))))

(assert (=> bs!789389 (= (= lt!1644806 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159247 lambda!159174))))

(assert (=> bs!789380 (= (= lt!1644806 lt!1644467) (= lambda!159247 lambda!159176))))

(assert (=> bs!789390 (= (= lt!1644806 lt!1644682) (= lambda!159247 lambda!159217))))

(assert (=> bs!789370 (= (= lt!1644806 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159247 lambda!159215))))

(assert (=> bs!789391 (= (= lt!1644806 lt!1644603) (= lambda!159247 lambda!159213))))

(assert (=> bs!789392 (= (= lt!1644806 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159247 lambda!159205))))

(assert (=> bs!789393 (= (= lt!1644806 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159247 lambda!159204))))

(assert (=> bs!789392 (= (= lt!1644806 lt!1644631) (= lambda!159247 lambda!159206))))

(assert (=> bs!789394 (= (= lt!1644806 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159247 lambda!159196))))

(assert (=> b!4452314 true))

(declare-fun bs!789395 () Bool)

(declare-fun d!1357907 () Bool)

(assert (= bs!789395 (and d!1357907 d!1357817)))

(declare-fun lambda!159248 () Int)

(declare-fun lt!1644820 () ListMap!2961)

(assert (=> bs!789395 (= (= lt!1644820 lt!1644756) (= lambda!159248 lambda!159228))))

(declare-fun bs!789396 () Bool)

(assert (= bs!789396 (and d!1357907 d!1357851)))

(assert (=> bs!789396 (= (= lt!1644820 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159248 lambda!159234))))

(declare-fun bs!789397 () Bool)

(assert (= bs!789397 (and d!1357907 d!1357635)))

(assert (=> bs!789397 (= (= lt!1644820 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159248 lambda!159203))))

(declare-fun bs!789398 () Bool)

(assert (= bs!789398 (and d!1357907 b!4452022)))

(assert (=> bs!789398 (= (= lt!1644820 lt!1644668) (= lambda!159248 lambda!159216))))

(declare-fun bs!789399 () Bool)

(assert (= bs!789399 (and d!1357907 b!4452210)))

(assert (=> bs!789399 (= (= lt!1644820 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159248 lambda!159226))))

(declare-fun bs!789400 () Bool)

(assert (= bs!789400 (and d!1357907 b!4452213)))

(assert (=> bs!789400 (= (= lt!1644820 (+!1267 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))) (= lambda!159248 lambda!159225))))

(declare-fun bs!789401 () Bool)

(assert (= bs!789401 (and d!1357907 d!1357447)))

(assert (=> bs!789401 (= (= lt!1644820 lt!1644481) (= lambda!159248 lambda!159177))))

(declare-fun bs!789402 () Bool)

(assert (= bs!789402 (and d!1357907 d!1357603)))

(assert (=> bs!789402 (= (= lt!1644820 lt!1644617) (= lambda!159248 lambda!159199))))

(declare-fun bs!789403 () Bool)

(assert (= bs!789403 (and d!1357907 b!4452314)))

(assert (=> bs!789403 (= (= lt!1644820 lt!1644806) (= lambda!159248 lambda!159247))))

(declare-fun bs!789404 () Bool)

(assert (= bs!789404 (and d!1357907 d!1357823)))

(assert (=> bs!789404 (= (= lt!1644820 lt!1644467) (= lambda!159248 lambda!159229))))

(declare-fun bs!789405 () Bool)

(assert (= bs!789405 (and d!1357907 b!4451737)))

(assert (=> bs!789405 (= (= lt!1644820 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159248 lambda!159175))))

(declare-fun bs!789406 () Bool)

(assert (= bs!789406 (and d!1357907 d!1357737)))

(assert (=> bs!789406 (not (= lambda!159248 lambda!159220))))

(declare-fun bs!789407 () Bool)

(assert (= bs!789407 (and d!1357907 d!1357645)))

(assert (=> bs!789407 (= (= lt!1644820 lt!1644645) (= lambda!159248 lambda!159207))))

(declare-fun bs!789408 () Bool)

(assert (= bs!789408 (and d!1357907 b!4451965)))

(assert (=> bs!789408 (= (= lt!1644820 lt!1644603) (= lambda!159248 lambda!159198))))

(declare-fun bs!789409 () Bool)

(assert (= bs!789409 (and d!1357907 b!4452317)))

(assert (=> bs!789409 (= (= lt!1644820 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616))))) (= lambda!159248 lambda!159243))))

(declare-fun bs!789410 () Bool)

(assert (= bs!789410 (and d!1357907 d!1357387)))

(assert (=> bs!789410 (not (= lambda!159248 lambda!159085))))

(assert (=> bs!789408 (= (= lt!1644820 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159248 lambda!159197))))

(declare-fun bs!789411 () Bool)

(assert (= bs!789411 (and d!1357907 b!4452025)))

(assert (=> bs!789411 (= (= lt!1644820 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159248 lambda!159214))))

(assert (=> bs!789403 (= (= lt!1644820 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616))))) (= lambda!159248 lambda!159244))))

(assert (=> bs!789399 (= (= lt!1644820 lt!1644742) (= lambda!159248 lambda!159227))))

(declare-fun bs!789412 () Bool)

(assert (= bs!789412 (and d!1357907 b!4451740)))

(assert (=> bs!789412 (= (= lt!1644820 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))) (= lambda!159248 lambda!159174))))

(assert (=> bs!789405 (= (= lt!1644820 lt!1644467) (= lambda!159248 lambda!159176))))

(declare-fun bs!789413 () Bool)

(assert (= bs!789413 (and d!1357907 d!1357663)))

(assert (=> bs!789413 (= (= lt!1644820 lt!1644682) (= lambda!159248 lambda!159217))))

(assert (=> bs!789398 (= (= lt!1644820 (+!1267 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) (= lambda!159248 lambda!159215))))

(declare-fun bs!789414 () Bool)

(assert (= bs!789414 (and d!1357907 d!1357655)))

(assert (=> bs!789414 (= (= lt!1644820 lt!1644603) (= lambda!159248 lambda!159213))))

(declare-fun bs!789415 () Bool)

(assert (= bs!789415 (and d!1357907 b!4451996)))

(assert (=> bs!789415 (= (= lt!1644820 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159248 lambda!159205))))

(declare-fun bs!789416 () Bool)

(assert (= bs!789416 (and d!1357907 b!4451999)))

(assert (=> bs!789416 (= (= lt!1644820 (extractMap!926 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (= lambda!159248 lambda!159204))))

(assert (=> bs!789415 (= (= lt!1644820 lt!1644631) (= lambda!159248 lambda!159206))))

(declare-fun bs!789417 () Bool)

(assert (= bs!789417 (and d!1357907 b!4451968)))

(assert (=> bs!789417 (= (= lt!1644820 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) (= lambda!159248 lambda!159196))))

(assert (=> d!1357907 true))

(declare-fun e!2772503 () ListMap!2961)

(assert (=> b!4452314 (= e!2772503 lt!1644806)))

(declare-fun lt!1644823 () ListMap!2961)

(assert (=> b!4452314 (= lt!1644823 (+!1267 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))))))))

(assert (=> b!4452314 (= lt!1644806 (addToMapMapFromBucket!471 (t!356937 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616))))) (+!1267 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616))))))))))

(declare-fun lt!1644804 () Unit!85492)

(declare-fun call!309858 () Unit!85492)

(assert (=> b!4452314 (= lt!1644804 call!309858)))

(assert (=> b!4452314 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616))))) lambda!159244)))

(declare-fun lt!1644824 () Unit!85492)

(assert (=> b!4452314 (= lt!1644824 lt!1644804)))

(assert (=> b!4452314 (forall!9758 (toList!3718 lt!1644823) lambda!159247)))

(declare-fun lt!1644812 () Unit!85492)

(declare-fun Unit!85653 () Unit!85492)

(assert (=> b!4452314 (= lt!1644812 Unit!85653)))

(declare-fun call!309859 () Bool)

(assert (=> b!4452314 call!309859))

(declare-fun lt!1644808 () Unit!85492)

(declare-fun Unit!85654 () Unit!85492)

(assert (=> b!4452314 (= lt!1644808 Unit!85654)))

(declare-fun lt!1644814 () Unit!85492)

(declare-fun Unit!85655 () Unit!85492)

(assert (=> b!4452314 (= lt!1644814 Unit!85655)))

(declare-fun lt!1644805 () Unit!85492)

(assert (=> b!4452314 (= lt!1644805 (forallContained!2161 (toList!3718 lt!1644823) lambda!159247 (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))))))))

(assert (=> b!4452314 (contains!12462 lt!1644823 (_1!28213 (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))))))))

(declare-fun lt!1644819 () Unit!85492)

(declare-fun Unit!85656 () Unit!85492)

(assert (=> b!4452314 (= lt!1644819 Unit!85656)))

(assert (=> b!4452314 (contains!12462 lt!1644806 (_1!28213 (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))))))))

(declare-fun lt!1644813 () Unit!85492)

(declare-fun Unit!85657 () Unit!85492)

(assert (=> b!4452314 (= lt!1644813 Unit!85657)))

(assert (=> b!4452314 (forall!9758 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))) lambda!159247)))

(declare-fun lt!1644811 () Unit!85492)

(declare-fun Unit!85658 () Unit!85492)

(assert (=> b!4452314 (= lt!1644811 Unit!85658)))

(assert (=> b!4452314 (forall!9758 (toList!3718 lt!1644823) lambda!159247)))

(declare-fun lt!1644817 () Unit!85492)

(declare-fun Unit!85659 () Unit!85492)

(assert (=> b!4452314 (= lt!1644817 Unit!85659)))

(declare-fun lt!1644816 () Unit!85492)

(declare-fun Unit!85660 () Unit!85492)

(assert (=> b!4452314 (= lt!1644816 Unit!85660)))

(declare-fun lt!1644822 () Unit!85492)

(assert (=> b!4452314 (= lt!1644822 (addForallContainsKeyThenBeforeAdding!217 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644806 (_1!28213 (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))))) (_2!28213 (h!55610 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616))))))))))

(assert (=> b!4452314 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616))))) lambda!159247)))

(declare-fun lt!1644809 () Unit!85492)

(assert (=> b!4452314 (= lt!1644809 lt!1644822)))

(assert (=> b!4452314 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616))))) lambda!159247)))

(declare-fun lt!1644815 () Unit!85492)

(declare-fun Unit!85661 () Unit!85492)

(assert (=> b!4452314 (= lt!1644815 Unit!85661)))

(declare-fun res!1845014 () Bool)

(declare-fun call!309857 () Bool)

(assert (=> b!4452314 (= res!1845014 call!309857)))

(declare-fun e!2772501 () Bool)

(assert (=> b!4452314 (=> (not res!1845014) (not e!2772501))))

(assert (=> b!4452314 e!2772501))

(declare-fun lt!1644807 () Unit!85492)

(declare-fun Unit!85662 () Unit!85492)

(assert (=> b!4452314 (= lt!1644807 Unit!85662)))

(declare-fun b!4452315 () Bool)

(declare-fun res!1845016 () Bool)

(declare-fun e!2772502 () Bool)

(assert (=> b!4452315 (=> (not res!1845016) (not e!2772502))))

(assert (=> b!4452315 (= res!1845016 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616))))) lambda!159248))))

(declare-fun bm!309852 () Bool)

(declare-fun c!758027 () Bool)

(assert (=> bm!309852 (= call!309857 (forall!9758 (ite c!758027 (toList!3718 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616))))) (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616))))) (ite c!758027 lambda!159243 lambda!159247)))))

(declare-fun b!4452316 () Bool)

(assert (=> b!4452316 (= e!2772502 (invariantList!860 (toList!3718 lt!1644820)))))

(declare-fun bm!309853 () Bool)

(assert (=> bm!309853 (= call!309858 (lemmaContainsAllItsOwnKeys!217 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616))))))))

(declare-fun bm!309854 () Bool)

(assert (=> bm!309854 (= call!309859 (forall!9758 (ite c!758027 (toList!3718 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616))))) (t!356937 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))))) (ite c!758027 lambda!159243 lambda!159247)))))

(assert (=> d!1357907 e!2772502))

(declare-fun res!1845015 () Bool)

(assert (=> d!1357907 (=> (not res!1845015) (not e!2772502))))

(assert (=> d!1357907 (= res!1845015 (forall!9758 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))) lambda!159248))))

(assert (=> d!1357907 (= lt!1644820 e!2772503)))

(assert (=> d!1357907 (= c!758027 ((_ is Nil!49867) (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616))))))))

(assert (=> d!1357907 (noDuplicateKeys!865 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))))))

(assert (=> d!1357907 (= (addToMapMapFromBucket!471 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))) (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616))))) lt!1644820)))

(assert (=> b!4452317 (= e!2772503 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))))))

(declare-fun lt!1644810 () Unit!85492)

(assert (=> b!4452317 (= lt!1644810 call!309858)))

(assert (=> b!4452317 call!309857))

(declare-fun lt!1644821 () Unit!85492)

(assert (=> b!4452317 (= lt!1644821 lt!1644810)))

(assert (=> b!4452317 call!309859))

(declare-fun lt!1644818 () Unit!85492)

(declare-fun Unit!85663 () Unit!85492)

(assert (=> b!4452317 (= lt!1644818 Unit!85663)))

(declare-fun b!4452318 () Bool)

(assert (=> b!4452318 (= e!2772501 (forall!9758 (toList!3718 (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616))))) lambda!159247))))

(assert (= (and d!1357907 c!758027) b!4452317))

(assert (= (and d!1357907 (not c!758027)) b!4452314))

(assert (= (and b!4452314 res!1845014) b!4452318))

(assert (= (or b!4452317 b!4452314) bm!309853))

(assert (= (or b!4452317 b!4452314) bm!309852))

(assert (= (or b!4452317 b!4452314) bm!309854))

(assert (= (and d!1357907 res!1845015) b!4452315))

(assert (= (and b!4452315 res!1845016) b!4452316))

(declare-fun m!5152651 () Bool)

(assert (=> bm!309854 m!5152651))

(declare-fun m!5152653 () Bool)

(assert (=> b!4452315 m!5152653))

(declare-fun m!5152655 () Bool)

(assert (=> b!4452318 m!5152655))

(declare-fun m!5152657 () Bool)

(assert (=> bm!309852 m!5152657))

(declare-fun m!5152659 () Bool)

(assert (=> d!1357907 m!5152659))

(assert (=> d!1357907 m!5151823))

(declare-fun m!5152663 () Bool)

(assert (=> b!4452316 m!5152663))

(assert (=> bm!309853 m!5151807))

(declare-fun m!5152667 () Bool)

(assert (=> bm!309853 m!5152667))

(declare-fun m!5152669 () Bool)

(assert (=> b!4452314 m!5152669))

(assert (=> b!4452314 m!5152655))

(assert (=> b!4452314 m!5151807))

(declare-fun m!5152671 () Bool)

(assert (=> b!4452314 m!5152671))

(declare-fun m!5152673 () Bool)

(assert (=> b!4452314 m!5152673))

(declare-fun m!5152675 () Bool)

(assert (=> b!4452314 m!5152675))

(declare-fun m!5152677 () Bool)

(assert (=> b!4452314 m!5152677))

(assert (=> b!4452314 m!5152655))

(declare-fun m!5152679 () Bool)

(assert (=> b!4452314 m!5152679))

(assert (=> b!4452314 m!5151807))

(declare-fun m!5152681 () Bool)

(assert (=> b!4452314 m!5152681))

(assert (=> b!4452314 m!5152681))

(declare-fun m!5152683 () Bool)

(assert (=> b!4452314 m!5152683))

(declare-fun m!5152685 () Bool)

(assert (=> b!4452314 m!5152685))

(assert (=> b!4452314 m!5152677))

(assert (=> b!4451970 d!1357907))

(declare-fun bs!789423 () Bool)

(declare-fun d!1357943 () Bool)

(assert (= bs!789423 (and d!1357943 start!435780)))

(declare-fun lambda!159250 () Int)

(assert (=> bs!789423 (= lambda!159250 lambda!159068)))

(declare-fun bs!789424 () Bool)

(assert (= bs!789424 (and d!1357943 d!1357647)))

(assert (=> bs!789424 (= lambda!159250 lambda!159208)))

(declare-fun bs!789425 () Bool)

(assert (= bs!789425 (and d!1357943 d!1357333)))

(assert (=> bs!789425 (= lambda!159250 lambda!159077)))

(declare-fun bs!789426 () Bool)

(assert (= bs!789426 (and d!1357943 d!1357385)))

(assert (=> bs!789426 (= lambda!159250 lambda!159082)))

(declare-fun bs!789427 () Bool)

(assert (= bs!789427 (and d!1357943 d!1357519)))

(assert (=> bs!789427 (= lambda!159250 lambda!159180)))

(declare-fun bs!789429 () Bool)

(assert (= bs!789429 (and d!1357943 d!1357391)))

(assert (=> bs!789429 (not (= lambda!159250 lambda!159088))))

(declare-fun bs!789431 () Bool)

(assert (= bs!789431 (and d!1357943 d!1357605)))

(assert (=> bs!789431 (= lambda!159250 lambda!159200)))

(declare-fun lt!1644836 () ListMap!2961)

(assert (=> d!1357943 (invariantList!860 (toList!3718 lt!1644836))))

(declare-fun e!2772542 () ListMap!2961)

(assert (=> d!1357943 (= lt!1644836 e!2772542)))

(declare-fun c!758040 () Bool)

(assert (=> d!1357943 (= c!758040 ((_ is Cons!49868) (t!356938 (t!356938 (toList!3717 lm!1616)))))))

(assert (=> d!1357943 (forall!9756 (t!356938 (t!356938 (toList!3717 lm!1616))) lambda!159250)))

(assert (=> d!1357943 (= (extractMap!926 (t!356938 (t!356938 (toList!3717 lm!1616)))) lt!1644836)))

(declare-fun b!4452373 () Bool)

(assert (=> b!4452373 (= e!2772542 (addToMapMapFromBucket!471 (_2!28214 (h!55611 (t!356938 (t!356938 (toList!3717 lm!1616))))) (extractMap!926 (t!356938 (t!356938 (t!356938 (toList!3717 lm!1616)))))))))

(declare-fun b!4452374 () Bool)

(assert (=> b!4452374 (= e!2772542 (ListMap!2962 Nil!49867))))

(assert (= (and d!1357943 c!758040) b!4452373))

(assert (= (and d!1357943 (not c!758040)) b!4452374))

(declare-fun m!5152687 () Bool)

(assert (=> d!1357943 m!5152687))

(declare-fun m!5152689 () Bool)

(assert (=> d!1357943 m!5152689))

(declare-fun m!5152691 () Bool)

(assert (=> b!4452373 m!5152691))

(assert (=> b!4452373 m!5152691))

(declare-fun m!5152693 () Bool)

(assert (=> b!4452373 m!5152693))

(assert (=> b!4451970 d!1357943))

(declare-fun d!1357945 () Bool)

(declare-fun res!1845047 () Bool)

(declare-fun e!2772543 () Bool)

(assert (=> d!1357945 (=> res!1845047 e!2772543)))

(assert (=> d!1357945 (= res!1845047 ((_ is Nil!49867) (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616))))))))

(assert (=> d!1357945 (= (forall!9758 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))) lambda!159199) e!2772543)))

(declare-fun b!4452375 () Bool)

(declare-fun e!2772544 () Bool)

(assert (=> b!4452375 (= e!2772543 e!2772544)))

(declare-fun res!1845048 () Bool)

(assert (=> b!4452375 (=> (not res!1845048) (not e!2772544))))

(assert (=> b!4452375 (= res!1845048 (dynLambda!20940 lambda!159199 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))))))))

(declare-fun b!4452376 () Bool)

(assert (=> b!4452376 (= e!2772544 (forall!9758 (t!356937 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616))))) lambda!159199))))

(assert (= (and d!1357945 (not res!1845047)) b!4452375))

(assert (= (and b!4452375 res!1845048) b!4452376))

(declare-fun b_lambda!147119 () Bool)

(assert (=> (not b_lambda!147119) (not b!4452375)))

(declare-fun m!5152695 () Bool)

(assert (=> b!4452375 m!5152695))

(declare-fun m!5152697 () Bool)

(assert (=> b!4452376 m!5152697))

(assert (=> b!4451966 d!1357945))

(declare-fun e!2772546 () Option!10837)

(declare-fun b!4452379 () Bool)

(assert (=> b!4452379 (= e!2772546 (getValueByKey!823 (t!356938 (t!356938 lt!1644222)) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun b!4452377 () Bool)

(declare-fun e!2772545 () Option!10837)

(assert (=> b!4452377 (= e!2772545 (Some!10836 (_2!28214 (h!55611 (t!356938 lt!1644222)))))))

(declare-fun c!758041 () Bool)

(declare-fun d!1357947 () Bool)

(assert (=> d!1357947 (= c!758041 (and ((_ is Cons!49868) (t!356938 lt!1644222)) (= (_1!28214 (h!55611 (t!356938 lt!1644222))) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (=> d!1357947 (= (getValueByKey!823 (t!356938 lt!1644222) (_1!28214 (tuple2!49841 hash!366 newBucket!194))) e!2772545)))

(declare-fun b!4452380 () Bool)

(assert (=> b!4452380 (= e!2772546 None!10836)))

(declare-fun b!4452378 () Bool)

(assert (=> b!4452378 (= e!2772545 e!2772546)))

(declare-fun c!758042 () Bool)

(assert (=> b!4452378 (= c!758042 (and ((_ is Cons!49868) (t!356938 lt!1644222)) (not (= (_1!28214 (h!55611 (t!356938 lt!1644222))) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))))

(assert (= (and d!1357947 c!758041) b!4452377))

(assert (= (and d!1357947 (not c!758041)) b!4452378))

(assert (= (and b!4452378 c!758042) b!4452379))

(assert (= (and b!4452378 (not c!758042)) b!4452380))

(declare-fun m!5152699 () Bool)

(assert (=> b!4452379 m!5152699))

(assert (=> b!4451907 d!1357947))

(declare-fun d!1357949 () Bool)

(declare-fun res!1845049 () Bool)

(declare-fun e!2772547 () Bool)

(assert (=> d!1357949 (=> res!1845049 e!2772547)))

(assert (=> d!1357949 (= res!1845049 (and ((_ is Cons!49867) (toList!3718 lt!1644116)) (= (_1!28213 (h!55610 (toList!3718 lt!1644116))) (_1!28213 (tuple2!49839 key!3717 newValue!93)))))))

(assert (=> d!1357949 (= (containsKey!1296 (toList!3718 lt!1644116) (_1!28213 (tuple2!49839 key!3717 newValue!93))) e!2772547)))

(declare-fun b!4452381 () Bool)

(declare-fun e!2772548 () Bool)

(assert (=> b!4452381 (= e!2772547 e!2772548)))

(declare-fun res!1845050 () Bool)

(assert (=> b!4452381 (=> (not res!1845050) (not e!2772548))))

(assert (=> b!4452381 (= res!1845050 ((_ is Cons!49867) (toList!3718 lt!1644116)))))

(declare-fun b!4452382 () Bool)

(assert (=> b!4452382 (= e!2772548 (containsKey!1296 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(assert (= (and d!1357949 (not res!1845049)) b!4452381))

(assert (= (and b!4452381 res!1845050) b!4452382))

(assert (=> b!4452382 m!5152097))

(assert (=> b!4451885 d!1357949))

(declare-fun d!1357951 () Bool)

(declare-fun c!758043 () Bool)

(assert (=> d!1357951 (= c!758043 ((_ is Nil!49870) e!2771879))))

(declare-fun e!2772549 () (InoxSet K!11235))

(assert (=> d!1357951 (= (content!8035 e!2771879) e!2772549)))

(declare-fun b!4452383 () Bool)

(assert (=> b!4452383 (= e!2772549 ((as const (Array K!11235 Bool)) false))))

(declare-fun b!4452384 () Bool)

(assert (=> b!4452384 (= e!2772549 ((_ map or) (store ((as const (Array K!11235 Bool)) false) (h!55615 e!2771879) true) (content!8035 (t!356940 e!2771879))))))

(assert (= (and d!1357951 c!758043) b!4452383))

(assert (= (and d!1357951 (not c!758043)) b!4452384))

(declare-fun m!5152701 () Bool)

(assert (=> b!4452384 m!5152701))

(assert (=> b!4452384 m!5152077))

(assert (=> d!1357595 d!1357951))

(declare-fun lt!1644837 () Bool)

(declare-fun d!1357953 () Bool)

(assert (=> d!1357953 (= lt!1644837 (select (content!8035 e!2772162) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun e!2772551 () Bool)

(assert (=> d!1357953 (= lt!1644837 e!2772551)))

(declare-fun res!1845051 () Bool)

(assert (=> d!1357953 (=> (not res!1845051) (not e!2772551))))

(assert (=> d!1357953 (= res!1845051 ((_ is Cons!49870) e!2772162))))

(assert (=> d!1357953 (= (contains!12468 e!2772162 (_1!28213 (tuple2!49839 key!3717 newValue!93))) lt!1644837)))

(declare-fun b!4452385 () Bool)

(declare-fun e!2772550 () Bool)

(assert (=> b!4452385 (= e!2772551 e!2772550)))

(declare-fun res!1845052 () Bool)

(assert (=> b!4452385 (=> res!1845052 e!2772550)))

(assert (=> b!4452385 (= res!1845052 (= (h!55615 e!2772162) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(declare-fun b!4452386 () Bool)

(assert (=> b!4452386 (= e!2772550 (contains!12468 (t!356940 e!2772162) (_1!28213 (tuple2!49839 key!3717 newValue!93))))))

(assert (= (and d!1357953 res!1845051) b!4452385))

(assert (= (and b!4452385 (not res!1845052)) b!4452386))

(declare-fun m!5152703 () Bool)

(assert (=> d!1357953 m!5152703))

(declare-fun m!5152705 () Bool)

(assert (=> d!1357953 m!5152705))

(declare-fun m!5152707 () Bool)

(assert (=> b!4452386 m!5152707))

(assert (=> bm!309807 d!1357953))

(declare-fun d!1357955 () Bool)

(assert (=> d!1357955 true))

(assert (=> d!1357955 true))

(declare-fun res!1845055 () (_ BitVec 64))

(assert (=> d!1357955 (= (choose!28337 hashF!1220 key!3717) res!1845055)))

(assert (=> d!1357593 d!1357955))

(declare-fun d!1357961 () Bool)

(declare-fun lt!1644838 () Bool)

(assert (=> d!1357961 (= lt!1644838 (select (content!8033 (t!356937 (toList!3718 lt!1644187))) (tuple2!49839 key!3717 newValue!93)))))

(declare-fun e!2772553 () Bool)

(assert (=> d!1357961 (= lt!1644838 e!2772553)))

(declare-fun res!1845057 () Bool)

(assert (=> d!1357961 (=> (not res!1845057) (not e!2772553))))

(assert (=> d!1357961 (= res!1845057 ((_ is Cons!49867) (t!356937 (toList!3718 lt!1644187))))))

(assert (=> d!1357961 (= (contains!12466 (t!356937 (toList!3718 lt!1644187)) (tuple2!49839 key!3717 newValue!93)) lt!1644838)))

(declare-fun b!4452389 () Bool)

(declare-fun e!2772554 () Bool)

(assert (=> b!4452389 (= e!2772553 e!2772554)))

(declare-fun res!1845056 () Bool)

(assert (=> b!4452389 (=> res!1845056 e!2772554)))

(assert (=> b!4452389 (= res!1845056 (= (h!55610 (t!356937 (toList!3718 lt!1644187))) (tuple2!49839 key!3717 newValue!93)))))

(declare-fun b!4452390 () Bool)

(assert (=> b!4452390 (= e!2772554 (contains!12466 (t!356937 (t!356937 (toList!3718 lt!1644187))) (tuple2!49839 key!3717 newValue!93)))))

(assert (= (and d!1357961 res!1845057) b!4452389))

(assert (= (and b!4452389 (not res!1845056)) b!4452390))

(assert (=> d!1357961 m!5152179))

(declare-fun m!5152741 () Bool)

(assert (=> d!1357961 m!5152741))

(declare-fun m!5152743 () Bool)

(assert (=> b!4452390 m!5152743))

(assert (=> b!4451770 d!1357961))

(assert (=> d!1357561 d!1357563))

(assert (=> d!1357561 d!1357565))

(declare-fun d!1357965 () Bool)

(assert (=> d!1357965 (isDefined!8126 (getValueByKey!824 (toList!3718 lt!1644116) key!3717))))

(assert (=> d!1357965 true))

(declare-fun _$29!599 () Unit!85492)

(assert (=> d!1357965 (= (choose!28332 (toList!3718 lt!1644116) key!3717) _$29!599)))

(declare-fun bs!789448 () Bool)

(assert (= bs!789448 d!1357965))

(assert (=> bs!789448 m!5151125))

(assert (=> bs!789448 m!5151125))

(assert (=> bs!789448 m!5151127))

(assert (=> d!1357561 d!1357965))

(assert (=> d!1357561 d!1357727))

(declare-fun d!1357973 () Bool)

(declare-fun lt!1644839 () Bool)

(assert (=> d!1357973 (= lt!1644839 (select (content!8035 (getKeysList!306 (t!356937 (toList!3718 lt!1644116)))) (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(declare-fun e!2772560 () Bool)

(assert (=> d!1357973 (= lt!1644839 e!2772560)))

(declare-fun res!1845062 () Bool)

(assert (=> d!1357973 (=> (not res!1845062) (not e!2772560))))

(assert (=> d!1357973 (= res!1845062 ((_ is Cons!49870) (getKeysList!306 (t!356937 (toList!3718 lt!1644116)))))))

(assert (=> d!1357973 (= (contains!12468 (getKeysList!306 (t!356937 (toList!3718 lt!1644116))) (_1!28213 (h!55610 (toList!3718 lt!1644116)))) lt!1644839)))

(declare-fun b!4452395 () Bool)

(declare-fun e!2772559 () Bool)

(assert (=> b!4452395 (= e!2772560 e!2772559)))

(declare-fun res!1845063 () Bool)

(assert (=> b!4452395 (=> res!1845063 e!2772559)))

(assert (=> b!4452395 (= res!1845063 (= (h!55615 (getKeysList!306 (t!356937 (toList!3718 lt!1644116)))) (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(declare-fun b!4452396 () Bool)

(assert (=> b!4452396 (= e!2772559 (contains!12468 (t!356940 (getKeysList!306 (t!356937 (toList!3718 lt!1644116)))) (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(assert (= (and d!1357973 res!1845062) b!4452395))

(assert (= (and b!4452395 (not res!1845063)) b!4452396))

(assert (=> d!1357973 m!5151627))

(assert (=> d!1357973 m!5152103))

(declare-fun m!5152753 () Bool)

(assert (=> d!1357973 m!5152753))

(declare-fun m!5152755 () Bool)

(assert (=> b!4452396 m!5152755))

(assert (=> b!4451817 d!1357973))

(declare-fun bs!789453 () Bool)

(declare-fun d!1357977 () Bool)

(assert (= bs!789453 (and d!1357977 b!4451817)))

(declare-fun lambda!159256 () Int)

(assert (=> bs!789453 (= lambda!159256 lambda!159193)))

(declare-fun bs!789454 () Bool)

(assert (= bs!789454 (and d!1357977 b!4452153)))

(assert (=> bs!789454 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (= lambda!159256 lambda!159223))))

(declare-fun bs!789455 () Bool)

(assert (= bs!789455 (and d!1357977 b!4452276)))

(assert (=> bs!789455 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (= lambda!159256 lambda!159235))))

(declare-fun bs!789456 () Bool)

(assert (= bs!789456 (and d!1357977 b!4451818)))

(assert (=> bs!789456 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) (t!356937 (toList!3718 lt!1644116))) (= lambda!159256 lambda!159192))))

(declare-fun bs!789457 () Bool)

(assert (= bs!789457 (and d!1357977 b!4452154)))

(assert (=> bs!789457 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))) (= lambda!159256 lambda!159222))))

(declare-fun bs!789458 () Bool)

(assert (= bs!789458 (and d!1357977 b!4452275)))

(assert (=> bs!789458 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116))))) (= lambda!159256 lambda!159236))))

(declare-fun bs!789459 () Bool)

(assert (= bs!789459 (and d!1357977 b!4452274)))

(assert (=> bs!789459 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) (t!356937 (toList!3718 lt!1644116))) (= lambda!159256 lambda!159237))))

(declare-fun bs!789460 () Bool)

(assert (= bs!789460 (and d!1357977 b!4452250)))

(assert (=> bs!789460 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) lt!1644587) (= lambda!159256 lambda!159232))))

(declare-fun bs!789461 () Bool)

(assert (= bs!789461 (and d!1357977 b!4451816)))

(assert (=> bs!789461 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) (toList!3718 lt!1644116)) (= lambda!159256 lambda!159194))))

(declare-fun bs!789462 () Bool)

(assert (= bs!789462 (and d!1357977 b!4452251)))

(assert (=> bs!789462 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587))) (= lambda!159256 lambda!159231))))

(declare-fun bs!789463 () Bool)

(assert (= bs!789463 (and d!1357977 b!4452155)))

(assert (=> bs!789463 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (= lambda!159256 lambda!159221))))

(declare-fun bs!789464 () Bool)

(assert (= bs!789464 (and d!1357977 b!4452252)))

(assert (=> bs!789464 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) (t!356937 lt!1644587)) (= lambda!159256 lambda!159230))))

(declare-fun bs!789465 () Bool)

(assert (= bs!789465 (and d!1357977 b!4452047)))

(assert (=> bs!789465 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) (toList!3718 lt!1644187)) (= lambda!159256 lambda!159218))))

(declare-fun bs!789466 () Bool)

(assert (= bs!789466 (and d!1357977 b!4451521)))

(assert (=> bs!789466 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) (toList!3718 lt!1644116)) (= lambda!159256 lambda!159132))))

(assert (=> d!1357977 true))

(assert (=> d!1357977 true))

(assert (=> d!1357977 (forall!9760 lt!1644534 lambda!159256)))

(declare-fun lt!1644842 () Unit!85492)

(declare-fun choose!28347 (List!49991 List!49994 tuple2!49838) Unit!85492)

(assert (=> d!1357977 (= lt!1644842 (choose!28347 (t!356937 (toList!3718 lt!1644116)) lt!1644534 (h!55610 (toList!3718 lt!1644116))))))

(assert (=> d!1357977 (invariantList!860 (t!356937 (toList!3718 lt!1644116)))))

(assert (=> d!1357977 (= (lemmaForallContainsAddHeadPreserves!106 (t!356937 (toList!3718 lt!1644116)) lt!1644534 (h!55610 (toList!3718 lt!1644116))) lt!1644842)))

(declare-fun bs!789467 () Bool)

(assert (= bs!789467 d!1357977))

(declare-fun m!5152775 () Bool)

(assert (=> bs!789467 m!5152775))

(declare-fun m!5152777 () Bool)

(assert (=> bs!789467 m!5152777))

(assert (=> bs!789467 m!5152119))

(assert (=> b!4451817 d!1357977))

(assert (=> b!4451817 d!1357861))

(declare-fun d!1357989 () Bool)

(declare-fun res!1845076 () Bool)

(declare-fun e!2772579 () Bool)

(assert (=> d!1357989 (=> res!1845076 e!2772579)))

(assert (=> d!1357989 (= res!1845076 ((_ is Nil!49870) lt!1644534))))

(assert (=> d!1357989 (= (forall!9760 lt!1644534 lambda!159193) e!2772579)))

(declare-fun b!4452429 () Bool)

(declare-fun e!2772580 () Bool)

(assert (=> b!4452429 (= e!2772579 e!2772580)))

(declare-fun res!1845077 () Bool)

(assert (=> b!4452429 (=> (not res!1845077) (not e!2772580))))

(assert (=> b!4452429 (= res!1845077 (dynLambda!20942 lambda!159193 (h!55615 lt!1644534)))))

(declare-fun b!4452430 () Bool)

(assert (=> b!4452430 (= e!2772580 (forall!9760 (t!356940 lt!1644534) lambda!159193))))

(assert (= (and d!1357989 (not res!1845076)) b!4452429))

(assert (= (and b!4452429 res!1845077) b!4452430))

(declare-fun b_lambda!147121 () Bool)

(assert (=> (not b_lambda!147121) (not b!4452429)))

(declare-fun m!5152779 () Bool)

(assert (=> b!4452429 m!5152779))

(declare-fun m!5152781 () Bool)

(assert (=> b!4452430 m!5152781))

(assert (=> b!4451817 d!1357989))

(assert (=> b!4451817 d!1357783))

(declare-fun bs!789468 () Bool)

(declare-fun b!4452435 () Bool)

(assert (= bs!789468 (and b!4452435 b!4451817)))

(declare-fun lambda!159257 () Int)

(assert (=> bs!789468 (= (= (t!356937 (toList!3718 lt!1644187)) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159257 lambda!159193))))

(declare-fun bs!789469 () Bool)

(assert (= bs!789469 (and b!4452435 b!4452153)))

(assert (=> bs!789469 (= (= (t!356937 (toList!3718 lt!1644187)) (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (= lambda!159257 lambda!159223))))

(declare-fun bs!789470 () Bool)

(assert (= bs!789470 (and b!4452435 b!4452276)))

(assert (=> bs!789470 (= (= (t!356937 (toList!3718 lt!1644187)) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (= lambda!159257 lambda!159235))))

(declare-fun bs!789471 () Bool)

(assert (= bs!789471 (and b!4452435 b!4451818)))

(assert (=> bs!789471 (= (= (t!356937 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644116))) (= lambda!159257 lambda!159192))))

(declare-fun bs!789472 () Bool)

(assert (= bs!789472 (and b!4452435 d!1357977)))

(assert (=> bs!789472 (= (= (t!356937 (toList!3718 lt!1644187)) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159257 lambda!159256))))

(declare-fun bs!789473 () Bool)

(assert (= bs!789473 (and b!4452435 b!4452154)))

(assert (=> bs!789473 (= (= (t!356937 (toList!3718 lt!1644187)) (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))) (= lambda!159257 lambda!159222))))

(declare-fun bs!789474 () Bool)

(assert (= bs!789474 (and b!4452435 b!4452275)))

(assert (=> bs!789474 (= (= (t!356937 (toList!3718 lt!1644187)) (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116))))) (= lambda!159257 lambda!159236))))

(declare-fun bs!789475 () Bool)

(assert (= bs!789475 (and b!4452435 b!4452274)))

(assert (=> bs!789475 (= (= (t!356937 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644116))) (= lambda!159257 lambda!159237))))

(declare-fun bs!789476 () Bool)

(assert (= bs!789476 (and b!4452435 b!4452250)))

(assert (=> bs!789476 (= (= (t!356937 (toList!3718 lt!1644187)) lt!1644587) (= lambda!159257 lambda!159232))))

(declare-fun bs!789477 () Bool)

(assert (= bs!789477 (and b!4452435 b!4451816)))

(assert (=> bs!789477 (= (= (t!356937 (toList!3718 lt!1644187)) (toList!3718 lt!1644116)) (= lambda!159257 lambda!159194))))

(declare-fun bs!789478 () Bool)

(assert (= bs!789478 (and b!4452435 b!4452251)))

(assert (=> bs!789478 (= (= (t!356937 (toList!3718 lt!1644187)) (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587))) (= lambda!159257 lambda!159231))))

(declare-fun bs!789479 () Bool)

(assert (= bs!789479 (and b!4452435 b!4452155)))

(assert (=> bs!789479 (= (= (t!356937 (toList!3718 lt!1644187)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (= lambda!159257 lambda!159221))))

(declare-fun bs!789480 () Bool)

(assert (= bs!789480 (and b!4452435 b!4452252)))

(assert (=> bs!789480 (= (= (t!356937 (toList!3718 lt!1644187)) (t!356937 lt!1644587)) (= lambda!159257 lambda!159230))))

(declare-fun bs!789481 () Bool)

(assert (= bs!789481 (and b!4452435 b!4452047)))

(assert (=> bs!789481 (= (= (t!356937 (toList!3718 lt!1644187)) (toList!3718 lt!1644187)) (= lambda!159257 lambda!159218))))

(declare-fun bs!789482 () Bool)

(assert (= bs!789482 (and b!4452435 b!4451521)))

(assert (=> bs!789482 (= (= (t!356937 (toList!3718 lt!1644187)) (toList!3718 lt!1644116)) (= lambda!159257 lambda!159132))))

(assert (=> b!4452435 true))

(declare-fun bs!789483 () Bool)

(declare-fun b!4452434 () Bool)

(assert (= bs!789483 (and b!4452434 b!4451817)))

(declare-fun lambda!159258 () Int)

(assert (=> bs!789483 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159258 lambda!159193))))

(declare-fun bs!789484 () Bool)

(assert (= bs!789484 (and b!4452434 b!4452153)))

(assert (=> bs!789484 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (= lambda!159258 lambda!159223))))

(declare-fun bs!789485 () Bool)

(assert (= bs!789485 (and b!4452434 b!4452276)))

(assert (=> bs!789485 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (= lambda!159258 lambda!159235))))

(declare-fun bs!789486 () Bool)

(assert (= bs!789486 (and b!4452434 b!4451818)))

(assert (=> bs!789486 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) (t!356937 (toList!3718 lt!1644116))) (= lambda!159258 lambda!159192))))

(declare-fun bs!789487 () Bool)

(assert (= bs!789487 (and b!4452434 d!1357977)))

(assert (=> bs!789487 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159258 lambda!159256))))

(declare-fun bs!789488 () Bool)

(assert (= bs!789488 (and b!4452434 b!4452154)))

(assert (=> bs!789488 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))) (= lambda!159258 lambda!159222))))

(declare-fun bs!789489 () Bool)

(assert (= bs!789489 (and b!4452434 b!4452275)))

(assert (=> bs!789489 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116))))) (= lambda!159258 lambda!159236))))

(declare-fun bs!789490 () Bool)

(assert (= bs!789490 (and b!4452434 b!4452274)))

(assert (=> bs!789490 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) (t!356937 (toList!3718 lt!1644116))) (= lambda!159258 lambda!159237))))

(declare-fun bs!789491 () Bool)

(assert (= bs!789491 (and b!4452434 b!4452250)))

(assert (=> bs!789491 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) lt!1644587) (= lambda!159258 lambda!159232))))

(declare-fun bs!789492 () Bool)

(assert (= bs!789492 (and b!4452434 b!4451816)))

(assert (=> bs!789492 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) (toList!3718 lt!1644116)) (= lambda!159258 lambda!159194))))

(declare-fun bs!789493 () Bool)

(assert (= bs!789493 (and b!4452434 b!4452251)))

(assert (=> bs!789493 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587))) (= lambda!159258 lambda!159231))))

(declare-fun bs!789494 () Bool)

(assert (= bs!789494 (and b!4452434 b!4452435)))

(assert (=> bs!789494 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) (t!356937 (toList!3718 lt!1644187))) (= lambda!159258 lambda!159257))))

(declare-fun bs!789495 () Bool)

(assert (= bs!789495 (and b!4452434 b!4452155)))

(assert (=> bs!789495 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (= lambda!159258 lambda!159221))))

(declare-fun bs!789497 () Bool)

(assert (= bs!789497 (and b!4452434 b!4452252)))

(assert (=> bs!789497 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) (t!356937 lt!1644587)) (= lambda!159258 lambda!159230))))

(declare-fun bs!789498 () Bool)

(assert (= bs!789498 (and b!4452434 b!4452047)))

(assert (=> bs!789498 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) (toList!3718 lt!1644187)) (= lambda!159258 lambda!159218))))

(declare-fun bs!789499 () Bool)

(assert (= bs!789499 (and b!4452434 b!4451521)))

(assert (=> bs!789499 (= (= (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187))) (toList!3718 lt!1644116)) (= lambda!159258 lambda!159132))))

(assert (=> b!4452434 true))

(declare-fun bs!789502 () Bool)

(declare-fun b!4452433 () Bool)

(assert (= bs!789502 (and b!4452433 b!4451817)))

(declare-fun lambda!159259 () Int)

(assert (=> bs!789502 (= (= (toList!3718 lt!1644187) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159259 lambda!159193))))

(declare-fun bs!789503 () Bool)

(assert (= bs!789503 (and b!4452433 b!4452153)))

(assert (=> bs!789503 (= (= (toList!3718 lt!1644187) (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (= lambda!159259 lambda!159223))))

(declare-fun bs!789504 () Bool)

(assert (= bs!789504 (and b!4452433 b!4452276)))

(assert (=> bs!789504 (= (= (toList!3718 lt!1644187) (t!356937 (t!356937 (toList!3718 lt!1644116)))) (= lambda!159259 lambda!159235))))

(declare-fun bs!789505 () Bool)

(assert (= bs!789505 (and b!4452433 b!4451818)))

(assert (=> bs!789505 (= (= (toList!3718 lt!1644187) (t!356937 (toList!3718 lt!1644116))) (= lambda!159259 lambda!159192))))

(declare-fun bs!789506 () Bool)

(assert (= bs!789506 (and b!4452433 d!1357977)))

(assert (=> bs!789506 (= (= (toList!3718 lt!1644187) (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116)))) (= lambda!159259 lambda!159256))))

(declare-fun bs!789507 () Bool)

(assert (= bs!789507 (and b!4452433 b!4452154)))

(assert (=> bs!789507 (= (= (toList!3718 lt!1644187) (Cons!49867 (h!55610 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581)))) (= lambda!159259 lambda!159222))))

(declare-fun bs!789508 () Bool)

(assert (= bs!789508 (and b!4452433 b!4452275)))

(assert (=> bs!789508 (= (= (toList!3718 lt!1644187) (Cons!49867 (h!55610 (t!356937 (toList!3718 lt!1644116))) (t!356937 (t!356937 (toList!3718 lt!1644116))))) (= lambda!159259 lambda!159236))))

(declare-fun bs!789509 () Bool)

(assert (= bs!789509 (and b!4452433 b!4452274)))

(assert (=> bs!789509 (= (= (toList!3718 lt!1644187) (t!356937 (toList!3718 lt!1644116))) (= lambda!159259 lambda!159237))))

(declare-fun bs!789510 () Bool)

(assert (= bs!789510 (and b!4452433 b!4452250)))

(assert (=> bs!789510 (= (= (toList!3718 lt!1644187) lt!1644587) (= lambda!159259 lambda!159232))))

(declare-fun bs!789511 () Bool)

(assert (= bs!789511 (and b!4452433 b!4451816)))

(assert (=> bs!789511 (= (= (toList!3718 lt!1644187) (toList!3718 lt!1644116)) (= lambda!159259 lambda!159194))))

(declare-fun bs!789512 () Bool)

(assert (= bs!789512 (and b!4452433 b!4452434)))

(assert (=> bs!789512 (= (= (toList!3718 lt!1644187) (Cons!49867 (h!55610 (toList!3718 lt!1644187)) (t!356937 (toList!3718 lt!1644187)))) (= lambda!159259 lambda!159258))))

(declare-fun bs!789513 () Bool)

(assert (= bs!789513 (and b!4452433 b!4452251)))

(assert (=> bs!789513 (= (= (toList!3718 lt!1644187) (Cons!49867 (h!55610 lt!1644587) (t!356937 lt!1644587))) (= lambda!159259 lambda!159231))))

(declare-fun bs!789514 () Bool)

(assert (= bs!789514 (and b!4452433 b!4452435)))

(assert (=> bs!789514 (= (= (toList!3718 lt!1644187) (t!356937 (toList!3718 lt!1644187))) (= lambda!159259 lambda!159257))))

(declare-fun bs!789515 () Bool)

(assert (= bs!789515 (and b!4452433 b!4452155)))

(assert (=> bs!789515 (= (= (toList!3718 lt!1644187) (t!356937 (ite c!757943 (toList!3718 lt!1644116) lt!1644581))) (= lambda!159259 lambda!159221))))

(declare-fun bs!789516 () Bool)

(assert (= bs!789516 (and b!4452433 b!4452252)))

(assert (=> bs!789516 (= (= (toList!3718 lt!1644187) (t!356937 lt!1644587)) (= lambda!159259 lambda!159230))))

(declare-fun bs!789518 () Bool)

(assert (= bs!789518 (and b!4452433 b!4452047)))

(assert (=> bs!789518 (= lambda!159259 lambda!159218)))

(declare-fun bs!789519 () Bool)

(assert (= bs!789519 (and b!4452433 b!4451521)))

(assert (=> bs!789519 (= (= (toList!3718 lt!1644187) (toList!3718 lt!1644116)) (= lambda!159259 lambda!159132))))

(assert (=> b!4452433 true))

(declare-fun bs!789520 () Bool)

(declare-fun b!4452431 () Bool)

(assert (= bs!789520 (and b!4452431 b!4452151)))

(declare-fun lambda!159260 () Int)

(assert (=> bs!789520 (= lambda!159260 lambda!159224)))

(declare-fun bs!789521 () Bool)

(assert (= bs!789521 (and b!4452431 b!4451814)))

(assert (=> bs!789521 (= lambda!159260 lambda!159195)))

(declare-fun bs!789522 () Bool)

(assert (= bs!789522 (and b!4452431 b!4452048)))

(assert (=> bs!789522 (= lambda!159260 lambda!159219)))

(declare-fun bs!789523 () Bool)

(assert (= bs!789523 (and b!4452431 b!4451522)))

(assert (=> bs!789523 (= lambda!159260 lambda!159133)))

(declare-fun bs!789524 () Bool)

(assert (= bs!789524 (and b!4452431 b!4452272)))

(assert (=> bs!789524 (= lambda!159260 lambda!159240)))

(declare-fun bs!789525 () Bool)

(assert (= bs!789525 (and b!4452431 b!4452248)))

(assert (=> bs!789525 (= lambda!159260 lambda!159233)))

(declare-fun e!2772581 () Bool)

(declare-fun lt!1644860 () List!49994)

(assert (=> b!4452431 (= e!2772581 (= (content!8035 lt!1644860) (content!8035 (map!10914 (toList!3718 lt!1644187) lambda!159260))))))

(declare-fun b!4452432 () Bool)

(declare-fun e!2772584 () Unit!85492)

(declare-fun Unit!85664 () Unit!85492)

(assert (=> b!4452432 (= e!2772584 Unit!85664)))

(declare-fun res!1845079 () Bool)

(assert (=> b!4452433 (=> (not res!1845079) (not e!2772581))))

(assert (=> b!4452433 (= res!1845079 (forall!9760 lt!1644860 lambda!159259))))

(declare-fun e!2772583 () List!49994)

(assert (=> b!4452434 (= e!2772583 (Cons!49870 (_1!28213 (h!55610 (toList!3718 lt!1644187))) (getKeysList!306 (t!356937 (toList!3718 lt!1644187)))))))

(declare-fun c!758056 () Bool)

(assert (=> b!4452434 (= c!758056 (containsKey!1296 (t!356937 (toList!3718 lt!1644187)) (_1!28213 (h!55610 (toList!3718 lt!1644187)))))))

(declare-fun lt!1644857 () Unit!85492)

(assert (=> b!4452434 (= lt!1644857 e!2772584)))

(declare-fun c!758054 () Bool)

(assert (=> b!4452434 (= c!758054 (contains!12468 (getKeysList!306 (t!356937 (toList!3718 lt!1644187))) (_1!28213 (h!55610 (toList!3718 lt!1644187)))))))

(declare-fun lt!1644858 () Unit!85492)

(declare-fun e!2772582 () Unit!85492)

(assert (=> b!4452434 (= lt!1644858 e!2772582)))

(declare-fun lt!1644859 () List!49994)

(assert (=> b!4452434 (= lt!1644859 (getKeysList!306 (t!356937 (toList!3718 lt!1644187))))))

(declare-fun lt!1644861 () Unit!85492)

(assert (=> b!4452434 (= lt!1644861 (lemmaForallContainsAddHeadPreserves!106 (t!356937 (toList!3718 lt!1644187)) lt!1644859 (h!55610 (toList!3718 lt!1644187))))))

(assert (=> b!4452434 (forall!9760 lt!1644859 lambda!159258)))

(declare-fun lt!1644855 () Unit!85492)

(assert (=> b!4452434 (= lt!1644855 lt!1644861)))

(assert (=> b!4452435 false))

(declare-fun lt!1644856 () Unit!85492)

(assert (=> b!4452435 (= lt!1644856 (forallContained!2163 (getKeysList!306 (t!356937 (toList!3718 lt!1644187))) lambda!159257 (_1!28213 (h!55610 (toList!3718 lt!1644187)))))))

(declare-fun Unit!85665 () Unit!85492)

(assert (=> b!4452435 (= e!2772582 Unit!85665)))

(declare-fun b!4452436 () Bool)

(declare-fun Unit!85666 () Unit!85492)

(assert (=> b!4452436 (= e!2772582 Unit!85666)))

(declare-fun b!4452437 () Bool)

(declare-fun res!1845078 () Bool)

(assert (=> b!4452437 (=> (not res!1845078) (not e!2772581))))

(assert (=> b!4452437 (= res!1845078 (= (length!224 lt!1644860) (length!225 (toList!3718 lt!1644187))))))

(declare-fun d!1357991 () Bool)

(assert (=> d!1357991 e!2772581))

(declare-fun res!1845080 () Bool)

(assert (=> d!1357991 (=> (not res!1845080) (not e!2772581))))

(assert (=> d!1357991 (= res!1845080 (noDuplicate!684 lt!1644860))))

(assert (=> d!1357991 (= lt!1644860 e!2772583)))

(declare-fun c!758055 () Bool)

(assert (=> d!1357991 (= c!758055 ((_ is Cons!49867) (toList!3718 lt!1644187)))))

(assert (=> d!1357991 (invariantList!860 (toList!3718 lt!1644187))))

(assert (=> d!1357991 (= (getKeysList!306 (toList!3718 lt!1644187)) lt!1644860)))

(declare-fun b!4452438 () Bool)

(assert (=> b!4452438 (= e!2772583 Nil!49870)))

(declare-fun b!4452439 () Bool)

(assert (=> b!4452439 false))

(declare-fun Unit!85667 () Unit!85492)

(assert (=> b!4452439 (= e!2772584 Unit!85667)))

(assert (= (and d!1357991 c!758055) b!4452434))

(assert (= (and d!1357991 (not c!758055)) b!4452438))

(assert (= (and b!4452434 c!758056) b!4452439))

(assert (= (and b!4452434 (not c!758056)) b!4452432))

(assert (= (and b!4452434 c!758054) b!4452435))

(assert (= (and b!4452434 (not c!758054)) b!4452436))

(assert (= (and d!1357991 res!1845080) b!4452437))

(assert (= (and b!4452437 res!1845078) b!4452433))

(assert (= (and b!4452433 res!1845079) b!4452431))

(declare-fun m!5152855 () Bool)

(assert (=> b!4452431 m!5152855))

(declare-fun m!5152857 () Bool)

(assert (=> b!4452431 m!5152857))

(assert (=> b!4452431 m!5152857))

(declare-fun m!5152859 () Bool)

(assert (=> b!4452431 m!5152859))

(declare-fun m!5152861 () Bool)

(assert (=> b!4452437 m!5152861))

(assert (=> b!4452437 m!5152029))

(declare-fun m!5152863 () Bool)

(assert (=> b!4452434 m!5152863))

(declare-fun m!5152865 () Bool)

(assert (=> b!4452434 m!5152865))

(declare-fun m!5152867 () Bool)

(assert (=> b!4452434 m!5152867))

(declare-fun m!5152869 () Bool)

(assert (=> b!4452434 m!5152869))

(assert (=> b!4452434 m!5152869))

(declare-fun m!5152871 () Bool)

(assert (=> b!4452434 m!5152871))

(assert (=> b!4452435 m!5152869))

(assert (=> b!4452435 m!5152869))

(declare-fun m!5152873 () Bool)

(assert (=> b!4452435 m!5152873))

(declare-fun m!5152875 () Bool)

(assert (=> b!4452433 m!5152875))

(declare-fun m!5152877 () Bool)

(assert (=> d!1357991 m!5152877))

(assert (=> d!1357991 m!5152059))

(assert (=> b!4451839 d!1357991))

(declare-fun d!1358015 () Bool)

(declare-fun res!1845096 () Bool)

(declare-fun e!2772601 () Bool)

(assert (=> d!1358015 (=> res!1845096 e!2772601)))

(assert (=> d!1358015 (= res!1845096 (and ((_ is Cons!49867) (t!356937 (t!356937 newBucket!194))) (= (_1!28213 (h!55610 (t!356937 (t!356937 newBucket!194)))) (_1!28213 (h!55610 newBucket!194)))))))

(assert (=> d!1358015 (= (containsKey!1294 (t!356937 (t!356937 newBucket!194)) (_1!28213 (h!55610 newBucket!194))) e!2772601)))

(declare-fun b!4452461 () Bool)

(declare-fun e!2772602 () Bool)

(assert (=> b!4452461 (= e!2772601 e!2772602)))

(declare-fun res!1845097 () Bool)

(assert (=> b!4452461 (=> (not res!1845097) (not e!2772602))))

(assert (=> b!4452461 (= res!1845097 ((_ is Cons!49867) (t!356937 (t!356937 newBucket!194))))))

(declare-fun b!4452462 () Bool)

(assert (=> b!4452462 (= e!2772602 (containsKey!1294 (t!356937 (t!356937 (t!356937 newBucket!194))) (_1!28213 (h!55610 newBucket!194))))))

(assert (= (and d!1358015 (not res!1845096)) b!4452461))

(assert (= (and b!4452461 res!1845097) b!4452462))

(declare-fun m!5152879 () Bool)

(assert (=> b!4452462 m!5152879))

(assert (=> b!4451956 d!1358015))

(declare-fun d!1358017 () Bool)

(declare-fun res!1845098 () Bool)

(declare-fun e!2772603 () Bool)

(assert (=> d!1358017 (=> res!1845098 e!2772603)))

(assert (=> d!1358017 (= res!1845098 (and ((_ is Cons!49868) (toList!3717 lt!1644225)) (= (_1!28214 (h!55611 (toList!3717 lt!1644225))) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (=> d!1358017 (= (containsKey!1295 (toList!3717 lt!1644225) (_1!28214 (tuple2!49841 hash!366 newBucket!194))) e!2772603)))

(declare-fun b!4452463 () Bool)

(declare-fun e!2772604 () Bool)

(assert (=> b!4452463 (= e!2772603 e!2772604)))

(declare-fun res!1845099 () Bool)

(assert (=> b!4452463 (=> (not res!1845099) (not e!2772604))))

(assert (=> b!4452463 (= res!1845099 (and (or (not ((_ is Cons!49868) (toList!3717 lt!1644225))) (bvsle (_1!28214 (h!55611 (toList!3717 lt!1644225))) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))) ((_ is Cons!49868) (toList!3717 lt!1644225)) (bvslt (_1!28214 (h!55611 (toList!3717 lt!1644225))) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(declare-fun b!4452464 () Bool)

(assert (=> b!4452464 (= e!2772604 (containsKey!1295 (t!356938 (toList!3717 lt!1644225)) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(assert (= (and d!1358017 (not res!1845098)) b!4452463))

(assert (= (and b!4452463 res!1845099) b!4452464))

(declare-fun m!5152881 () Bool)

(assert (=> b!4452464 m!5152881))

(assert (=> d!1357581 d!1358017))

(declare-fun d!1358019 () Bool)

(assert (=> d!1358019 (= (invariantList!860 (toList!3718 lt!1644481)) (noDuplicatedKeys!199 (toList!3718 lt!1644481)))))

(declare-fun bs!789546 () Bool)

(assert (= bs!789546 d!1358019))

(declare-fun m!5152883 () Bool)

(assert (=> bs!789546 m!5152883))

(assert (=> b!4451739 d!1358019))

(declare-fun d!1358021 () Bool)

(declare-fun res!1845100 () Bool)

(declare-fun e!2772605 () Bool)

(assert (=> d!1358021 (=> res!1845100 e!2772605)))

(assert (=> d!1358021 (= res!1845100 ((_ is Nil!49868) (t!356938 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194))))))))

(assert (=> d!1358021 (= (forall!9756 (t!356938 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194)))) lambda!159068) e!2772605)))

(declare-fun b!4452465 () Bool)

(declare-fun e!2772606 () Bool)

(assert (=> b!4452465 (= e!2772605 e!2772606)))

(declare-fun res!1845101 () Bool)

(assert (=> b!4452465 (=> (not res!1845101) (not e!2772606))))

(assert (=> b!4452465 (= res!1845101 (dynLambda!20938 lambda!159068 (h!55611 (t!356938 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194)))))))))

(declare-fun b!4452466 () Bool)

(assert (=> b!4452466 (= e!2772606 (forall!9756 (t!356938 (t!356938 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194))))) lambda!159068))))

(assert (= (and d!1358021 (not res!1845100)) b!4452465))

(assert (= (and b!4452465 res!1845101) b!4452466))

(declare-fun b_lambda!147125 () Bool)

(assert (=> (not b_lambda!147125) (not b!4452465)))

(declare-fun m!5152885 () Bool)

(assert (=> b!4452465 m!5152885))

(declare-fun m!5152887 () Bool)

(assert (=> b!4452466 m!5152887))

(assert (=> b!4451465 d!1358021))

(declare-fun d!1358023 () Bool)

(declare-fun res!1845102 () Bool)

(declare-fun e!2772607 () Bool)

(assert (=> d!1358023 (=> res!1845102 e!2772607)))

(assert (=> d!1358023 (= res!1845102 ((_ is Nil!49867) (t!356937 newBucket!194)))))

(assert (=> d!1358023 (= (forall!9758 (t!356937 newBucket!194) lambda!159085) e!2772607)))

(declare-fun b!4452467 () Bool)

(declare-fun e!2772608 () Bool)

(assert (=> b!4452467 (= e!2772607 e!2772608)))

(declare-fun res!1845103 () Bool)

(assert (=> b!4452467 (=> (not res!1845103) (not e!2772608))))

(assert (=> b!4452467 (= res!1845103 (dynLambda!20940 lambda!159085 (h!55610 (t!356937 newBucket!194))))))

(declare-fun b!4452468 () Bool)

(assert (=> b!4452468 (= e!2772608 (forall!9758 (t!356937 (t!356937 newBucket!194)) lambda!159085))))

(assert (= (and d!1358023 (not res!1845102)) b!4452467))

(assert (= (and b!4452467 res!1845103) b!4452468))

(declare-fun b_lambda!147127 () Bool)

(assert (=> (not b_lambda!147127) (not b!4452467)))

(declare-fun m!5152889 () Bool)

(assert (=> b!4452467 m!5152889))

(declare-fun m!5152891 () Bool)

(assert (=> b!4452468 m!5152891))

(assert (=> b!4451901 d!1358023))

(declare-fun d!1358025 () Bool)

(assert (=> d!1358025 (= ($colon$colon!829 (ite c!757943 (t!356937 (toList!3718 lt!1644116)) (ite c!757944 (toList!3718 lt!1644116) e!2772184)) (ite (or c!757943 c!757944) (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))) (ite c!757940 (h!55610 (toList!3718 lt!1644116)) (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))))) (Cons!49867 (ite (or c!757943 c!757944) (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))) (ite c!757940 (h!55610 (toList!3718 lt!1644116)) (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93))))) (ite c!757943 (t!356937 (toList!3718 lt!1644116)) (ite c!757944 (toList!3718 lt!1644116) e!2772184))))))

(assert (=> bm!309817 d!1358025))

(declare-fun d!1358027 () Bool)

(declare-fun lt!1644873 () Bool)

(assert (=> d!1358027 (= lt!1644873 (select (content!8036 lt!1644599) (tuple2!49841 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(declare-fun e!2772610 () Bool)

(assert (=> d!1358027 (= lt!1644873 e!2772610)))

(declare-fun res!1845105 () Bool)

(assert (=> d!1358027 (=> (not res!1845105) (not e!2772610))))

(assert (=> d!1358027 (= res!1845105 ((_ is Cons!49868) lt!1644599))))

(assert (=> d!1358027 (= (contains!12467 lt!1644599 (tuple2!49841 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194)))) lt!1644873)))

(declare-fun b!4452469 () Bool)

(declare-fun e!2772609 () Bool)

(assert (=> b!4452469 (= e!2772610 e!2772609)))

(declare-fun res!1845104 () Bool)

(assert (=> b!4452469 (=> res!1845104 e!2772609)))

(assert (=> b!4452469 (= res!1845104 (= (h!55611 lt!1644599) (tuple2!49841 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(declare-fun b!4452470 () Bool)

(assert (=> b!4452470 (= e!2772609 (contains!12467 (t!356938 lt!1644599) (tuple2!49841 (_1!28214 (tuple2!49841 hash!366 newBucket!194)) (_2!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (= (and d!1358027 res!1845105) b!4452469))

(assert (= (and b!4452469 (not res!1845104)) b!4452470))

(declare-fun m!5152919 () Bool)

(assert (=> d!1358027 m!5152919))

(declare-fun m!5152921 () Bool)

(assert (=> d!1358027 m!5152921))

(declare-fun m!5152923 () Bool)

(assert (=> b!4452470 m!5152923))

(assert (=> b!4451937 d!1358027))

(declare-fun b!4452475 () Bool)

(declare-fun e!2772614 () Option!10837)

(assert (=> b!4452475 (= e!2772614 (getValueByKey!823 (t!356938 (t!356938 (toList!3717 lt!1644225))) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))

(declare-fun b!4452473 () Bool)

(declare-fun e!2772613 () Option!10837)

(assert (=> b!4452473 (= e!2772613 (Some!10836 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644225))))))))

(declare-fun c!758060 () Bool)

(declare-fun d!1358031 () Bool)

(assert (=> d!1358031 (= c!758060 (and ((_ is Cons!49868) (t!356938 (toList!3717 lt!1644225))) (= (_1!28214 (h!55611 (t!356938 (toList!3717 lt!1644225)))) (_1!28214 (tuple2!49841 hash!366 newBucket!194)))))))

(assert (=> d!1358031 (= (getValueByKey!823 (t!356938 (toList!3717 lt!1644225)) (_1!28214 (tuple2!49841 hash!366 newBucket!194))) e!2772613)))

(declare-fun b!4452476 () Bool)

(assert (=> b!4452476 (= e!2772614 None!10836)))

(declare-fun b!4452474 () Bool)

(assert (=> b!4452474 (= e!2772613 e!2772614)))

(declare-fun c!758061 () Bool)

(assert (=> b!4452474 (= c!758061 (and ((_ is Cons!49868) (t!356938 (toList!3717 lt!1644225))) (not (= (_1!28214 (h!55611 (t!356938 (toList!3717 lt!1644225)))) (_1!28214 (tuple2!49841 hash!366 newBucket!194))))))))

(assert (= (and d!1358031 c!758060) b!4452473))

(assert (= (and d!1358031 (not c!758060)) b!4452474))

(assert (= (and b!4452474 c!758061) b!4452475))

(assert (= (and b!4452474 (not c!758061)) b!4452476))

(declare-fun m!5152929 () Bool)

(assert (=> b!4452475 m!5152929))

(assert (=> b!4451446 d!1358031))

(declare-fun d!1358035 () Bool)

(declare-fun lt!1644874 () Bool)

(assert (=> d!1358035 (= lt!1644874 (select (content!8033 lt!1644188) (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))))))

(declare-fun e!2772617 () Bool)

(assert (=> d!1358035 (= lt!1644874 e!2772617)))

(declare-fun res!1845111 () Bool)

(assert (=> d!1358035 (=> (not res!1845111) (not e!2772617))))

(assert (=> d!1358035 (= res!1845111 ((_ is Cons!49867) lt!1644188))))

(assert (=> d!1358035 (= (contains!12466 lt!1644188 (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))) lt!1644874)))

(declare-fun b!4452479 () Bool)

(declare-fun e!2772618 () Bool)

(assert (=> b!4452479 (= e!2772617 e!2772618)))

(declare-fun res!1845110 () Bool)

(assert (=> b!4452479 (=> res!1845110 e!2772618)))

(assert (=> b!4452479 (= res!1845110 (= (h!55610 lt!1644188) (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))))))

(declare-fun b!4452480 () Bool)

(assert (=> b!4452480 (= e!2772618 (contains!12466 (t!356937 lt!1644188) (tuple2!49839 (_1!28213 (tuple2!49839 key!3717 newValue!93)) (_2!28213 (tuple2!49839 key!3717 newValue!93)))))))

(assert (= (and d!1358035 res!1845111) b!4452479))

(assert (= (and b!4452479 (not res!1845110)) b!4452480))

(declare-fun m!5152933 () Bool)

(assert (=> d!1358035 m!5152933))

(declare-fun m!5152935 () Bool)

(assert (=> d!1358035 m!5152935))

(declare-fun m!5152937 () Bool)

(assert (=> b!4452480 m!5152937))

(assert (=> b!4451853 d!1358035))

(declare-fun e!2772624 () Bool)

(declare-fun b!4452488 () Bool)

(declare-fun tp!1334565 () Bool)

(assert (=> b!4452488 (= e!2772624 (and tp_is_empty!26707 tp_is_empty!26705 tp!1334565))))

(assert (=> b!4451978 (= tp!1334562 e!2772624)))

(assert (= (and b!4451978 ((_ is Cons!49867) (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))))) b!4452488))

(declare-fun b!4452489 () Bool)

(declare-fun e!2772625 () Bool)

(declare-fun tp!1334566 () Bool)

(declare-fun tp!1334567 () Bool)

(assert (=> b!4452489 (= e!2772625 (and tp!1334566 tp!1334567))))

(assert (=> b!4451978 (= tp!1334563 e!2772625)))

(assert (= (and b!4451978 ((_ is Cons!49868) (t!356938 (t!356938 (toList!3717 lm!1616))))) b!4452489))

(declare-fun e!2772626 () Bool)

(declare-fun tp!1334568 () Bool)

(declare-fun b!4452490 () Bool)

(assert (=> b!4452490 (= e!2772626 (and tp_is_empty!26707 tp_is_empty!26705 tp!1334568))))

(assert (=> b!4451977 (= tp!1334561 e!2772626)))

(assert (= (and b!4451977 ((_ is Cons!49867) (t!356937 (_2!28214 (h!55611 (toList!3717 lm!1616)))))) b!4452490))

(declare-fun tp!1334569 () Bool)

(declare-fun e!2772627 () Bool)

(declare-fun b!4452491 () Bool)

(assert (=> b!4452491 (= e!2772627 (and tp_is_empty!26707 tp_is_empty!26705 tp!1334569))))

(assert (=> b!4451979 (= tp!1334564 e!2772627)))

(assert (= (and b!4451979 ((_ is Cons!49867) (t!356937 (t!356937 (t!356937 newBucket!194))))) b!4452491))

(declare-fun b_lambda!147129 () Bool)

(assert (= b_lambda!147091 (or b!4451737 b_lambda!147129)))

(declare-fun bs!789567 () Bool)

(declare-fun d!1358041 () Bool)

(assert (= bs!789567 (and d!1358041 b!4451737)))

(assert (=> bs!789567 (= (dynLambda!20940 lambda!159176 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (contains!12462 lt!1644467 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(assert (=> bs!789567 m!5151521))

(assert (=> d!1357825 d!1358041))

(declare-fun b_lambda!147131 () Bool)

(assert (= b_lambda!147067 (or b!4451816 b_lambda!147131)))

(declare-fun bs!789569 () Bool)

(declare-fun d!1358043 () Bool)

(assert (= bs!789569 (and d!1358043 b!4451816)))

(assert (=> bs!789569 (= (dynLambda!20942 lambda!159194 (h!55615 lt!1644535)) (containsKey!1296 (toList!3718 lt!1644116) (h!55615 lt!1644535)))))

(declare-fun m!5152941 () Bool)

(assert (=> bs!789569 m!5152941))

(assert (=> b!4452073 d!1358043))

(declare-fun b_lambda!147133 () Bool)

(assert (= b_lambda!147093 (or b!4451737 b_lambda!147133)))

(assert (=> b!4452238 d!1358041))

(declare-fun b_lambda!147135 () Bool)

(assert (= b_lambda!147127 (or d!1357387 b_lambda!147135)))

(declare-fun bs!789572 () Bool)

(declare-fun d!1358045 () Bool)

(assert (= bs!789572 (and d!1358045 d!1357387)))

(assert (=> bs!789572 (= (dynLambda!20940 lambda!159085 (h!55610 (t!356937 newBucket!194))) (= (hash!2354 hashF!1220 (_1!28213 (h!55610 (t!356937 newBucket!194)))) hash!366))))

(declare-fun m!5152943 () Bool)

(assert (=> bs!789572 m!5152943))

(assert (=> b!4452467 d!1358045))

(declare-fun b_lambda!147137 () Bool)

(assert (= b_lambda!147081 (or b!4451522 b_lambda!147137)))

(declare-fun bs!789575 () Bool)

(declare-fun d!1358047 () Bool)

(assert (= bs!789575 (and d!1358047 b!4451522)))

(assert (=> bs!789575 (= (dynLambda!20943 lambda!159133 (h!55610 (toList!3718 lt!1644116))) (_1!28213 (h!55610 (toList!3718 lt!1644116))))))

(assert (=> b!4452185 d!1358047))

(declare-fun b_lambda!147139 () Bool)

(assert (= b_lambda!147075 (or d!1357447 b_lambda!147139)))

(declare-fun bs!789576 () Bool)

(declare-fun d!1358049 () Bool)

(assert (= bs!789576 (and d!1358049 d!1357447)))

(assert (=> bs!789576 (= (dynLambda!20940 lambda!159177 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))))) (contains!12462 lt!1644481 (_1!28213 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119))))))))))

(declare-fun m!5152945 () Bool)

(assert (=> bs!789576 m!5152945))

(assert (=> b!4452117 d!1358049))

(declare-fun b_lambda!147141 () Bool)

(assert (= b_lambda!147055 (or b!4451965 b_lambda!147141)))

(declare-fun bs!789578 () Bool)

(declare-fun d!1358051 () Bool)

(assert (= bs!789578 (and d!1358051 b!4451965)))

(assert (=> bs!789578 (= (dynLambda!20940 lambda!159197 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))))) (contains!12462 (extractMap!926 (t!356938 (toList!3717 lm!1616))) (_1!28213 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616))))))))))

(assert (=> bs!789578 m!5151149))

(declare-fun m!5152947 () Bool)

(assert (=> bs!789578 m!5152947))

(assert (=> b!4452017 d!1358051))

(declare-fun b_lambda!147143 () Bool)

(assert (= b_lambda!147103 (or d!1357603 b_lambda!147143)))

(declare-fun bs!789580 () Bool)

(declare-fun d!1358053 () Bool)

(assert (= bs!789580 (and d!1358053 d!1357603)))

(assert (=> bs!789580 (= (dynLambda!20940 lambda!159199 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (contains!12462 lt!1644617 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(declare-fun m!5152949 () Bool)

(assert (=> bs!789580 m!5152949))

(assert (=> b!4452281 d!1358053))

(declare-fun b_lambda!147145 () Bool)

(assert (= b_lambda!147063 (or b!4451965 b_lambda!147145)))

(declare-fun bs!789582 () Bool)

(declare-fun d!1358055 () Bool)

(assert (= bs!789582 (and d!1358055 b!4451965)))

(assert (=> bs!789582 (= (dynLambda!20940 lambda!159198 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))))) (contains!12462 lt!1644603 (_1!28213 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616))))))))))

(declare-fun m!5152951 () Bool)

(assert (=> bs!789582 m!5152951))

(assert (=> b!4452042 d!1358055))

(declare-fun b_lambda!147147 () Bool)

(assert (= b_lambda!147105 (or b!4451521 b_lambda!147147)))

(declare-fun bs!789585 () Bool)

(declare-fun d!1358057 () Bool)

(assert (= bs!789585 (and d!1358057 b!4451521)))

(assert (=> bs!789585 (= (dynLambda!20942 lambda!159132 (h!55615 lt!1644332)) (containsKey!1296 (toList!3718 lt!1644116) (h!55615 lt!1644332)))))

(declare-fun m!5152953 () Bool)

(assert (=> bs!789585 m!5152953))

(assert (=> b!4452287 d!1358057))

(declare-fun b_lambda!147149 () Bool)

(assert (= b_lambda!147077 (or d!1357333 b_lambda!147149)))

(declare-fun bs!789586 () Bool)

(declare-fun d!1358059 () Bool)

(assert (= bs!789586 (and d!1358059 d!1357333)))

(assert (=> bs!789586 (= (dynLambda!20938 lambda!159077 (h!55611 (t!356938 (toList!3717 lt!1644119)))) (noDuplicateKeys!865 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119))))))))

(assert (=> bs!789586 m!5151821))

(assert (=> b!4452133 d!1358059))

(declare-fun b_lambda!147151 () Bool)

(assert (= b_lambda!147125 (or start!435780 b_lambda!147151)))

(declare-fun bs!789587 () Bool)

(declare-fun d!1358061 () Bool)

(assert (= bs!789587 (and d!1358061 start!435780)))

(assert (=> bs!789587 (= (dynLambda!20938 lambda!159068 (h!55611 (t!356938 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194)))))) (noDuplicateKeys!865 (_2!28214 (h!55611 (t!356938 (toList!3717 (+!1268 lm!1616 (tuple2!49841 hash!366 newBucket!194))))))))))

(declare-fun m!5152955 () Bool)

(assert (=> bs!789587 m!5152955))

(assert (=> b!4452465 d!1358061))

(declare-fun b_lambda!147153 () Bool)

(assert (= b_lambda!147087 (or b!4451737 b_lambda!147153)))

(declare-fun bs!789588 () Bool)

(declare-fun d!1358063 () Bool)

(assert (= bs!789588 (and d!1358063 b!4451737)))

(assert (=> bs!789588 (= (dynLambda!20940 lambda!159176 (h!55610 (toList!3718 lt!1644484))) (contains!12462 lt!1644467 (_1!28213 (h!55610 (toList!3718 lt!1644484)))))))

(declare-fun m!5152957 () Bool)

(assert (=> bs!789588 m!5152957))

(assert (=> b!4452215 d!1358063))

(declare-fun b_lambda!147155 () Bool)

(assert (= b_lambda!147071 (or d!1357391 b_lambda!147155)))

(declare-fun bs!789589 () Bool)

(declare-fun d!1358065 () Bool)

(assert (= bs!789589 (and d!1358065 d!1357391)))

(assert (=> bs!789589 (= (dynLambda!20938 lambda!159088 (h!55611 (t!356938 (toList!3717 lm!1616)))) (allKeysSameHash!825 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))) (_1!28214 (h!55611 (t!356938 (toList!3717 lm!1616)))) hashF!1220))))

(declare-fun m!5152959 () Bool)

(assert (=> bs!789589 m!5152959))

(assert (=> b!4452085 d!1358065))

(declare-fun b_lambda!147157 () Bool)

(assert (= b_lambda!147057 (or b!4451965 b_lambda!147157)))

(declare-fun bs!789590 () Bool)

(declare-fun d!1358067 () Bool)

(assert (= bs!789590 (and d!1358067 b!4451965)))

(assert (=> bs!789590 (= (dynLambda!20940 lambda!159198 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616))))) (contains!12462 lt!1644603 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lm!1616)))))))))

(assert (=> bs!789590 m!5151801))

(assert (=> d!1357661 d!1358067))

(declare-fun b_lambda!147159 () Bool)

(assert (= b_lambda!147065 (or b!4451737 b_lambda!147159)))

(declare-fun bs!789591 () Bool)

(declare-fun d!1358069 () Bool)

(assert (= bs!789591 (and d!1358069 b!4451737)))

(assert (=> bs!789591 (= (dynLambda!20940 lambda!159176 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))))) (contains!12462 lt!1644467 (_1!28213 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119))))))))))

(declare-fun m!5152961 () Bool)

(assert (=> bs!789591 m!5152961))

(assert (=> b!4452049 d!1358069))

(declare-fun b_lambda!147161 () Bool)

(assert (= b_lambda!147089 (or b!4451737 b_lambda!147161)))

(declare-fun bs!789592 () Bool)

(declare-fun d!1358071 () Bool)

(assert (= bs!789592 (and d!1358071 b!4451737)))

(assert (=> bs!789592 (= (dynLambda!20940 lambda!159175 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119)))))) (contains!12462 (extractMap!926 (t!356938 (toList!3717 lt!1644119))) (_1!28213 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lt!1644119))))))))))

(assert (=> bs!789592 m!5151005))

(declare-fun m!5152963 () Bool)

(assert (=> bs!789592 m!5152963))

(assert (=> b!4452217 d!1358071))

(declare-fun b_lambda!147163 () Bool)

(assert (= b_lambda!147061 (or b!4451965 b_lambda!147163)))

(declare-fun bs!789593 () Bool)

(declare-fun d!1358073 () Bool)

(assert (= bs!789593 (and d!1358073 b!4451965)))

(assert (=> bs!789593 (= (dynLambda!20940 lambda!159198 (h!55610 (toList!3718 lt!1644620))) (contains!12462 lt!1644603 (_1!28213 (h!55610 (toList!3718 lt!1644620)))))))

(declare-fun m!5152965 () Bool)

(assert (=> bs!789593 m!5152965))

(assert (=> b!4452029 d!1358073))

(declare-fun b_lambda!147165 () Bool)

(assert (= b_lambda!147073 (or d!1357519 b_lambda!147165)))

(declare-fun bs!789594 () Bool)

(declare-fun d!1358075 () Bool)

(assert (= bs!789594 (and d!1358075 d!1357519)))

(assert (=> bs!789594 (= (dynLambda!20938 lambda!159180 (h!55611 (t!356938 (toList!3717 lt!1644119)))) (noDuplicateKeys!865 (_2!28214 (h!55611 (t!356938 (toList!3717 lt!1644119))))))))

(assert (=> bs!789594 m!5151821))

(assert (=> b!4452109 d!1358075))

(declare-fun b_lambda!147167 () Bool)

(assert (= b_lambda!147079 (or start!435780 b_lambda!147167)))

(declare-fun bs!789595 () Bool)

(declare-fun d!1358077 () Bool)

(assert (= bs!789595 (and d!1358077 start!435780)))

(assert (=> bs!789595 (= (dynLambda!20938 lambda!159068 (h!55611 (t!356938 (t!356938 (toList!3717 lt!1644119))))) (noDuplicateKeys!865 (_2!28214 (h!55611 (t!356938 (t!356938 (toList!3717 lt!1644119)))))))))

(declare-fun m!5152967 () Bool)

(assert (=> bs!789595 m!5152967))

(assert (=> b!4452143 d!1358077))

(declare-fun b_lambda!147169 () Bool)

(assert (= b_lambda!147101 (or b!4451818 b_lambda!147169)))

(declare-fun bs!789596 () Bool)

(declare-fun d!1358079 () Bool)

(assert (= bs!789596 (and d!1358079 b!4451818)))

(assert (=> bs!789596 (= (dynLambda!20942 lambda!159192 (_1!28213 (h!55610 (toList!3718 lt!1644116)))) (containsKey!1296 (t!356937 (toList!3718 lt!1644116)) (_1!28213 (h!55610 (toList!3718 lt!1644116)))))))

(assert (=> bs!789596 m!5151623))

(assert (=> d!1357857 d!1358079))

(declare-fun b_lambda!147171 () Bool)

(assert (= b_lambda!147053 (or start!435780 b_lambda!147171)))

(declare-fun bs!789597 () Bool)

(declare-fun d!1358081 () Bool)

(assert (= bs!789597 (and d!1358081 start!435780)))

(assert (=> bs!789597 (= (dynLambda!20938 lambda!159068 (h!55611 (t!356938 (t!356938 (toList!3717 lm!1616))))) (noDuplicateKeys!865 (_2!28214 (h!55611 (t!356938 (t!356938 (toList!3717 lm!1616)))))))))

(declare-fun m!5152969 () Bool)

(assert (=> bs!789597 m!5152969))

(assert (=> b!4452005 d!1358081))

(declare-fun b_lambda!147173 () Bool)

(assert (= b_lambda!147051 (or d!1357447 b_lambda!147173)))

(declare-fun bs!789598 () Bool)

(declare-fun d!1358083 () Bool)

(assert (= bs!789598 (and d!1358083 d!1357447)))

(assert (=> bs!789598 (= (dynLambda!20940 lambda!159177 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119))))) (contains!12462 lt!1644481 (_1!28213 (h!55610 (_2!28214 (h!55611 (toList!3717 lt!1644119)))))))))

(declare-fun m!5152971 () Bool)

(assert (=> bs!789598 m!5152971))

(assert (=> b!4451988 d!1358083))

(declare-fun b_lambda!147175 () Bool)

(assert (= b_lambda!147121 (or b!4451817 b_lambda!147175)))

(declare-fun bs!789599 () Bool)

(declare-fun d!1358085 () Bool)

(assert (= bs!789599 (and d!1358085 b!4451817)))

(assert (=> bs!789599 (= (dynLambda!20942 lambda!159193 (h!55615 lt!1644534)) (containsKey!1296 (Cons!49867 (h!55610 (toList!3718 lt!1644116)) (t!356937 (toList!3718 lt!1644116))) (h!55615 lt!1644534)))))

(declare-fun m!5152973 () Bool)

(assert (=> bs!789599 m!5152973))

(assert (=> b!4452429 d!1358085))

(declare-fun b_lambda!147177 () Bool)

(assert (= b_lambda!147049 (or d!1357385 b_lambda!147177)))

(declare-fun bs!789600 () Bool)

(declare-fun d!1358087 () Bool)

(assert (= bs!789600 (and d!1358087 d!1357385)))

(assert (=> bs!789600 (= (dynLambda!20938 lambda!159082 (h!55611 (t!356938 (toList!3717 lm!1616)))) (noDuplicateKeys!865 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616))))))))

(assert (=> bs!789600 m!5151823))

(assert (=> b!4451982 d!1358087))

(declare-fun b_lambda!147179 () Bool)

(assert (= b_lambda!147059 (or b!4451965 b_lambda!147179)))

(assert (=> b!4452027 d!1358067))

(declare-fun b_lambda!147181 () Bool)

(assert (= b_lambda!147097 (or d!1357605 b_lambda!147181)))

(declare-fun bs!789601 () Bool)

(declare-fun d!1358089 () Bool)

(assert (= bs!789601 (and d!1358089 d!1357605)))

(assert (=> bs!789601 (= (dynLambda!20938 lambda!159200 (h!55611 (t!356938 (toList!3717 lm!1616)))) (noDuplicateKeys!865 (_2!28214 (h!55611 (t!356938 (toList!3717 lm!1616))))))))

(assert (=> bs!789601 m!5151823))

(assert (=> b!4452259 d!1358089))

(declare-fun b_lambda!147183 () Bool)

(assert (= b_lambda!147119 (or d!1357603 b_lambda!147183)))

(declare-fun bs!789602 () Bool)

(declare-fun d!1358091 () Bool)

(assert (= bs!789602 (and d!1358091 d!1357603)))

(assert (=> bs!789602 (= (dynLambda!20940 lambda!159199 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616)))))) (contains!12462 lt!1644617 (_1!28213 (h!55610 (toList!3718 (extractMap!926 (t!356938 (toList!3717 lm!1616))))))))))

(declare-fun m!5152975 () Bool)

(assert (=> bs!789602 m!5152975))

(assert (=> b!4452375 d!1358091))

(declare-fun b_lambda!147185 () Bool)

(assert (= b_lambda!147095 (or b!4451814 b_lambda!147185)))

(declare-fun bs!789603 () Bool)

(declare-fun d!1358093 () Bool)

(assert (= bs!789603 (and d!1358093 b!4451814)))

(assert (=> bs!789603 (= (dynLambda!20943 lambda!159195 (h!55610 (toList!3718 lt!1644116))) (_1!28213 (h!55610 (toList!3718 lt!1644116))))))

(assert (=> b!4452245 d!1358093))

(check-sat (not bm!309841) (not d!1357991) (not d!1357809) (not b_lambda!147043) (not d!1357845) (not b_lambda!146987) (not d!1357689) (not b!4451987) (not b!4452089) (not b!4452475) (not b_lambda!147133) (not bm!309834) (not b!4452220) (not d!1357719) (not b!4451998) (not b!4452248) (not b!4452162) (not b_lambda!147153) (not b!4452088) (not b!4452489) (not bm!309833) (not b!4452464) (not b!4452314) (not b!4452076) (not b_lambda!147165) (not d!1357763) (not bm!309838) (not b_lambda!147135) (not b!4452138) (not b!4452136) (not bs!789569) (not d!1357657) (not d!1357905) (not b!4452046) (not d!1357943) (not d!1357693) (not b!4452091) (not b!4452384) (not b!4452074) (not b!4452301) (not d!1357635) (not b!4452480) (not d!1357709) (not b!4452282) (not d!1357669) (not b!4452146) (not bm!309848) (not b!4452127) (not d!1357889) (not b!4452153) (not bs!789587) (not b!4452258) (not b_lambda!146989) (not b!4452315) (not d!1358027) (not bm!309837) (not b!4452036) (not d!1358019) (not d!1357737) (not b!4451995) (not b!4452434) (not bm!309854) (not bs!789590) (not b!4452004) (not bs!789592) (not b!4452030) (not d!1357953) (not b!4452208) (not b!4452013) (not b!4452309) (not b!4452296) (not b!4452163) (not bm!309832) (not bs!789599) (not d!1357631) (not b!4452275) (not b!4452021) (not d!1357727) (not b_lambda!146991) (not b!4451997) (not b!4452386) (not d!1357647) (not b!4452212) (not b!4452047) (not b_lambda!147185) (not b!4452382) (not bm!309849) (not b!4452196) (not b_lambda!147069) (not d!1357907) (not b!4452167) (not b!4452313) (not b!4452272) (not b!4452155) (not bs!789580) (not b!4452235) (not b!4452232) (not b!4452134) tp_is_empty!26707 (not b_lambda!147175) (not b_lambda!147167) (not bs!789602) (not d!1357861) (not bs!789585) (not b_lambda!147149) (not b_lambda!147143) (not bm!309851) (not bs!789597) (not d!1357645) (not b!4452000) (not b!4452010) (not b!4452219) (not b!4452031) (not b!4451985) (not bs!789567) (not d!1357973) (not b!4452376) (not d!1357827) (not b!4452430) (not b!4452185) (not b!4452243) (not b_lambda!147085) (not b!4452033) (not b!4452110) (not bm!309839) (not bm!309835) (not d!1357851) (not b!4451994) (not b!4452205) (not b!4452102) (not b_lambda!147163) (not b!4452233) (not b_lambda!147139) (not b!4452373) (not b_lambda!147141) (not b!4452462) (not bm!309847) (not b!4452262) (not b!4452123) (not b!4452260) (not b!4452286) (not b_lambda!147155) (not b!4452001) (not bs!789589) (not d!1357721) (not b!4452177) (not b_lambda!147047) (not b!4452228) (not b!4452284) (not b!4452164) (not b!4452437) (not bs!789601) (not d!1357825) (not d!1357977) (not b_lambda!147157) (not b!4452218) (not b!4452142) (not b!4452045) (not b!4452431) (not b!4452092) (not b!4452011) (not b!4451989) (not d!1357841) (not b!4452491) (not b_lambda!147177) (not b!4452271) (not b!4451996) (not b!4452099) (not b!4452037) (not b!4452211) (not b_lambda!147039) (not d!1357717) (not b_lambda!147129) (not b!4452216) (not b!4452226) (not b!4452490) (not b_lambda!147145) (not d!1357633) (not b_lambda!147181) (not d!1357779) (not b_lambda!147137) (not d!1357857) (not d!1357799) (not d!1357767) (not b!4452150) (not b!4452223) (not d!1357761) (not d!1357741) (not bs!789596) (not b!4452006) (not b!4452193) (not bm!309836) (not b!4452165) (not b!4452210) (not b!4452041) (not b!4452035) (not b!4452190) (not bs!789600) (not b!4452166) (not bs!789595) (not b!4452067) (not b!4452108) (not d!1357813) (not b!4452120) (not b!4452224) (not b_lambda!147159) (not b!4452083) (not b!4452028) (not b_lambda!147179) (not b!4452222) (not b!4452068) (not d!1357729) (not b!4452245) (not b!4452241) (not b!4452116) (not b!4452318) (not b!4452082) (not b!4452283) (not b!4452018) (not b!4452148) (not b!4452094) (not b!4452468) (not b_lambda!147171) (not d!1357661) (not bs!789572) (not b!4452024) (not b!4452225) (not b!4452061) (not b!4452435) (not d!1357897) (not b!4452304) (not d!1357671) (not b!4452247) (not b_lambda!147035) (not d!1357713) (not b!4452157) (not bm!309853) (not bm!309852) (not b_lambda!147131) (not b!4452149) (not b!4452179) (not bs!789576) (not d!1357655) (not b!4452078) (not b!4452077) (not b!4452288) (not b_lambda!147037) (not d!1358035) (not b!4452118) (not bs!789586) (not b!4452014) (not bm!309846) (not d!1357753) (not b_lambda!147183) (not b!4452379) (not b!4452026) (not b!4451983) (not b!4452250) (not b!4452012) (not b!4452305) (not bm!309842) (not b!4452390) (not bs!789593) (not b!4452276) (not b_lambda!147151) (not b!4452098) tp_is_empty!26705 (not b!4452252) (not d!1357781) (not d!1357797) (not b!4452132) (not b_lambda!147045) (not d!1357649) (not b!4452032) (not d!1357675) (not d!1357815) (not bs!789591) (not b!4452093) (not b!4452023) (not b!4452239) (not b!4452199) (not b!4452234) (not b!4452128) (not b!4452080) (not b!4452086) (not b!4452237) (not b_lambda!147107) (not d!1357777) (not b_lambda!147147) (not d!1357663) (not b!4452231) (not b!4452151) (not b_lambda!147173) (not d!1357817) (not d!1357847) (not b!4452084) (not d!1357829) (not b!4452137) (not d!1357965) (not d!1357837) (not b!4452488) (not b!4452171) (not d!1357725) (not b!4452209) (not bs!789578) (not b!4452144) (not d!1357701) (not b_lambda!147041) (not b!4452291) (not d!1357691) (not b!4452038) (not bs!789588) (not b!4452161) (not b!4451981) (not b_lambda!147161) (not b!4452016) (not b!4452433) (not d!1357681) (not b!4452043) (not b!4452229) (not b!4452316) (not bm!309850) (not b!4452022) (not b!4452466) (not bs!789594) (not b!4452278) (not b!4452251) (not b!4452214) (not b!4452169) (not b!4452254) (not b_lambda!147083) (not b!4452396) (not b!4452008) (not b!4452187) (not d!1357677) (not b!4452039) (not d!1357961) (not b!4452062) (not b!4452154) (not bs!789582) (not d!1357789) (not d!1357823) (not b!4452140) (not b!4452274) (not b!4452207) (not b!4452104) (not d!1357791) (not b!4452050) (not b_lambda!147169) (not b!4452470) (not b!4452048) (not b!4452202) (not bs!789598) (not b!4452106))
(check-sat)
