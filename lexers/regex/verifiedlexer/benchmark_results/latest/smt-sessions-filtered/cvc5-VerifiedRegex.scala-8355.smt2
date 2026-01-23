; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!434766 () Bool)

(assert start!434766)

(declare-fun b!4442262 () Bool)

(declare-fun res!1839514 () Bool)

(declare-fun e!2765940 () Bool)

(assert (=> b!4442262 (=> (not res!1839514) (not e!2765940))))

(declare-datatypes ((V!11424 0))(
  ( (V!11425 (val!17213 Int)) )
))
(declare-datatypes ((K!11178 0))(
  ( (K!11179 (val!17214 Int)) )
))
(declare-datatypes ((tuple2!49746 0))(
  ( (tuple2!49747 (_1!28167 K!11178) (_2!28167 V!11424)) )
))
(declare-datatypes ((List!49934 0))(
  ( (Nil!49810) (Cons!49810 (h!55541 tuple2!49746) (t!356876 List!49934)) )
))
(declare-datatypes ((tuple2!49748 0))(
  ( (tuple2!49749 (_1!28168 (_ BitVec 64)) (_2!28168 List!49934)) )
))
(declare-datatypes ((List!49935 0))(
  ( (Nil!49811) (Cons!49811 (h!55542 tuple2!49748) (t!356877 List!49935)) )
))
(declare-datatypes ((ListLongMap!2321 0))(
  ( (ListLongMap!2322 (toList!3671 List!49935)) )
))
(declare-fun lm!1616 () ListLongMap!2321)

(declare-datatypes ((Hashable!5236 0))(
  ( (HashableExt!5235 (__x!30939 Int)) )
))
(declare-fun hashF!1220 () Hashable!5236)

(declare-fun allKeysSameHashInMap!948 (ListLongMap!2321 Hashable!5236) Bool)

(assert (=> b!4442262 (= res!1839514 (allKeysSameHashInMap!948 lm!1616 hashF!1220))))

(declare-fun b!4442263 () Bool)

(declare-fun res!1839506 () Bool)

(assert (=> b!4442263 (=> (not res!1839506) (not e!2765940))))

(declare-fun newBucket!194 () List!49934)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!802 (List!49934 (_ BitVec 64) Hashable!5236) Bool)

(assert (=> b!4442263 (= res!1839506 (allKeysSameHash!802 newBucket!194 hash!366 hashF!1220))))

(declare-fun res!1839513 () Bool)

(assert (=> start!434766 (=> (not res!1839513) (not e!2765940))))

(declare-fun lambda!157521 () Int)

(declare-fun forall!9715 (List!49935 Int) Bool)

(assert (=> start!434766 (= res!1839513 (forall!9715 (toList!3671 lm!1616) lambda!157521))))

(assert (=> start!434766 e!2765940))

(declare-fun tp_is_empty!26613 () Bool)

(assert (=> start!434766 tp_is_empty!26613))

(declare-fun tp_is_empty!26615 () Bool)

(assert (=> start!434766 tp_is_empty!26615))

(declare-fun e!2765945 () Bool)

(assert (=> start!434766 e!2765945))

(declare-fun e!2765941 () Bool)

(declare-fun inv!65365 (ListLongMap!2321) Bool)

(assert (=> start!434766 (and (inv!65365 lm!1616) e!2765941)))

(assert (=> start!434766 true))

(declare-fun b!4442264 () Bool)

(declare-fun e!2765944 () Bool)

(assert (=> b!4442264 (= e!2765940 e!2765944)))

(declare-fun res!1839503 () Bool)

(assert (=> b!4442264 (=> (not res!1839503) (not e!2765944))))

(declare-fun e!2765942 () Bool)

(assert (=> b!4442264 (= res!1839503 e!2765942)))

(declare-fun res!1839509 () Bool)

(assert (=> b!4442264 (=> res!1839509 e!2765942)))

(declare-fun e!2765937 () Bool)

(assert (=> b!4442264 (= res!1839509 e!2765937)))

(declare-fun res!1839515 () Bool)

(assert (=> b!4442264 (=> (not res!1839515) (not e!2765937))))

(declare-fun lt!1637446 () Bool)

(assert (=> b!4442264 (= res!1839515 lt!1637446)))

(declare-fun contains!12384 (ListLongMap!2321 (_ BitVec 64)) Bool)

(assert (=> b!4442264 (= lt!1637446 (contains!12384 lm!1616 hash!366))))

(declare-fun b!4442265 () Bool)

(declare-fun e!2765936 () Bool)

(declare-fun e!2765943 () Bool)

(assert (=> b!4442265 (= e!2765936 e!2765943)))

(declare-fun res!1839512 () Bool)

(assert (=> b!4442265 (=> res!1839512 e!2765943)))

(declare-fun lt!1637450 () ListLongMap!2321)

(assert (=> b!4442265 (= res!1839512 (not (forall!9715 (toList!3671 lt!1637450) lambda!157521)))))

(declare-fun tail!7384 (ListLongMap!2321) ListLongMap!2321)

(assert (=> b!4442265 (= lt!1637450 (tail!7384 lm!1616))))

(declare-datatypes ((Unit!83978 0))(
  ( (Unit!83979) )
))
(declare-fun lt!1637451 () Unit!83978)

(declare-fun e!2765939 () Unit!83978)

(assert (=> b!4442265 (= lt!1637451 e!2765939)))

(declare-fun c!755996 () Bool)

(declare-fun key!3717 () K!11178)

(declare-datatypes ((ListMap!2915 0))(
  ( (ListMap!2916 (toList!3672 List!49934)) )
))
(declare-fun contains!12385 (ListMap!2915 K!11178) Bool)

(declare-fun extractMap!903 (List!49935) ListMap!2915)

(declare-fun tail!7385 (List!49935) List!49935)

(assert (=> b!4442265 (= c!755996 (contains!12385 (extractMap!903 (tail!7385 (toList!3671 lm!1616))) key!3717))))

(declare-fun b!4442266 () Bool)

(assert (=> b!4442266 (= e!2765944 (not e!2765936))))

(declare-fun res!1839504 () Bool)

(assert (=> b!4442266 (=> res!1839504 e!2765936)))

(declare-fun lt!1637447 () ListLongMap!2321)

(assert (=> b!4442266 (= res!1839504 (not (forall!9715 (toList!3671 lt!1637447) lambda!157521)))))

(assert (=> b!4442266 (forall!9715 (toList!3671 lt!1637447) lambda!157521)))

(declare-fun +!1225 (ListLongMap!2321 tuple2!49748) ListLongMap!2321)

(assert (=> b!4442266 (= lt!1637447 (+!1225 lm!1616 (tuple2!49749 hash!366 newBucket!194)))))

(declare-fun lt!1637449 () Unit!83978)

(declare-fun addValidProp!480 (ListLongMap!2321 Int (_ BitVec 64) List!49934) Unit!83978)

(assert (=> b!4442266 (= lt!1637449 (addValidProp!480 lm!1616 lambda!157521 hash!366 newBucket!194))))

(declare-fun newValue!93 () V!11424)

(declare-fun b!4442267 () Bool)

(declare-fun apply!11694 (ListLongMap!2321 (_ BitVec 64)) List!49934)

(assert (=> b!4442267 (= e!2765937 (= newBucket!194 (Cons!49810 (tuple2!49747 key!3717 newValue!93) (apply!11694 lm!1616 hash!366))))))

(declare-fun b!4442268 () Bool)

(declare-fun res!1839507 () Bool)

(assert (=> b!4442268 (=> res!1839507 e!2765943)))

(assert (=> b!4442268 (= res!1839507 (not (allKeysSameHashInMap!948 lt!1637450 hashF!1220)))))

(declare-fun b!4442269 () Bool)

(declare-fun res!1839500 () Bool)

(assert (=> b!4442269 (=> res!1839500 e!2765936)))

(assert (=> b!4442269 (= res!1839500 (or (and (is-Cons!49811 (toList!3671 lm!1616)) (= (_1!28168 (h!55542 (toList!3671 lm!1616))) hash!366)) (not (is-Cons!49811 (toList!3671 lm!1616))) (= (_1!28168 (h!55542 (toList!3671 lm!1616))) hash!366)))))

(declare-fun b!4442270 () Bool)

(assert (=> b!4442270 (= e!2765942 (and (not lt!1637446) (= newBucket!194 (Cons!49810 (tuple2!49747 key!3717 newValue!93) Nil!49810))))))

(declare-fun b!4442271 () Bool)

(declare-fun res!1839516 () Bool)

(assert (=> b!4442271 (=> res!1839516 e!2765943)))

(assert (=> b!4442271 (= res!1839516 (contains!12385 (extractMap!903 (toList!3671 lt!1637450)) key!3717))))

(declare-fun b!4442272 () Bool)

(declare-fun tp!1334257 () Bool)

(assert (=> b!4442272 (= e!2765945 (and tp_is_empty!26615 tp_is_empty!26613 tp!1334257))))

(declare-fun b!4442273 () Bool)

(declare-fun tp!1334258 () Bool)

(assert (=> b!4442273 (= e!2765941 tp!1334258)))

(declare-fun b!4442274 () Bool)

(declare-fun res!1839511 () Bool)

(assert (=> b!4442274 (=> (not res!1839511) (not e!2765944))))

(assert (=> b!4442274 (= res!1839511 (forall!9715 (toList!3671 lm!1616) lambda!157521))))

(declare-fun e!2765938 () Bool)

(declare-fun b!4442275 () Bool)

(assert (=> b!4442275 (= e!2765938 (= newBucket!194 (Cons!49810 (tuple2!49747 key!3717 newValue!93) (apply!11694 lt!1637450 hash!366))))))

(declare-fun b!4442276 () Bool)

(declare-fun Unit!83980 () Unit!83978)

(assert (=> b!4442276 (= e!2765939 Unit!83980)))

(declare-fun lt!1637448 () Unit!83978)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!79 (ListLongMap!2321 K!11178 Hashable!5236) Unit!83978)

(assert (=> b!4442276 (= lt!1637448 (lemmaExtractTailMapContainsThenExtractMapDoes!79 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4442276 false))

(declare-fun b!4442277 () Bool)

(declare-fun res!1839501 () Bool)

(assert (=> b!4442277 (=> (not res!1839501) (not e!2765944))))

(declare-fun noDuplicateKeys!842 (List!49934) Bool)

(assert (=> b!4442277 (= res!1839501 (noDuplicateKeys!842 newBucket!194))))

(declare-fun lt!1637452 () Bool)

(declare-fun b!4442278 () Bool)

(declare-fun e!2765935 () Bool)

(assert (=> b!4442278 (= e!2765935 (and (not lt!1637452) (= newBucket!194 (Cons!49810 (tuple2!49747 key!3717 newValue!93) Nil!49810))))))

(declare-fun b!4442279 () Bool)

(assert (=> b!4442279 (= e!2765943 e!2765935)))

(declare-fun res!1839502 () Bool)

(assert (=> b!4442279 (=> res!1839502 e!2765935)))

(assert (=> b!4442279 (= res!1839502 e!2765938)))

(declare-fun res!1839505 () Bool)

(assert (=> b!4442279 (=> (not res!1839505) (not e!2765938))))

(assert (=> b!4442279 (= res!1839505 lt!1637452)))

(assert (=> b!4442279 (= lt!1637452 (contains!12384 lt!1637450 hash!366))))

(declare-fun b!4442280 () Bool)

(declare-fun res!1839510 () Bool)

(assert (=> b!4442280 (=> (not res!1839510) (not e!2765940))))

(assert (=> b!4442280 (= res!1839510 (not (contains!12385 (extractMap!903 (toList!3671 lm!1616)) key!3717)))))

(declare-fun b!4442281 () Bool)

(declare-fun res!1839508 () Bool)

(assert (=> b!4442281 (=> (not res!1839508) (not e!2765940))))

(declare-fun hash!2300 (Hashable!5236 K!11178) (_ BitVec 64))

(assert (=> b!4442281 (= res!1839508 (= (hash!2300 hashF!1220 key!3717) hash!366))))

(declare-fun b!4442282 () Bool)

(declare-fun Unit!83981 () Unit!83978)

(assert (=> b!4442282 (= e!2765939 Unit!83981)))

(assert (= (and start!434766 res!1839513) b!4442262))

(assert (= (and b!4442262 res!1839514) b!4442281))

(assert (= (and b!4442281 res!1839508) b!4442263))

(assert (= (and b!4442263 res!1839506) b!4442280))

(assert (= (and b!4442280 res!1839510) b!4442264))

(assert (= (and b!4442264 res!1839515) b!4442267))

(assert (= (and b!4442264 (not res!1839509)) b!4442270))

(assert (= (and b!4442264 res!1839503) b!4442277))

(assert (= (and b!4442277 res!1839501) b!4442274))

(assert (= (and b!4442274 res!1839511) b!4442266))

(assert (= (and b!4442266 (not res!1839504)) b!4442269))

(assert (= (and b!4442269 (not res!1839500)) b!4442265))

(assert (= (and b!4442265 c!755996) b!4442276))

(assert (= (and b!4442265 (not c!755996)) b!4442282))

(assert (= (and b!4442265 (not res!1839512)) b!4442268))

(assert (= (and b!4442268 (not res!1839507)) b!4442271))

(assert (= (and b!4442271 (not res!1839516)) b!4442279))

(assert (= (and b!4442279 res!1839505) b!4442275))

(assert (= (and b!4442279 (not res!1839502)) b!4442278))

(assert (= (and start!434766 (is-Cons!49810 newBucket!194)) b!4442272))

(assert (= start!434766 b!4442273))

(declare-fun m!5131143 () Bool)

(assert (=> b!4442266 m!5131143))

(assert (=> b!4442266 m!5131143))

(declare-fun m!5131145 () Bool)

(assert (=> b!4442266 m!5131145))

(declare-fun m!5131147 () Bool)

(assert (=> b!4442266 m!5131147))

(declare-fun m!5131149 () Bool)

(assert (=> b!4442279 m!5131149))

(declare-fun m!5131151 () Bool)

(assert (=> b!4442277 m!5131151))

(declare-fun m!5131153 () Bool)

(assert (=> b!4442264 m!5131153))

(declare-fun m!5131155 () Bool)

(assert (=> b!4442262 m!5131155))

(declare-fun m!5131157 () Bool)

(assert (=> b!4442265 m!5131157))

(declare-fun m!5131159 () Bool)

(assert (=> b!4442265 m!5131159))

(declare-fun m!5131161 () Bool)

(assert (=> b!4442265 m!5131161))

(declare-fun m!5131163 () Bool)

(assert (=> b!4442265 m!5131163))

(assert (=> b!4442265 m!5131157))

(assert (=> b!4442265 m!5131159))

(declare-fun m!5131165 () Bool)

(assert (=> b!4442265 m!5131165))

(declare-fun m!5131167 () Bool)

(assert (=> b!4442268 m!5131167))

(declare-fun m!5131169 () Bool)

(assert (=> b!4442274 m!5131169))

(declare-fun m!5131171 () Bool)

(assert (=> b!4442275 m!5131171))

(declare-fun m!5131173 () Bool)

(assert (=> b!4442263 m!5131173))

(assert (=> start!434766 m!5131169))

(declare-fun m!5131175 () Bool)

(assert (=> start!434766 m!5131175))

(declare-fun m!5131177 () Bool)

(assert (=> b!4442276 m!5131177))

(declare-fun m!5131179 () Bool)

(assert (=> b!4442281 m!5131179))

(declare-fun m!5131181 () Bool)

(assert (=> b!4442280 m!5131181))

(assert (=> b!4442280 m!5131181))

(declare-fun m!5131183 () Bool)

(assert (=> b!4442280 m!5131183))

(declare-fun m!5131185 () Bool)

(assert (=> b!4442271 m!5131185))

(assert (=> b!4442271 m!5131185))

(declare-fun m!5131187 () Bool)

(assert (=> b!4442271 m!5131187))

(declare-fun m!5131189 () Bool)

(assert (=> b!4442267 m!5131189))

(push 1)

(assert (not start!434766))

(assert (not b!4442265))

(assert (not b!4442266))

(assert (not b!4442280))

(assert (not b!4442267))

(assert (not b!4442276))

(assert (not b!4442275))

(assert (not b!4442272))

(assert (not b!4442271))

(assert (not b!4442273))

(assert (not b!4442262))

(assert (not b!4442264))

(assert (not b!4442274))

(assert (not b!4442268))

(assert (not b!4442263))

(assert tp_is_empty!26613)

(assert (not b!4442279))

(assert tp_is_empty!26615)

(assert (not b!4442281))

(assert (not b!4442277))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1348490 () Bool)

(assert (=> d!1348490 true))

(assert (=> d!1348490 true))

(declare-fun lambda!157535 () Int)

(declare-fun forall!9717 (List!49934 Int) Bool)

(assert (=> d!1348490 (= (allKeysSameHash!802 newBucket!194 hash!366 hashF!1220) (forall!9717 newBucket!194 lambda!157535))))

(declare-fun bs!764437 () Bool)

(assert (= bs!764437 d!1348490))

(declare-fun m!5131239 () Bool)

(assert (=> bs!764437 m!5131239))

(assert (=> b!4442263 d!1348490))

(declare-fun d!1348492 () Bool)

(declare-fun res!1839572 () Bool)

(declare-fun e!2765983 () Bool)

(assert (=> d!1348492 (=> res!1839572 e!2765983)))

(assert (=> d!1348492 (= res!1839572 (is-Nil!49811 (toList!3671 lm!1616)))))

(assert (=> d!1348492 (= (forall!9715 (toList!3671 lm!1616) lambda!157521) e!2765983)))

(declare-fun b!4442354 () Bool)

(declare-fun e!2765984 () Bool)

(assert (=> b!4442354 (= e!2765983 e!2765984)))

(declare-fun res!1839573 () Bool)

(assert (=> b!4442354 (=> (not res!1839573) (not e!2765984))))

(declare-fun dynLambda!20915 (Int tuple2!49748) Bool)

(assert (=> b!4442354 (= res!1839573 (dynLambda!20915 lambda!157521 (h!55542 (toList!3671 lm!1616))))))

(declare-fun b!4442355 () Bool)

(assert (=> b!4442355 (= e!2765984 (forall!9715 (t!356877 (toList!3671 lm!1616)) lambda!157521))))

(assert (= (and d!1348492 (not res!1839572)) b!4442354))

(assert (= (and b!4442354 res!1839573) b!4442355))

(declare-fun b_lambda!145169 () Bool)

(assert (=> (not b_lambda!145169) (not b!4442354)))

(declare-fun m!5131245 () Bool)

(assert (=> b!4442354 m!5131245))

(declare-fun m!5131247 () Bool)

(assert (=> b!4442355 m!5131247))

(assert (=> b!4442274 d!1348492))

(declare-fun bs!764439 () Bool)

(declare-fun d!1348496 () Bool)

(assert (= bs!764439 (and d!1348496 start!434766)))

(declare-fun lambda!157538 () Int)

(assert (=> bs!764439 (not (= lambda!157538 lambda!157521))))

(assert (=> d!1348496 true))

(assert (=> d!1348496 (= (allKeysSameHashInMap!948 lm!1616 hashF!1220) (forall!9715 (toList!3671 lm!1616) lambda!157538))))

(declare-fun bs!764440 () Bool)

(assert (= bs!764440 d!1348496))

(declare-fun m!5131249 () Bool)

(assert (=> bs!764440 m!5131249))

(assert (=> b!4442262 d!1348496))

(declare-fun b!4442386 () Bool)

(assert (=> b!4442386 false))

(declare-fun lt!1637503 () Unit!83978)

(declare-fun lt!1637501 () Unit!83978)

(assert (=> b!4442386 (= lt!1637503 lt!1637501)))

(declare-fun containsKey!1255 (List!49934 K!11178) Bool)

(assert (=> b!4442386 (containsKey!1255 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!292 (List!49934 K!11178) Unit!83978)

(assert (=> b!4442386 (= lt!1637501 (lemmaInGetKeysListThenContainsKey!292 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717))))

(declare-fun e!2766006 () Unit!83978)

(declare-fun Unit!83986 () Unit!83978)

(assert (=> b!4442386 (= e!2766006 Unit!83986)))

(declare-fun bm!309062 () Bool)

(declare-fun call!309067 () Bool)

(declare-datatypes ((List!49938 0))(
  ( (Nil!49814) (Cons!49814 (h!55547 K!11178) (t!356880 List!49938)) )
))
(declare-fun e!2766010 () List!49938)

(declare-fun contains!12388 (List!49938 K!11178) Bool)

(assert (=> bm!309062 (= call!309067 (contains!12388 e!2766010 key!3717))))

(declare-fun c!756006 () Bool)

(declare-fun c!756008 () Bool)

(assert (=> bm!309062 (= c!756006 c!756008)))

(declare-fun b!4442387 () Bool)

(declare-fun Unit!83987 () Unit!83978)

(assert (=> b!4442387 (= e!2766006 Unit!83987)))

(declare-fun b!4442388 () Bool)

(declare-fun e!2766009 () Bool)

(declare-fun keys!17068 (ListMap!2915) List!49938)

(assert (=> b!4442388 (= e!2766009 (not (contains!12388 (keys!17068 (extractMap!903 (toList!3671 lt!1637450))) key!3717)))))

(declare-fun b!4442389 () Bool)

(assert (=> b!4442389 (= e!2766010 (keys!17068 (extractMap!903 (toList!3671 lt!1637450))))))

(declare-fun d!1348498 () Bool)

(declare-fun e!2766007 () Bool)

(assert (=> d!1348498 e!2766007))

(declare-fun res!1839590 () Bool)

(assert (=> d!1348498 (=> res!1839590 e!2766007)))

(assert (=> d!1348498 (= res!1839590 e!2766009)))

(declare-fun res!1839591 () Bool)

(assert (=> d!1348498 (=> (not res!1839591) (not e!2766009))))

(declare-fun lt!1637500 () Bool)

(assert (=> d!1348498 (= res!1839591 (not lt!1637500))))

(declare-fun lt!1637502 () Bool)

(assert (=> d!1348498 (= lt!1637500 lt!1637502)))

(declare-fun lt!1637498 () Unit!83978)

(declare-fun e!2766008 () Unit!83978)

(assert (=> d!1348498 (= lt!1637498 e!2766008)))

(assert (=> d!1348498 (= c!756008 lt!1637502)))

(assert (=> d!1348498 (= lt!1637502 (containsKey!1255 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717))))

(assert (=> d!1348498 (= (contains!12385 (extractMap!903 (toList!3671 lt!1637450)) key!3717) lt!1637500)))

(declare-fun b!4442390 () Bool)

(declare-fun getKeysList!294 (List!49934) List!49938)

(assert (=> b!4442390 (= e!2766010 (getKeysList!294 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))))

(declare-fun b!4442391 () Bool)

(declare-fun lt!1637499 () Unit!83978)

(assert (=> b!4442391 (= e!2766008 lt!1637499)))

(declare-fun lt!1637505 () Unit!83978)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!704 (List!49934 K!11178) Unit!83978)

(assert (=> b!4442391 (= lt!1637505 (lemmaContainsKeyImpliesGetValueByKeyDefined!704 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717))))

(declare-datatypes ((Option!10811 0))(
  ( (None!10810) (Some!10810 (v!44042 V!11424)) )
))
(declare-fun isDefined!8101 (Option!10811) Bool)

(declare-fun getValueByKey!797 (List!49934 K!11178) Option!10811)

(assert (=> b!4442391 (isDefined!8101 (getValueByKey!797 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717))))

(declare-fun lt!1637504 () Unit!83978)

(assert (=> b!4442391 (= lt!1637504 lt!1637505)))

(declare-fun lemmaInListThenGetKeysListContains!291 (List!49934 K!11178) Unit!83978)

(assert (=> b!4442391 (= lt!1637499 (lemmaInListThenGetKeysListContains!291 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717))))

(assert (=> b!4442391 call!309067))

(declare-fun b!4442392 () Bool)

(assert (=> b!4442392 (= e!2766008 e!2766006)))

(declare-fun c!756007 () Bool)

(assert (=> b!4442392 (= c!756007 call!309067)))

(declare-fun b!4442393 () Bool)

(declare-fun e!2766005 () Bool)

(assert (=> b!4442393 (= e!2766005 (contains!12388 (keys!17068 (extractMap!903 (toList!3671 lt!1637450))) key!3717))))

(declare-fun b!4442394 () Bool)

(assert (=> b!4442394 (= e!2766007 e!2766005)))

(declare-fun res!1839592 () Bool)

(assert (=> b!4442394 (=> (not res!1839592) (not e!2766005))))

(assert (=> b!4442394 (= res!1839592 (isDefined!8101 (getValueByKey!797 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717)))))

(assert (= (and d!1348498 c!756008) b!4442391))

(assert (= (and d!1348498 (not c!756008)) b!4442392))

(assert (= (and b!4442392 c!756007) b!4442386))

(assert (= (and b!4442392 (not c!756007)) b!4442387))

(assert (= (or b!4442391 b!4442392) bm!309062))

(assert (= (and bm!309062 c!756006) b!4442390))

(assert (= (and bm!309062 (not c!756006)) b!4442389))

(assert (= (and d!1348498 res!1839591) b!4442388))

(assert (= (and d!1348498 (not res!1839590)) b!4442394))

(assert (= (and b!4442394 res!1839592) b!4442393))

(declare-fun m!5131255 () Bool)

(assert (=> b!4442391 m!5131255))

(declare-fun m!5131257 () Bool)

(assert (=> b!4442391 m!5131257))

(assert (=> b!4442391 m!5131257))

(declare-fun m!5131259 () Bool)

(assert (=> b!4442391 m!5131259))

(declare-fun m!5131261 () Bool)

(assert (=> b!4442391 m!5131261))

(assert (=> b!4442389 m!5131185))

(declare-fun m!5131263 () Bool)

(assert (=> b!4442389 m!5131263))

(declare-fun m!5131265 () Bool)

(assert (=> bm!309062 m!5131265))

(declare-fun m!5131267 () Bool)

(assert (=> b!4442390 m!5131267))

(declare-fun m!5131269 () Bool)

(assert (=> d!1348498 m!5131269))

(assert (=> b!4442386 m!5131269))

(declare-fun m!5131271 () Bool)

(assert (=> b!4442386 m!5131271))

(assert (=> b!4442394 m!5131257))

(assert (=> b!4442394 m!5131257))

(assert (=> b!4442394 m!5131259))

(assert (=> b!4442388 m!5131185))

(assert (=> b!4442388 m!5131263))

(assert (=> b!4442388 m!5131263))

(declare-fun m!5131273 () Bool)

(assert (=> b!4442388 m!5131273))

(assert (=> b!4442393 m!5131185))

(assert (=> b!4442393 m!5131263))

(assert (=> b!4442393 m!5131263))

(assert (=> b!4442393 m!5131273))

(assert (=> b!4442271 d!1348498))

(declare-fun bs!764441 () Bool)

(declare-fun d!1348502 () Bool)

(assert (= bs!764441 (and d!1348502 start!434766)))

(declare-fun lambda!157541 () Int)

(assert (=> bs!764441 (= lambda!157541 lambda!157521)))

(declare-fun bs!764442 () Bool)

(assert (= bs!764442 (and d!1348502 d!1348496)))

(assert (=> bs!764442 (not (= lambda!157541 lambda!157538))))

(declare-fun lt!1637512 () ListMap!2915)

(declare-fun invariantList!847 (List!49934) Bool)

(assert (=> d!1348502 (invariantList!847 (toList!3672 lt!1637512))))

(declare-fun e!2766014 () ListMap!2915)

(assert (=> d!1348502 (= lt!1637512 e!2766014)))

(declare-fun c!756011 () Bool)

(assert (=> d!1348502 (= c!756011 (is-Cons!49811 (toList!3671 lt!1637450)))))

(assert (=> d!1348502 (forall!9715 (toList!3671 lt!1637450) lambda!157541)))

(assert (=> d!1348502 (= (extractMap!903 (toList!3671 lt!1637450)) lt!1637512)))

(declare-fun b!4442401 () Bool)

(declare-fun addToMapMapFromBucket!450 (List!49934 ListMap!2915) ListMap!2915)

(assert (=> b!4442401 (= e!2766014 (addToMapMapFromBucket!450 (_2!28168 (h!55542 (toList!3671 lt!1637450))) (extractMap!903 (t!356877 (toList!3671 lt!1637450)))))))

(declare-fun b!4442402 () Bool)

(assert (=> b!4442402 (= e!2766014 (ListMap!2916 Nil!49810))))

(assert (= (and d!1348502 c!756011) b!4442401))

(assert (= (and d!1348502 (not c!756011)) b!4442402))

(declare-fun m!5131287 () Bool)

(assert (=> d!1348502 m!5131287))

(declare-fun m!5131289 () Bool)

(assert (=> d!1348502 m!5131289))

(declare-fun m!5131291 () Bool)

(assert (=> b!4442401 m!5131291))

(assert (=> b!4442401 m!5131291))

(declare-fun m!5131293 () Bool)

(assert (=> b!4442401 m!5131293))

(assert (=> b!4442271 d!1348502))

(declare-fun d!1348506 () Bool)

(declare-fun hash!2302 (Hashable!5236 K!11178) (_ BitVec 64))

(assert (=> d!1348506 (= (hash!2300 hashF!1220 key!3717) (hash!2302 hashF!1220 key!3717))))

(declare-fun bs!764443 () Bool)

(assert (= bs!764443 d!1348506))

(declare-fun m!5131295 () Bool)

(assert (=> bs!764443 m!5131295))

(assert (=> b!4442281 d!1348506))

(assert (=> start!434766 d!1348492))

(declare-fun d!1348508 () Bool)

(declare-fun isStrictlySorted!273 (List!49935) Bool)

(assert (=> d!1348508 (= (inv!65365 lm!1616) (isStrictlySorted!273 (toList!3671 lm!1616)))))

(declare-fun bs!764444 () Bool)

(assert (= bs!764444 d!1348508))

(declare-fun m!5131297 () Bool)

(assert (=> bs!764444 m!5131297))

(assert (=> start!434766 d!1348508))

(declare-fun b!4442406 () Bool)

(assert (=> b!4442406 false))

(declare-fun lt!1637520 () Unit!83978)

(declare-fun lt!1637518 () Unit!83978)

(assert (=> b!4442406 (= lt!1637520 lt!1637518)))

(assert (=> b!4442406 (containsKey!1255 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717)))

(assert (=> b!4442406 (= lt!1637518 (lemmaInGetKeysListThenContainsKey!292 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717))))

(declare-fun e!2766018 () Unit!83978)

(declare-fun Unit!83988 () Unit!83978)

(assert (=> b!4442406 (= e!2766018 Unit!83988)))

(declare-fun bm!309063 () Bool)

(declare-fun call!309068 () Bool)

(declare-fun e!2766022 () List!49938)

(assert (=> bm!309063 (= call!309068 (contains!12388 e!2766022 key!3717))))

(declare-fun c!756012 () Bool)

(declare-fun c!756014 () Bool)

(assert (=> bm!309063 (= c!756012 c!756014)))

(declare-fun b!4442407 () Bool)

(declare-fun Unit!83989 () Unit!83978)

(assert (=> b!4442407 (= e!2766018 Unit!83989)))

(declare-fun b!4442408 () Bool)

(declare-fun e!2766021 () Bool)

(assert (=> b!4442408 (= e!2766021 (not (contains!12388 (keys!17068 (extractMap!903 (toList!3671 lm!1616))) key!3717)))))

(declare-fun b!4442409 () Bool)

(assert (=> b!4442409 (= e!2766022 (keys!17068 (extractMap!903 (toList!3671 lm!1616))))))

(declare-fun d!1348510 () Bool)

(declare-fun e!2766019 () Bool)

(assert (=> d!1348510 e!2766019))

(declare-fun res!1839597 () Bool)

(assert (=> d!1348510 (=> res!1839597 e!2766019)))

(assert (=> d!1348510 (= res!1839597 e!2766021)))

(declare-fun res!1839598 () Bool)

(assert (=> d!1348510 (=> (not res!1839598) (not e!2766021))))

(declare-fun lt!1637517 () Bool)

(assert (=> d!1348510 (= res!1839598 (not lt!1637517))))

(declare-fun lt!1637519 () Bool)

(assert (=> d!1348510 (= lt!1637517 lt!1637519)))

(declare-fun lt!1637515 () Unit!83978)

(declare-fun e!2766020 () Unit!83978)

(assert (=> d!1348510 (= lt!1637515 e!2766020)))

(assert (=> d!1348510 (= c!756014 lt!1637519)))

(assert (=> d!1348510 (= lt!1637519 (containsKey!1255 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717))))

(assert (=> d!1348510 (= (contains!12385 (extractMap!903 (toList!3671 lm!1616)) key!3717) lt!1637517)))

(declare-fun b!4442410 () Bool)

(assert (=> b!4442410 (= e!2766022 (getKeysList!294 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))))

(declare-fun b!4442411 () Bool)

(declare-fun lt!1637516 () Unit!83978)

(assert (=> b!4442411 (= e!2766020 lt!1637516)))

(declare-fun lt!1637522 () Unit!83978)

(assert (=> b!4442411 (= lt!1637522 (lemmaContainsKeyImpliesGetValueByKeyDefined!704 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717))))

(assert (=> b!4442411 (isDefined!8101 (getValueByKey!797 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717))))

(declare-fun lt!1637521 () Unit!83978)

(assert (=> b!4442411 (= lt!1637521 lt!1637522)))

(assert (=> b!4442411 (= lt!1637516 (lemmaInListThenGetKeysListContains!291 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717))))

(assert (=> b!4442411 call!309068))

(declare-fun b!4442412 () Bool)

(assert (=> b!4442412 (= e!2766020 e!2766018)))

(declare-fun c!756013 () Bool)

(assert (=> b!4442412 (= c!756013 call!309068)))

(declare-fun b!4442413 () Bool)

(declare-fun e!2766017 () Bool)

(assert (=> b!4442413 (= e!2766017 (contains!12388 (keys!17068 (extractMap!903 (toList!3671 lm!1616))) key!3717))))

(declare-fun b!4442414 () Bool)

(assert (=> b!4442414 (= e!2766019 e!2766017)))

(declare-fun res!1839599 () Bool)

(assert (=> b!4442414 (=> (not res!1839599) (not e!2766017))))

(assert (=> b!4442414 (= res!1839599 (isDefined!8101 (getValueByKey!797 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717)))))

(assert (= (and d!1348510 c!756014) b!4442411))

(assert (= (and d!1348510 (not c!756014)) b!4442412))

(assert (= (and b!4442412 c!756013) b!4442406))

(assert (= (and b!4442412 (not c!756013)) b!4442407))

(assert (= (or b!4442411 b!4442412) bm!309063))

(assert (= (and bm!309063 c!756012) b!4442410))

(assert (= (and bm!309063 (not c!756012)) b!4442409))

(assert (= (and d!1348510 res!1839598) b!4442408))

(assert (= (and d!1348510 (not res!1839597)) b!4442414))

(assert (= (and b!4442414 res!1839599) b!4442413))

(declare-fun m!5131299 () Bool)

(assert (=> b!4442411 m!5131299))

(declare-fun m!5131301 () Bool)

(assert (=> b!4442411 m!5131301))

(assert (=> b!4442411 m!5131301))

(declare-fun m!5131303 () Bool)

(assert (=> b!4442411 m!5131303))

(declare-fun m!5131305 () Bool)

(assert (=> b!4442411 m!5131305))

(assert (=> b!4442409 m!5131181))

(declare-fun m!5131307 () Bool)

(assert (=> b!4442409 m!5131307))

(declare-fun m!5131309 () Bool)

(assert (=> bm!309063 m!5131309))

(declare-fun m!5131311 () Bool)

(assert (=> b!4442410 m!5131311))

(declare-fun m!5131313 () Bool)

(assert (=> d!1348510 m!5131313))

(assert (=> b!4442406 m!5131313))

(declare-fun m!5131315 () Bool)

(assert (=> b!4442406 m!5131315))

(assert (=> b!4442414 m!5131301))

(assert (=> b!4442414 m!5131301))

(assert (=> b!4442414 m!5131303))

(assert (=> b!4442408 m!5131181))

(assert (=> b!4442408 m!5131307))

(assert (=> b!4442408 m!5131307))

(declare-fun m!5131317 () Bool)

(assert (=> b!4442408 m!5131317))

(assert (=> b!4442413 m!5131181))

(assert (=> b!4442413 m!5131307))

(assert (=> b!4442413 m!5131307))

(assert (=> b!4442413 m!5131317))

(assert (=> b!4442280 d!1348510))

(declare-fun bs!764445 () Bool)

(declare-fun d!1348512 () Bool)

(assert (= bs!764445 (and d!1348512 start!434766)))

(declare-fun lambda!157542 () Int)

(assert (=> bs!764445 (= lambda!157542 lambda!157521)))

(declare-fun bs!764446 () Bool)

(assert (= bs!764446 (and d!1348512 d!1348496)))

(assert (=> bs!764446 (not (= lambda!157542 lambda!157538))))

(declare-fun bs!764447 () Bool)

(assert (= bs!764447 (and d!1348512 d!1348502)))

(assert (=> bs!764447 (= lambda!157542 lambda!157541)))

(declare-fun lt!1637523 () ListMap!2915)

(assert (=> d!1348512 (invariantList!847 (toList!3672 lt!1637523))))

(declare-fun e!2766023 () ListMap!2915)

(assert (=> d!1348512 (= lt!1637523 e!2766023)))

(declare-fun c!756015 () Bool)

(assert (=> d!1348512 (= c!756015 (is-Cons!49811 (toList!3671 lm!1616)))))

(assert (=> d!1348512 (forall!9715 (toList!3671 lm!1616) lambda!157542)))

(assert (=> d!1348512 (= (extractMap!903 (toList!3671 lm!1616)) lt!1637523)))

(declare-fun b!4442415 () Bool)

(assert (=> b!4442415 (= e!2766023 (addToMapMapFromBucket!450 (_2!28168 (h!55542 (toList!3671 lm!1616))) (extractMap!903 (t!356877 (toList!3671 lm!1616)))))))

(declare-fun b!4442416 () Bool)

(assert (=> b!4442416 (= e!2766023 (ListMap!2916 Nil!49810))))

(assert (= (and d!1348512 c!756015) b!4442415))

(assert (= (and d!1348512 (not c!756015)) b!4442416))

(declare-fun m!5131319 () Bool)

(assert (=> d!1348512 m!5131319))

(declare-fun m!5131321 () Bool)

(assert (=> d!1348512 m!5131321))

(declare-fun m!5131323 () Bool)

(assert (=> b!4442415 m!5131323))

(assert (=> b!4442415 m!5131323))

(declare-fun m!5131325 () Bool)

(assert (=> b!4442415 m!5131325))

(assert (=> b!4442280 d!1348512))

(declare-fun d!1348514 () Bool)

(declare-fun e!2766029 () Bool)

(assert (=> d!1348514 e!2766029))

(declare-fun res!1839603 () Bool)

(assert (=> d!1348514 (=> res!1839603 e!2766029)))

(declare-fun lt!1637534 () Bool)

(assert (=> d!1348514 (= res!1839603 (not lt!1637534))))

(declare-fun lt!1637533 () Bool)

(assert (=> d!1348514 (= lt!1637534 lt!1637533)))

(declare-fun lt!1637536 () Unit!83978)

(declare-fun e!2766030 () Unit!83978)

(assert (=> d!1348514 (= lt!1637536 e!2766030)))

(declare-fun c!756018 () Bool)

(assert (=> d!1348514 (= c!756018 lt!1637533)))

(declare-fun containsKey!1256 (List!49935 (_ BitVec 64)) Bool)

(assert (=> d!1348514 (= lt!1637533 (containsKey!1256 (toList!3671 lt!1637450) hash!366))))

(assert (=> d!1348514 (= (contains!12384 lt!1637450 hash!366) lt!1637534)))

(declare-fun b!4442424 () Bool)

(declare-fun lt!1637535 () Unit!83978)

(assert (=> b!4442424 (= e!2766030 lt!1637535)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!705 (List!49935 (_ BitVec 64)) Unit!83978)

(assert (=> b!4442424 (= lt!1637535 (lemmaContainsKeyImpliesGetValueByKeyDefined!705 (toList!3671 lt!1637450) hash!366))))

(declare-datatypes ((Option!10812 0))(
  ( (None!10811) (Some!10811 (v!44043 List!49934)) )
))
(declare-fun isDefined!8102 (Option!10812) Bool)

(declare-fun getValueByKey!798 (List!49935 (_ BitVec 64)) Option!10812)

(assert (=> b!4442424 (isDefined!8102 (getValueByKey!798 (toList!3671 lt!1637450) hash!366))))

(declare-fun b!4442425 () Bool)

(declare-fun Unit!83990 () Unit!83978)

(assert (=> b!4442425 (= e!2766030 Unit!83990)))

(declare-fun b!4442426 () Bool)

(assert (=> b!4442426 (= e!2766029 (isDefined!8102 (getValueByKey!798 (toList!3671 lt!1637450) hash!366)))))

(assert (= (and d!1348514 c!756018) b!4442424))

(assert (= (and d!1348514 (not c!756018)) b!4442425))

(assert (= (and d!1348514 (not res!1839603)) b!4442426))

(declare-fun m!5131333 () Bool)

(assert (=> d!1348514 m!5131333))

(declare-fun m!5131335 () Bool)

(assert (=> b!4442424 m!5131335))

(declare-fun m!5131337 () Bool)

(assert (=> b!4442424 m!5131337))

(assert (=> b!4442424 m!5131337))

(declare-fun m!5131339 () Bool)

(assert (=> b!4442424 m!5131339))

(assert (=> b!4442426 m!5131337))

(assert (=> b!4442426 m!5131337))

(assert (=> b!4442426 m!5131339))

(assert (=> b!4442279 d!1348514))

(declare-fun bs!764448 () Bool)

(declare-fun d!1348518 () Bool)

(assert (= bs!764448 (and d!1348518 start!434766)))

(declare-fun lambda!157545 () Int)

(assert (=> bs!764448 (not (= lambda!157545 lambda!157521))))

(declare-fun bs!764449 () Bool)

(assert (= bs!764449 (and d!1348518 d!1348496)))

(assert (=> bs!764449 (= lambda!157545 lambda!157538)))

(declare-fun bs!764450 () Bool)

(assert (= bs!764450 (and d!1348518 d!1348502)))

(assert (=> bs!764450 (not (= lambda!157545 lambda!157541))))

(declare-fun bs!764451 () Bool)

(assert (= bs!764451 (and d!1348518 d!1348512)))

(assert (=> bs!764451 (not (= lambda!157545 lambda!157542))))

(assert (=> d!1348518 true))

(assert (=> d!1348518 (= (allKeysSameHashInMap!948 lt!1637450 hashF!1220) (forall!9715 (toList!3671 lt!1637450) lambda!157545))))

(declare-fun bs!764452 () Bool)

(assert (= bs!764452 d!1348518))

(declare-fun m!5131341 () Bool)

(assert (=> bs!764452 m!5131341))

(assert (=> b!4442268 d!1348518))

(declare-fun d!1348520 () Bool)

(declare-fun get!16246 (Option!10812) List!49934)

(assert (=> d!1348520 (= (apply!11694 lm!1616 hash!366) (get!16246 (getValueByKey!798 (toList!3671 lm!1616) hash!366)))))

(declare-fun bs!764453 () Bool)

(assert (= bs!764453 d!1348520))

(declare-fun m!5131343 () Bool)

(assert (=> bs!764453 m!5131343))

(assert (=> bs!764453 m!5131343))

(declare-fun m!5131345 () Bool)

(assert (=> bs!764453 m!5131345))

(assert (=> b!4442267 d!1348520))

(declare-fun d!1348522 () Bool)

(declare-fun res!1839608 () Bool)

(declare-fun e!2766035 () Bool)

(assert (=> d!1348522 (=> res!1839608 e!2766035)))

(assert (=> d!1348522 (= res!1839608 (not (is-Cons!49810 newBucket!194)))))

(assert (=> d!1348522 (= (noDuplicateKeys!842 newBucket!194) e!2766035)))

(declare-fun b!4442433 () Bool)

(declare-fun e!2766036 () Bool)

(assert (=> b!4442433 (= e!2766035 e!2766036)))

(declare-fun res!1839609 () Bool)

(assert (=> b!4442433 (=> (not res!1839609) (not e!2766036))))

(declare-fun containsKey!1257 (List!49934 K!11178) Bool)

(assert (=> b!4442433 (= res!1839609 (not (containsKey!1257 (t!356876 newBucket!194) (_1!28167 (h!55541 newBucket!194)))))))

(declare-fun b!4442434 () Bool)

(assert (=> b!4442434 (= e!2766036 (noDuplicateKeys!842 (t!356876 newBucket!194)))))

(assert (= (and d!1348522 (not res!1839608)) b!4442433))

(assert (= (and b!4442433 res!1839609) b!4442434))

(declare-fun m!5131349 () Bool)

(assert (=> b!4442433 m!5131349))

(declare-fun m!5131351 () Bool)

(assert (=> b!4442434 m!5131351))

(assert (=> b!4442277 d!1348522))

(declare-fun d!1348526 () Bool)

(declare-fun res!1839610 () Bool)

(declare-fun e!2766037 () Bool)

(assert (=> d!1348526 (=> res!1839610 e!2766037)))

(assert (=> d!1348526 (= res!1839610 (is-Nil!49811 (toList!3671 lt!1637447)))))

(assert (=> d!1348526 (= (forall!9715 (toList!3671 lt!1637447) lambda!157521) e!2766037)))

(declare-fun b!4442435 () Bool)

(declare-fun e!2766038 () Bool)

(assert (=> b!4442435 (= e!2766037 e!2766038)))

(declare-fun res!1839611 () Bool)

(assert (=> b!4442435 (=> (not res!1839611) (not e!2766038))))

(assert (=> b!4442435 (= res!1839611 (dynLambda!20915 lambda!157521 (h!55542 (toList!3671 lt!1637447))))))

(declare-fun b!4442436 () Bool)

(assert (=> b!4442436 (= e!2766038 (forall!9715 (t!356877 (toList!3671 lt!1637447)) lambda!157521))))

(assert (= (and d!1348526 (not res!1839610)) b!4442435))

(assert (= (and b!4442435 res!1839611) b!4442436))

(declare-fun b_lambda!145175 () Bool)

(assert (=> (not b_lambda!145175) (not b!4442435)))

(declare-fun m!5131355 () Bool)

(assert (=> b!4442435 m!5131355))

(declare-fun m!5131357 () Bool)

(assert (=> b!4442436 m!5131357))

(assert (=> b!4442266 d!1348526))

(declare-fun d!1348530 () Bool)

(declare-fun e!2766043 () Bool)

(assert (=> d!1348530 e!2766043))

(declare-fun res!1839618 () Bool)

(assert (=> d!1348530 (=> (not res!1839618) (not e!2766043))))

(declare-fun lt!1637545 () ListLongMap!2321)

(assert (=> d!1348530 (= res!1839618 (contains!12384 lt!1637545 (_1!28168 (tuple2!49749 hash!366 newBucket!194))))))

(declare-fun lt!1637547 () List!49935)

(assert (=> d!1348530 (= lt!1637545 (ListLongMap!2322 lt!1637547))))

(declare-fun lt!1637548 () Unit!83978)

(declare-fun lt!1637546 () Unit!83978)

(assert (=> d!1348530 (= lt!1637548 lt!1637546)))

(assert (=> d!1348530 (= (getValueByKey!798 lt!1637547 (_1!28168 (tuple2!49749 hash!366 newBucket!194))) (Some!10811 (_2!28168 (tuple2!49749 hash!366 newBucket!194))))))

(declare-fun lemmaContainsTupThenGetReturnValue!517 (List!49935 (_ BitVec 64) List!49934) Unit!83978)

(assert (=> d!1348530 (= lt!1637546 (lemmaContainsTupThenGetReturnValue!517 lt!1637547 (_1!28168 (tuple2!49749 hash!366 newBucket!194)) (_2!28168 (tuple2!49749 hash!366 newBucket!194))))))

(declare-fun insertStrictlySorted!301 (List!49935 (_ BitVec 64) List!49934) List!49935)

(assert (=> d!1348530 (= lt!1637547 (insertStrictlySorted!301 (toList!3671 lm!1616) (_1!28168 (tuple2!49749 hash!366 newBucket!194)) (_2!28168 (tuple2!49749 hash!366 newBucket!194))))))

(assert (=> d!1348530 (= (+!1225 lm!1616 (tuple2!49749 hash!366 newBucket!194)) lt!1637545)))

(declare-fun b!4442447 () Bool)

(declare-fun res!1839619 () Bool)

(assert (=> b!4442447 (=> (not res!1839619) (not e!2766043))))

(assert (=> b!4442447 (= res!1839619 (= (getValueByKey!798 (toList!3671 lt!1637545) (_1!28168 (tuple2!49749 hash!366 newBucket!194))) (Some!10811 (_2!28168 (tuple2!49749 hash!366 newBucket!194)))))))

(declare-fun b!4442448 () Bool)

(declare-fun contains!12389 (List!49935 tuple2!49748) Bool)

(assert (=> b!4442448 (= e!2766043 (contains!12389 (toList!3671 lt!1637545) (tuple2!49749 hash!366 newBucket!194)))))

(assert (= (and d!1348530 res!1839618) b!4442447))

(assert (= (and b!4442447 res!1839619) b!4442448))

(declare-fun m!5131363 () Bool)

(assert (=> d!1348530 m!5131363))

(declare-fun m!5131365 () Bool)

(assert (=> d!1348530 m!5131365))

(declare-fun m!5131367 () Bool)

(assert (=> d!1348530 m!5131367))

(declare-fun m!5131369 () Bool)

(assert (=> d!1348530 m!5131369))

(declare-fun m!5131373 () Bool)

(assert (=> b!4442447 m!5131373))

(declare-fun m!5131375 () Bool)

(assert (=> b!4442448 m!5131375))

(assert (=> b!4442266 d!1348530))

(declare-fun d!1348536 () Bool)

(assert (=> d!1348536 (forall!9715 (toList!3671 (+!1225 lm!1616 (tuple2!49749 hash!366 newBucket!194))) lambda!157521)))

(declare-fun lt!1637551 () Unit!83978)

(declare-fun choose!28219 (ListLongMap!2321 Int (_ BitVec 64) List!49934) Unit!83978)

(assert (=> d!1348536 (= lt!1637551 (choose!28219 lm!1616 lambda!157521 hash!366 newBucket!194))))

(declare-fun e!2766048 () Bool)

(assert (=> d!1348536 e!2766048))

(declare-fun res!1839624 () Bool)

(assert (=> d!1348536 (=> (not res!1839624) (not e!2766048))))

(assert (=> d!1348536 (= res!1839624 (forall!9715 (toList!3671 lm!1616) lambda!157521))))

(assert (=> d!1348536 (= (addValidProp!480 lm!1616 lambda!157521 hash!366 newBucket!194) lt!1637551)))

(declare-fun b!4442454 () Bool)

(assert (=> b!4442454 (= e!2766048 (dynLambda!20915 lambda!157521 (tuple2!49749 hash!366 newBucket!194)))))

(assert (= (and d!1348536 res!1839624) b!4442454))

(declare-fun b_lambda!145181 () Bool)

(assert (=> (not b_lambda!145181) (not b!4442454)))

(assert (=> d!1348536 m!5131145))

(declare-fun m!5131383 () Bool)

(assert (=> d!1348536 m!5131383))

(declare-fun m!5131385 () Bool)

(assert (=> d!1348536 m!5131385))

(assert (=> d!1348536 m!5131169))

(declare-fun m!5131387 () Bool)

(assert (=> b!4442454 m!5131387))

(assert (=> b!4442266 d!1348536))

(declare-fun d!1348544 () Bool)

(declare-fun res!1839625 () Bool)

(declare-fun e!2766049 () Bool)

(assert (=> d!1348544 (=> res!1839625 e!2766049)))

(assert (=> d!1348544 (= res!1839625 (is-Nil!49811 (toList!3671 lt!1637450)))))

(assert (=> d!1348544 (= (forall!9715 (toList!3671 lt!1637450) lambda!157521) e!2766049)))

(declare-fun b!4442455 () Bool)

(declare-fun e!2766050 () Bool)

(assert (=> b!4442455 (= e!2766049 e!2766050)))

(declare-fun res!1839626 () Bool)

(assert (=> b!4442455 (=> (not res!1839626) (not e!2766050))))

(assert (=> b!4442455 (= res!1839626 (dynLambda!20915 lambda!157521 (h!55542 (toList!3671 lt!1637450))))))

(declare-fun b!4442456 () Bool)

(assert (=> b!4442456 (= e!2766050 (forall!9715 (t!356877 (toList!3671 lt!1637450)) lambda!157521))))

(assert (= (and d!1348544 (not res!1839625)) b!4442455))

(assert (= (and b!4442455 res!1839626) b!4442456))

(declare-fun b_lambda!145183 () Bool)

(assert (=> (not b_lambda!145183) (not b!4442455)))

(declare-fun m!5131389 () Bool)

(assert (=> b!4442455 m!5131389))

(declare-fun m!5131391 () Bool)

(assert (=> b!4442456 m!5131391))

(assert (=> b!4442265 d!1348544))

(declare-fun d!1348546 () Bool)

(assert (=> d!1348546 (= (tail!7384 lm!1616) (ListLongMap!2322 (tail!7385 (toList!3671 lm!1616))))))

(declare-fun bs!764462 () Bool)

(assert (= bs!764462 d!1348546))

(assert (=> bs!764462 m!5131157))

(assert (=> b!4442265 d!1348546))

(declare-fun bs!764463 () Bool)

(declare-fun d!1348548 () Bool)

(assert (= bs!764463 (and d!1348548 d!1348496)))

(declare-fun lambda!157551 () Int)

(assert (=> bs!764463 (not (= lambda!157551 lambda!157538))))

(declare-fun bs!764464 () Bool)

(assert (= bs!764464 (and d!1348548 d!1348512)))

(assert (=> bs!764464 (= lambda!157551 lambda!157542)))

(declare-fun bs!764465 () Bool)

(assert (= bs!764465 (and d!1348548 d!1348502)))

(assert (=> bs!764465 (= lambda!157551 lambda!157541)))

(declare-fun bs!764466 () Bool)

(assert (= bs!764466 (and d!1348548 d!1348518)))

(assert (=> bs!764466 (not (= lambda!157551 lambda!157545))))

(declare-fun bs!764467 () Bool)

(assert (= bs!764467 (and d!1348548 start!434766)))

(assert (=> bs!764467 (= lambda!157551 lambda!157521)))

(declare-fun lt!1637552 () ListMap!2915)

(assert (=> d!1348548 (invariantList!847 (toList!3672 lt!1637552))))

(declare-fun e!2766051 () ListMap!2915)

(assert (=> d!1348548 (= lt!1637552 e!2766051)))

(declare-fun c!756019 () Bool)

(assert (=> d!1348548 (= c!756019 (is-Cons!49811 (tail!7385 (toList!3671 lm!1616))))))

(assert (=> d!1348548 (forall!9715 (tail!7385 (toList!3671 lm!1616)) lambda!157551)))

(assert (=> d!1348548 (= (extractMap!903 (tail!7385 (toList!3671 lm!1616))) lt!1637552)))

(declare-fun b!4442457 () Bool)

(assert (=> b!4442457 (= e!2766051 (addToMapMapFromBucket!450 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616)))) (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))))))

(declare-fun b!4442458 () Bool)

(assert (=> b!4442458 (= e!2766051 (ListMap!2916 Nil!49810))))

(assert (= (and d!1348548 c!756019) b!4442457))

(assert (= (and d!1348548 (not c!756019)) b!4442458))

(declare-fun m!5131393 () Bool)

(assert (=> d!1348548 m!5131393))

(assert (=> d!1348548 m!5131157))

(declare-fun m!5131395 () Bool)

(assert (=> d!1348548 m!5131395))

(declare-fun m!5131397 () Bool)

(assert (=> b!4442457 m!5131397))

(assert (=> b!4442457 m!5131397))

(declare-fun m!5131399 () Bool)

(assert (=> b!4442457 m!5131399))

(assert (=> b!4442265 d!1348548))

(declare-fun d!1348550 () Bool)

(assert (=> d!1348550 (= (tail!7385 (toList!3671 lm!1616)) (t!356877 (toList!3671 lm!1616)))))

(assert (=> b!4442265 d!1348550))

(declare-fun b!4442459 () Bool)

(assert (=> b!4442459 false))

(declare-fun lt!1637558 () Unit!83978)

(declare-fun lt!1637556 () Unit!83978)

(assert (=> b!4442459 (= lt!1637558 lt!1637556)))

(assert (=> b!4442459 (containsKey!1255 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717)))

(assert (=> b!4442459 (= lt!1637556 (lemmaInGetKeysListThenContainsKey!292 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717))))

(declare-fun e!2766053 () Unit!83978)

(declare-fun Unit!83991 () Unit!83978)

(assert (=> b!4442459 (= e!2766053 Unit!83991)))

(declare-fun bm!309064 () Bool)

(declare-fun call!309069 () Bool)

(declare-fun e!2766057 () List!49938)

(assert (=> bm!309064 (= call!309069 (contains!12388 e!2766057 key!3717))))

(declare-fun c!756020 () Bool)

(declare-fun c!756022 () Bool)

(assert (=> bm!309064 (= c!756020 c!756022)))

(declare-fun b!4442460 () Bool)

(declare-fun Unit!83992 () Unit!83978)

(assert (=> b!4442460 (= e!2766053 Unit!83992)))

(declare-fun b!4442461 () Bool)

(declare-fun e!2766056 () Bool)

(assert (=> b!4442461 (= e!2766056 (not (contains!12388 (keys!17068 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717)))))

(declare-fun b!4442462 () Bool)

(assert (=> b!4442462 (= e!2766057 (keys!17068 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))))

(declare-fun d!1348552 () Bool)

(declare-fun e!2766054 () Bool)

(assert (=> d!1348552 e!2766054))

(declare-fun res!1839627 () Bool)

(assert (=> d!1348552 (=> res!1839627 e!2766054)))

(assert (=> d!1348552 (= res!1839627 e!2766056)))

(declare-fun res!1839628 () Bool)

(assert (=> d!1348552 (=> (not res!1839628) (not e!2766056))))

(declare-fun lt!1637555 () Bool)

(assert (=> d!1348552 (= res!1839628 (not lt!1637555))))

(declare-fun lt!1637557 () Bool)

(assert (=> d!1348552 (= lt!1637555 lt!1637557)))

(declare-fun lt!1637553 () Unit!83978)

(declare-fun e!2766055 () Unit!83978)

(assert (=> d!1348552 (= lt!1637553 e!2766055)))

(assert (=> d!1348552 (= c!756022 lt!1637557)))

(assert (=> d!1348552 (= lt!1637557 (containsKey!1255 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717))))

(assert (=> d!1348552 (= (contains!12385 (extractMap!903 (tail!7385 (toList!3671 lm!1616))) key!3717) lt!1637555)))

(declare-fun b!4442463 () Bool)

(assert (=> b!4442463 (= e!2766057 (getKeysList!294 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))))))

(declare-fun b!4442464 () Bool)

(declare-fun lt!1637554 () Unit!83978)

(assert (=> b!4442464 (= e!2766055 lt!1637554)))

(declare-fun lt!1637560 () Unit!83978)

(assert (=> b!4442464 (= lt!1637560 (lemmaContainsKeyImpliesGetValueByKeyDefined!704 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717))))

(assert (=> b!4442464 (isDefined!8101 (getValueByKey!797 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717))))

(declare-fun lt!1637559 () Unit!83978)

(assert (=> b!4442464 (= lt!1637559 lt!1637560)))

(assert (=> b!4442464 (= lt!1637554 (lemmaInListThenGetKeysListContains!291 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717))))

(assert (=> b!4442464 call!309069))

(declare-fun b!4442465 () Bool)

(assert (=> b!4442465 (= e!2766055 e!2766053)))

(declare-fun c!756021 () Bool)

(assert (=> b!4442465 (= c!756021 call!309069)))

(declare-fun b!4442466 () Bool)

(declare-fun e!2766052 () Bool)

(assert (=> b!4442466 (= e!2766052 (contains!12388 (keys!17068 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717))))

(declare-fun b!4442467 () Bool)

(assert (=> b!4442467 (= e!2766054 e!2766052)))

(declare-fun res!1839629 () Bool)

(assert (=> b!4442467 (=> (not res!1839629) (not e!2766052))))

(assert (=> b!4442467 (= res!1839629 (isDefined!8101 (getValueByKey!797 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717)))))

(assert (= (and d!1348552 c!756022) b!4442464))

(assert (= (and d!1348552 (not c!756022)) b!4442465))

(assert (= (and b!4442465 c!756021) b!4442459))

(assert (= (and b!4442465 (not c!756021)) b!4442460))

(assert (= (or b!4442464 b!4442465) bm!309064))

(assert (= (and bm!309064 c!756020) b!4442463))

(assert (= (and bm!309064 (not c!756020)) b!4442462))

(assert (= (and d!1348552 res!1839628) b!4442461))

(assert (= (and d!1348552 (not res!1839627)) b!4442467))

(assert (= (and b!4442467 res!1839629) b!4442466))

(declare-fun m!5131401 () Bool)

(assert (=> b!4442464 m!5131401))

(declare-fun m!5131403 () Bool)

(assert (=> b!4442464 m!5131403))

(assert (=> b!4442464 m!5131403))

(declare-fun m!5131405 () Bool)

(assert (=> b!4442464 m!5131405))

(declare-fun m!5131407 () Bool)

(assert (=> b!4442464 m!5131407))

(assert (=> b!4442462 m!5131159))

(declare-fun m!5131409 () Bool)

(assert (=> b!4442462 m!5131409))

(declare-fun m!5131411 () Bool)

(assert (=> bm!309064 m!5131411))

(declare-fun m!5131413 () Bool)

(assert (=> b!4442463 m!5131413))

(declare-fun m!5131415 () Bool)

(assert (=> d!1348552 m!5131415))

(assert (=> b!4442459 m!5131415))

(declare-fun m!5131417 () Bool)

(assert (=> b!4442459 m!5131417))

(assert (=> b!4442467 m!5131403))

(assert (=> b!4442467 m!5131403))

(assert (=> b!4442467 m!5131405))

(assert (=> b!4442461 m!5131159))

(assert (=> b!4442461 m!5131409))

(assert (=> b!4442461 m!5131409))

(declare-fun m!5131419 () Bool)

(assert (=> b!4442461 m!5131419))

(assert (=> b!4442466 m!5131159))

(assert (=> b!4442466 m!5131409))

(assert (=> b!4442466 m!5131409))

(assert (=> b!4442466 m!5131419))

(assert (=> b!4442265 d!1348552))

(declare-fun bs!764468 () Bool)

(declare-fun d!1348554 () Bool)

(assert (= bs!764468 (and d!1348554 d!1348512)))

(declare-fun lambda!157554 () Int)

(assert (=> bs!764468 (= lambda!157554 lambda!157542)))

(declare-fun bs!764469 () Bool)

(assert (= bs!764469 (and d!1348554 d!1348502)))

(assert (=> bs!764469 (= lambda!157554 lambda!157541)))

(declare-fun bs!764470 () Bool)

(assert (= bs!764470 (and d!1348554 d!1348518)))

(assert (=> bs!764470 (not (= lambda!157554 lambda!157545))))

(declare-fun bs!764471 () Bool)

(assert (= bs!764471 (and d!1348554 start!434766)))

(assert (=> bs!764471 (= lambda!157554 lambda!157521)))

(declare-fun bs!764472 () Bool)

(assert (= bs!764472 (and d!1348554 d!1348496)))

(assert (=> bs!764472 (not (= lambda!157554 lambda!157538))))

(declare-fun bs!764473 () Bool)

(assert (= bs!764473 (and d!1348554 d!1348548)))

(assert (=> bs!764473 (= lambda!157554 lambda!157551)))

(assert (=> d!1348554 (contains!12385 (extractMap!903 (toList!3671 lm!1616)) key!3717)))

(declare-fun lt!1637563 () Unit!83978)

(declare-fun choose!28220 (ListLongMap!2321 K!11178 Hashable!5236) Unit!83978)

(assert (=> d!1348554 (= lt!1637563 (choose!28220 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1348554 (forall!9715 (toList!3671 lm!1616) lambda!157554)))

(assert (=> d!1348554 (= (lemmaExtractTailMapContainsThenExtractMapDoes!79 lm!1616 key!3717 hashF!1220) lt!1637563)))

(declare-fun bs!764474 () Bool)

(assert (= bs!764474 d!1348554))

(assert (=> bs!764474 m!5131181))

(assert (=> bs!764474 m!5131181))

(assert (=> bs!764474 m!5131183))

(declare-fun m!5131421 () Bool)

(assert (=> bs!764474 m!5131421))

(declare-fun m!5131423 () Bool)

(assert (=> bs!764474 m!5131423))

(assert (=> b!4442276 d!1348554))

(declare-fun d!1348556 () Bool)

(assert (=> d!1348556 (= (apply!11694 lt!1637450 hash!366) (get!16246 (getValueByKey!798 (toList!3671 lt!1637450) hash!366)))))

(declare-fun bs!764475 () Bool)

(assert (= bs!764475 d!1348556))

(assert (=> bs!764475 m!5131337))

(assert (=> bs!764475 m!5131337))

(declare-fun m!5131425 () Bool)

(assert (=> bs!764475 m!5131425))

(assert (=> b!4442275 d!1348556))

(declare-fun d!1348558 () Bool)

(declare-fun e!2766058 () Bool)

(assert (=> d!1348558 e!2766058))

(declare-fun res!1839630 () Bool)

(assert (=> d!1348558 (=> res!1839630 e!2766058)))

(declare-fun lt!1637565 () Bool)

(assert (=> d!1348558 (= res!1839630 (not lt!1637565))))

(declare-fun lt!1637564 () Bool)

(assert (=> d!1348558 (= lt!1637565 lt!1637564)))

(declare-fun lt!1637567 () Unit!83978)

(declare-fun e!2766059 () Unit!83978)

(assert (=> d!1348558 (= lt!1637567 e!2766059)))

(declare-fun c!756023 () Bool)

(assert (=> d!1348558 (= c!756023 lt!1637564)))

(assert (=> d!1348558 (= lt!1637564 (containsKey!1256 (toList!3671 lm!1616) hash!366))))

(assert (=> d!1348558 (= (contains!12384 lm!1616 hash!366) lt!1637565)))

(declare-fun b!4442468 () Bool)

(declare-fun lt!1637566 () Unit!83978)

(assert (=> b!4442468 (= e!2766059 lt!1637566)))

(assert (=> b!4442468 (= lt!1637566 (lemmaContainsKeyImpliesGetValueByKeyDefined!705 (toList!3671 lm!1616) hash!366))))

(assert (=> b!4442468 (isDefined!8102 (getValueByKey!798 (toList!3671 lm!1616) hash!366))))

(declare-fun b!4442469 () Bool)

(declare-fun Unit!83993 () Unit!83978)

(assert (=> b!4442469 (= e!2766059 Unit!83993)))

(declare-fun b!4442470 () Bool)

(assert (=> b!4442470 (= e!2766058 (isDefined!8102 (getValueByKey!798 (toList!3671 lm!1616) hash!366)))))

(assert (= (and d!1348558 c!756023) b!4442468))

(assert (= (and d!1348558 (not c!756023)) b!4442469))

(assert (= (and d!1348558 (not res!1839630)) b!4442470))

(declare-fun m!5131427 () Bool)

(assert (=> d!1348558 m!5131427))

(declare-fun m!5131429 () Bool)

(assert (=> b!4442468 m!5131429))

(assert (=> b!4442468 m!5131343))

(assert (=> b!4442468 m!5131343))

(declare-fun m!5131431 () Bool)

(assert (=> b!4442468 m!5131431))

(assert (=> b!4442470 m!5131343))

(assert (=> b!4442470 m!5131343))

(assert (=> b!4442470 m!5131431))

(assert (=> b!4442264 d!1348558))

(declare-fun b!4442475 () Bool)

(declare-fun e!2766062 () Bool)

(declare-fun tp!1334269 () Bool)

(declare-fun tp!1334270 () Bool)

(assert (=> b!4442475 (= e!2766062 (and tp!1334269 tp!1334270))))

(assert (=> b!4442273 (= tp!1334258 e!2766062)))

(assert (= (and b!4442273 (is-Cons!49811 (toList!3671 lm!1616))) b!4442475))

(declare-fun e!2766065 () Bool)

(declare-fun b!4442480 () Bool)

(declare-fun tp!1334273 () Bool)

(assert (=> b!4442480 (= e!2766065 (and tp_is_empty!26615 tp_is_empty!26613 tp!1334273))))

(assert (=> b!4442272 (= tp!1334257 e!2766065)))

(assert (= (and b!4442272 (is-Cons!49810 (t!356876 newBucket!194))) b!4442480))

(declare-fun b_lambda!145185 () Bool)

(assert (= b_lambda!145169 (or start!434766 b_lambda!145185)))

(declare-fun bs!764476 () Bool)

(declare-fun d!1348560 () Bool)

(assert (= bs!764476 (and d!1348560 start!434766)))

(assert (=> bs!764476 (= (dynLambda!20915 lambda!157521 (h!55542 (toList!3671 lm!1616))) (noDuplicateKeys!842 (_2!28168 (h!55542 (toList!3671 lm!1616)))))))

(declare-fun m!5131433 () Bool)

(assert (=> bs!764476 m!5131433))

(assert (=> b!4442354 d!1348560))

(declare-fun b_lambda!145187 () Bool)

(assert (= b_lambda!145183 (or start!434766 b_lambda!145187)))

(declare-fun bs!764477 () Bool)

(declare-fun d!1348562 () Bool)

(assert (= bs!764477 (and d!1348562 start!434766)))

(assert (=> bs!764477 (= (dynLambda!20915 lambda!157521 (h!55542 (toList!3671 lt!1637450))) (noDuplicateKeys!842 (_2!28168 (h!55542 (toList!3671 lt!1637450)))))))

(declare-fun m!5131435 () Bool)

(assert (=> bs!764477 m!5131435))

(assert (=> b!4442455 d!1348562))

(declare-fun b_lambda!145189 () Bool)

(assert (= b_lambda!145181 (or start!434766 b_lambda!145189)))

(declare-fun bs!764478 () Bool)

(declare-fun d!1348564 () Bool)

(assert (= bs!764478 (and d!1348564 start!434766)))

(assert (=> bs!764478 (= (dynLambda!20915 lambda!157521 (tuple2!49749 hash!366 newBucket!194)) (noDuplicateKeys!842 (_2!28168 (tuple2!49749 hash!366 newBucket!194))))))

(declare-fun m!5131437 () Bool)

(assert (=> bs!764478 m!5131437))

(assert (=> b!4442454 d!1348564))

(declare-fun b_lambda!145191 () Bool)

(assert (= b_lambda!145175 (or start!434766 b_lambda!145191)))

(declare-fun bs!764479 () Bool)

(declare-fun d!1348566 () Bool)

(assert (= bs!764479 (and d!1348566 start!434766)))

(assert (=> bs!764479 (= (dynLambda!20915 lambda!157521 (h!55542 (toList!3671 lt!1637447))) (noDuplicateKeys!842 (_2!28168 (h!55542 (toList!3671 lt!1637447)))))))

(declare-fun m!5131439 () Bool)

(assert (=> bs!764479 m!5131439))

(assert (=> b!4442435 d!1348566))

(push 1)

(assert (not b!4442406))

(assert (not b!4442480))

(assert (not d!1348558))

(assert (not b!4442448))

(assert (not d!1348554))

(assert (not d!1348506))

(assert (not b!4442391))

(assert (not b!4442436))

(assert (not b!4442355))

(assert (not b!4442390))

(assert (not d!1348518))

(assert (not b!4442389))

(assert (not bm!309063))

(assert (not b!4442410))

(assert (not b!4442386))

(assert (not bs!764479))

(assert (not d!1348546))

(assert (not bm!309062))

(assert (not b!4442413))

(assert (not b!4442461))

(assert (not b!4442447))

(assert (not b!4442401))

(assert (not d!1348512))

(assert (not b!4442411))

(assert (not b!4442426))

(assert (not b!4442408))

(assert (not b!4442424))

(assert (not b!4442475))

(assert (not d!1348552))

(assert (not b!4442393))

(assert (not d!1348520))

(assert (not b!4442468))

(assert (not b!4442415))

(assert (not b_lambda!145189))

(assert (not b!4442464))

(assert (not b!4442414))

(assert (not b!4442394))

(assert (not d!1348498))

(assert (not d!1348496))

(assert (not b!4442467))

(assert tp_is_empty!26613)

(assert (not b!4442470))

(assert (not d!1348556))

(assert (not bs!764476))

(assert (not b!4442466))

(assert (not d!1348536))

(assert (not bs!764478))

(assert (not d!1348508))

(assert (not d!1348502))

(assert (not b_lambda!145191))

(assert (not d!1348490))

(assert (not d!1348514))

(assert (not b!4442463))

(assert (not bs!764477))

(assert tp_is_empty!26615)

(assert (not b_lambda!145187))

(assert (not b_lambda!145185))

(assert (not d!1348548))

(assert (not d!1348510))

(assert (not b!4442462))

(assert (not bm!309064))

(assert (not b!4442434))

(assert (not b!4442388))

(assert (not b!4442409))

(assert (not d!1348530))

(assert (not b!4442459))

(assert (not b!4442433))

(assert (not b!4442457))

(assert (not b!4442456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1348600 () Bool)

(declare-fun isEmpty!28392 (Option!10811) Bool)

(assert (=> d!1348600 (= (isDefined!8101 (getValueByKey!797 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717)) (not (isEmpty!28392 (getValueByKey!797 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717))))))

(declare-fun bs!764505 () Bool)

(assert (= bs!764505 d!1348600))

(assert (=> bs!764505 m!5131257))

(declare-fun m!5131559 () Bool)

(assert (=> bs!764505 m!5131559))

(assert (=> b!4442394 d!1348600))

(declare-fun b!4442574 () Bool)

(declare-fun e!2766126 () Option!10811)

(assert (=> b!4442574 (= e!2766126 (getValueByKey!797 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) key!3717))))

(declare-fun b!4442572 () Bool)

(declare-fun e!2766125 () Option!10811)

(assert (=> b!4442572 (= e!2766125 (Some!10810 (_2!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))))))

(declare-fun d!1348602 () Bool)

(declare-fun c!756052 () Bool)

(assert (=> d!1348602 (= c!756052 (and (is-Cons!49810 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (= (_1!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) key!3717)))))

(assert (=> d!1348602 (= (getValueByKey!797 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717) e!2766125)))

(declare-fun b!4442575 () Bool)

(assert (=> b!4442575 (= e!2766126 None!10810)))

(declare-fun b!4442573 () Bool)

(assert (=> b!4442573 (= e!2766125 e!2766126)))

(declare-fun c!756053 () Bool)

(assert (=> b!4442573 (= c!756053 (and (is-Cons!49810 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (not (= (_1!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) key!3717))))))

(assert (= (and d!1348602 c!756052) b!4442572))

(assert (= (and d!1348602 (not c!756052)) b!4442573))

(assert (= (and b!4442573 c!756053) b!4442574))

(assert (= (and b!4442573 (not c!756053)) b!4442575))

(declare-fun m!5131561 () Bool)

(assert (=> b!4442574 m!5131561))

(assert (=> b!4442394 d!1348602))

(declare-fun d!1348604 () Bool)

(declare-fun e!2766127 () Bool)

(assert (=> d!1348604 e!2766127))

(declare-fun res!1839656 () Bool)

(assert (=> d!1348604 (=> res!1839656 e!2766127)))

(declare-fun lt!1637633 () Bool)

(assert (=> d!1348604 (= res!1839656 (not lt!1637633))))

(declare-fun lt!1637632 () Bool)

(assert (=> d!1348604 (= lt!1637633 lt!1637632)))

(declare-fun lt!1637635 () Unit!83978)

(declare-fun e!2766128 () Unit!83978)

(assert (=> d!1348604 (= lt!1637635 e!2766128)))

(declare-fun c!756054 () Bool)

(assert (=> d!1348604 (= c!756054 lt!1637632)))

(assert (=> d!1348604 (= lt!1637632 (containsKey!1256 (toList!3671 lt!1637545) (_1!28168 (tuple2!49749 hash!366 newBucket!194))))))

(assert (=> d!1348604 (= (contains!12384 lt!1637545 (_1!28168 (tuple2!49749 hash!366 newBucket!194))) lt!1637633)))

(declare-fun b!4442576 () Bool)

(declare-fun lt!1637634 () Unit!83978)

(assert (=> b!4442576 (= e!2766128 lt!1637634)))

(assert (=> b!4442576 (= lt!1637634 (lemmaContainsKeyImpliesGetValueByKeyDefined!705 (toList!3671 lt!1637545) (_1!28168 (tuple2!49749 hash!366 newBucket!194))))))

(assert (=> b!4442576 (isDefined!8102 (getValueByKey!798 (toList!3671 lt!1637545) (_1!28168 (tuple2!49749 hash!366 newBucket!194))))))

(declare-fun b!4442577 () Bool)

(declare-fun Unit!84002 () Unit!83978)

(assert (=> b!4442577 (= e!2766128 Unit!84002)))

(declare-fun b!4442578 () Bool)

(assert (=> b!4442578 (= e!2766127 (isDefined!8102 (getValueByKey!798 (toList!3671 lt!1637545) (_1!28168 (tuple2!49749 hash!366 newBucket!194)))))))

(assert (= (and d!1348604 c!756054) b!4442576))

(assert (= (and d!1348604 (not c!756054)) b!4442577))

(assert (= (and d!1348604 (not res!1839656)) b!4442578))

(declare-fun m!5131563 () Bool)

(assert (=> d!1348604 m!5131563))

(declare-fun m!5131565 () Bool)

(assert (=> b!4442576 m!5131565))

(assert (=> b!4442576 m!5131373))

(assert (=> b!4442576 m!5131373))

(declare-fun m!5131567 () Bool)

(assert (=> b!4442576 m!5131567))

(assert (=> b!4442578 m!5131373))

(assert (=> b!4442578 m!5131373))

(assert (=> b!4442578 m!5131567))

(assert (=> d!1348530 d!1348604))

(declare-fun e!2766134 () Option!10812)

(declare-fun b!4442589 () Bool)

(assert (=> b!4442589 (= e!2766134 (getValueByKey!798 (t!356877 lt!1637547) (_1!28168 (tuple2!49749 hash!366 newBucket!194))))))

(declare-fun b!4442590 () Bool)

(assert (=> b!4442590 (= e!2766134 None!10811)))

(declare-fun b!4442587 () Bool)

(declare-fun e!2766133 () Option!10812)

(assert (=> b!4442587 (= e!2766133 (Some!10811 (_2!28168 (h!55542 lt!1637547))))))

(declare-fun d!1348606 () Bool)

(declare-fun c!756059 () Bool)

(assert (=> d!1348606 (= c!756059 (and (is-Cons!49811 lt!1637547) (= (_1!28168 (h!55542 lt!1637547)) (_1!28168 (tuple2!49749 hash!366 newBucket!194)))))))

(assert (=> d!1348606 (= (getValueByKey!798 lt!1637547 (_1!28168 (tuple2!49749 hash!366 newBucket!194))) e!2766133)))

(declare-fun b!4442588 () Bool)

(assert (=> b!4442588 (= e!2766133 e!2766134)))

(declare-fun c!756060 () Bool)

(assert (=> b!4442588 (= c!756060 (and (is-Cons!49811 lt!1637547) (not (= (_1!28168 (h!55542 lt!1637547)) (_1!28168 (tuple2!49749 hash!366 newBucket!194))))))))

(assert (= (and d!1348606 c!756059) b!4442587))

(assert (= (and d!1348606 (not c!756059)) b!4442588))

(assert (= (and b!4442588 c!756060) b!4442589))

(assert (= (and b!4442588 (not c!756060)) b!4442590))

(declare-fun m!5131569 () Bool)

(assert (=> b!4442589 m!5131569))

(assert (=> d!1348530 d!1348606))

(declare-fun d!1348608 () Bool)

(assert (=> d!1348608 (= (getValueByKey!798 lt!1637547 (_1!28168 (tuple2!49749 hash!366 newBucket!194))) (Some!10811 (_2!28168 (tuple2!49749 hash!366 newBucket!194))))))

(declare-fun lt!1637638 () Unit!83978)

(declare-fun choose!28223 (List!49935 (_ BitVec 64) List!49934) Unit!83978)

(assert (=> d!1348608 (= lt!1637638 (choose!28223 lt!1637547 (_1!28168 (tuple2!49749 hash!366 newBucket!194)) (_2!28168 (tuple2!49749 hash!366 newBucket!194))))))

(declare-fun e!2766137 () Bool)

(assert (=> d!1348608 e!2766137))

(declare-fun res!1839661 () Bool)

(assert (=> d!1348608 (=> (not res!1839661) (not e!2766137))))

(assert (=> d!1348608 (= res!1839661 (isStrictlySorted!273 lt!1637547))))

(assert (=> d!1348608 (= (lemmaContainsTupThenGetReturnValue!517 lt!1637547 (_1!28168 (tuple2!49749 hash!366 newBucket!194)) (_2!28168 (tuple2!49749 hash!366 newBucket!194))) lt!1637638)))

(declare-fun b!4442595 () Bool)

(declare-fun res!1839662 () Bool)

(assert (=> b!4442595 (=> (not res!1839662) (not e!2766137))))

(assert (=> b!4442595 (= res!1839662 (containsKey!1256 lt!1637547 (_1!28168 (tuple2!49749 hash!366 newBucket!194))))))

(declare-fun b!4442596 () Bool)

(assert (=> b!4442596 (= e!2766137 (contains!12389 lt!1637547 (tuple2!49749 (_1!28168 (tuple2!49749 hash!366 newBucket!194)) (_2!28168 (tuple2!49749 hash!366 newBucket!194)))))))

(assert (= (and d!1348608 res!1839661) b!4442595))

(assert (= (and b!4442595 res!1839662) b!4442596))

(assert (=> d!1348608 m!5131365))

(declare-fun m!5131571 () Bool)

(assert (=> d!1348608 m!5131571))

(declare-fun m!5131573 () Bool)

(assert (=> d!1348608 m!5131573))

(declare-fun m!5131575 () Bool)

(assert (=> b!4442595 m!5131575))

(declare-fun m!5131577 () Bool)

(assert (=> b!4442596 m!5131577))

(assert (=> d!1348530 d!1348608))

(declare-fun bm!309076 () Bool)

(declare-fun call!309081 () List!49935)

(declare-fun call!309083 () List!49935)

(assert (=> bm!309076 (= call!309081 call!309083)))

(declare-fun bm!309077 () Bool)

(declare-fun call!309082 () List!49935)

(assert (=> bm!309077 (= call!309083 call!309082)))

(declare-fun e!2766152 () Bool)

(declare-fun b!4442617 () Bool)

(declare-fun lt!1637641 () List!49935)

(assert (=> b!4442617 (= e!2766152 (contains!12389 lt!1637641 (tuple2!49749 (_1!28168 (tuple2!49749 hash!366 newBucket!194)) (_2!28168 (tuple2!49749 hash!366 newBucket!194)))))))

(declare-fun b!4442618 () Bool)

(declare-fun e!2766150 () List!49935)

(declare-fun e!2766148 () List!49935)

(assert (=> b!4442618 (= e!2766150 e!2766148)))

(declare-fun c!756071 () Bool)

(assert (=> b!4442618 (= c!756071 (and (is-Cons!49811 (toList!3671 lm!1616)) (= (_1!28168 (h!55542 (toList!3671 lm!1616))) (_1!28168 (tuple2!49749 hash!366 newBucket!194)))))))

(declare-fun b!4442619 () Bool)

(declare-fun e!2766149 () List!49935)

(assert (=> b!4442619 (= e!2766149 call!309081)))

(declare-fun b!4442620 () Bool)

(declare-fun e!2766151 () List!49935)

(assert (=> b!4442620 (= e!2766151 (insertStrictlySorted!301 (t!356877 (toList!3671 lm!1616)) (_1!28168 (tuple2!49749 hash!366 newBucket!194)) (_2!28168 (tuple2!49749 hash!366 newBucket!194))))))

(declare-fun b!4442621 () Bool)

(assert (=> b!4442621 (= e!2766149 call!309081)))

(declare-fun c!756070 () Bool)

(declare-fun b!4442622 () Bool)

(assert (=> b!4442622 (= e!2766151 (ite c!756071 (t!356877 (toList!3671 lm!1616)) (ite c!756070 (Cons!49811 (h!55542 (toList!3671 lm!1616)) (t!356877 (toList!3671 lm!1616))) Nil!49811)))))

(declare-fun b!4442623 () Bool)

(assert (=> b!4442623 (= e!2766150 call!309082)))

(declare-fun b!4442624 () Bool)

(assert (=> b!4442624 (= c!756070 (and (is-Cons!49811 (toList!3671 lm!1616)) (bvsgt (_1!28168 (h!55542 (toList!3671 lm!1616))) (_1!28168 (tuple2!49749 hash!366 newBucket!194)))))))

(assert (=> b!4442624 (= e!2766148 e!2766149)))

(declare-fun d!1348610 () Bool)

(assert (=> d!1348610 e!2766152))

(declare-fun res!1839668 () Bool)

(assert (=> d!1348610 (=> (not res!1839668) (not e!2766152))))

(assert (=> d!1348610 (= res!1839668 (isStrictlySorted!273 lt!1637641))))

(assert (=> d!1348610 (= lt!1637641 e!2766150)))

(declare-fun c!756069 () Bool)

(assert (=> d!1348610 (= c!756069 (and (is-Cons!49811 (toList!3671 lm!1616)) (bvslt (_1!28168 (h!55542 (toList!3671 lm!1616))) (_1!28168 (tuple2!49749 hash!366 newBucket!194)))))))

(assert (=> d!1348610 (isStrictlySorted!273 (toList!3671 lm!1616))))

(assert (=> d!1348610 (= (insertStrictlySorted!301 (toList!3671 lm!1616) (_1!28168 (tuple2!49749 hash!366 newBucket!194)) (_2!28168 (tuple2!49749 hash!366 newBucket!194))) lt!1637641)))

(declare-fun bm!309078 () Bool)

(declare-fun $colon$colon!815 (List!49935 tuple2!49748) List!49935)

(assert (=> bm!309078 (= call!309082 ($colon$colon!815 e!2766151 (ite c!756069 (h!55542 (toList!3671 lm!1616)) (tuple2!49749 (_1!28168 (tuple2!49749 hash!366 newBucket!194)) (_2!28168 (tuple2!49749 hash!366 newBucket!194))))))))

(declare-fun c!756072 () Bool)

(assert (=> bm!309078 (= c!756072 c!756069)))

(declare-fun b!4442625 () Bool)

(declare-fun res!1839667 () Bool)

(assert (=> b!4442625 (=> (not res!1839667) (not e!2766152))))

(assert (=> b!4442625 (= res!1839667 (containsKey!1256 lt!1637641 (_1!28168 (tuple2!49749 hash!366 newBucket!194))))))

(declare-fun b!4442626 () Bool)

(assert (=> b!4442626 (= e!2766148 call!309083)))

(assert (= (and d!1348610 c!756069) b!4442623))

(assert (= (and d!1348610 (not c!756069)) b!4442618))

(assert (= (and b!4442618 c!756071) b!4442626))

(assert (= (and b!4442618 (not c!756071)) b!4442624))

(assert (= (and b!4442624 c!756070) b!4442621))

(assert (= (and b!4442624 (not c!756070)) b!4442619))

(assert (= (or b!4442621 b!4442619) bm!309076))

(assert (= (or b!4442626 bm!309076) bm!309077))

(assert (= (or b!4442623 bm!309077) bm!309078))

(assert (= (and bm!309078 c!756072) b!4442620))

(assert (= (and bm!309078 (not c!756072)) b!4442622))

(assert (= (and d!1348610 res!1839668) b!4442625))

(assert (= (and b!4442625 res!1839667) b!4442617))

(declare-fun m!5131579 () Bool)

(assert (=> b!4442625 m!5131579))

(declare-fun m!5131581 () Bool)

(assert (=> d!1348610 m!5131581))

(assert (=> d!1348610 m!5131297))

(declare-fun m!5131583 () Bool)

(assert (=> bm!309078 m!5131583))

(declare-fun m!5131585 () Bool)

(assert (=> b!4442620 m!5131585))

(declare-fun m!5131587 () Bool)

(assert (=> b!4442617 m!5131587))

(assert (=> d!1348530 d!1348610))

(declare-fun d!1348612 () Bool)

(declare-fun res!1839669 () Bool)

(declare-fun e!2766153 () Bool)

(assert (=> d!1348612 (=> res!1839669 e!2766153)))

(assert (=> d!1348612 (= res!1839669 (not (is-Cons!49810 (t!356876 newBucket!194))))))

(assert (=> d!1348612 (= (noDuplicateKeys!842 (t!356876 newBucket!194)) e!2766153)))

(declare-fun b!4442627 () Bool)

(declare-fun e!2766154 () Bool)

(assert (=> b!4442627 (= e!2766153 e!2766154)))

(declare-fun res!1839670 () Bool)

(assert (=> b!4442627 (=> (not res!1839670) (not e!2766154))))

(assert (=> b!4442627 (= res!1839670 (not (containsKey!1257 (t!356876 (t!356876 newBucket!194)) (_1!28167 (h!55541 (t!356876 newBucket!194))))))))

(declare-fun b!4442628 () Bool)

(assert (=> b!4442628 (= e!2766154 (noDuplicateKeys!842 (t!356876 (t!356876 newBucket!194))))))

(assert (= (and d!1348612 (not res!1839669)) b!4442627))

(assert (= (and b!4442627 res!1839670) b!4442628))

(declare-fun m!5131589 () Bool)

(assert (=> b!4442627 m!5131589))

(declare-fun m!5131591 () Bool)

(assert (=> b!4442628 m!5131591))

(assert (=> b!4442434 d!1348612))

(declare-fun d!1348614 () Bool)

(declare-fun res!1839671 () Bool)

(declare-fun e!2766155 () Bool)

(assert (=> d!1348614 (=> res!1839671 e!2766155)))

(assert (=> d!1348614 (= res!1839671 (is-Nil!49811 (toList!3671 lt!1637450)))))

(assert (=> d!1348614 (= (forall!9715 (toList!3671 lt!1637450) lambda!157545) e!2766155)))

(declare-fun b!4442629 () Bool)

(declare-fun e!2766156 () Bool)

(assert (=> b!4442629 (= e!2766155 e!2766156)))

(declare-fun res!1839672 () Bool)

(assert (=> b!4442629 (=> (not res!1839672) (not e!2766156))))

(assert (=> b!4442629 (= res!1839672 (dynLambda!20915 lambda!157545 (h!55542 (toList!3671 lt!1637450))))))

(declare-fun b!4442630 () Bool)

(assert (=> b!4442630 (= e!2766156 (forall!9715 (t!356877 (toList!3671 lt!1637450)) lambda!157545))))

(assert (= (and d!1348614 (not res!1839671)) b!4442629))

(assert (= (and b!4442629 res!1839672) b!4442630))

(declare-fun b_lambda!145201 () Bool)

(assert (=> (not b_lambda!145201) (not b!4442629)))

(declare-fun m!5131593 () Bool)

(assert (=> b!4442629 m!5131593))

(declare-fun m!5131595 () Bool)

(assert (=> b!4442630 m!5131595))

(assert (=> d!1348518 d!1348614))

(declare-fun d!1348616 () Bool)

(declare-fun noDuplicatedKeys!192 (List!49934) Bool)

(assert (=> d!1348616 (= (invariantList!847 (toList!3672 lt!1637552)) (noDuplicatedKeys!192 (toList!3672 lt!1637552)))))

(declare-fun bs!764506 () Bool)

(assert (= bs!764506 d!1348616))

(declare-fun m!5131597 () Bool)

(assert (=> bs!764506 m!5131597))

(assert (=> d!1348548 d!1348616))

(declare-fun d!1348618 () Bool)

(declare-fun res!1839673 () Bool)

(declare-fun e!2766157 () Bool)

(assert (=> d!1348618 (=> res!1839673 e!2766157)))

(assert (=> d!1348618 (= res!1839673 (is-Nil!49811 (tail!7385 (toList!3671 lm!1616))))))

(assert (=> d!1348618 (= (forall!9715 (tail!7385 (toList!3671 lm!1616)) lambda!157551) e!2766157)))

(declare-fun b!4442631 () Bool)

(declare-fun e!2766158 () Bool)

(assert (=> b!4442631 (= e!2766157 e!2766158)))

(declare-fun res!1839674 () Bool)

(assert (=> b!4442631 (=> (not res!1839674) (not e!2766158))))

(assert (=> b!4442631 (= res!1839674 (dynLambda!20915 lambda!157551 (h!55542 (tail!7385 (toList!3671 lm!1616)))))))

(declare-fun b!4442632 () Bool)

(assert (=> b!4442632 (= e!2766158 (forall!9715 (t!356877 (tail!7385 (toList!3671 lm!1616))) lambda!157551))))

(assert (= (and d!1348618 (not res!1839673)) b!4442631))

(assert (= (and b!4442631 res!1839674) b!4442632))

(declare-fun b_lambda!145203 () Bool)

(assert (=> (not b_lambda!145203) (not b!4442631)))

(declare-fun m!5131599 () Bool)

(assert (=> b!4442631 m!5131599))

(declare-fun m!5131601 () Bool)

(assert (=> b!4442632 m!5131601))

(assert (=> d!1348548 d!1348618))

(declare-fun b!4442654 () Bool)

(assert (=> b!4442654 true))

(declare-fun bs!764507 () Bool)

(declare-fun b!4442652 () Bool)

(assert (= bs!764507 (and b!4442652 b!4442654)))

(declare-fun lambda!157572 () Int)

(declare-fun lambda!157571 () Int)

(assert (=> bs!764507 (= (= (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) (= lambda!157572 lambda!157571))))

(assert (=> b!4442652 true))

(declare-fun bs!764508 () Bool)

(declare-fun b!4442657 () Bool)

(assert (= bs!764508 (and b!4442657 b!4442654)))

(declare-fun lambda!157573 () Int)

(assert (=> bs!764508 (= (= (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) (= lambda!157573 lambda!157571))))

(declare-fun bs!764509 () Bool)

(assert (= bs!764509 (and b!4442657 b!4442652)))

(assert (=> bs!764509 (= (= (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))) (= lambda!157573 lambda!157572))))

(assert (=> b!4442657 true))

(declare-fun lambda!157574 () Int)

(declare-fun lt!1637657 () List!49938)

(declare-fun e!2766168 () Bool)

(declare-fun b!4442651 () Bool)

(declare-fun content!8012 (List!49938) (Set K!11178))

(declare-fun map!10896 (List!49934 Int) List!49938)

(assert (=> b!4442651 (= e!2766168 (= (content!8012 lt!1637657) (content!8012 (map!10896 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) lambda!157574))))))

(declare-fun e!2766169 () List!49938)

(assert (=> b!4442652 (= e!2766169 (Cons!49814 (_1!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) (getKeysList!294 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))))))

(declare-fun c!756081 () Bool)

(assert (=> b!4442652 (= c!756081 (containsKey!1255 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (_1!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))))))

(declare-fun lt!1637660 () Unit!83978)

(declare-fun e!2766167 () Unit!83978)

(assert (=> b!4442652 (= lt!1637660 e!2766167)))

(declare-fun c!756079 () Bool)

(assert (=> b!4442652 (= c!756079 (contains!12388 (getKeysList!294 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) (_1!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))))))

(declare-fun lt!1637658 () Unit!83978)

(declare-fun e!2766170 () Unit!83978)

(assert (=> b!4442652 (= lt!1637658 e!2766170)))

(declare-fun lt!1637656 () List!49938)

(assert (=> b!4442652 (= lt!1637656 (getKeysList!294 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))))))

(declare-fun lt!1637659 () Unit!83978)

(declare-fun lemmaForallContainsAddHeadPreserves!99 (List!49934 List!49938 tuple2!49746) Unit!83978)

(assert (=> b!4442652 (= lt!1637659 (lemmaForallContainsAddHeadPreserves!99 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) lt!1637656 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))))))

(declare-fun forall!9719 (List!49938 Int) Bool)

(assert (=> b!4442652 (forall!9719 lt!1637656 lambda!157572)))

(declare-fun lt!1637662 () Unit!83978)

(assert (=> b!4442652 (= lt!1637662 lt!1637659)))

(declare-fun d!1348620 () Bool)

(assert (=> d!1348620 e!2766168))

(declare-fun res!1839681 () Bool)

(assert (=> d!1348620 (=> (not res!1839681) (not e!2766168))))

(declare-fun noDuplicate!677 (List!49938) Bool)

(assert (=> d!1348620 (= res!1839681 (noDuplicate!677 lt!1637657))))

(assert (=> d!1348620 (= lt!1637657 e!2766169)))

(declare-fun c!756080 () Bool)

(assert (=> d!1348620 (= c!756080 (is-Cons!49810 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))))

(assert (=> d!1348620 (invariantList!847 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))))

(assert (=> d!1348620 (= (getKeysList!294 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) lt!1637657)))

(declare-fun b!4442653 () Bool)

(declare-fun Unit!84003 () Unit!83978)

(assert (=> b!4442653 (= e!2766167 Unit!84003)))

(assert (=> b!4442654 false))

(declare-fun lt!1637661 () Unit!83978)

(declare-fun forallContained!2144 (List!49938 Int K!11178) Unit!83978)

(assert (=> b!4442654 (= lt!1637661 (forallContained!2144 (getKeysList!294 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) lambda!157571 (_1!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))))))

(declare-fun Unit!84004 () Unit!83978)

(assert (=> b!4442654 (= e!2766170 Unit!84004)))

(declare-fun b!4442655 () Bool)

(assert (=> b!4442655 (= e!2766169 Nil!49814)))

(declare-fun b!4442656 () Bool)

(declare-fun res!1839683 () Bool)

(assert (=> b!4442656 (=> (not res!1839683) (not e!2766168))))

(declare-fun length!210 (List!49938) Int)

(declare-fun length!211 (List!49934) Int)

(assert (=> b!4442656 (= res!1839683 (= (length!210 lt!1637657) (length!211 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))))))

(declare-fun res!1839682 () Bool)

(assert (=> b!4442657 (=> (not res!1839682) (not e!2766168))))

(assert (=> b!4442657 (= res!1839682 (forall!9719 lt!1637657 lambda!157573))))

(declare-fun b!4442658 () Bool)

(assert (=> b!4442658 false))

(declare-fun Unit!84005 () Unit!83978)

(assert (=> b!4442658 (= e!2766167 Unit!84005)))

(declare-fun b!4442659 () Bool)

(declare-fun Unit!84006 () Unit!83978)

(assert (=> b!4442659 (= e!2766170 Unit!84006)))

(assert (= (and d!1348620 c!756080) b!4442652))

(assert (= (and d!1348620 (not c!756080)) b!4442655))

(assert (= (and b!4442652 c!756081) b!4442658))

(assert (= (and b!4442652 (not c!756081)) b!4442653))

(assert (= (and b!4442652 c!756079) b!4442654))

(assert (= (and b!4442652 (not c!756079)) b!4442659))

(assert (= (and d!1348620 res!1839681) b!4442656))

(assert (= (and b!4442656 res!1839683) b!4442657))

(assert (= (and b!4442657 res!1839682) b!4442651))

(declare-fun m!5131603 () Bool)

(assert (=> b!4442651 m!5131603))

(declare-fun m!5131605 () Bool)

(assert (=> b!4442651 m!5131605))

(assert (=> b!4442651 m!5131605))

(declare-fun m!5131607 () Bool)

(assert (=> b!4442651 m!5131607))

(declare-fun m!5131609 () Bool)

(assert (=> b!4442652 m!5131609))

(declare-fun m!5131611 () Bool)

(assert (=> b!4442652 m!5131611))

(assert (=> b!4442652 m!5131611))

(declare-fun m!5131613 () Bool)

(assert (=> b!4442652 m!5131613))

(declare-fun m!5131615 () Bool)

(assert (=> b!4442652 m!5131615))

(declare-fun m!5131617 () Bool)

(assert (=> b!4442652 m!5131617))

(declare-fun m!5131619 () Bool)

(assert (=> d!1348620 m!5131619))

(declare-fun m!5131621 () Bool)

(assert (=> d!1348620 m!5131621))

(assert (=> b!4442654 m!5131611))

(assert (=> b!4442654 m!5131611))

(declare-fun m!5131623 () Bool)

(assert (=> b!4442654 m!5131623))

(declare-fun m!5131625 () Bool)

(assert (=> b!4442657 m!5131625))

(declare-fun m!5131627 () Bool)

(assert (=> b!4442656 m!5131627))

(declare-fun m!5131629 () Bool)

(assert (=> b!4442656 m!5131629))

(assert (=> b!4442390 d!1348620))

(declare-fun d!1348622 () Bool)

(assert (=> d!1348622 (= (get!16246 (getValueByKey!798 (toList!3671 lt!1637450) hash!366)) (v!44043 (getValueByKey!798 (toList!3671 lt!1637450) hash!366)))))

(assert (=> d!1348556 d!1348622))

(declare-fun b!4442664 () Bool)

(declare-fun e!2766172 () Option!10812)

(assert (=> b!4442664 (= e!2766172 (getValueByKey!798 (t!356877 (toList!3671 lt!1637450)) hash!366))))

(declare-fun b!4442665 () Bool)

(assert (=> b!4442665 (= e!2766172 None!10811)))

(declare-fun b!4442662 () Bool)

(declare-fun e!2766171 () Option!10812)

(assert (=> b!4442662 (= e!2766171 (Some!10811 (_2!28168 (h!55542 (toList!3671 lt!1637450)))))))

(declare-fun d!1348624 () Bool)

(declare-fun c!756082 () Bool)

(assert (=> d!1348624 (= c!756082 (and (is-Cons!49811 (toList!3671 lt!1637450)) (= (_1!28168 (h!55542 (toList!3671 lt!1637450))) hash!366)))))

(assert (=> d!1348624 (= (getValueByKey!798 (toList!3671 lt!1637450) hash!366) e!2766171)))

(declare-fun b!4442663 () Bool)

(assert (=> b!4442663 (= e!2766171 e!2766172)))

(declare-fun c!756083 () Bool)

(assert (=> b!4442663 (= c!756083 (and (is-Cons!49811 (toList!3671 lt!1637450)) (not (= (_1!28168 (h!55542 (toList!3671 lt!1637450))) hash!366))))))

(assert (= (and d!1348624 c!756082) b!4442662))

(assert (= (and d!1348624 (not c!756082)) b!4442663))

(assert (= (and b!4442663 c!756083) b!4442664))

(assert (= (and b!4442663 (not c!756083)) b!4442665))

(declare-fun m!5131631 () Bool)

(assert (=> b!4442664 m!5131631))

(assert (=> d!1348556 d!1348624))

(declare-fun d!1348626 () Bool)

(declare-fun res!1839688 () Bool)

(declare-fun e!2766177 () Bool)

(assert (=> d!1348626 (=> res!1839688 e!2766177)))

(assert (=> d!1348626 (= res!1839688 (and (is-Cons!49810 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (= (_1!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) key!3717)))))

(assert (=> d!1348626 (= (containsKey!1255 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717) e!2766177)))

(declare-fun b!4442670 () Bool)

(declare-fun e!2766178 () Bool)

(assert (=> b!4442670 (= e!2766177 e!2766178)))

(declare-fun res!1839689 () Bool)

(assert (=> b!4442670 (=> (not res!1839689) (not e!2766178))))

(assert (=> b!4442670 (= res!1839689 (is-Cons!49810 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))))

(declare-fun b!4442671 () Bool)

(assert (=> b!4442671 (= e!2766178 (containsKey!1255 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) key!3717))))

(assert (= (and d!1348626 (not res!1839688)) b!4442670))

(assert (= (and b!4442670 res!1839689) b!4442671))

(declare-fun m!5131633 () Bool)

(assert (=> b!4442671 m!5131633))

(assert (=> b!4442406 d!1348626))

(declare-fun d!1348628 () Bool)

(assert (=> d!1348628 (containsKey!1255 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717)))

(declare-fun lt!1637665 () Unit!83978)

(declare-fun choose!28224 (List!49934 K!11178) Unit!83978)

(assert (=> d!1348628 (= lt!1637665 (choose!28224 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717))))

(assert (=> d!1348628 (invariantList!847 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))))

(assert (=> d!1348628 (= (lemmaInGetKeysListThenContainsKey!292 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717) lt!1637665)))

(declare-fun bs!764510 () Bool)

(assert (= bs!764510 d!1348628))

(assert (=> bs!764510 m!5131313))

(declare-fun m!5131635 () Bool)

(assert (=> bs!764510 m!5131635))

(declare-fun m!5131637 () Bool)

(assert (=> bs!764510 m!5131637))

(assert (=> b!4442406 d!1348628))

(declare-fun d!1348630 () Bool)

(declare-fun res!1839694 () Bool)

(declare-fun e!2766183 () Bool)

(assert (=> d!1348630 (=> res!1839694 e!2766183)))

(assert (=> d!1348630 (= res!1839694 (or (is-Nil!49811 (toList!3671 lm!1616)) (is-Nil!49811 (t!356877 (toList!3671 lm!1616)))))))

(assert (=> d!1348630 (= (isStrictlySorted!273 (toList!3671 lm!1616)) e!2766183)))

(declare-fun b!4442676 () Bool)

(declare-fun e!2766184 () Bool)

(assert (=> b!4442676 (= e!2766183 e!2766184)))

(declare-fun res!1839695 () Bool)

(assert (=> b!4442676 (=> (not res!1839695) (not e!2766184))))

(assert (=> b!4442676 (= res!1839695 (bvslt (_1!28168 (h!55542 (toList!3671 lm!1616))) (_1!28168 (h!55542 (t!356877 (toList!3671 lm!1616))))))))

(declare-fun b!4442677 () Bool)

(assert (=> b!4442677 (= e!2766184 (isStrictlySorted!273 (t!356877 (toList!3671 lm!1616))))))

(assert (= (and d!1348630 (not res!1839694)) b!4442676))

(assert (= (and b!4442676 res!1839695) b!4442677))

(declare-fun m!5131639 () Bool)

(assert (=> b!4442677 m!5131639))

(assert (=> d!1348508 d!1348630))

(declare-fun d!1348632 () Bool)

(declare-fun res!1839696 () Bool)

(declare-fun e!2766185 () Bool)

(assert (=> d!1348632 (=> res!1839696 e!2766185)))

(assert (=> d!1348632 (= res!1839696 (and (is-Cons!49810 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (= (_1!28167 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) key!3717)))))

(assert (=> d!1348632 (= (containsKey!1255 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717) e!2766185)))

(declare-fun b!4442678 () Bool)

(declare-fun e!2766186 () Bool)

(assert (=> b!4442678 (= e!2766185 e!2766186)))

(declare-fun res!1839697 () Bool)

(assert (=> b!4442678 (=> (not res!1839697) (not e!2766186))))

(assert (=> b!4442678 (= res!1839697 (is-Cons!49810 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))))))

(declare-fun b!4442679 () Bool)

(assert (=> b!4442679 (= e!2766186 (containsKey!1255 (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) key!3717))))

(assert (= (and d!1348632 (not res!1839696)) b!4442678))

(assert (= (and b!4442678 res!1839697) b!4442679))

(declare-fun m!5131641 () Bool)

(assert (=> b!4442679 m!5131641))

(assert (=> b!4442459 d!1348632))

(declare-fun d!1348634 () Bool)

(assert (=> d!1348634 (containsKey!1255 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717)))

(declare-fun lt!1637666 () Unit!83978)

(assert (=> d!1348634 (= lt!1637666 (choose!28224 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717))))

(assert (=> d!1348634 (invariantList!847 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))))

(assert (=> d!1348634 (= (lemmaInGetKeysListThenContainsKey!292 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717) lt!1637666)))

(declare-fun bs!764511 () Bool)

(assert (= bs!764511 d!1348634))

(assert (=> bs!764511 m!5131415))

(declare-fun m!5131643 () Bool)

(assert (=> bs!764511 m!5131643))

(declare-fun m!5131645 () Bool)

(assert (=> bs!764511 m!5131645))

(assert (=> b!4442459 d!1348634))

(declare-fun d!1348636 () Bool)

(declare-fun res!1839698 () Bool)

(declare-fun e!2766187 () Bool)

(assert (=> d!1348636 (=> res!1839698 e!2766187)))

(assert (=> d!1348636 (= res!1839698 (not (is-Cons!49810 (_2!28168 (h!55542 (toList!3671 lt!1637450))))))))

(assert (=> d!1348636 (= (noDuplicateKeys!842 (_2!28168 (h!55542 (toList!3671 lt!1637450)))) e!2766187)))

(declare-fun b!4442680 () Bool)

(declare-fun e!2766188 () Bool)

(assert (=> b!4442680 (= e!2766187 e!2766188)))

(declare-fun res!1839699 () Bool)

(assert (=> b!4442680 (=> (not res!1839699) (not e!2766188))))

(assert (=> b!4442680 (= res!1839699 (not (containsKey!1257 (t!356876 (_2!28168 (h!55542 (toList!3671 lt!1637450)))) (_1!28167 (h!55541 (_2!28168 (h!55542 (toList!3671 lt!1637450))))))))))

(declare-fun b!4442681 () Bool)

(assert (=> b!4442681 (= e!2766188 (noDuplicateKeys!842 (t!356876 (_2!28168 (h!55542 (toList!3671 lt!1637450))))))))

(assert (= (and d!1348636 (not res!1839698)) b!4442680))

(assert (= (and b!4442680 res!1839699) b!4442681))

(declare-fun m!5131647 () Bool)

(assert (=> b!4442680 m!5131647))

(declare-fun m!5131649 () Bool)

(assert (=> b!4442681 m!5131649))

(assert (=> bs!764477 d!1348636))

(declare-fun bs!764515 () Bool)

(declare-fun b!4442718 () Bool)

(assert (= bs!764515 (and b!4442718 d!1348490)))

(declare-fun lambda!157603 () Int)

(assert (=> bs!764515 (not (= lambda!157603 lambda!157535))))

(assert (=> b!4442718 true))

(declare-fun bs!764516 () Bool)

(declare-fun b!4442719 () Bool)

(assert (= bs!764516 (and b!4442719 d!1348490)))

(declare-fun lambda!157604 () Int)

(assert (=> bs!764516 (not (= lambda!157604 lambda!157535))))

(declare-fun bs!764517 () Bool)

(assert (= bs!764517 (and b!4442719 b!4442718)))

(assert (=> bs!764517 (= lambda!157604 lambda!157603)))

(assert (=> b!4442719 true))

(declare-fun lambda!157605 () Int)

(assert (=> bs!764516 (not (= lambda!157605 lambda!157535))))

(declare-fun lt!1637709 () ListMap!2915)

(assert (=> bs!764517 (= (= lt!1637709 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157605 lambda!157603))))

(assert (=> b!4442719 (= (= lt!1637709 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157605 lambda!157604))))

(assert (=> b!4442719 true))

(declare-fun bs!764518 () Bool)

(declare-fun d!1348638 () Bool)

(assert (= bs!764518 (and d!1348638 d!1348490)))

(declare-fun lambda!157606 () Int)

(assert (=> bs!764518 (not (= lambda!157606 lambda!157535))))

(declare-fun bs!764519 () Bool)

(assert (= bs!764519 (and d!1348638 b!4442718)))

(declare-fun lt!1637722 () ListMap!2915)

(assert (=> bs!764519 (= (= lt!1637722 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157606 lambda!157603))))

(declare-fun bs!764520 () Bool)

(assert (= bs!764520 (and d!1348638 b!4442719)))

(assert (=> bs!764520 (= (= lt!1637722 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157606 lambda!157604))))

(assert (=> bs!764520 (= (= lt!1637722 lt!1637709) (= lambda!157606 lambda!157605))))

(assert (=> d!1348638 true))

(declare-fun b!4442716 () Bool)

(declare-fun res!1839719 () Bool)

(declare-fun e!2766213 () Bool)

(assert (=> b!4442716 (=> (not res!1839719) (not e!2766213))))

(assert (=> b!4442716 (= res!1839719 (forall!9717 (toList!3672 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) lambda!157606))))

(declare-fun bm!309085 () Bool)

(declare-fun c!756092 () Bool)

(declare-fun call!309090 () Bool)

(assert (=> bm!309085 (= call!309090 (forall!9717 (ite c!756092 (toList!3672 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (_2!28168 (h!55542 (toList!3671 lt!1637450)))) (ite c!756092 lambda!157603 lambda!157605)))))

(declare-fun b!4442717 () Bool)

(declare-fun e!2766214 () Bool)

(assert (=> b!4442717 (= e!2766214 (forall!9717 (toList!3672 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) lambda!157605))))

(declare-fun e!2766215 () ListMap!2915)

(assert (=> b!4442718 (= e!2766215 (extractMap!903 (t!356877 (toList!3671 lt!1637450))))))

(declare-fun lt!1637718 () Unit!83978)

(declare-fun call!309092 () Unit!83978)

(assert (=> b!4442718 (= lt!1637718 call!309092)))

(assert (=> b!4442718 call!309090))

(declare-fun lt!1637729 () Unit!83978)

(assert (=> b!4442718 (= lt!1637729 lt!1637718)))

(declare-fun call!309091 () Bool)

(assert (=> b!4442718 call!309091))

(declare-fun lt!1637715 () Unit!83978)

(declare-fun Unit!84007 () Unit!83978)

(assert (=> b!4442718 (= lt!1637715 Unit!84007)))

(assert (=> d!1348638 e!2766213))

(declare-fun res!1839718 () Bool)

(assert (=> d!1348638 (=> (not res!1839718) (not e!2766213))))

(assert (=> d!1348638 (= res!1839718 (forall!9717 (_2!28168 (h!55542 (toList!3671 lt!1637450))) lambda!157606))))

(assert (=> d!1348638 (= lt!1637722 e!2766215)))

(assert (=> d!1348638 (= c!756092 (is-Nil!49810 (_2!28168 (h!55542 (toList!3671 lt!1637450)))))))

(assert (=> d!1348638 (noDuplicateKeys!842 (_2!28168 (h!55542 (toList!3671 lt!1637450))))))

(assert (=> d!1348638 (= (addToMapMapFromBucket!450 (_2!28168 (h!55542 (toList!3671 lt!1637450))) (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) lt!1637722)))

(declare-fun bm!309086 () Bool)

(assert (=> bm!309086 (= call!309091 (forall!9717 (toList!3672 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (ite c!756092 lambda!157603 lambda!157605)))))

(assert (=> b!4442719 (= e!2766215 lt!1637709)))

(declare-fun lt!1637726 () ListMap!2915)

(declare-fun +!1227 (ListMap!2915 tuple2!49746) ListMap!2915)

(assert (=> b!4442719 (= lt!1637726 (+!1227 (extractMap!903 (t!356877 (toList!3671 lt!1637450))) (h!55541 (_2!28168 (h!55542 (toList!3671 lt!1637450))))))))

(assert (=> b!4442719 (= lt!1637709 (addToMapMapFromBucket!450 (t!356876 (_2!28168 (h!55542 (toList!3671 lt!1637450)))) (+!1227 (extractMap!903 (t!356877 (toList!3671 lt!1637450))) (h!55541 (_2!28168 (h!55542 (toList!3671 lt!1637450)))))))))

(declare-fun lt!1637728 () Unit!83978)

(assert (=> b!4442719 (= lt!1637728 call!309092)))

(assert (=> b!4442719 (forall!9717 (toList!3672 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) lambda!157604)))

(declare-fun lt!1637725 () Unit!83978)

(assert (=> b!4442719 (= lt!1637725 lt!1637728)))

(assert (=> b!4442719 (forall!9717 (toList!3672 lt!1637726) lambda!157605)))

(declare-fun lt!1637724 () Unit!83978)

(declare-fun Unit!84008 () Unit!83978)

(assert (=> b!4442719 (= lt!1637724 Unit!84008)))

(assert (=> b!4442719 (forall!9717 (t!356876 (_2!28168 (h!55542 (toList!3671 lt!1637450)))) lambda!157605)))

(declare-fun lt!1637719 () Unit!83978)

(declare-fun Unit!84009 () Unit!83978)

(assert (=> b!4442719 (= lt!1637719 Unit!84009)))

(declare-fun lt!1637713 () Unit!83978)

(declare-fun Unit!84010 () Unit!83978)

(assert (=> b!4442719 (= lt!1637713 Unit!84010)))

(declare-fun lt!1637723 () Unit!83978)

(declare-fun forallContained!2145 (List!49934 Int tuple2!49746) Unit!83978)

(assert (=> b!4442719 (= lt!1637723 (forallContained!2145 (toList!3672 lt!1637726) lambda!157605 (h!55541 (_2!28168 (h!55542 (toList!3671 lt!1637450))))))))

(assert (=> b!4442719 (contains!12385 lt!1637726 (_1!28167 (h!55541 (_2!28168 (h!55542 (toList!3671 lt!1637450))))))))

(declare-fun lt!1637711 () Unit!83978)

(declare-fun Unit!84011 () Unit!83978)

(assert (=> b!4442719 (= lt!1637711 Unit!84011)))

(assert (=> b!4442719 (contains!12385 lt!1637709 (_1!28167 (h!55541 (_2!28168 (h!55542 (toList!3671 lt!1637450))))))))

(declare-fun lt!1637727 () Unit!83978)

(declare-fun Unit!84012 () Unit!83978)

(assert (=> b!4442719 (= lt!1637727 Unit!84012)))

(assert (=> b!4442719 (forall!9717 (_2!28168 (h!55542 (toList!3671 lt!1637450))) lambda!157605)))

(declare-fun lt!1637721 () Unit!83978)

(declare-fun Unit!84013 () Unit!83978)

(assert (=> b!4442719 (= lt!1637721 Unit!84013)))

(assert (=> b!4442719 (forall!9717 (toList!3672 lt!1637726) lambda!157605)))

(declare-fun lt!1637716 () Unit!83978)

(declare-fun Unit!84014 () Unit!83978)

(assert (=> b!4442719 (= lt!1637716 Unit!84014)))

(declare-fun lt!1637714 () Unit!83978)

(declare-fun Unit!84015 () Unit!83978)

(assert (=> b!4442719 (= lt!1637714 Unit!84015)))

(declare-fun lt!1637712 () Unit!83978)

(declare-fun addForallContainsKeyThenBeforeAdding!206 (ListMap!2915 ListMap!2915 K!11178 V!11424) Unit!83978)

(assert (=> b!4442719 (= lt!1637712 (addForallContainsKeyThenBeforeAdding!206 (extractMap!903 (t!356877 (toList!3671 lt!1637450))) lt!1637709 (_1!28167 (h!55541 (_2!28168 (h!55542 (toList!3671 lt!1637450))))) (_2!28167 (h!55541 (_2!28168 (h!55542 (toList!3671 lt!1637450)))))))))

(assert (=> b!4442719 call!309091))

(declare-fun lt!1637717 () Unit!83978)

(assert (=> b!4442719 (= lt!1637717 lt!1637712)))

(assert (=> b!4442719 (forall!9717 (toList!3672 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) lambda!157605)))

(declare-fun lt!1637710 () Unit!83978)

(declare-fun Unit!84016 () Unit!83978)

(assert (=> b!4442719 (= lt!1637710 Unit!84016)))

(declare-fun res!1839720 () Bool)

(assert (=> b!4442719 (= res!1839720 call!309090)))

(assert (=> b!4442719 (=> (not res!1839720) (not e!2766214))))

(assert (=> b!4442719 e!2766214))

(declare-fun lt!1637720 () Unit!83978)

(declare-fun Unit!84017 () Unit!83978)

(assert (=> b!4442719 (= lt!1637720 Unit!84017)))

(declare-fun bm!309087 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!206 (ListMap!2915) Unit!83978)

(assert (=> bm!309087 (= call!309092 (lemmaContainsAllItsOwnKeys!206 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))))))

(declare-fun b!4442720 () Bool)

(assert (=> b!4442720 (= e!2766213 (invariantList!847 (toList!3672 lt!1637722)))))

(assert (= (and d!1348638 c!756092) b!4442718))

(assert (= (and d!1348638 (not c!756092)) b!4442719))

(assert (= (and b!4442719 res!1839720) b!4442717))

(assert (= (or b!4442718 b!4442719) bm!309087))

(assert (= (or b!4442718 b!4442719) bm!309086))

(assert (= (or b!4442718 b!4442719) bm!309085))

(assert (= (and d!1348638 res!1839718) b!4442716))

(assert (= (and b!4442716 res!1839719) b!4442720))

(declare-fun m!5131671 () Bool)

(assert (=> b!4442716 m!5131671))

(declare-fun m!5131673 () Bool)

(assert (=> d!1348638 m!5131673))

(assert (=> d!1348638 m!5131435))

(assert (=> bm!309087 m!5131291))

(declare-fun m!5131675 () Bool)

(assert (=> bm!309087 m!5131675))

(declare-fun m!5131677 () Bool)

(assert (=> b!4442720 m!5131677))

(declare-fun m!5131679 () Bool)

(assert (=> bm!309086 m!5131679))

(declare-fun m!5131681 () Bool)

(assert (=> b!4442717 m!5131681))

(declare-fun m!5131683 () Bool)

(assert (=> bm!309085 m!5131683))

(declare-fun m!5131685 () Bool)

(assert (=> b!4442719 m!5131685))

(assert (=> b!4442719 m!5131681))

(declare-fun m!5131687 () Bool)

(assert (=> b!4442719 m!5131687))

(declare-fun m!5131689 () Bool)

(assert (=> b!4442719 m!5131689))

(declare-fun m!5131691 () Bool)

(assert (=> b!4442719 m!5131691))

(declare-fun m!5131693 () Bool)

(assert (=> b!4442719 m!5131693))

(declare-fun m!5131695 () Bool)

(assert (=> b!4442719 m!5131695))

(assert (=> b!4442719 m!5131291))

(declare-fun m!5131697 () Bool)

(assert (=> b!4442719 m!5131697))

(declare-fun m!5131699 () Bool)

(assert (=> b!4442719 m!5131699))

(declare-fun m!5131701 () Bool)

(assert (=> b!4442719 m!5131701))

(declare-fun m!5131703 () Bool)

(assert (=> b!4442719 m!5131703))

(assert (=> b!4442719 m!5131703))

(assert (=> b!4442719 m!5131291))

(assert (=> b!4442719 m!5131689))

(assert (=> b!4442401 d!1348638))

(declare-fun bs!764521 () Bool)

(declare-fun d!1348658 () Bool)

(assert (= bs!764521 (and d!1348658 d!1348554)))

(declare-fun lambda!157607 () Int)

(assert (=> bs!764521 (= lambda!157607 lambda!157554)))

(declare-fun bs!764522 () Bool)

(assert (= bs!764522 (and d!1348658 d!1348512)))

(assert (=> bs!764522 (= lambda!157607 lambda!157542)))

(declare-fun bs!764523 () Bool)

(assert (= bs!764523 (and d!1348658 d!1348502)))

(assert (=> bs!764523 (= lambda!157607 lambda!157541)))

(declare-fun bs!764524 () Bool)

(assert (= bs!764524 (and d!1348658 d!1348518)))

(assert (=> bs!764524 (not (= lambda!157607 lambda!157545))))

(declare-fun bs!764525 () Bool)

(assert (= bs!764525 (and d!1348658 start!434766)))

(assert (=> bs!764525 (= lambda!157607 lambda!157521)))

(declare-fun bs!764526 () Bool)

(assert (= bs!764526 (and d!1348658 d!1348496)))

(assert (=> bs!764526 (not (= lambda!157607 lambda!157538))))

(declare-fun bs!764527 () Bool)

(assert (= bs!764527 (and d!1348658 d!1348548)))

(assert (=> bs!764527 (= lambda!157607 lambda!157551)))

(declare-fun lt!1637730 () ListMap!2915)

(assert (=> d!1348658 (invariantList!847 (toList!3672 lt!1637730))))

(declare-fun e!2766216 () ListMap!2915)

(assert (=> d!1348658 (= lt!1637730 e!2766216)))

(declare-fun c!756093 () Bool)

(assert (=> d!1348658 (= c!756093 (is-Cons!49811 (t!356877 (toList!3671 lt!1637450))))))

(assert (=> d!1348658 (forall!9715 (t!356877 (toList!3671 lt!1637450)) lambda!157607)))

(assert (=> d!1348658 (= (extractMap!903 (t!356877 (toList!3671 lt!1637450))) lt!1637730)))

(declare-fun b!4442723 () Bool)

(assert (=> b!4442723 (= e!2766216 (addToMapMapFromBucket!450 (_2!28168 (h!55542 (t!356877 (toList!3671 lt!1637450)))) (extractMap!903 (t!356877 (t!356877 (toList!3671 lt!1637450))))))))

(declare-fun b!4442724 () Bool)

(assert (=> b!4442724 (= e!2766216 (ListMap!2916 Nil!49810))))

(assert (= (and d!1348658 c!756093) b!4442723))

(assert (= (and d!1348658 (not c!756093)) b!4442724))

(declare-fun m!5131705 () Bool)

(assert (=> d!1348658 m!5131705))

(declare-fun m!5131707 () Bool)

(assert (=> d!1348658 m!5131707))

(declare-fun m!5131709 () Bool)

(assert (=> b!4442723 m!5131709))

(assert (=> b!4442723 m!5131709))

(declare-fun m!5131711 () Bool)

(assert (=> b!4442723 m!5131711))

(assert (=> b!4442401 d!1348658))

(declare-fun bs!764528 () Bool)

(declare-fun b!4442727 () Bool)

(assert (= bs!764528 (and b!4442727 b!4442719)))

(declare-fun lambda!157608 () Int)

(assert (=> bs!764528 (= (= (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616)))) (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157608 lambda!157604))))

(declare-fun bs!764529 () Bool)

(assert (= bs!764529 (and b!4442727 d!1348490)))

(assert (=> bs!764529 (not (= lambda!157608 lambda!157535))))

(declare-fun bs!764530 () Bool)

(assert (= bs!764530 (and b!4442727 b!4442718)))

(assert (=> bs!764530 (= (= (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616)))) (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157608 lambda!157603))))

(declare-fun bs!764531 () Bool)

(assert (= bs!764531 (and b!4442727 d!1348638)))

(assert (=> bs!764531 (= (= (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616)))) lt!1637722) (= lambda!157608 lambda!157606))))

(assert (=> bs!764528 (= (= (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616)))) lt!1637709) (= lambda!157608 lambda!157605))))

(assert (=> b!4442727 true))

(declare-fun bs!764532 () Bool)

(declare-fun b!4442728 () Bool)

(assert (= bs!764532 (and b!4442728 b!4442719)))

(declare-fun lambda!157609 () Int)

(assert (=> bs!764532 (= (= (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616)))) (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157609 lambda!157604))))

(declare-fun bs!764533 () Bool)

(assert (= bs!764533 (and b!4442728 d!1348490)))

(assert (=> bs!764533 (not (= lambda!157609 lambda!157535))))

(declare-fun bs!764534 () Bool)

(assert (= bs!764534 (and b!4442728 b!4442718)))

(assert (=> bs!764534 (= (= (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616)))) (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157609 lambda!157603))))

(declare-fun bs!764535 () Bool)

(assert (= bs!764535 (and b!4442728 b!4442727)))

(assert (=> bs!764535 (= lambda!157609 lambda!157608)))

(declare-fun bs!764536 () Bool)

(assert (= bs!764536 (and b!4442728 d!1348638)))

(assert (=> bs!764536 (= (= (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616)))) lt!1637722) (= lambda!157609 lambda!157606))))

(assert (=> bs!764532 (= (= (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616)))) lt!1637709) (= lambda!157609 lambda!157605))))

(assert (=> b!4442728 true))

(declare-fun lambda!157610 () Int)

(declare-fun lt!1637731 () ListMap!2915)

(assert (=> b!4442728 (= (= lt!1637731 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) (= lambda!157610 lambda!157609))))

(assert (=> bs!764532 (= (= lt!1637731 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157610 lambda!157604))))

(assert (=> bs!764533 (not (= lambda!157610 lambda!157535))))

(assert (=> bs!764534 (= (= lt!1637731 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157610 lambda!157603))))

(assert (=> bs!764535 (= (= lt!1637731 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) (= lambda!157610 lambda!157608))))

(assert (=> bs!764536 (= (= lt!1637731 lt!1637722) (= lambda!157610 lambda!157606))))

(assert (=> bs!764532 (= (= lt!1637731 lt!1637709) (= lambda!157610 lambda!157605))))

(assert (=> b!4442728 true))

(declare-fun bs!764537 () Bool)

(declare-fun d!1348660 () Bool)

(assert (= bs!764537 (and d!1348660 b!4442728)))

(declare-fun lt!1637744 () ListMap!2915)

(declare-fun lambda!157611 () Int)

(assert (=> bs!764537 (= (= lt!1637744 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) (= lambda!157611 lambda!157609))))

(declare-fun bs!764538 () Bool)

(assert (= bs!764538 (and d!1348660 b!4442719)))

(assert (=> bs!764538 (= (= lt!1637744 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157611 lambda!157604))))

(declare-fun bs!764539 () Bool)

(assert (= bs!764539 (and d!1348660 d!1348490)))

(assert (=> bs!764539 (not (= lambda!157611 lambda!157535))))

(declare-fun bs!764540 () Bool)

(assert (= bs!764540 (and d!1348660 b!4442718)))

(assert (=> bs!764540 (= (= lt!1637744 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157611 lambda!157603))))

(declare-fun bs!764541 () Bool)

(assert (= bs!764541 (and d!1348660 b!4442727)))

(assert (=> bs!764541 (= (= lt!1637744 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) (= lambda!157611 lambda!157608))))

(assert (=> bs!764537 (= (= lt!1637744 lt!1637731) (= lambda!157611 lambda!157610))))

(declare-fun bs!764542 () Bool)

(assert (= bs!764542 (and d!1348660 d!1348638)))

(assert (=> bs!764542 (= (= lt!1637744 lt!1637722) (= lambda!157611 lambda!157606))))

(assert (=> bs!764538 (= (= lt!1637744 lt!1637709) (= lambda!157611 lambda!157605))))

(assert (=> d!1348660 true))

(declare-fun b!4442725 () Bool)

(declare-fun res!1839722 () Bool)

(declare-fun e!2766217 () Bool)

(assert (=> b!4442725 (=> (not res!1839722) (not e!2766217))))

(assert (=> b!4442725 (= res!1839722 (forall!9717 (toList!3672 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) lambda!157611))))

(declare-fun bm!309088 () Bool)

(declare-fun call!309093 () Bool)

(declare-fun c!756094 () Bool)

(assert (=> bm!309088 (= call!309093 (forall!9717 (ite c!756094 (toList!3672 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616))))) (ite c!756094 lambda!157608 lambda!157610)))))

(declare-fun b!4442726 () Bool)

(declare-fun e!2766218 () Bool)

(assert (=> b!4442726 (= e!2766218 (forall!9717 (toList!3672 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) lambda!157610))))

(declare-fun e!2766219 () ListMap!2915)

(assert (=> b!4442727 (= e!2766219 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616)))))))

(declare-fun lt!1637740 () Unit!83978)

(declare-fun call!309095 () Unit!83978)

(assert (=> b!4442727 (= lt!1637740 call!309095)))

(assert (=> b!4442727 call!309093))

(declare-fun lt!1637751 () Unit!83978)

(assert (=> b!4442727 (= lt!1637751 lt!1637740)))

(declare-fun call!309094 () Bool)

(assert (=> b!4442727 call!309094))

(declare-fun lt!1637737 () Unit!83978)

(declare-fun Unit!84018 () Unit!83978)

(assert (=> b!4442727 (= lt!1637737 Unit!84018)))

(assert (=> d!1348660 e!2766217))

(declare-fun res!1839721 () Bool)

(assert (=> d!1348660 (=> (not res!1839721) (not e!2766217))))

(assert (=> d!1348660 (= res!1839721 (forall!9717 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616)))) lambda!157611))))

(assert (=> d!1348660 (= lt!1637744 e!2766219)))

(assert (=> d!1348660 (= c!756094 (is-Nil!49810 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616))))))))

(assert (=> d!1348660 (noDuplicateKeys!842 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616)))))))

(assert (=> d!1348660 (= (addToMapMapFromBucket!450 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616)))) (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) lt!1637744)))

(declare-fun bm!309089 () Bool)

(assert (=> bm!309089 (= call!309094 (forall!9717 (toList!3672 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) (ite c!756094 lambda!157608 lambda!157610)))))

(assert (=> b!4442728 (= e!2766219 lt!1637731)))

(declare-fun lt!1637748 () ListMap!2915)

(assert (=> b!4442728 (= lt!1637748 (+!1227 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616)))) (h!55541 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616)))))))))

(assert (=> b!4442728 (= lt!1637731 (addToMapMapFromBucket!450 (t!356876 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616))))) (+!1227 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616)))) (h!55541 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616))))))))))

(declare-fun lt!1637750 () Unit!83978)

(assert (=> b!4442728 (= lt!1637750 call!309095)))

(assert (=> b!4442728 (forall!9717 (toList!3672 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) lambda!157609)))

(declare-fun lt!1637747 () Unit!83978)

(assert (=> b!4442728 (= lt!1637747 lt!1637750)))

(assert (=> b!4442728 (forall!9717 (toList!3672 lt!1637748) lambda!157610)))

(declare-fun lt!1637746 () Unit!83978)

(declare-fun Unit!84019 () Unit!83978)

(assert (=> b!4442728 (= lt!1637746 Unit!84019)))

(assert (=> b!4442728 (forall!9717 (t!356876 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616))))) lambda!157610)))

(declare-fun lt!1637741 () Unit!83978)

(declare-fun Unit!84020 () Unit!83978)

(assert (=> b!4442728 (= lt!1637741 Unit!84020)))

(declare-fun lt!1637735 () Unit!83978)

(declare-fun Unit!84021 () Unit!83978)

(assert (=> b!4442728 (= lt!1637735 Unit!84021)))

(declare-fun lt!1637745 () Unit!83978)

(assert (=> b!4442728 (= lt!1637745 (forallContained!2145 (toList!3672 lt!1637748) lambda!157610 (h!55541 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616)))))))))

(assert (=> b!4442728 (contains!12385 lt!1637748 (_1!28167 (h!55541 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616)))))))))

(declare-fun lt!1637733 () Unit!83978)

(declare-fun Unit!84022 () Unit!83978)

(assert (=> b!4442728 (= lt!1637733 Unit!84022)))

(assert (=> b!4442728 (contains!12385 lt!1637731 (_1!28167 (h!55541 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616)))))))))

(declare-fun lt!1637749 () Unit!83978)

(declare-fun Unit!84023 () Unit!83978)

(assert (=> b!4442728 (= lt!1637749 Unit!84023)))

(assert (=> b!4442728 (forall!9717 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616)))) lambda!157610)))

(declare-fun lt!1637743 () Unit!83978)

(declare-fun Unit!84024 () Unit!83978)

(assert (=> b!4442728 (= lt!1637743 Unit!84024)))

(assert (=> b!4442728 (forall!9717 (toList!3672 lt!1637748) lambda!157610)))

(declare-fun lt!1637738 () Unit!83978)

(declare-fun Unit!84025 () Unit!83978)

(assert (=> b!4442728 (= lt!1637738 Unit!84025)))

(declare-fun lt!1637736 () Unit!83978)

(declare-fun Unit!84026 () Unit!83978)

(assert (=> b!4442728 (= lt!1637736 Unit!84026)))

(declare-fun lt!1637734 () Unit!83978)

(assert (=> b!4442728 (= lt!1637734 (addForallContainsKeyThenBeforeAdding!206 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616)))) lt!1637731 (_1!28167 (h!55541 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616)))))) (_2!28167 (h!55541 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616))))))))))

(assert (=> b!4442728 call!309094))

(declare-fun lt!1637739 () Unit!83978)

(assert (=> b!4442728 (= lt!1637739 lt!1637734)))

(assert (=> b!4442728 (forall!9717 (toList!3672 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) lambda!157610)))

(declare-fun lt!1637732 () Unit!83978)

(declare-fun Unit!84027 () Unit!83978)

(assert (=> b!4442728 (= lt!1637732 Unit!84027)))

(declare-fun res!1839723 () Bool)

(assert (=> b!4442728 (= res!1839723 call!309093)))

(assert (=> b!4442728 (=> (not res!1839723) (not e!2766218))))

(assert (=> b!4442728 e!2766218))

(declare-fun lt!1637742 () Unit!83978)

(declare-fun Unit!84028 () Unit!83978)

(assert (=> b!4442728 (= lt!1637742 Unit!84028)))

(declare-fun bm!309090 () Bool)

(assert (=> bm!309090 (= call!309095 (lemmaContainsAllItsOwnKeys!206 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))))))

(declare-fun b!4442729 () Bool)

(assert (=> b!4442729 (= e!2766217 (invariantList!847 (toList!3672 lt!1637744)))))

(assert (= (and d!1348660 c!756094) b!4442727))

(assert (= (and d!1348660 (not c!756094)) b!4442728))

(assert (= (and b!4442728 res!1839723) b!4442726))

(assert (= (or b!4442727 b!4442728) bm!309090))

(assert (= (or b!4442727 b!4442728) bm!309089))

(assert (= (or b!4442727 b!4442728) bm!309088))

(assert (= (and d!1348660 res!1839721) b!4442725))

(assert (= (and b!4442725 res!1839722) b!4442729))

(declare-fun m!5131713 () Bool)

(assert (=> b!4442725 m!5131713))

(declare-fun m!5131715 () Bool)

(assert (=> d!1348660 m!5131715))

(declare-fun m!5131717 () Bool)

(assert (=> d!1348660 m!5131717))

(assert (=> bm!309090 m!5131397))

(declare-fun m!5131719 () Bool)

(assert (=> bm!309090 m!5131719))

(declare-fun m!5131721 () Bool)

(assert (=> b!4442729 m!5131721))

(declare-fun m!5131723 () Bool)

(assert (=> bm!309089 m!5131723))

(declare-fun m!5131725 () Bool)

(assert (=> b!4442726 m!5131725))

(declare-fun m!5131727 () Bool)

(assert (=> bm!309088 m!5131727))

(declare-fun m!5131729 () Bool)

(assert (=> b!4442728 m!5131729))

(assert (=> b!4442728 m!5131725))

(declare-fun m!5131731 () Bool)

(assert (=> b!4442728 m!5131731))

(declare-fun m!5131733 () Bool)

(assert (=> b!4442728 m!5131733))

(declare-fun m!5131735 () Bool)

(assert (=> b!4442728 m!5131735))

(declare-fun m!5131737 () Bool)

(assert (=> b!4442728 m!5131737))

(declare-fun m!5131739 () Bool)

(assert (=> b!4442728 m!5131739))

(assert (=> b!4442728 m!5131397))

(declare-fun m!5131741 () Bool)

(assert (=> b!4442728 m!5131741))

(declare-fun m!5131743 () Bool)

(assert (=> b!4442728 m!5131743))

(declare-fun m!5131745 () Bool)

(assert (=> b!4442728 m!5131745))

(declare-fun m!5131747 () Bool)

(assert (=> b!4442728 m!5131747))

(assert (=> b!4442728 m!5131747))

(assert (=> b!4442728 m!5131397))

(assert (=> b!4442728 m!5131733))

(assert (=> b!4442457 d!1348660))

(declare-fun bs!764543 () Bool)

(declare-fun d!1348662 () Bool)

(assert (= bs!764543 (and d!1348662 d!1348658)))

(declare-fun lambda!157612 () Int)

(assert (=> bs!764543 (= lambda!157612 lambda!157607)))

(declare-fun bs!764544 () Bool)

(assert (= bs!764544 (and d!1348662 d!1348554)))

(assert (=> bs!764544 (= lambda!157612 lambda!157554)))

(declare-fun bs!764545 () Bool)

(assert (= bs!764545 (and d!1348662 d!1348512)))

(assert (=> bs!764545 (= lambda!157612 lambda!157542)))

(declare-fun bs!764546 () Bool)

(assert (= bs!764546 (and d!1348662 d!1348502)))

(assert (=> bs!764546 (= lambda!157612 lambda!157541)))

(declare-fun bs!764547 () Bool)

(assert (= bs!764547 (and d!1348662 d!1348518)))

(assert (=> bs!764547 (not (= lambda!157612 lambda!157545))))

(declare-fun bs!764548 () Bool)

(assert (= bs!764548 (and d!1348662 start!434766)))

(assert (=> bs!764548 (= lambda!157612 lambda!157521)))

(declare-fun bs!764549 () Bool)

(assert (= bs!764549 (and d!1348662 d!1348496)))

(assert (=> bs!764549 (not (= lambda!157612 lambda!157538))))

(declare-fun bs!764550 () Bool)

(assert (= bs!764550 (and d!1348662 d!1348548)))

(assert (=> bs!764550 (= lambda!157612 lambda!157551)))

(declare-fun lt!1637752 () ListMap!2915)

(assert (=> d!1348662 (invariantList!847 (toList!3672 lt!1637752))))

(declare-fun e!2766220 () ListMap!2915)

(assert (=> d!1348662 (= lt!1637752 e!2766220)))

(declare-fun c!756095 () Bool)

(assert (=> d!1348662 (= c!756095 (is-Cons!49811 (t!356877 (tail!7385 (toList!3671 lm!1616)))))))

(assert (=> d!1348662 (forall!9715 (t!356877 (tail!7385 (toList!3671 lm!1616))) lambda!157612)))

(assert (=> d!1348662 (= (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616)))) lt!1637752)))

(declare-fun b!4442730 () Bool)

(assert (=> b!4442730 (= e!2766220 (addToMapMapFromBucket!450 (_2!28168 (h!55542 (t!356877 (tail!7385 (toList!3671 lm!1616))))) (extractMap!903 (t!356877 (t!356877 (tail!7385 (toList!3671 lm!1616)))))))))

(declare-fun b!4442731 () Bool)

(assert (=> b!4442731 (= e!2766220 (ListMap!2916 Nil!49810))))

(assert (= (and d!1348662 c!756095) b!4442730))

(assert (= (and d!1348662 (not c!756095)) b!4442731))

(declare-fun m!5131749 () Bool)

(assert (=> d!1348662 m!5131749))

(declare-fun m!5131751 () Bool)

(assert (=> d!1348662 m!5131751))

(declare-fun m!5131753 () Bool)

(assert (=> b!4442730 m!5131753))

(assert (=> b!4442730 m!5131753))

(declare-fun m!5131755 () Bool)

(assert (=> b!4442730 m!5131755))

(assert (=> b!4442457 d!1348662))

(declare-fun bs!764551 () Bool)

(declare-fun b!4442735 () Bool)

(assert (= bs!764551 (and b!4442735 b!4442654)))

(declare-fun lambda!157613 () Int)

(assert (=> bs!764551 (= (= (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) (= lambda!157613 lambda!157571))))

(declare-fun bs!764552 () Bool)

(assert (= bs!764552 (and b!4442735 b!4442652)))

(assert (=> bs!764552 (= (= (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))) (= lambda!157613 lambda!157572))))

(declare-fun bs!764553 () Bool)

(assert (= bs!764553 (and b!4442735 b!4442657)))

(assert (=> bs!764553 (= (= (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (= lambda!157613 lambda!157573))))

(assert (=> b!4442735 true))

(declare-fun bs!764554 () Bool)

(declare-fun b!4442733 () Bool)

(assert (= bs!764554 (and b!4442733 b!4442654)))

(declare-fun lambda!157614 () Int)

(assert (=> bs!764554 (= (= (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) (= lambda!157614 lambda!157571))))

(declare-fun bs!764555 () Bool)

(assert (= bs!764555 (and b!4442733 b!4442652)))

(assert (=> bs!764555 (= (= (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))) (= lambda!157614 lambda!157572))))

(declare-fun bs!764556 () Bool)

(assert (= bs!764556 (and b!4442733 b!4442657)))

(assert (=> bs!764556 (= (= (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (= lambda!157614 lambda!157573))))

(declare-fun bs!764557 () Bool)

(assert (= bs!764557 (and b!4442733 b!4442735)))

(assert (=> bs!764557 (= (= (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) (= lambda!157614 lambda!157613))))

(assert (=> b!4442733 true))

(declare-fun bs!764558 () Bool)

(declare-fun b!4442738 () Bool)

(assert (= bs!764558 (and b!4442738 b!4442733)))

(declare-fun lambda!157615 () Int)

(assert (=> bs!764558 (= (= (toList!3672 (extractMap!903 (toList!3671 lm!1616))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))) (= lambda!157615 lambda!157614))))

(declare-fun bs!764559 () Bool)

(assert (= bs!764559 (and b!4442738 b!4442735)))

(assert (=> bs!764559 (= (= (toList!3672 (extractMap!903 (toList!3671 lm!1616))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) (= lambda!157615 lambda!157613))))

(declare-fun bs!764560 () Bool)

(assert (= bs!764560 (and b!4442738 b!4442657)))

(assert (=> bs!764560 (= (= (toList!3672 (extractMap!903 (toList!3671 lm!1616))) (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (= lambda!157615 lambda!157573))))

(declare-fun bs!764561 () Bool)

(assert (= bs!764561 (and b!4442738 b!4442652)))

(assert (=> bs!764561 (= (= (toList!3672 (extractMap!903 (toList!3671 lm!1616))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))) (= lambda!157615 lambda!157572))))

(declare-fun bs!764562 () Bool)

(assert (= bs!764562 (and b!4442738 b!4442654)))

(assert (=> bs!764562 (= (= (toList!3672 (extractMap!903 (toList!3671 lm!1616))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) (= lambda!157615 lambda!157571))))

(assert (=> b!4442738 true))

(declare-fun bs!764563 () Bool)

(declare-fun b!4442732 () Bool)

(assert (= bs!764563 (and b!4442732 b!4442651)))

(declare-fun lambda!157616 () Int)

(assert (=> bs!764563 (= lambda!157616 lambda!157574)))

(declare-fun e!2766222 () Bool)

(declare-fun lt!1637754 () List!49938)

(assert (=> b!4442732 (= e!2766222 (= (content!8012 lt!1637754) (content!8012 (map!10896 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) lambda!157616))))))

(declare-fun e!2766223 () List!49938)

(assert (=> b!4442733 (= e!2766223 (Cons!49814 (_1!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) (getKeysList!294 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))))))

(declare-fun c!756098 () Bool)

(assert (=> b!4442733 (= c!756098 (containsKey!1255 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (_1!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))))))

(declare-fun lt!1637757 () Unit!83978)

(declare-fun e!2766221 () Unit!83978)

(assert (=> b!4442733 (= lt!1637757 e!2766221)))

(declare-fun c!756096 () Bool)

(assert (=> b!4442733 (= c!756096 (contains!12388 (getKeysList!294 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) (_1!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))))))

(declare-fun lt!1637755 () Unit!83978)

(declare-fun e!2766224 () Unit!83978)

(assert (=> b!4442733 (= lt!1637755 e!2766224)))

(declare-fun lt!1637753 () List!49938)

(assert (=> b!4442733 (= lt!1637753 (getKeysList!294 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))))))

(declare-fun lt!1637756 () Unit!83978)

(assert (=> b!4442733 (= lt!1637756 (lemmaForallContainsAddHeadPreserves!99 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) lt!1637753 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))))))

(assert (=> b!4442733 (forall!9719 lt!1637753 lambda!157614)))

(declare-fun lt!1637759 () Unit!83978)

(assert (=> b!4442733 (= lt!1637759 lt!1637756)))

(declare-fun d!1348664 () Bool)

(assert (=> d!1348664 e!2766222))

(declare-fun res!1839724 () Bool)

(assert (=> d!1348664 (=> (not res!1839724) (not e!2766222))))

(assert (=> d!1348664 (= res!1839724 (noDuplicate!677 lt!1637754))))

(assert (=> d!1348664 (= lt!1637754 e!2766223)))

(declare-fun c!756097 () Bool)

(assert (=> d!1348664 (= c!756097 (is-Cons!49810 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))))

(assert (=> d!1348664 (invariantList!847 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))))

(assert (=> d!1348664 (= (getKeysList!294 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) lt!1637754)))

(declare-fun b!4442734 () Bool)

(declare-fun Unit!84040 () Unit!83978)

(assert (=> b!4442734 (= e!2766221 Unit!84040)))

(assert (=> b!4442735 false))

(declare-fun lt!1637758 () Unit!83978)

(assert (=> b!4442735 (= lt!1637758 (forallContained!2144 (getKeysList!294 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) lambda!157613 (_1!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))))))

(declare-fun Unit!84041 () Unit!83978)

(assert (=> b!4442735 (= e!2766224 Unit!84041)))

(declare-fun b!4442736 () Bool)

(assert (=> b!4442736 (= e!2766223 Nil!49814)))

(declare-fun b!4442737 () Bool)

(declare-fun res!1839726 () Bool)

(assert (=> b!4442737 (=> (not res!1839726) (not e!2766222))))

(assert (=> b!4442737 (= res!1839726 (= (length!210 lt!1637754) (length!211 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))))))

(declare-fun res!1839725 () Bool)

(assert (=> b!4442738 (=> (not res!1839725) (not e!2766222))))

(assert (=> b!4442738 (= res!1839725 (forall!9719 lt!1637754 lambda!157615))))

(declare-fun b!4442739 () Bool)

(assert (=> b!4442739 false))

(declare-fun Unit!84042 () Unit!83978)

(assert (=> b!4442739 (= e!2766221 Unit!84042)))

(declare-fun b!4442740 () Bool)

(declare-fun Unit!84043 () Unit!83978)

(assert (=> b!4442740 (= e!2766224 Unit!84043)))

(assert (= (and d!1348664 c!756097) b!4442733))

(assert (= (and d!1348664 (not c!756097)) b!4442736))

(assert (= (and b!4442733 c!756098) b!4442739))

(assert (= (and b!4442733 (not c!756098)) b!4442734))

(assert (= (and b!4442733 c!756096) b!4442735))

(assert (= (and b!4442733 (not c!756096)) b!4442740))

(assert (= (and d!1348664 res!1839724) b!4442737))

(assert (= (and b!4442737 res!1839726) b!4442738))

(assert (= (and b!4442738 res!1839725) b!4442732))

(declare-fun m!5131757 () Bool)

(assert (=> b!4442732 m!5131757))

(declare-fun m!5131759 () Bool)

(assert (=> b!4442732 m!5131759))

(assert (=> b!4442732 m!5131759))

(declare-fun m!5131761 () Bool)

(assert (=> b!4442732 m!5131761))

(declare-fun m!5131763 () Bool)

(assert (=> b!4442733 m!5131763))

(declare-fun m!5131765 () Bool)

(assert (=> b!4442733 m!5131765))

(assert (=> b!4442733 m!5131765))

(declare-fun m!5131767 () Bool)

(assert (=> b!4442733 m!5131767))

(declare-fun m!5131769 () Bool)

(assert (=> b!4442733 m!5131769))

(declare-fun m!5131771 () Bool)

(assert (=> b!4442733 m!5131771))

(declare-fun m!5131773 () Bool)

(assert (=> d!1348664 m!5131773))

(assert (=> d!1348664 m!5131637))

(assert (=> b!4442735 m!5131765))

(assert (=> b!4442735 m!5131765))

(declare-fun m!5131775 () Bool)

(assert (=> b!4442735 m!5131775))

(declare-fun m!5131777 () Bool)

(assert (=> b!4442738 m!5131777))

(declare-fun m!5131779 () Bool)

(assert (=> b!4442737 m!5131779))

(declare-fun m!5131781 () Bool)

(assert (=> b!4442737 m!5131781))

(assert (=> b!4442410 d!1348664))

(declare-fun d!1348666 () Bool)

(declare-fun lt!1637762 () Bool)

(assert (=> d!1348666 (= lt!1637762 (set.member key!3717 (content!8012 (keys!17068 (extractMap!903 (toList!3671 lm!1616))))))))

(declare-fun e!2766230 () Bool)

(assert (=> d!1348666 (= lt!1637762 e!2766230)))

(declare-fun res!1839731 () Bool)

(assert (=> d!1348666 (=> (not res!1839731) (not e!2766230))))

(assert (=> d!1348666 (= res!1839731 (is-Cons!49814 (keys!17068 (extractMap!903 (toList!3671 lm!1616)))))))

(assert (=> d!1348666 (= (contains!12388 (keys!17068 (extractMap!903 (toList!3671 lm!1616))) key!3717) lt!1637762)))

(declare-fun b!4442745 () Bool)

(declare-fun e!2766229 () Bool)

(assert (=> b!4442745 (= e!2766230 e!2766229)))

(declare-fun res!1839732 () Bool)

(assert (=> b!4442745 (=> res!1839732 e!2766229)))

(assert (=> b!4442745 (= res!1839732 (= (h!55547 (keys!17068 (extractMap!903 (toList!3671 lm!1616)))) key!3717))))

(declare-fun b!4442746 () Bool)

(assert (=> b!4442746 (= e!2766229 (contains!12388 (t!356880 (keys!17068 (extractMap!903 (toList!3671 lm!1616)))) key!3717))))

(assert (= (and d!1348666 res!1839731) b!4442745))

(assert (= (and b!4442745 (not res!1839732)) b!4442746))

(assert (=> d!1348666 m!5131307))

(declare-fun m!5131783 () Bool)

(assert (=> d!1348666 m!5131783))

(declare-fun m!5131785 () Bool)

(assert (=> d!1348666 m!5131785))

(declare-fun m!5131787 () Bool)

(assert (=> b!4442746 m!5131787))

(assert (=> b!4442408 d!1348666))

(declare-fun bs!764564 () Bool)

(declare-fun b!4442754 () Bool)

(assert (= bs!764564 (and b!4442754 b!4442733)))

(declare-fun lambda!157621 () Int)

(assert (=> bs!764564 (= (= (toList!3672 (extractMap!903 (toList!3671 lm!1616))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))) (= lambda!157621 lambda!157614))))

(declare-fun bs!764565 () Bool)

(assert (= bs!764565 (and b!4442754 b!4442735)))

(assert (=> bs!764565 (= (= (toList!3672 (extractMap!903 (toList!3671 lm!1616))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) (= lambda!157621 lambda!157613))))

(declare-fun bs!764566 () Bool)

(assert (= bs!764566 (and b!4442754 b!4442657)))

(assert (=> bs!764566 (= (= (toList!3672 (extractMap!903 (toList!3671 lm!1616))) (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (= lambda!157621 lambda!157573))))

(declare-fun bs!764567 () Bool)

(assert (= bs!764567 (and b!4442754 b!4442738)))

(assert (=> bs!764567 (= lambda!157621 lambda!157615)))

(declare-fun bs!764568 () Bool)

(assert (= bs!764568 (and b!4442754 b!4442652)))

(assert (=> bs!764568 (= (= (toList!3672 (extractMap!903 (toList!3671 lm!1616))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))) (= lambda!157621 lambda!157572))))

(declare-fun bs!764569 () Bool)

(assert (= bs!764569 (and b!4442754 b!4442654)))

(assert (=> bs!764569 (= (= (toList!3672 (extractMap!903 (toList!3671 lm!1616))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) (= lambda!157621 lambda!157571))))

(assert (=> b!4442754 true))

(declare-fun bs!764570 () Bool)

(declare-fun b!4442755 () Bool)

(assert (= bs!764570 (and b!4442755 b!4442651)))

(declare-fun lambda!157622 () Int)

(assert (=> bs!764570 (= lambda!157622 lambda!157574)))

(declare-fun bs!764571 () Bool)

(assert (= bs!764571 (and b!4442755 b!4442732)))

(assert (=> bs!764571 (= lambda!157622 lambda!157616)))

(declare-fun d!1348668 () Bool)

(declare-fun e!2766233 () Bool)

(assert (=> d!1348668 e!2766233))

(declare-fun res!1839739 () Bool)

(assert (=> d!1348668 (=> (not res!1839739) (not e!2766233))))

(declare-fun lt!1637765 () List!49938)

(assert (=> d!1348668 (= res!1839739 (noDuplicate!677 lt!1637765))))

(assert (=> d!1348668 (= lt!1637765 (getKeysList!294 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))))

(assert (=> d!1348668 (= (keys!17068 (extractMap!903 (toList!3671 lm!1616))) lt!1637765)))

(declare-fun b!4442753 () Bool)

(declare-fun res!1839741 () Bool)

(assert (=> b!4442753 (=> (not res!1839741) (not e!2766233))))

(assert (=> b!4442753 (= res!1839741 (= (length!210 lt!1637765) (length!211 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))))))

(declare-fun res!1839740 () Bool)

(assert (=> b!4442754 (=> (not res!1839740) (not e!2766233))))

(assert (=> b!4442754 (= res!1839740 (forall!9719 lt!1637765 lambda!157621))))

(assert (=> b!4442755 (= e!2766233 (= (content!8012 lt!1637765) (content!8012 (map!10896 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) lambda!157622))))))

(assert (= (and d!1348668 res!1839739) b!4442753))

(assert (= (and b!4442753 res!1839741) b!4442754))

(assert (= (and b!4442754 res!1839740) b!4442755))

(declare-fun m!5131789 () Bool)

(assert (=> d!1348668 m!5131789))

(assert (=> d!1348668 m!5131311))

(declare-fun m!5131791 () Bool)

(assert (=> b!4442753 m!5131791))

(assert (=> b!4442753 m!5131781))

(declare-fun m!5131793 () Bool)

(assert (=> b!4442754 m!5131793))

(declare-fun m!5131795 () Bool)

(assert (=> b!4442755 m!5131795))

(declare-fun m!5131797 () Bool)

(assert (=> b!4442755 m!5131797))

(assert (=> b!4442755 m!5131797))

(declare-fun m!5131799 () Bool)

(assert (=> b!4442755 m!5131799))

(assert (=> b!4442408 d!1348668))

(declare-fun bs!764572 () Bool)

(declare-fun b!4442761 () Bool)

(assert (= bs!764572 (and b!4442761 b!4442733)))

(declare-fun lambda!157623 () Int)

(assert (=> bs!764572 (= (= (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))) (= lambda!157623 lambda!157614))))

(declare-fun bs!764573 () Bool)

(assert (= bs!764573 (and b!4442761 b!4442754)))

(assert (=> bs!764573 (= (= (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (= lambda!157623 lambda!157621))))

(declare-fun bs!764574 () Bool)

(assert (= bs!764574 (and b!4442761 b!4442735)))

(assert (=> bs!764574 (= (= (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) (= lambda!157623 lambda!157613))))

(declare-fun bs!764575 () Bool)

(assert (= bs!764575 (and b!4442761 b!4442657)))

(assert (=> bs!764575 (= (= (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (= lambda!157623 lambda!157573))))

(declare-fun bs!764576 () Bool)

(assert (= bs!764576 (and b!4442761 b!4442738)))

(assert (=> bs!764576 (= (= (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (= lambda!157623 lambda!157615))))

(declare-fun bs!764577 () Bool)

(assert (= bs!764577 (and b!4442761 b!4442652)))

(assert (=> bs!764577 (= (= (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))) (= lambda!157623 lambda!157572))))

(declare-fun bs!764578 () Bool)

(assert (= bs!764578 (and b!4442761 b!4442654)))

(assert (=> bs!764578 (= (= (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) (= lambda!157623 lambda!157571))))

(assert (=> b!4442761 true))

(declare-fun bs!764579 () Bool)

(declare-fun b!4442759 () Bool)

(assert (= bs!764579 (and b!4442759 b!4442733)))

(declare-fun lambda!157624 () Int)

(assert (=> bs!764579 (= (= (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))) (= lambda!157624 lambda!157614))))

(declare-fun bs!764580 () Bool)

(assert (= bs!764580 (and b!4442759 b!4442754)))

(assert (=> bs!764580 (= (= (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (= lambda!157624 lambda!157621))))

(declare-fun bs!764581 () Bool)

(assert (= bs!764581 (and b!4442759 b!4442735)))

(assert (=> bs!764581 (= (= (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) (= lambda!157624 lambda!157613))))

(declare-fun bs!764582 () Bool)

(assert (= bs!764582 (and b!4442759 b!4442657)))

(assert (=> bs!764582 (= (= (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (= lambda!157624 lambda!157573))))

(declare-fun bs!764583 () Bool)

(assert (= bs!764583 (and b!4442759 b!4442761)))

(assert (=> bs!764583 (= (= (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) (= lambda!157624 lambda!157623))))

(declare-fun bs!764584 () Bool)

(assert (= bs!764584 (and b!4442759 b!4442738)))

(assert (=> bs!764584 (= (= (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (= lambda!157624 lambda!157615))))

(declare-fun bs!764585 () Bool)

(assert (= bs!764585 (and b!4442759 b!4442652)))

(assert (=> bs!764585 (= (= (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))) (= lambda!157624 lambda!157572))))

(declare-fun bs!764586 () Bool)

(assert (= bs!764586 (and b!4442759 b!4442654)))

(assert (=> bs!764586 (= (= (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) (= lambda!157624 lambda!157571))))

(assert (=> b!4442759 true))

(declare-fun bs!764587 () Bool)

(declare-fun b!4442764 () Bool)

(assert (= bs!764587 (and b!4442764 b!4442733)))

(declare-fun lambda!157625 () Int)

(assert (=> bs!764587 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))) (= lambda!157625 lambda!157614))))

(declare-fun bs!764588 () Bool)

(assert (= bs!764588 (and b!4442764 b!4442759)))

(assert (=> bs!764588 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))))) (= lambda!157625 lambda!157624))))

(declare-fun bs!764589 () Bool)

(assert (= bs!764589 (and b!4442764 b!4442754)))

(assert (=> bs!764589 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (= lambda!157625 lambda!157621))))

(declare-fun bs!764590 () Bool)

(assert (= bs!764590 (and b!4442764 b!4442735)))

(assert (=> bs!764590 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) (= lambda!157625 lambda!157613))))

(declare-fun bs!764591 () Bool)

(assert (= bs!764591 (and b!4442764 b!4442657)))

(assert (=> bs!764591 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (= lambda!157625 lambda!157573))))

(declare-fun bs!764592 () Bool)

(assert (= bs!764592 (and b!4442764 b!4442761)))

(assert (=> bs!764592 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) (= lambda!157625 lambda!157623))))

(declare-fun bs!764593 () Bool)

(assert (= bs!764593 (and b!4442764 b!4442738)))

(assert (=> bs!764593 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (= lambda!157625 lambda!157615))))

(declare-fun bs!764594 () Bool)

(assert (= bs!764594 (and b!4442764 b!4442652)))

(assert (=> bs!764594 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))) (= lambda!157625 lambda!157572))))

(declare-fun bs!764595 () Bool)

(assert (= bs!764595 (and b!4442764 b!4442654)))

(assert (=> bs!764595 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) (= lambda!157625 lambda!157571))))

(assert (=> b!4442764 true))

(declare-fun bs!764596 () Bool)

(declare-fun b!4442758 () Bool)

(assert (= bs!764596 (and b!4442758 b!4442651)))

(declare-fun lambda!157626 () Int)

(assert (=> bs!764596 (= lambda!157626 lambda!157574)))

(declare-fun bs!764597 () Bool)

(assert (= bs!764597 (and b!4442758 b!4442732)))

(assert (=> bs!764597 (= lambda!157626 lambda!157616)))

(declare-fun bs!764598 () Bool)

(assert (= bs!764598 (and b!4442758 b!4442755)))

(assert (=> bs!764598 (= lambda!157626 lambda!157622)))

(declare-fun lt!1637767 () List!49938)

(declare-fun e!2766235 () Bool)

(assert (=> b!4442758 (= e!2766235 (= (content!8012 lt!1637767) (content!8012 (map!10896 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) lambda!157626))))))

(declare-fun e!2766236 () List!49938)

(assert (=> b!4442759 (= e!2766236 (Cons!49814 (_1!28167 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) (getKeysList!294 (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))))))))

(declare-fun c!756101 () Bool)

(assert (=> b!4442759 (= c!756101 (containsKey!1255 (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (_1!28167 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))))))))

(declare-fun lt!1637770 () Unit!83978)

(declare-fun e!2766234 () Unit!83978)

(assert (=> b!4442759 (= lt!1637770 e!2766234)))

(declare-fun c!756099 () Bool)

(assert (=> b!4442759 (= c!756099 (contains!12388 (getKeysList!294 (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) (_1!28167 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))))))))

(declare-fun lt!1637768 () Unit!83978)

(declare-fun e!2766237 () Unit!83978)

(assert (=> b!4442759 (= lt!1637768 e!2766237)))

(declare-fun lt!1637766 () List!49938)

(assert (=> b!4442759 (= lt!1637766 (getKeysList!294 (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))))))

(declare-fun lt!1637769 () Unit!83978)

(assert (=> b!4442759 (= lt!1637769 (lemmaForallContainsAddHeadPreserves!99 (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) lt!1637766 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))))))

(assert (=> b!4442759 (forall!9719 lt!1637766 lambda!157624)))

(declare-fun lt!1637772 () Unit!83978)

(assert (=> b!4442759 (= lt!1637772 lt!1637769)))

(declare-fun d!1348670 () Bool)

(assert (=> d!1348670 e!2766235))

(declare-fun res!1839742 () Bool)

(assert (=> d!1348670 (=> (not res!1839742) (not e!2766235))))

(assert (=> d!1348670 (= res!1839742 (noDuplicate!677 lt!1637767))))

(assert (=> d!1348670 (= lt!1637767 e!2766236)))

(declare-fun c!756100 () Bool)

(assert (=> d!1348670 (= c!756100 (is-Cons!49810 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))))))

(assert (=> d!1348670 (invariantList!847 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))))

(assert (=> d!1348670 (= (getKeysList!294 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) lt!1637767)))

(declare-fun b!4442760 () Bool)

(declare-fun Unit!84058 () Unit!83978)

(assert (=> b!4442760 (= e!2766234 Unit!84058)))

(assert (=> b!4442761 false))

(declare-fun lt!1637771 () Unit!83978)

(assert (=> b!4442761 (= lt!1637771 (forallContained!2144 (getKeysList!294 (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) lambda!157623 (_1!28167 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))))))))

(declare-fun Unit!84060 () Unit!83978)

(assert (=> b!4442761 (= e!2766237 Unit!84060)))

(declare-fun b!4442762 () Bool)

(assert (=> b!4442762 (= e!2766236 Nil!49814)))

(declare-fun b!4442763 () Bool)

(declare-fun res!1839744 () Bool)

(assert (=> b!4442763 (=> (not res!1839744) (not e!2766235))))

(assert (=> b!4442763 (= res!1839744 (= (length!210 lt!1637767) (length!211 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))))))

(declare-fun res!1839743 () Bool)

(assert (=> b!4442764 (=> (not res!1839743) (not e!2766235))))

(assert (=> b!4442764 (= res!1839743 (forall!9719 lt!1637767 lambda!157625))))

(declare-fun b!4442765 () Bool)

(assert (=> b!4442765 false))

(declare-fun Unit!84061 () Unit!83978)

(assert (=> b!4442765 (= e!2766234 Unit!84061)))

(declare-fun b!4442766 () Bool)

(declare-fun Unit!84062 () Unit!83978)

(assert (=> b!4442766 (= e!2766237 Unit!84062)))

(assert (= (and d!1348670 c!756100) b!4442759))

(assert (= (and d!1348670 (not c!756100)) b!4442762))

(assert (= (and b!4442759 c!756101) b!4442765))

(assert (= (and b!4442759 (not c!756101)) b!4442760))

(assert (= (and b!4442759 c!756099) b!4442761))

(assert (= (and b!4442759 (not c!756099)) b!4442766))

(assert (= (and d!1348670 res!1839742) b!4442763))

(assert (= (and b!4442763 res!1839744) b!4442764))

(assert (= (and b!4442764 res!1839743) b!4442758))

(declare-fun m!5131801 () Bool)

(assert (=> b!4442758 m!5131801))

(declare-fun m!5131803 () Bool)

(assert (=> b!4442758 m!5131803))

(assert (=> b!4442758 m!5131803))

(declare-fun m!5131805 () Bool)

(assert (=> b!4442758 m!5131805))

(declare-fun m!5131807 () Bool)

(assert (=> b!4442759 m!5131807))

(declare-fun m!5131809 () Bool)

(assert (=> b!4442759 m!5131809))

(assert (=> b!4442759 m!5131809))

(declare-fun m!5131811 () Bool)

(assert (=> b!4442759 m!5131811))

(declare-fun m!5131813 () Bool)

(assert (=> b!4442759 m!5131813))

(declare-fun m!5131815 () Bool)

(assert (=> b!4442759 m!5131815))

(declare-fun m!5131817 () Bool)

(assert (=> d!1348670 m!5131817))

(assert (=> d!1348670 m!5131645))

(assert (=> b!4442761 m!5131809))

(assert (=> b!4442761 m!5131809))

(declare-fun m!5131819 () Bool)

(assert (=> b!4442761 m!5131819))

(declare-fun m!5131821 () Bool)

(assert (=> b!4442764 m!5131821))

(declare-fun m!5131823 () Bool)

(assert (=> b!4442763 m!5131823))

(declare-fun m!5131825 () Bool)

(assert (=> b!4442763 m!5131825))

(assert (=> b!4442463 d!1348670))

(declare-fun d!1348672 () Bool)

(declare-fun res!1839745 () Bool)

(declare-fun e!2766238 () Bool)

(assert (=> d!1348672 (=> res!1839745 e!2766238)))

(assert (=> d!1348672 (= res!1839745 (not (is-Cons!49810 (_2!28168 (tuple2!49749 hash!366 newBucket!194)))))))

(assert (=> d!1348672 (= (noDuplicateKeys!842 (_2!28168 (tuple2!49749 hash!366 newBucket!194))) e!2766238)))

(declare-fun b!4442767 () Bool)

(declare-fun e!2766239 () Bool)

(assert (=> b!4442767 (= e!2766238 e!2766239)))

(declare-fun res!1839746 () Bool)

(assert (=> b!4442767 (=> (not res!1839746) (not e!2766239))))

(assert (=> b!4442767 (= res!1839746 (not (containsKey!1257 (t!356876 (_2!28168 (tuple2!49749 hash!366 newBucket!194))) (_1!28167 (h!55541 (_2!28168 (tuple2!49749 hash!366 newBucket!194)))))))))

(declare-fun b!4442768 () Bool)

(assert (=> b!4442768 (= e!2766239 (noDuplicateKeys!842 (t!356876 (_2!28168 (tuple2!49749 hash!366 newBucket!194)))))))

(assert (= (and d!1348672 (not res!1839745)) b!4442767))

(assert (= (and b!4442767 res!1839746) b!4442768))

(declare-fun m!5131827 () Bool)

(assert (=> b!4442767 m!5131827))

(declare-fun m!5131829 () Bool)

(assert (=> b!4442768 m!5131829))

(assert (=> bs!764478 d!1348672))

(declare-fun d!1348674 () Bool)

(declare-fun res!1839751 () Bool)

(declare-fun e!2766244 () Bool)

(assert (=> d!1348674 (=> res!1839751 e!2766244)))

(assert (=> d!1348674 (= res!1839751 (is-Nil!49810 newBucket!194))))

(assert (=> d!1348674 (= (forall!9717 newBucket!194 lambda!157535) e!2766244)))

(declare-fun b!4442773 () Bool)

(declare-fun e!2766245 () Bool)

(assert (=> b!4442773 (= e!2766244 e!2766245)))

(declare-fun res!1839752 () Bool)

(assert (=> b!4442773 (=> (not res!1839752) (not e!2766245))))

(declare-fun dynLambda!20917 (Int tuple2!49746) Bool)

(assert (=> b!4442773 (= res!1839752 (dynLambda!20917 lambda!157535 (h!55541 newBucket!194)))))

(declare-fun b!4442774 () Bool)

(assert (=> b!4442774 (= e!2766245 (forall!9717 (t!356876 newBucket!194) lambda!157535))))

(assert (= (and d!1348674 (not res!1839751)) b!4442773))

(assert (= (and b!4442773 res!1839752) b!4442774))

(declare-fun b_lambda!145209 () Bool)

(assert (=> (not b_lambda!145209) (not b!4442773)))

(declare-fun m!5131831 () Bool)

(assert (=> b!4442773 m!5131831))

(declare-fun m!5131833 () Bool)

(assert (=> b!4442774 m!5131833))

(assert (=> d!1348490 d!1348674))

(declare-fun d!1348676 () Bool)

(declare-fun lt!1637773 () Bool)

(assert (=> d!1348676 (= lt!1637773 (set.member key!3717 (content!8012 (keys!17068 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))))))

(declare-fun e!2766247 () Bool)

(assert (=> d!1348676 (= lt!1637773 e!2766247)))

(declare-fun res!1839753 () Bool)

(assert (=> d!1348676 (=> (not res!1839753) (not e!2766247))))

(assert (=> d!1348676 (= res!1839753 (is-Cons!49814 (keys!17068 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))))))

(assert (=> d!1348676 (= (contains!12388 (keys!17068 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717) lt!1637773)))

(declare-fun b!4442775 () Bool)

(declare-fun e!2766246 () Bool)

(assert (=> b!4442775 (= e!2766247 e!2766246)))

(declare-fun res!1839754 () Bool)

(assert (=> b!4442775 (=> res!1839754 e!2766246)))

(assert (=> b!4442775 (= res!1839754 (= (h!55547 (keys!17068 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) key!3717))))

(declare-fun b!4442776 () Bool)

(assert (=> b!4442776 (= e!2766246 (contains!12388 (t!356880 (keys!17068 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) key!3717))))

(assert (= (and d!1348676 res!1839753) b!4442775))

(assert (= (and b!4442775 (not res!1839754)) b!4442776))

(assert (=> d!1348676 m!5131409))

(declare-fun m!5131835 () Bool)

(assert (=> d!1348676 m!5131835))

(declare-fun m!5131837 () Bool)

(assert (=> d!1348676 m!5131837))

(declare-fun m!5131839 () Bool)

(assert (=> b!4442776 m!5131839))

(assert (=> b!4442461 d!1348676))

(declare-fun bs!764599 () Bool)

(declare-fun b!4442778 () Bool)

(assert (= bs!764599 (and b!4442778 b!4442733)))

(declare-fun lambda!157627 () Int)

(assert (=> bs!764599 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))) (= lambda!157627 lambda!157614))))

(declare-fun bs!764600 () Bool)

(assert (= bs!764600 (and b!4442778 b!4442759)))

(assert (=> bs!764600 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))))) (= lambda!157627 lambda!157624))))

(declare-fun bs!764601 () Bool)

(assert (= bs!764601 (and b!4442778 b!4442754)))

(assert (=> bs!764601 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (= lambda!157627 lambda!157621))))

(declare-fun bs!764602 () Bool)

(assert (= bs!764602 (and b!4442778 b!4442735)))

(assert (=> bs!764602 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) (= lambda!157627 lambda!157613))))

(declare-fun bs!764603 () Bool)

(assert (= bs!764603 (and b!4442778 b!4442657)))

(assert (=> bs!764603 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (= lambda!157627 lambda!157573))))

(declare-fun bs!764604 () Bool)

(assert (= bs!764604 (and b!4442778 b!4442764)))

(assert (=> bs!764604 (= lambda!157627 lambda!157625)))

(declare-fun bs!764605 () Bool)

(assert (= bs!764605 (and b!4442778 b!4442761)))

(assert (=> bs!764605 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) (= lambda!157627 lambda!157623))))

(declare-fun bs!764606 () Bool)

(assert (= bs!764606 (and b!4442778 b!4442738)))

(assert (=> bs!764606 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (= lambda!157627 lambda!157615))))

(declare-fun bs!764607 () Bool)

(assert (= bs!764607 (and b!4442778 b!4442652)))

(assert (=> bs!764607 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))) (= lambda!157627 lambda!157572))))

(declare-fun bs!764608 () Bool)

(assert (= bs!764608 (and b!4442778 b!4442654)))

(assert (=> bs!764608 (= (= (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) (= lambda!157627 lambda!157571))))

(assert (=> b!4442778 true))

(declare-fun bs!764609 () Bool)

(declare-fun b!4442779 () Bool)

(assert (= bs!764609 (and b!4442779 b!4442651)))

(declare-fun lambda!157628 () Int)

(assert (=> bs!764609 (= lambda!157628 lambda!157574)))

(declare-fun bs!764610 () Bool)

(assert (= bs!764610 (and b!4442779 b!4442732)))

(assert (=> bs!764610 (= lambda!157628 lambda!157616)))

(declare-fun bs!764611 () Bool)

(assert (= bs!764611 (and b!4442779 b!4442755)))

(assert (=> bs!764611 (= lambda!157628 lambda!157622)))

(declare-fun bs!764612 () Bool)

(assert (= bs!764612 (and b!4442779 b!4442758)))

(assert (=> bs!764612 (= lambda!157628 lambda!157626)))

(declare-fun d!1348678 () Bool)

(declare-fun e!2766248 () Bool)

(assert (=> d!1348678 e!2766248))

(declare-fun res!1839755 () Bool)

(assert (=> d!1348678 (=> (not res!1839755) (not e!2766248))))

(declare-fun lt!1637774 () List!49938)

(assert (=> d!1348678 (= res!1839755 (noDuplicate!677 lt!1637774))))

(assert (=> d!1348678 (= lt!1637774 (getKeysList!294 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))))))

(assert (=> d!1348678 (= (keys!17068 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) lt!1637774)))

(declare-fun b!4442777 () Bool)

(declare-fun res!1839757 () Bool)

(assert (=> b!4442777 (=> (not res!1839757) (not e!2766248))))

(assert (=> b!4442777 (= res!1839757 (= (length!210 lt!1637774) (length!211 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))))))

(declare-fun res!1839756 () Bool)

(assert (=> b!4442778 (=> (not res!1839756) (not e!2766248))))

(assert (=> b!4442778 (= res!1839756 (forall!9719 lt!1637774 lambda!157627))))

(assert (=> b!4442779 (= e!2766248 (= (content!8012 lt!1637774) (content!8012 (map!10896 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) lambda!157628))))))

(assert (= (and d!1348678 res!1839755) b!4442777))

(assert (= (and b!4442777 res!1839757) b!4442778))

(assert (= (and b!4442778 res!1839756) b!4442779))

(declare-fun m!5131841 () Bool)

(assert (=> d!1348678 m!5131841))

(assert (=> d!1348678 m!5131413))

(declare-fun m!5131843 () Bool)

(assert (=> b!4442777 m!5131843))

(assert (=> b!4442777 m!5131825))

(declare-fun m!5131845 () Bool)

(assert (=> b!4442778 m!5131845))

(declare-fun m!5131847 () Bool)

(assert (=> b!4442779 m!5131847))

(declare-fun m!5131849 () Bool)

(assert (=> b!4442779 m!5131849))

(assert (=> b!4442779 m!5131849))

(declare-fun m!5131851 () Bool)

(assert (=> b!4442779 m!5131851))

(assert (=> b!4442461 d!1348678))

(declare-fun d!1348680 () Bool)

(declare-fun lt!1637775 () Bool)

(assert (=> d!1348680 (= lt!1637775 (set.member key!3717 (content!8012 e!2766022)))))

(declare-fun e!2766250 () Bool)

(assert (=> d!1348680 (= lt!1637775 e!2766250)))

(declare-fun res!1839758 () Bool)

(assert (=> d!1348680 (=> (not res!1839758) (not e!2766250))))

(assert (=> d!1348680 (= res!1839758 (is-Cons!49814 e!2766022))))

(assert (=> d!1348680 (= (contains!12388 e!2766022 key!3717) lt!1637775)))

(declare-fun b!4442780 () Bool)

(declare-fun e!2766249 () Bool)

(assert (=> b!4442780 (= e!2766250 e!2766249)))

(declare-fun res!1839759 () Bool)

(assert (=> b!4442780 (=> res!1839759 e!2766249)))

(assert (=> b!4442780 (= res!1839759 (= (h!55547 e!2766022) key!3717))))

(declare-fun b!4442781 () Bool)

(assert (=> b!4442781 (= e!2766249 (contains!12388 (t!356880 e!2766022) key!3717))))

(assert (= (and d!1348680 res!1839758) b!4442780))

(assert (= (and b!4442780 (not res!1839759)) b!4442781))

(declare-fun m!5131853 () Bool)

(assert (=> d!1348680 m!5131853))

(declare-fun m!5131855 () Bool)

(assert (=> d!1348680 m!5131855))

(declare-fun m!5131857 () Bool)

(assert (=> b!4442781 m!5131857))

(assert (=> bm!309063 d!1348680))

(declare-fun d!1348682 () Bool)

(declare-fun lt!1637778 () Bool)

(declare-fun content!8014 (List!49935) (Set tuple2!49748))

(assert (=> d!1348682 (= lt!1637778 (set.member (tuple2!49749 hash!366 newBucket!194) (content!8014 (toList!3671 lt!1637545))))))

(declare-fun e!2766256 () Bool)

(assert (=> d!1348682 (= lt!1637778 e!2766256)))

(declare-fun res!1839764 () Bool)

(assert (=> d!1348682 (=> (not res!1839764) (not e!2766256))))

(assert (=> d!1348682 (= res!1839764 (is-Cons!49811 (toList!3671 lt!1637545)))))

(assert (=> d!1348682 (= (contains!12389 (toList!3671 lt!1637545) (tuple2!49749 hash!366 newBucket!194)) lt!1637778)))

(declare-fun b!4442786 () Bool)

(declare-fun e!2766255 () Bool)

(assert (=> b!4442786 (= e!2766256 e!2766255)))

(declare-fun res!1839765 () Bool)

(assert (=> b!4442786 (=> res!1839765 e!2766255)))

(assert (=> b!4442786 (= res!1839765 (= (h!55542 (toList!3671 lt!1637545)) (tuple2!49749 hash!366 newBucket!194)))))

(declare-fun b!4442787 () Bool)

(assert (=> b!4442787 (= e!2766255 (contains!12389 (t!356877 (toList!3671 lt!1637545)) (tuple2!49749 hash!366 newBucket!194)))))

(assert (= (and d!1348682 res!1839764) b!4442786))

(assert (= (and b!4442786 (not res!1839765)) b!4442787))

(declare-fun m!5131859 () Bool)

(assert (=> d!1348682 m!5131859))

(declare-fun m!5131861 () Bool)

(assert (=> d!1348682 m!5131861))

(declare-fun m!5131863 () Bool)

(assert (=> b!4442787 m!5131863))

(assert (=> b!4442448 d!1348682))

(declare-fun d!1348684 () Bool)

(declare-fun lt!1637779 () Bool)

(assert (=> d!1348684 (= lt!1637779 (set.member key!3717 (content!8012 (keys!17068 (extractMap!903 (toList!3671 lt!1637450))))))))

(declare-fun e!2766258 () Bool)

(assert (=> d!1348684 (= lt!1637779 e!2766258)))

(declare-fun res!1839766 () Bool)

(assert (=> d!1348684 (=> (not res!1839766) (not e!2766258))))

(assert (=> d!1348684 (= res!1839766 (is-Cons!49814 (keys!17068 (extractMap!903 (toList!3671 lt!1637450)))))))

(assert (=> d!1348684 (= (contains!12388 (keys!17068 (extractMap!903 (toList!3671 lt!1637450))) key!3717) lt!1637779)))

(declare-fun b!4442788 () Bool)

(declare-fun e!2766257 () Bool)

(assert (=> b!4442788 (= e!2766258 e!2766257)))

(declare-fun res!1839767 () Bool)

(assert (=> b!4442788 (=> res!1839767 e!2766257)))

(assert (=> b!4442788 (= res!1839767 (= (h!55547 (keys!17068 (extractMap!903 (toList!3671 lt!1637450)))) key!3717))))

(declare-fun b!4442789 () Bool)

(assert (=> b!4442789 (= e!2766257 (contains!12388 (t!356880 (keys!17068 (extractMap!903 (toList!3671 lt!1637450)))) key!3717))))

(assert (= (and d!1348684 res!1839766) b!4442788))

(assert (= (and b!4442788 (not res!1839767)) b!4442789))

(assert (=> d!1348684 m!5131263))

(declare-fun m!5131865 () Bool)

(assert (=> d!1348684 m!5131865))

(declare-fun m!5131867 () Bool)

(assert (=> d!1348684 m!5131867))

(declare-fun m!5131869 () Bool)

(assert (=> b!4442789 m!5131869))

(assert (=> b!4442388 d!1348684))

(declare-fun bs!764613 () Bool)

(declare-fun b!4442791 () Bool)

(assert (= bs!764613 (and b!4442791 b!4442778)))

(declare-fun lambda!157629 () Int)

(assert (=> bs!764613 (= (= (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (= lambda!157629 lambda!157627))))

(declare-fun bs!764614 () Bool)

(assert (= bs!764614 (and b!4442791 b!4442733)))

(assert (=> bs!764614 (= (= (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))) (= lambda!157629 lambda!157614))))

(declare-fun bs!764615 () Bool)

(assert (= bs!764615 (and b!4442791 b!4442759)))

(assert (=> bs!764615 (= (= (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))))) (= lambda!157629 lambda!157624))))

(declare-fun bs!764616 () Bool)

(assert (= bs!764616 (and b!4442791 b!4442754)))

(assert (=> bs!764616 (= (= (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (= lambda!157629 lambda!157621))))

(declare-fun bs!764617 () Bool)

(assert (= bs!764617 (and b!4442791 b!4442735)))

(assert (=> bs!764617 (= (= (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) (= lambda!157629 lambda!157613))))

(declare-fun bs!764618 () Bool)

(assert (= bs!764618 (and b!4442791 b!4442657)))

(assert (=> bs!764618 (= lambda!157629 lambda!157573)))

(declare-fun bs!764619 () Bool)

(assert (= bs!764619 (and b!4442791 b!4442764)))

(assert (=> bs!764619 (= (= (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (= lambda!157629 lambda!157625))))

(declare-fun bs!764620 () Bool)

(assert (= bs!764620 (and b!4442791 b!4442761)))

(assert (=> bs!764620 (= (= (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) (= lambda!157629 lambda!157623))))

(declare-fun bs!764621 () Bool)

(assert (= bs!764621 (and b!4442791 b!4442738)))

(assert (=> bs!764621 (= (= (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (= lambda!157629 lambda!157615))))

(declare-fun bs!764622 () Bool)

(assert (= bs!764622 (and b!4442791 b!4442652)))

(assert (=> bs!764622 (= (= (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) (Cons!49810 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))) (= lambda!157629 lambda!157572))))

(declare-fun bs!764623 () Bool)

(assert (= bs!764623 (and b!4442791 b!4442654)))

(assert (=> bs!764623 (= (= (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) (= lambda!157629 lambda!157571))))

(assert (=> b!4442791 true))

(declare-fun bs!764624 () Bool)

(declare-fun b!4442792 () Bool)

(assert (= bs!764624 (and b!4442792 b!4442755)))

(declare-fun lambda!157630 () Int)

(assert (=> bs!764624 (= lambda!157630 lambda!157622)))

(declare-fun bs!764625 () Bool)

(assert (= bs!764625 (and b!4442792 b!4442779)))

(assert (=> bs!764625 (= lambda!157630 lambda!157628)))

(declare-fun bs!764626 () Bool)

(assert (= bs!764626 (and b!4442792 b!4442758)))

(assert (=> bs!764626 (= lambda!157630 lambda!157626)))

(declare-fun bs!764627 () Bool)

(assert (= bs!764627 (and b!4442792 b!4442651)))

(assert (=> bs!764627 (= lambda!157630 lambda!157574)))

(declare-fun bs!764628 () Bool)

(assert (= bs!764628 (and b!4442792 b!4442732)))

(assert (=> bs!764628 (= lambda!157630 lambda!157616)))

(declare-fun d!1348686 () Bool)

(declare-fun e!2766259 () Bool)

(assert (=> d!1348686 e!2766259))

(declare-fun res!1839768 () Bool)

(assert (=> d!1348686 (=> (not res!1839768) (not e!2766259))))

(declare-fun lt!1637780 () List!49938)

(assert (=> d!1348686 (= res!1839768 (noDuplicate!677 lt!1637780))))

(assert (=> d!1348686 (= lt!1637780 (getKeysList!294 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))))

(assert (=> d!1348686 (= (keys!17068 (extractMap!903 (toList!3671 lt!1637450))) lt!1637780)))

(declare-fun b!4442790 () Bool)

(declare-fun res!1839770 () Bool)

(assert (=> b!4442790 (=> (not res!1839770) (not e!2766259))))

(assert (=> b!4442790 (= res!1839770 (= (length!210 lt!1637780) (length!211 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))))))

(declare-fun res!1839769 () Bool)

(assert (=> b!4442791 (=> (not res!1839769) (not e!2766259))))

(assert (=> b!4442791 (= res!1839769 (forall!9719 lt!1637780 lambda!157629))))

(assert (=> b!4442792 (= e!2766259 (= (content!8012 lt!1637780) (content!8012 (map!10896 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) lambda!157630))))))

(assert (= (and d!1348686 res!1839768) b!4442790))

(assert (= (and b!4442790 res!1839770) b!4442791))

(assert (= (and b!4442791 res!1839769) b!4442792))

(declare-fun m!5131871 () Bool)

(assert (=> d!1348686 m!5131871))

(assert (=> d!1348686 m!5131267))

(declare-fun m!5131873 () Bool)

(assert (=> b!4442790 m!5131873))

(assert (=> b!4442790 m!5131629))

(declare-fun m!5131875 () Bool)

(assert (=> b!4442791 m!5131875))

(declare-fun m!5131877 () Bool)

(assert (=> b!4442792 m!5131877))

(declare-fun m!5131879 () Bool)

(assert (=> b!4442792 m!5131879))

(assert (=> b!4442792 m!5131879))

(declare-fun m!5131881 () Bool)

(assert (=> b!4442792 m!5131881))

(assert (=> b!4442388 d!1348686))

(declare-fun d!1348688 () Bool)

(assert (=> d!1348688 (= (isDefined!8101 (getValueByKey!797 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717)) (not (isEmpty!28392 (getValueByKey!797 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717))))))

(declare-fun bs!764629 () Bool)

(assert (= bs!764629 d!1348688))

(assert (=> bs!764629 m!5131301))

(declare-fun m!5131883 () Bool)

(assert (=> bs!764629 m!5131883))

(assert (=> b!4442414 d!1348688))

(declare-fun b!4442795 () Bool)

(declare-fun e!2766261 () Option!10811)

(assert (=> b!4442795 (= e!2766261 (getValueByKey!797 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) key!3717))))

(declare-fun b!4442793 () Bool)

(declare-fun e!2766260 () Option!10811)

(assert (=> b!4442793 (= e!2766260 (Some!10810 (_2!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))))))))

(declare-fun d!1348690 () Bool)

(declare-fun c!756102 () Bool)

(assert (=> d!1348690 (= c!756102 (and (is-Cons!49810 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (= (_1!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) key!3717)))))

(assert (=> d!1348690 (= (getValueByKey!797 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717) e!2766260)))

(declare-fun b!4442796 () Bool)

(assert (=> b!4442796 (= e!2766261 None!10810)))

(declare-fun b!4442794 () Bool)

(assert (=> b!4442794 (= e!2766260 e!2766261)))

(declare-fun c!756103 () Bool)

(assert (=> b!4442794 (= c!756103 (and (is-Cons!49810 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) (not (= (_1!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))) key!3717))))))

(assert (= (and d!1348690 c!756102) b!4442793))

(assert (= (and d!1348690 (not c!756102)) b!4442794))

(assert (= (and b!4442794 c!756103) b!4442795))

(assert (= (and b!4442794 (not c!756103)) b!4442796))

(declare-fun m!5131885 () Bool)

(assert (=> b!4442795 m!5131885))

(assert (=> b!4442414 d!1348690))

(declare-fun d!1348692 () Bool)

(declare-fun lt!1637781 () Bool)

(assert (=> d!1348692 (= lt!1637781 (set.member key!3717 (content!8012 e!2766010)))))

(declare-fun e!2766263 () Bool)

(assert (=> d!1348692 (= lt!1637781 e!2766263)))

(declare-fun res!1839771 () Bool)

(assert (=> d!1348692 (=> (not res!1839771) (not e!2766263))))

(assert (=> d!1348692 (= res!1839771 (is-Cons!49814 e!2766010))))

(assert (=> d!1348692 (= (contains!12388 e!2766010 key!3717) lt!1637781)))

(declare-fun b!4442797 () Bool)

(declare-fun e!2766262 () Bool)

(assert (=> b!4442797 (= e!2766263 e!2766262)))

(declare-fun res!1839772 () Bool)

(assert (=> b!4442797 (=> res!1839772 e!2766262)))

(assert (=> b!4442797 (= res!1839772 (= (h!55547 e!2766010) key!3717))))

(declare-fun b!4442798 () Bool)

(assert (=> b!4442798 (= e!2766262 (contains!12388 (t!356880 e!2766010) key!3717))))

(assert (= (and d!1348692 res!1839771) b!4442797))

(assert (= (and b!4442797 (not res!1839772)) b!4442798))

(declare-fun m!5131887 () Bool)

(assert (=> d!1348692 m!5131887))

(declare-fun m!5131889 () Bool)

(assert (=> d!1348692 m!5131889))

(declare-fun m!5131891 () Bool)

(assert (=> b!4442798 m!5131891))

(assert (=> bm!309062 d!1348692))

(assert (=> d!1348546 d!1348550))

(declare-fun d!1348694 () Bool)

(assert (=> d!1348694 (= (isDefined!8101 (getValueByKey!797 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717)) (not (isEmpty!28392 (getValueByKey!797 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717))))))

(declare-fun bs!764630 () Bool)

(assert (= bs!764630 d!1348694))

(assert (=> bs!764630 m!5131403))

(declare-fun m!5131893 () Bool)

(assert (=> bs!764630 m!5131893))

(assert (=> b!4442467 d!1348694))

(declare-fun b!4442801 () Bool)

(declare-fun e!2766265 () Option!10811)

(assert (=> b!4442801 (= e!2766265 (getValueByKey!797 (t!356876 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) key!3717))))

(declare-fun b!4442799 () Bool)

(declare-fun e!2766264 () Option!10811)

(assert (=> b!4442799 (= e!2766264 (Some!10810 (_2!28167 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))))))))

(declare-fun d!1348696 () Bool)

(declare-fun c!756104 () Bool)

(assert (=> d!1348696 (= c!756104 (and (is-Cons!49810 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (= (_1!28167 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) key!3717)))))

(assert (=> d!1348696 (= (getValueByKey!797 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717) e!2766264)))

(declare-fun b!4442802 () Bool)

(assert (=> b!4442802 (= e!2766265 None!10810)))

(declare-fun b!4442800 () Bool)

(assert (=> b!4442800 (= e!2766264 e!2766265)))

(declare-fun c!756105 () Bool)

(assert (=> b!4442800 (= c!756105 (and (is-Cons!49810 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) (not (= (_1!28167 (h!55541 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))) key!3717))))))

(assert (= (and d!1348696 c!756104) b!4442799))

(assert (= (and d!1348696 (not c!756104)) b!4442800))

(assert (= (and b!4442800 c!756105) b!4442801))

(assert (= (and b!4442800 (not c!756105)) b!4442802))

(declare-fun m!5131895 () Bool)

(assert (=> b!4442801 m!5131895))

(assert (=> b!4442467 d!1348696))

(declare-fun d!1348698 () Bool)

(declare-fun res!1839773 () Bool)

(declare-fun e!2766266 () Bool)

(assert (=> d!1348698 (=> res!1839773 e!2766266)))

(assert (=> d!1348698 (= res!1839773 (is-Nil!49811 (toList!3671 lm!1616)))))

(assert (=> d!1348698 (= (forall!9715 (toList!3671 lm!1616) lambda!157538) e!2766266)))

(declare-fun b!4442803 () Bool)

(declare-fun e!2766267 () Bool)

(assert (=> b!4442803 (= e!2766266 e!2766267)))

(declare-fun res!1839774 () Bool)

(assert (=> b!4442803 (=> (not res!1839774) (not e!2766267))))

(assert (=> b!4442803 (= res!1839774 (dynLambda!20915 lambda!157538 (h!55542 (toList!3671 lm!1616))))))

(declare-fun b!4442804 () Bool)

(assert (=> b!4442804 (= e!2766267 (forall!9715 (t!356877 (toList!3671 lm!1616)) lambda!157538))))

(assert (= (and d!1348698 (not res!1839773)) b!4442803))

(assert (= (and b!4442803 res!1839774) b!4442804))

(declare-fun b_lambda!145211 () Bool)

(assert (=> (not b_lambda!145211) (not b!4442803)))

(declare-fun m!5131897 () Bool)

(assert (=> b!4442803 m!5131897))

(declare-fun m!5131899 () Bool)

(assert (=> b!4442804 m!5131899))

(assert (=> d!1348496 d!1348698))

(declare-fun d!1348700 () Bool)

(assert (=> d!1348700 (= (invariantList!847 (toList!3672 lt!1637512)) (noDuplicatedKeys!192 (toList!3672 lt!1637512)))))

(declare-fun bs!764631 () Bool)

(assert (= bs!764631 d!1348700))

(declare-fun m!5131901 () Bool)

(assert (=> bs!764631 m!5131901))

(assert (=> d!1348502 d!1348700))

(declare-fun d!1348702 () Bool)

(declare-fun res!1839775 () Bool)

(declare-fun e!2766268 () Bool)

(assert (=> d!1348702 (=> res!1839775 e!2766268)))

(assert (=> d!1348702 (= res!1839775 (is-Nil!49811 (toList!3671 lt!1637450)))))

(assert (=> d!1348702 (= (forall!9715 (toList!3671 lt!1637450) lambda!157541) e!2766268)))

(declare-fun b!4442805 () Bool)

(declare-fun e!2766269 () Bool)

(assert (=> b!4442805 (= e!2766268 e!2766269)))

(declare-fun res!1839776 () Bool)

(assert (=> b!4442805 (=> (not res!1839776) (not e!2766269))))

(assert (=> b!4442805 (= res!1839776 (dynLambda!20915 lambda!157541 (h!55542 (toList!3671 lt!1637450))))))

(declare-fun b!4442806 () Bool)

(assert (=> b!4442806 (= e!2766269 (forall!9715 (t!356877 (toList!3671 lt!1637450)) lambda!157541))))

(assert (= (and d!1348702 (not res!1839775)) b!4442805))

(assert (= (and b!4442805 res!1839776) b!4442806))

(declare-fun b_lambda!145213 () Bool)

(assert (=> (not b_lambda!145213) (not b!4442805)))

(declare-fun m!5131903 () Bool)

(assert (=> b!4442805 m!5131903))

(declare-fun m!5131905 () Bool)

(assert (=> b!4442806 m!5131905))

(assert (=> d!1348502 d!1348702))

(declare-fun bs!764632 () Bool)

(declare-fun b!4442809 () Bool)

(assert (= bs!764632 (and b!4442809 b!4442728)))

(declare-fun lambda!157631 () Int)

(assert (=> bs!764632 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) (= lambda!157631 lambda!157609))))

(declare-fun bs!764633 () Bool)

(assert (= bs!764633 (and b!4442809 b!4442719)))

(assert (=> bs!764633 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157631 lambda!157604))))

(declare-fun bs!764634 () Bool)

(assert (= bs!764634 (and b!4442809 d!1348490)))

(assert (=> bs!764634 (not (= lambda!157631 lambda!157535))))

(declare-fun bs!764635 () Bool)

(assert (= bs!764635 (and b!4442809 b!4442718)))

(assert (=> bs!764635 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157631 lambda!157603))))

(declare-fun bs!764636 () Bool)

(assert (= bs!764636 (and b!4442809 b!4442727)))

(assert (=> bs!764636 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) (= lambda!157631 lambda!157608))))

(declare-fun bs!764637 () Bool)

(assert (= bs!764637 (and b!4442809 d!1348660)))

(assert (=> bs!764637 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) lt!1637744) (= lambda!157631 lambda!157611))))

(assert (=> bs!764632 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) lt!1637731) (= lambda!157631 lambda!157610))))

(declare-fun bs!764638 () Bool)

(assert (= bs!764638 (and b!4442809 d!1348638)))

(assert (=> bs!764638 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) lt!1637722) (= lambda!157631 lambda!157606))))

(assert (=> bs!764633 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) lt!1637709) (= lambda!157631 lambda!157605))))

(assert (=> b!4442809 true))

(declare-fun bs!764639 () Bool)

(declare-fun b!4442810 () Bool)

(assert (= bs!764639 (and b!4442810 b!4442728)))

(declare-fun lambda!157632 () Int)

(assert (=> bs!764639 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) (= lambda!157632 lambda!157609))))

(declare-fun bs!764640 () Bool)

(assert (= bs!764640 (and b!4442810 b!4442719)))

(assert (=> bs!764640 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157632 lambda!157604))))

(declare-fun bs!764641 () Bool)

(assert (= bs!764641 (and b!4442810 d!1348490)))

(assert (=> bs!764641 (not (= lambda!157632 lambda!157535))))

(declare-fun bs!764642 () Bool)

(assert (= bs!764642 (and b!4442810 b!4442718)))

(assert (=> bs!764642 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157632 lambda!157603))))

(declare-fun bs!764643 () Bool)

(assert (= bs!764643 (and b!4442810 b!4442727)))

(assert (=> bs!764643 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) (= lambda!157632 lambda!157608))))

(declare-fun bs!764644 () Bool)

(assert (= bs!764644 (and b!4442810 b!4442809)))

(assert (=> bs!764644 (= lambda!157632 lambda!157631)))

(declare-fun bs!764645 () Bool)

(assert (= bs!764645 (and b!4442810 d!1348660)))

(assert (=> bs!764645 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) lt!1637744) (= lambda!157632 lambda!157611))))

(assert (=> bs!764639 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) lt!1637731) (= lambda!157632 lambda!157610))))

(declare-fun bs!764646 () Bool)

(assert (= bs!764646 (and b!4442810 d!1348638)))

(assert (=> bs!764646 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) lt!1637722) (= lambda!157632 lambda!157606))))

(assert (=> bs!764640 (= (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) lt!1637709) (= lambda!157632 lambda!157605))))

(assert (=> b!4442810 true))

(declare-fun lt!1637782 () ListMap!2915)

(declare-fun lambda!157633 () Int)

(assert (=> bs!764639 (= (= lt!1637782 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) (= lambda!157633 lambda!157609))))

(assert (=> bs!764640 (= (= lt!1637782 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157633 lambda!157604))))

(assert (=> bs!764641 (not (= lambda!157633 lambda!157535))))

(assert (=> b!4442810 (= (= lt!1637782 (extractMap!903 (t!356877 (toList!3671 lm!1616)))) (= lambda!157633 lambda!157632))))

(assert (=> bs!764642 (= (= lt!1637782 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157633 lambda!157603))))

(assert (=> bs!764643 (= (= lt!1637782 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) (= lambda!157633 lambda!157608))))

(assert (=> bs!764644 (= (= lt!1637782 (extractMap!903 (t!356877 (toList!3671 lm!1616)))) (= lambda!157633 lambda!157631))))

(assert (=> bs!764645 (= (= lt!1637782 lt!1637744) (= lambda!157633 lambda!157611))))

(assert (=> bs!764639 (= (= lt!1637782 lt!1637731) (= lambda!157633 lambda!157610))))

(assert (=> bs!764646 (= (= lt!1637782 lt!1637722) (= lambda!157633 lambda!157606))))

(assert (=> bs!764640 (= (= lt!1637782 lt!1637709) (= lambda!157633 lambda!157605))))

(assert (=> b!4442810 true))

(declare-fun bs!764647 () Bool)

(declare-fun d!1348704 () Bool)

(assert (= bs!764647 (and d!1348704 b!4442728)))

(declare-fun lambda!157634 () Int)

(declare-fun lt!1637795 () ListMap!2915)

(assert (=> bs!764647 (= (= lt!1637795 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) (= lambda!157634 lambda!157609))))

(declare-fun bs!764648 () Bool)

(assert (= bs!764648 (and d!1348704 b!4442810)))

(assert (=> bs!764648 (= (= lt!1637795 lt!1637782) (= lambda!157634 lambda!157633))))

(declare-fun bs!764649 () Bool)

(assert (= bs!764649 (and d!1348704 b!4442719)))

(assert (=> bs!764649 (= (= lt!1637795 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157634 lambda!157604))))

(declare-fun bs!764650 () Bool)

(assert (= bs!764650 (and d!1348704 d!1348490)))

(assert (=> bs!764650 (not (= lambda!157634 lambda!157535))))

(assert (=> bs!764648 (= (= lt!1637795 (extractMap!903 (t!356877 (toList!3671 lm!1616)))) (= lambda!157634 lambda!157632))))

(declare-fun bs!764651 () Bool)

(assert (= bs!764651 (and d!1348704 b!4442718)))

(assert (=> bs!764651 (= (= lt!1637795 (extractMap!903 (t!356877 (toList!3671 lt!1637450)))) (= lambda!157634 lambda!157603))))

(declare-fun bs!764652 () Bool)

(assert (= bs!764652 (and d!1348704 b!4442727)))

(assert (=> bs!764652 (= (= lt!1637795 (extractMap!903 (t!356877 (tail!7385 (toList!3671 lm!1616))))) (= lambda!157634 lambda!157608))))

(declare-fun bs!764653 () Bool)

(assert (= bs!764653 (and d!1348704 b!4442809)))

(assert (=> bs!764653 (= (= lt!1637795 (extractMap!903 (t!356877 (toList!3671 lm!1616)))) (= lambda!157634 lambda!157631))))

(declare-fun bs!764654 () Bool)

(assert (= bs!764654 (and d!1348704 d!1348660)))

(assert (=> bs!764654 (= (= lt!1637795 lt!1637744) (= lambda!157634 lambda!157611))))

(assert (=> bs!764647 (= (= lt!1637795 lt!1637731) (= lambda!157634 lambda!157610))))

(declare-fun bs!764655 () Bool)

(assert (= bs!764655 (and d!1348704 d!1348638)))

(assert (=> bs!764655 (= (= lt!1637795 lt!1637722) (= lambda!157634 lambda!157606))))

(assert (=> bs!764649 (= (= lt!1637795 lt!1637709) (= lambda!157634 lambda!157605))))

(assert (=> d!1348704 true))

(declare-fun b!4442807 () Bool)

(declare-fun res!1839778 () Bool)

(declare-fun e!2766270 () Bool)

(assert (=> b!4442807 (=> (not res!1839778) (not e!2766270))))

(assert (=> b!4442807 (= res!1839778 (forall!9717 (toList!3672 (extractMap!903 (t!356877 (toList!3671 lm!1616)))) lambda!157634))))

(declare-fun c!756106 () Bool)

(declare-fun bm!309091 () Bool)

(declare-fun call!309096 () Bool)

(assert (=> bm!309091 (= call!309096 (forall!9717 (ite c!756106 (toList!3672 (extractMap!903 (t!356877 (toList!3671 lm!1616)))) (_2!28168 (h!55542 (toList!3671 lm!1616)))) (ite c!756106 lambda!157631 lambda!157633)))))

(declare-fun b!4442808 () Bool)

(declare-fun e!2766271 () Bool)

(assert (=> b!4442808 (= e!2766271 (forall!9717 (toList!3672 (extractMap!903 (t!356877 (toList!3671 lm!1616)))) lambda!157633))))

(declare-fun e!2766272 () ListMap!2915)

(assert (=> b!4442809 (= e!2766272 (extractMap!903 (t!356877 (toList!3671 lm!1616))))))

(declare-fun lt!1637791 () Unit!83978)

(declare-fun call!309098 () Unit!83978)

(assert (=> b!4442809 (= lt!1637791 call!309098)))

(assert (=> b!4442809 call!309096))

(declare-fun lt!1637802 () Unit!83978)

(assert (=> b!4442809 (= lt!1637802 lt!1637791)))

(declare-fun call!309097 () Bool)

(assert (=> b!4442809 call!309097))

(declare-fun lt!1637788 () Unit!83978)

(declare-fun Unit!84079 () Unit!83978)

(assert (=> b!4442809 (= lt!1637788 Unit!84079)))

(assert (=> d!1348704 e!2766270))

(declare-fun res!1839777 () Bool)

(assert (=> d!1348704 (=> (not res!1839777) (not e!2766270))))

(assert (=> d!1348704 (= res!1839777 (forall!9717 (_2!28168 (h!55542 (toList!3671 lm!1616))) lambda!157634))))

(assert (=> d!1348704 (= lt!1637795 e!2766272)))

(assert (=> d!1348704 (= c!756106 (is-Nil!49810 (_2!28168 (h!55542 (toList!3671 lm!1616)))))))

(assert (=> d!1348704 (noDuplicateKeys!842 (_2!28168 (h!55542 (toList!3671 lm!1616))))))

(assert (=> d!1348704 (= (addToMapMapFromBucket!450 (_2!28168 (h!55542 (toList!3671 lm!1616))) (extractMap!903 (t!356877 (toList!3671 lm!1616)))) lt!1637795)))

(declare-fun bm!309092 () Bool)

(assert (=> bm!309092 (= call!309097 (forall!9717 (toList!3672 (extractMap!903 (t!356877 (toList!3671 lm!1616)))) (ite c!756106 lambda!157631 lambda!157633)))))

(assert (=> b!4442810 (= e!2766272 lt!1637782)))

(declare-fun lt!1637799 () ListMap!2915)

(assert (=> b!4442810 (= lt!1637799 (+!1227 (extractMap!903 (t!356877 (toList!3671 lm!1616))) (h!55541 (_2!28168 (h!55542 (toList!3671 lm!1616))))))))

(assert (=> b!4442810 (= lt!1637782 (addToMapMapFromBucket!450 (t!356876 (_2!28168 (h!55542 (toList!3671 lm!1616)))) (+!1227 (extractMap!903 (t!356877 (toList!3671 lm!1616))) (h!55541 (_2!28168 (h!55542 (toList!3671 lm!1616)))))))))

(declare-fun lt!1637801 () Unit!83978)

(assert (=> b!4442810 (= lt!1637801 call!309098)))

(assert (=> b!4442810 (forall!9717 (toList!3672 (extractMap!903 (t!356877 (toList!3671 lm!1616)))) lambda!157632)))

(declare-fun lt!1637798 () Unit!83978)

(assert (=> b!4442810 (= lt!1637798 lt!1637801)))

(assert (=> b!4442810 (forall!9717 (toList!3672 lt!1637799) lambda!157633)))

(declare-fun lt!1637797 () Unit!83978)

(declare-fun Unit!84080 () Unit!83978)

(assert (=> b!4442810 (= lt!1637797 Unit!84080)))

(assert (=> b!4442810 (forall!9717 (t!356876 (_2!28168 (h!55542 (toList!3671 lm!1616)))) lambda!157633)))

(declare-fun lt!1637792 () Unit!83978)

(declare-fun Unit!84081 () Unit!83978)

(assert (=> b!4442810 (= lt!1637792 Unit!84081)))

(declare-fun lt!1637786 () Unit!83978)

(declare-fun Unit!84082 () Unit!83978)

(assert (=> b!4442810 (= lt!1637786 Unit!84082)))

(declare-fun lt!1637796 () Unit!83978)

(assert (=> b!4442810 (= lt!1637796 (forallContained!2145 (toList!3672 lt!1637799) lambda!157633 (h!55541 (_2!28168 (h!55542 (toList!3671 lm!1616))))))))

(assert (=> b!4442810 (contains!12385 lt!1637799 (_1!28167 (h!55541 (_2!28168 (h!55542 (toList!3671 lm!1616))))))))

(declare-fun lt!1637784 () Unit!83978)

(declare-fun Unit!84083 () Unit!83978)

(assert (=> b!4442810 (= lt!1637784 Unit!84083)))

(assert (=> b!4442810 (contains!12385 lt!1637782 (_1!28167 (h!55541 (_2!28168 (h!55542 (toList!3671 lm!1616))))))))

(declare-fun lt!1637800 () Unit!83978)

(declare-fun Unit!84084 () Unit!83978)

(assert (=> b!4442810 (= lt!1637800 Unit!84084)))

(assert (=> b!4442810 (forall!9717 (_2!28168 (h!55542 (toList!3671 lm!1616))) lambda!157633)))

(declare-fun lt!1637794 () Unit!83978)

(declare-fun Unit!84085 () Unit!83978)

(assert (=> b!4442810 (= lt!1637794 Unit!84085)))

(assert (=> b!4442810 (forall!9717 (toList!3672 lt!1637799) lambda!157633)))

(declare-fun lt!1637789 () Unit!83978)

(declare-fun Unit!84086 () Unit!83978)

(assert (=> b!4442810 (= lt!1637789 Unit!84086)))

(declare-fun lt!1637787 () Unit!83978)

(declare-fun Unit!84087 () Unit!83978)

(assert (=> b!4442810 (= lt!1637787 Unit!84087)))

(declare-fun lt!1637785 () Unit!83978)

(assert (=> b!4442810 (= lt!1637785 (addForallContainsKeyThenBeforeAdding!206 (extractMap!903 (t!356877 (toList!3671 lm!1616))) lt!1637782 (_1!28167 (h!55541 (_2!28168 (h!55542 (toList!3671 lm!1616))))) (_2!28167 (h!55541 (_2!28168 (h!55542 (toList!3671 lm!1616)))))))))

(assert (=> b!4442810 call!309097))

(declare-fun lt!1637790 () Unit!83978)

(assert (=> b!4442810 (= lt!1637790 lt!1637785)))

(assert (=> b!4442810 (forall!9717 (toList!3672 (extractMap!903 (t!356877 (toList!3671 lm!1616)))) lambda!157633)))

(declare-fun lt!1637783 () Unit!83978)

(declare-fun Unit!84088 () Unit!83978)

(assert (=> b!4442810 (= lt!1637783 Unit!84088)))

(declare-fun res!1839779 () Bool)

(assert (=> b!4442810 (= res!1839779 call!309096)))

(assert (=> b!4442810 (=> (not res!1839779) (not e!2766271))))

(assert (=> b!4442810 e!2766271))

(declare-fun lt!1637793 () Unit!83978)

(declare-fun Unit!84089 () Unit!83978)

(assert (=> b!4442810 (= lt!1637793 Unit!84089)))

(declare-fun bm!309093 () Bool)

(assert (=> bm!309093 (= call!309098 (lemmaContainsAllItsOwnKeys!206 (extractMap!903 (t!356877 (toList!3671 lm!1616)))))))

(declare-fun b!4442811 () Bool)

(assert (=> b!4442811 (= e!2766270 (invariantList!847 (toList!3672 lt!1637795)))))

(assert (= (and d!1348704 c!756106) b!4442809))

(assert (= (and d!1348704 (not c!756106)) b!4442810))

(assert (= (and b!4442810 res!1839779) b!4442808))

(assert (= (or b!4442809 b!4442810) bm!309093))

(assert (= (or b!4442809 b!4442810) bm!309092))

(assert (= (or b!4442809 b!4442810) bm!309091))

(assert (= (and d!1348704 res!1839777) b!4442807))

(assert (= (and b!4442807 res!1839778) b!4442811))

(declare-fun m!5131907 () Bool)

(assert (=> b!4442807 m!5131907))

(declare-fun m!5131909 () Bool)

(assert (=> d!1348704 m!5131909))

(assert (=> d!1348704 m!5131433))

(assert (=> bm!309093 m!5131323))

(declare-fun m!5131911 () Bool)

(assert (=> bm!309093 m!5131911))

(declare-fun m!5131913 () Bool)

(assert (=> b!4442811 m!5131913))

(declare-fun m!5131915 () Bool)

(assert (=> bm!309092 m!5131915))

(declare-fun m!5131917 () Bool)

(assert (=> b!4442808 m!5131917))

(declare-fun m!5131919 () Bool)

(assert (=> bm!309091 m!5131919))

(declare-fun m!5131921 () Bool)

(assert (=> b!4442810 m!5131921))

(assert (=> b!4442810 m!5131917))

(declare-fun m!5131923 () Bool)

(assert (=> b!4442810 m!5131923))

(declare-fun m!5131925 () Bool)

(assert (=> b!4442810 m!5131925))

(declare-fun m!5131927 () Bool)

(assert (=> b!4442810 m!5131927))

(declare-fun m!5131929 () Bool)

(assert (=> b!4442810 m!5131929))

(declare-fun m!5131931 () Bool)

(assert (=> b!4442810 m!5131931))

(assert (=> b!4442810 m!5131323))

(declare-fun m!5131933 () Bool)

(assert (=> b!4442810 m!5131933))

(declare-fun m!5131935 () Bool)

(assert (=> b!4442810 m!5131935))

(declare-fun m!5131937 () Bool)

(assert (=> b!4442810 m!5131937))

(declare-fun m!5131939 () Bool)

(assert (=> b!4442810 m!5131939))

(assert (=> b!4442810 m!5131939))

(assert (=> b!4442810 m!5131323))

(assert (=> b!4442810 m!5131925))

(assert (=> b!4442415 d!1348704))

(declare-fun bs!764656 () Bool)

(declare-fun d!1348706 () Bool)

(assert (= bs!764656 (and d!1348706 d!1348658)))

(declare-fun lambda!157635 () Int)

(assert (=> bs!764656 (= lambda!157635 lambda!157607)))

(declare-fun bs!764657 () Bool)

(assert (= bs!764657 (and d!1348706 d!1348554)))

(assert (=> bs!764657 (= lambda!157635 lambda!157554)))

(declare-fun bs!764658 () Bool)

(assert (= bs!764658 (and d!1348706 d!1348512)))

(assert (=> bs!764658 (= lambda!157635 lambda!157542)))

(declare-fun bs!764659 () Bool)

(assert (= bs!764659 (and d!1348706 d!1348502)))

(assert (=> bs!764659 (= lambda!157635 lambda!157541)))

(declare-fun bs!764660 () Bool)

(assert (= bs!764660 (and d!1348706 d!1348518)))

(assert (=> bs!764660 (not (= lambda!157635 lambda!157545))))

(declare-fun bs!764661 () Bool)

(assert (= bs!764661 (and d!1348706 start!434766)))

(assert (=> bs!764661 (= lambda!157635 lambda!157521)))

(declare-fun bs!764662 () Bool)

(assert (= bs!764662 (and d!1348706 d!1348662)))

(assert (=> bs!764662 (= lambda!157635 lambda!157612)))

(declare-fun bs!764663 () Bool)

(assert (= bs!764663 (and d!1348706 d!1348496)))

(assert (=> bs!764663 (not (= lambda!157635 lambda!157538))))

(declare-fun bs!764664 () Bool)

(assert (= bs!764664 (and d!1348706 d!1348548)))

(assert (=> bs!764664 (= lambda!157635 lambda!157551)))

(declare-fun lt!1637803 () ListMap!2915)

(assert (=> d!1348706 (invariantList!847 (toList!3672 lt!1637803))))

(declare-fun e!2766273 () ListMap!2915)

(assert (=> d!1348706 (= lt!1637803 e!2766273)))

(declare-fun c!756107 () Bool)

(assert (=> d!1348706 (= c!756107 (is-Cons!49811 (t!356877 (toList!3671 lm!1616))))))

(assert (=> d!1348706 (forall!9715 (t!356877 (toList!3671 lm!1616)) lambda!157635)))

(assert (=> d!1348706 (= (extractMap!903 (t!356877 (toList!3671 lm!1616))) lt!1637803)))

(declare-fun b!4442812 () Bool)

(assert (=> b!4442812 (= e!2766273 (addToMapMapFromBucket!450 (_2!28168 (h!55542 (t!356877 (toList!3671 lm!1616)))) (extractMap!903 (t!356877 (t!356877 (toList!3671 lm!1616))))))))

(declare-fun b!4442813 () Bool)

(assert (=> b!4442813 (= e!2766273 (ListMap!2916 Nil!49810))))

(assert (= (and d!1348706 c!756107) b!4442812))

(assert (= (and d!1348706 (not c!756107)) b!4442813))

(declare-fun m!5131941 () Bool)

(assert (=> d!1348706 m!5131941))

(declare-fun m!5131943 () Bool)

(assert (=> d!1348706 m!5131943))

(declare-fun m!5131945 () Bool)

(assert (=> b!4442812 m!5131945))

(assert (=> b!4442812 m!5131945))

(declare-fun m!5131947 () Bool)

(assert (=> b!4442812 m!5131947))

(assert (=> b!4442415 d!1348706))

(declare-fun d!1348708 () Bool)

(declare-fun res!1839780 () Bool)

(declare-fun e!2766274 () Bool)

(assert (=> d!1348708 (=> res!1839780 e!2766274)))

(assert (=> d!1348708 (= res!1839780 (not (is-Cons!49810 (_2!28168 (h!55542 (toList!3671 lm!1616))))))))

(assert (=> d!1348708 (= (noDuplicateKeys!842 (_2!28168 (h!55542 (toList!3671 lm!1616)))) e!2766274)))

(declare-fun b!4442814 () Bool)

(declare-fun e!2766275 () Bool)

(assert (=> b!4442814 (= e!2766274 e!2766275)))

(declare-fun res!1839781 () Bool)

(assert (=> b!4442814 (=> (not res!1839781) (not e!2766275))))

(assert (=> b!4442814 (= res!1839781 (not (containsKey!1257 (t!356876 (_2!28168 (h!55542 (toList!3671 lm!1616)))) (_1!28167 (h!55541 (_2!28168 (h!55542 (toList!3671 lm!1616))))))))))

(declare-fun b!4442815 () Bool)

(assert (=> b!4442815 (= e!2766275 (noDuplicateKeys!842 (t!356876 (_2!28168 (h!55542 (toList!3671 lm!1616))))))))

(assert (= (and d!1348708 (not res!1839780)) b!4442814))

(assert (= (and b!4442814 res!1839781) b!4442815))

(declare-fun m!5131949 () Bool)

(assert (=> b!4442814 m!5131949))

(declare-fun m!5131951 () Bool)

(assert (=> b!4442815 m!5131951))

(assert (=> bs!764476 d!1348708))

(assert (=> b!4442393 d!1348684))

(assert (=> b!4442393 d!1348686))

(declare-fun d!1348710 () Bool)

(assert (=> d!1348710 (isDefined!8101 (getValueByKey!797 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717))))

(declare-fun lt!1637808 () Unit!83978)

(declare-fun choose!28228 (List!49934 K!11178) Unit!83978)

(assert (=> d!1348710 (= lt!1637808 (choose!28228 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717))))

(assert (=> d!1348710 (invariantList!847 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))))

(assert (=> d!1348710 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!704 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717) lt!1637808)))

(declare-fun bs!764665 () Bool)

(assert (= bs!764665 d!1348710))

(assert (=> bs!764665 m!5131257))

(assert (=> bs!764665 m!5131257))

(assert (=> bs!764665 m!5131259))

(declare-fun m!5131953 () Bool)

(assert (=> bs!764665 m!5131953))

(assert (=> bs!764665 m!5131621))

(assert (=> b!4442391 d!1348710))

(assert (=> b!4442391 d!1348600))

(assert (=> b!4442391 d!1348602))

(declare-fun d!1348712 () Bool)

(assert (=> d!1348712 (contains!12388 (getKeysList!294 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) key!3717)))

(declare-fun lt!1637825 () Unit!83978)

(declare-fun choose!28229 (List!49934 K!11178) Unit!83978)

(assert (=> d!1348712 (= lt!1637825 (choose!28229 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717))))

(assert (=> d!1348712 (invariantList!847 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))))

(assert (=> d!1348712 (= (lemmaInListThenGetKeysListContains!291 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717) lt!1637825)))

(declare-fun bs!764666 () Bool)

(assert (= bs!764666 d!1348712))

(assert (=> bs!764666 m!5131267))

(assert (=> bs!764666 m!5131267))

(declare-fun m!5131955 () Bool)

(assert (=> bs!764666 m!5131955))

(declare-fun m!5131957 () Bool)

(assert (=> bs!764666 m!5131957))

(assert (=> bs!764666 m!5131621))

(assert (=> b!4442391 d!1348712))

(declare-fun d!1348714 () Bool)

(declare-fun res!1839786 () Bool)

(declare-fun e!2766282 () Bool)

(assert (=> d!1348714 (=> res!1839786 e!2766282)))

(assert (=> d!1348714 (= res!1839786 (and (is-Cons!49810 (t!356876 newBucket!194)) (= (_1!28167 (h!55541 (t!356876 newBucket!194))) (_1!28167 (h!55541 newBucket!194)))))))

(assert (=> d!1348714 (= (containsKey!1257 (t!356876 newBucket!194) (_1!28167 (h!55541 newBucket!194))) e!2766282)))

(declare-fun b!4442824 () Bool)

(declare-fun e!2766283 () Bool)

(assert (=> b!4442824 (= e!2766282 e!2766283)))

(declare-fun res!1839787 () Bool)

(assert (=> b!4442824 (=> (not res!1839787) (not e!2766283))))

(assert (=> b!4442824 (= res!1839787 (is-Cons!49810 (t!356876 newBucket!194)))))

(declare-fun b!4442825 () Bool)

(assert (=> b!4442825 (= e!2766283 (containsKey!1257 (t!356876 (t!356876 newBucket!194)) (_1!28167 (h!55541 newBucket!194))))))

(assert (= (and d!1348714 (not res!1839786)) b!4442824))

(assert (= (and b!4442824 res!1839787) b!4442825))

(declare-fun m!5131959 () Bool)

(assert (=> b!4442825 m!5131959))

(assert (=> b!4442433 d!1348714))

(declare-fun d!1348716 () Bool)

(declare-fun choose!28231 (Hashable!5236 K!11178) (_ BitVec 64))

(assert (=> d!1348716 (= (hash!2302 hashF!1220 key!3717) (choose!28231 hashF!1220 key!3717))))

(declare-fun bs!764667 () Bool)

(assert (= bs!764667 d!1348716))

(declare-fun m!5131961 () Bool)

(assert (=> bs!764667 m!5131961))

(assert (=> d!1348506 d!1348716))

(assert (=> d!1348510 d!1348626))

(declare-fun d!1348718 () Bool)

(declare-fun res!1839788 () Bool)

(declare-fun e!2766284 () Bool)

(assert (=> d!1348718 (=> res!1839788 e!2766284)))

(assert (=> d!1348718 (= res!1839788 (is-Nil!49811 (t!356877 (toList!3671 lt!1637450))))))

(assert (=> d!1348718 (= (forall!9715 (t!356877 (toList!3671 lt!1637450)) lambda!157521) e!2766284)))

(declare-fun b!4442826 () Bool)

(declare-fun e!2766285 () Bool)

(assert (=> b!4442826 (= e!2766284 e!2766285)))

(declare-fun res!1839789 () Bool)

(assert (=> b!4442826 (=> (not res!1839789) (not e!2766285))))

(assert (=> b!4442826 (= res!1839789 (dynLambda!20915 lambda!157521 (h!55542 (t!356877 (toList!3671 lt!1637450)))))))

(declare-fun b!4442827 () Bool)

(assert (=> b!4442827 (= e!2766285 (forall!9715 (t!356877 (t!356877 (toList!3671 lt!1637450))) lambda!157521))))

(assert (= (and d!1348718 (not res!1839788)) b!4442826))

(assert (= (and b!4442826 res!1839789) b!4442827))

(declare-fun b_lambda!145215 () Bool)

(assert (=> (not b_lambda!145215) (not b!4442826)))

(declare-fun m!5131963 () Bool)

(assert (=> b!4442826 m!5131963))

(declare-fun m!5131965 () Bool)

(assert (=> b!4442827 m!5131965))

(assert (=> b!4442456 d!1348718))

(declare-fun d!1348720 () Bool)

(declare-fun lt!1637838 () Bool)

(assert (=> d!1348720 (= lt!1637838 (set.member key!3717 (content!8012 e!2766057)))))

(declare-fun e!2766287 () Bool)

(assert (=> d!1348720 (= lt!1637838 e!2766287)))

(declare-fun res!1839790 () Bool)

(assert (=> d!1348720 (=> (not res!1839790) (not e!2766287))))

(assert (=> d!1348720 (= res!1839790 (is-Cons!49814 e!2766057))))

(assert (=> d!1348720 (= (contains!12388 e!2766057 key!3717) lt!1637838)))

(declare-fun b!4442828 () Bool)

(declare-fun e!2766286 () Bool)

(assert (=> b!4442828 (= e!2766287 e!2766286)))

(declare-fun res!1839791 () Bool)

(assert (=> b!4442828 (=> res!1839791 e!2766286)))

(assert (=> b!4442828 (= res!1839791 (= (h!55547 e!2766057) key!3717))))

(declare-fun b!4442829 () Bool)

(assert (=> b!4442829 (= e!2766286 (contains!12388 (t!356880 e!2766057) key!3717))))

(assert (= (and d!1348720 res!1839790) b!4442828))

(assert (= (and b!4442828 (not res!1839791)) b!4442829))

(declare-fun m!5131967 () Bool)

(assert (=> d!1348720 m!5131967))

(declare-fun m!5131969 () Bool)

(assert (=> d!1348720 m!5131969))

(declare-fun m!5131971 () Bool)

(assert (=> b!4442829 m!5131971))

(assert (=> bm!309064 d!1348720))

(assert (=> d!1348552 d!1348632))

(declare-fun d!1348722 () Bool)

(declare-fun res!1839796 () Bool)

(declare-fun e!2766292 () Bool)

(assert (=> d!1348722 (=> res!1839796 e!2766292)))

(assert (=> d!1348722 (= res!1839796 (and (is-Cons!49811 (toList!3671 lm!1616)) (= (_1!28168 (h!55542 (toList!3671 lm!1616))) hash!366)))))

(assert (=> d!1348722 (= (containsKey!1256 (toList!3671 lm!1616) hash!366) e!2766292)))

(declare-fun b!4442834 () Bool)

(declare-fun e!2766293 () Bool)

(assert (=> b!4442834 (= e!2766292 e!2766293)))

(declare-fun res!1839797 () Bool)

(assert (=> b!4442834 (=> (not res!1839797) (not e!2766293))))

(assert (=> b!4442834 (= res!1839797 (and (or (not (is-Cons!49811 (toList!3671 lm!1616))) (bvsle (_1!28168 (h!55542 (toList!3671 lm!1616))) hash!366)) (is-Cons!49811 (toList!3671 lm!1616)) (bvslt (_1!28168 (h!55542 (toList!3671 lm!1616))) hash!366)))))

(declare-fun b!4442835 () Bool)

(assert (=> b!4442835 (= e!2766293 (containsKey!1256 (t!356877 (toList!3671 lm!1616)) hash!366))))

(assert (= (and d!1348722 (not res!1839796)) b!4442834))

(assert (= (and b!4442834 res!1839797) b!4442835))

(declare-fun m!5131973 () Bool)

(assert (=> b!4442835 m!5131973))

(assert (=> d!1348558 d!1348722))

(declare-fun d!1348724 () Bool)

(assert (=> d!1348724 (isDefined!8102 (getValueByKey!798 (toList!3671 lm!1616) hash!366))))

(declare-fun lt!1637855 () Unit!83978)

(declare-fun choose!28232 (List!49935 (_ BitVec 64)) Unit!83978)

(assert (=> d!1348724 (= lt!1637855 (choose!28232 (toList!3671 lm!1616) hash!366))))

(declare-fun e!2766298 () Bool)

(assert (=> d!1348724 e!2766298))

(declare-fun res!1839802 () Bool)

(assert (=> d!1348724 (=> (not res!1839802) (not e!2766298))))

(assert (=> d!1348724 (= res!1839802 (isStrictlySorted!273 (toList!3671 lm!1616)))))

(assert (=> d!1348724 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!705 (toList!3671 lm!1616) hash!366) lt!1637855)))

(declare-fun b!4442840 () Bool)

(assert (=> b!4442840 (= e!2766298 (containsKey!1256 (toList!3671 lm!1616) hash!366))))

(assert (= (and d!1348724 res!1839802) b!4442840))

(assert (=> d!1348724 m!5131343))

(assert (=> d!1348724 m!5131343))

(assert (=> d!1348724 m!5131431))

(declare-fun m!5131975 () Bool)

(assert (=> d!1348724 m!5131975))

(assert (=> d!1348724 m!5131297))

(assert (=> b!4442840 m!5131427))

(assert (=> b!4442468 d!1348724))

(declare-fun d!1348726 () Bool)

(declare-fun isEmpty!28394 (Option!10812) Bool)

(assert (=> d!1348726 (= (isDefined!8102 (getValueByKey!798 (toList!3671 lm!1616) hash!366)) (not (isEmpty!28394 (getValueByKey!798 (toList!3671 lm!1616) hash!366))))))

(declare-fun bs!764668 () Bool)

(assert (= bs!764668 d!1348726))

(assert (=> bs!764668 m!5131343))

(declare-fun m!5131977 () Bool)

(assert (=> bs!764668 m!5131977))

(assert (=> b!4442468 d!1348726))

(declare-fun b!4442843 () Bool)

(declare-fun e!2766302 () Option!10812)

(assert (=> b!4442843 (= e!2766302 (getValueByKey!798 (t!356877 (toList!3671 lm!1616)) hash!366))))

(declare-fun b!4442844 () Bool)

(assert (=> b!4442844 (= e!2766302 None!10811)))

(declare-fun b!4442841 () Bool)

(declare-fun e!2766301 () Option!10812)

(assert (=> b!4442841 (= e!2766301 (Some!10811 (_2!28168 (h!55542 (toList!3671 lm!1616)))))))

(declare-fun d!1348728 () Bool)

(declare-fun c!756110 () Bool)

(assert (=> d!1348728 (= c!756110 (and (is-Cons!49811 (toList!3671 lm!1616)) (= (_1!28168 (h!55542 (toList!3671 lm!1616))) hash!366)))))

(assert (=> d!1348728 (= (getValueByKey!798 (toList!3671 lm!1616) hash!366) e!2766301)))

(declare-fun b!4442842 () Bool)

(assert (=> b!4442842 (= e!2766301 e!2766302)))

(declare-fun c!756111 () Bool)

(assert (=> b!4442842 (= c!756111 (and (is-Cons!49811 (toList!3671 lm!1616)) (not (= (_1!28168 (h!55542 (toList!3671 lm!1616))) hash!366))))))

(assert (= (and d!1348728 c!756110) b!4442841))

(assert (= (and d!1348728 (not c!756110)) b!4442842))

(assert (= (and b!4442842 c!756111) b!4442843))

(assert (= (and b!4442842 (not c!756111)) b!4442844))

(declare-fun m!5131979 () Bool)

(assert (=> b!4442843 m!5131979))

(assert (=> b!4442468 d!1348728))

(declare-fun d!1348730 () Bool)

(declare-fun res!1839805 () Bool)

(declare-fun e!2766303 () Bool)

(assert (=> d!1348730 (=> res!1839805 e!2766303)))

(assert (=> d!1348730 (= res!1839805 (is-Nil!49811 (toList!3671 (+!1225 lm!1616 (tuple2!49749 hash!366 newBucket!194)))))))

(assert (=> d!1348730 (= (forall!9715 (toList!3671 (+!1225 lm!1616 (tuple2!49749 hash!366 newBucket!194))) lambda!157521) e!2766303)))

(declare-fun b!4442845 () Bool)

(declare-fun e!2766304 () Bool)

(assert (=> b!4442845 (= e!2766303 e!2766304)))

(declare-fun res!1839806 () Bool)

(assert (=> b!4442845 (=> (not res!1839806) (not e!2766304))))

(assert (=> b!4442845 (= res!1839806 (dynLambda!20915 lambda!157521 (h!55542 (toList!3671 (+!1225 lm!1616 (tuple2!49749 hash!366 newBucket!194))))))))

(declare-fun b!4442846 () Bool)

(assert (=> b!4442846 (= e!2766304 (forall!9715 (t!356877 (toList!3671 (+!1225 lm!1616 (tuple2!49749 hash!366 newBucket!194)))) lambda!157521))))

(assert (= (and d!1348730 (not res!1839805)) b!4442845))

(assert (= (and b!4442845 res!1839806) b!4442846))

(declare-fun b_lambda!145217 () Bool)

(assert (=> (not b_lambda!145217) (not b!4442845)))

(declare-fun m!5131981 () Bool)

(assert (=> b!4442845 m!5131981))

(declare-fun m!5131983 () Bool)

(assert (=> b!4442846 m!5131983))

(assert (=> d!1348536 d!1348730))

(assert (=> d!1348536 d!1348530))

(declare-fun d!1348732 () Bool)

(assert (=> d!1348732 (forall!9715 (toList!3671 (+!1225 lm!1616 (tuple2!49749 hash!366 newBucket!194))) lambda!157521)))

(assert (=> d!1348732 true))

(declare-fun _$31!445 () Unit!83978)

(assert (=> d!1348732 (= (choose!28219 lm!1616 lambda!157521 hash!366 newBucket!194) _$31!445)))

(declare-fun bs!764669 () Bool)

(assert (= bs!764669 d!1348732))

(assert (=> bs!764669 m!5131145))

(assert (=> bs!764669 m!5131383))

(assert (=> d!1348536 d!1348732))

(assert (=> d!1348536 d!1348492))

(assert (=> b!4442466 d!1348676))

(assert (=> b!4442466 d!1348678))

(declare-fun d!1348734 () Bool)

(assert (=> d!1348734 (isDefined!8101 (getValueByKey!797 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717))))

(declare-fun lt!1637856 () Unit!83978)

(assert (=> d!1348734 (= lt!1637856 (choose!28228 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717))))

(assert (=> d!1348734 (invariantList!847 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))))

(assert (=> d!1348734 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!704 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717) lt!1637856)))

(declare-fun bs!764670 () Bool)

(assert (= bs!764670 d!1348734))

(assert (=> bs!764670 m!5131403))

(assert (=> bs!764670 m!5131403))

(assert (=> bs!764670 m!5131405))

(declare-fun m!5131985 () Bool)

(assert (=> bs!764670 m!5131985))

(assert (=> bs!764670 m!5131645))

(assert (=> b!4442464 d!1348734))

(assert (=> b!4442464 d!1348694))

(assert (=> b!4442464 d!1348696))

(declare-fun d!1348736 () Bool)

(assert (=> d!1348736 (contains!12388 (getKeysList!294 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616))))) key!3717)))

(declare-fun lt!1637857 () Unit!83978)

(assert (=> d!1348736 (= lt!1637857 (choose!28229 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717))))

(assert (=> d!1348736 (invariantList!847 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))))))

(assert (=> d!1348736 (= (lemmaInListThenGetKeysListContains!291 (toList!3672 (extractMap!903 (tail!7385 (toList!3671 lm!1616)))) key!3717) lt!1637857)))

(declare-fun bs!764671 () Bool)

(assert (= bs!764671 d!1348736))

(assert (=> bs!764671 m!5131413))

(assert (=> bs!764671 m!5131413))

(declare-fun m!5131987 () Bool)

(assert (=> bs!764671 m!5131987))

(declare-fun m!5131989 () Bool)

(assert (=> bs!764671 m!5131989))

(assert (=> bs!764671 m!5131645))

(assert (=> b!4442464 d!1348736))

(declare-fun d!1348738 () Bool)

(declare-fun res!1839809 () Bool)

(declare-fun e!2766305 () Bool)

(assert (=> d!1348738 (=> res!1839809 e!2766305)))

(assert (=> d!1348738 (= res!1839809 (is-Nil!49811 (t!356877 (toList!3671 lt!1637447))))))

(assert (=> d!1348738 (= (forall!9715 (t!356877 (toList!3671 lt!1637447)) lambda!157521) e!2766305)))

(declare-fun b!4442852 () Bool)

(declare-fun e!2766306 () Bool)

(assert (=> b!4442852 (= e!2766305 e!2766306)))

(declare-fun res!1839810 () Bool)

(assert (=> b!4442852 (=> (not res!1839810) (not e!2766306))))

(assert (=> b!4442852 (= res!1839810 (dynLambda!20915 lambda!157521 (h!55542 (t!356877 (toList!3671 lt!1637447)))))))

(declare-fun b!4442853 () Bool)

(assert (=> b!4442853 (= e!2766306 (forall!9715 (t!356877 (t!356877 (toList!3671 lt!1637447))) lambda!157521))))

(assert (= (and d!1348738 (not res!1839809)) b!4442852))

(assert (= (and b!4442852 res!1839810) b!4442853))

(declare-fun b_lambda!145219 () Bool)

(assert (=> (not b_lambda!145219) (not b!4442852)))

(declare-fun m!5131991 () Bool)

(assert (=> b!4442852 m!5131991))

(declare-fun m!5131993 () Bool)

(assert (=> b!4442853 m!5131993))

(assert (=> b!4442436 d!1348738))

(assert (=> b!4442409 d!1348668))

(declare-fun d!1348740 () Bool)

(assert (=> d!1348740 (= (get!16246 (getValueByKey!798 (toList!3671 lm!1616) hash!366)) (v!44043 (getValueByKey!798 (toList!3671 lm!1616) hash!366)))))

(assert (=> d!1348520 d!1348740))

(assert (=> d!1348520 d!1348728))

(declare-fun d!1348742 () Bool)

(assert (=> d!1348742 (= (isDefined!8102 (getValueByKey!798 (toList!3671 lt!1637450) hash!366)) (not (isEmpty!28394 (getValueByKey!798 (toList!3671 lt!1637450) hash!366))))))

(declare-fun bs!764672 () Bool)

(assert (= bs!764672 d!1348742))

(assert (=> bs!764672 m!5131337))

(declare-fun m!5131995 () Bool)

(assert (=> bs!764672 m!5131995))

(assert (=> b!4442426 d!1348742))

(assert (=> b!4442426 d!1348624))

(declare-fun d!1348744 () Bool)

(assert (=> d!1348744 (isDefined!8102 (getValueByKey!798 (toList!3671 lt!1637450) hash!366))))

(declare-fun lt!1637858 () Unit!83978)

(assert (=> d!1348744 (= lt!1637858 (choose!28232 (toList!3671 lt!1637450) hash!366))))

(declare-fun e!2766307 () Bool)

(assert (=> d!1348744 e!2766307))

(declare-fun res!1839811 () Bool)

(assert (=> d!1348744 (=> (not res!1839811) (not e!2766307))))

(assert (=> d!1348744 (= res!1839811 (isStrictlySorted!273 (toList!3671 lt!1637450)))))

(assert (=> d!1348744 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!705 (toList!3671 lt!1637450) hash!366) lt!1637858)))

(declare-fun b!4442854 () Bool)

(assert (=> b!4442854 (= e!2766307 (containsKey!1256 (toList!3671 lt!1637450) hash!366))))

(assert (= (and d!1348744 res!1839811) b!4442854))

(assert (=> d!1348744 m!5131337))

(assert (=> d!1348744 m!5131337))

(assert (=> d!1348744 m!5131339))

(declare-fun m!5131997 () Bool)

(assert (=> d!1348744 m!5131997))

(declare-fun m!5131999 () Bool)

(assert (=> d!1348744 m!5131999))

(assert (=> b!4442854 m!5131333))

(assert (=> b!4442424 d!1348744))

(assert (=> b!4442424 d!1348742))

(assert (=> b!4442424 d!1348624))

(assert (=> b!4442462 d!1348678))

(declare-fun d!1348746 () Bool)

(declare-fun res!1839812 () Bool)

(declare-fun e!2766308 () Bool)

(assert (=> d!1348746 (=> res!1839812 e!2766308)))

(assert (=> d!1348746 (= res!1839812 (and (is-Cons!49810 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) (= (_1!28167 (h!55541 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))) key!3717)))))

(assert (=> d!1348746 (= (containsKey!1255 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717) e!2766308)))

(declare-fun b!4442855 () Bool)

(declare-fun e!2766309 () Bool)

(assert (=> b!4442855 (= e!2766308 e!2766309)))

(declare-fun res!1839813 () Bool)

(assert (=> b!4442855 (=> (not res!1839813) (not e!2766309))))

(assert (=> b!4442855 (= res!1839813 (is-Cons!49810 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))))))

(declare-fun b!4442856 () Bool)

(assert (=> b!4442856 (= e!2766309 (containsKey!1255 (t!356876 (toList!3672 (extractMap!903 (toList!3671 lt!1637450)))) key!3717))))

(assert (= (and d!1348746 (not res!1839812)) b!4442855))

(assert (= (and b!4442855 res!1839813) b!4442856))

(declare-fun m!5132001 () Bool)

(assert (=> b!4442856 m!5132001))

(assert (=> d!1348498 d!1348746))

(declare-fun d!1348748 () Bool)

(assert (=> d!1348748 (= (invariantList!847 (toList!3672 lt!1637523)) (noDuplicatedKeys!192 (toList!3672 lt!1637523)))))

(declare-fun bs!764673 () Bool)

(assert (= bs!764673 d!1348748))

(declare-fun m!5132003 () Bool)

(assert (=> bs!764673 m!5132003))

(assert (=> d!1348512 d!1348748))

(declare-fun d!1348750 () Bool)

(declare-fun res!1839817 () Bool)

(declare-fun e!2766313 () Bool)

(assert (=> d!1348750 (=> res!1839817 e!2766313)))

(assert (=> d!1348750 (= res!1839817 (is-Nil!49811 (toList!3671 lm!1616)))))

(assert (=> d!1348750 (= (forall!9715 (toList!3671 lm!1616) lambda!157542) e!2766313)))

(declare-fun b!4442862 () Bool)

(declare-fun e!2766314 () Bool)

(assert (=> b!4442862 (= e!2766313 e!2766314)))

(declare-fun res!1839818 () Bool)

(assert (=> b!4442862 (=> (not res!1839818) (not e!2766314))))

(assert (=> b!4442862 (= res!1839818 (dynLambda!20915 lambda!157542 (h!55542 (toList!3671 lm!1616))))))

(declare-fun b!4442863 () Bool)

(assert (=> b!4442863 (= e!2766314 (forall!9715 (t!356877 (toList!3671 lm!1616)) lambda!157542))))

(assert (= (and d!1348750 (not res!1839817)) b!4442862))

(assert (= (and b!4442862 res!1839818) b!4442863))

(declare-fun b_lambda!145221 () Bool)

(assert (=> (not b_lambda!145221) (not b!4442862)))

(declare-fun m!5132005 () Bool)

(assert (=> b!4442862 m!5132005))

(declare-fun m!5132007 () Bool)

(assert (=> b!4442863 m!5132007))

(assert (=> d!1348512 d!1348750))

(assert (=> b!4442389 d!1348686))

(declare-fun d!1348752 () Bool)

(declare-fun res!1839819 () Bool)

(declare-fun e!2766315 () Bool)

(assert (=> d!1348752 (=> res!1839819 e!2766315)))

(assert (=> d!1348752 (= res!1839819 (and (is-Cons!49811 (toList!3671 lt!1637450)) (= (_1!28168 (h!55542 (toList!3671 lt!1637450))) hash!366)))))

(assert (=> d!1348752 (= (containsKey!1256 (toList!3671 lt!1637450) hash!366) e!2766315)))

(declare-fun b!4442866 () Bool)

(declare-fun e!2766316 () Bool)

(assert (=> b!4442866 (= e!2766315 e!2766316)))

(declare-fun res!1839820 () Bool)

(assert (=> b!4442866 (=> (not res!1839820) (not e!2766316))))

(assert (=> b!4442866 (= res!1839820 (and (or (not (is-Cons!49811 (toList!3671 lt!1637450))) (bvsle (_1!28168 (h!55542 (toList!3671 lt!1637450))) hash!366)) (is-Cons!49811 (toList!3671 lt!1637450)) (bvslt (_1!28168 (h!55542 (toList!3671 lt!1637450))) hash!366)))))

(declare-fun b!4442867 () Bool)

(assert (=> b!4442867 (= e!2766316 (containsKey!1256 (t!356877 (toList!3671 lt!1637450)) hash!366))))

(assert (= (and d!1348752 (not res!1839819)) b!4442866))

(assert (= (and b!4442866 res!1839820) b!4442867))

(declare-fun m!5132009 () Bool)

(assert (=> b!4442867 m!5132009))

(assert (=> d!1348514 d!1348752))

(declare-fun d!1348754 () Bool)

(declare-fun res!1839821 () Bool)

(declare-fun e!2766317 () Bool)

(assert (=> d!1348754 (=> res!1839821 e!2766317)))

(assert (=> d!1348754 (= res!1839821 (not (is-Cons!49810 (_2!28168 (h!55542 (toList!3671 lt!1637447))))))))

(assert (=> d!1348754 (= (noDuplicateKeys!842 (_2!28168 (h!55542 (toList!3671 lt!1637447)))) e!2766317)))

(declare-fun b!4442868 () Bool)

(declare-fun e!2766318 () Bool)

(assert (=> b!4442868 (= e!2766317 e!2766318)))

(declare-fun res!1839822 () Bool)

(assert (=> b!4442868 (=> (not res!1839822) (not e!2766318))))

(assert (=> b!4442868 (= res!1839822 (not (containsKey!1257 (t!356876 (_2!28168 (h!55542 (toList!3671 lt!1637447)))) (_1!28167 (h!55541 (_2!28168 (h!55542 (toList!3671 lt!1637447))))))))))

(declare-fun b!4442869 () Bool)

(assert (=> b!4442869 (= e!2766318 (noDuplicateKeys!842 (t!356876 (_2!28168 (h!55542 (toList!3671 lt!1637447))))))))

(assert (= (and d!1348754 (not res!1839821)) b!4442868))

(assert (= (and b!4442868 res!1839822) b!4442869))

(declare-fun m!5132011 () Bool)

(assert (=> b!4442868 m!5132011))

(declare-fun m!5132013 () Bool)

(assert (=> b!4442869 m!5132013))

(assert (=> bs!764479 d!1348754))

(assert (=> d!1348554 d!1348510))

(assert (=> d!1348554 d!1348512))

(declare-fun d!1348756 () Bool)

(assert (=> d!1348756 (contains!12385 (extractMap!903 (toList!3671 lm!1616)) key!3717)))

(assert (=> d!1348756 true))

(declare-fun _$12!1220 () Unit!83978)

(assert (=> d!1348756 (= (choose!28220 lm!1616 key!3717 hashF!1220) _$12!1220)))

(declare-fun bs!764696 () Bool)

(assert (= bs!764696 d!1348756))

(assert (=> bs!764696 m!5131181))

(assert (=> bs!764696 m!5131181))

(assert (=> bs!764696 m!5131183))

(assert (=> d!1348554 d!1348756))

(declare-fun d!1348764 () Bool)

(declare-fun res!1839828 () Bool)

(declare-fun e!2766325 () Bool)

(assert (=> d!1348764 (=> res!1839828 e!2766325)))

(assert (=> d!1348764 (= res!1839828 (is-Nil!49811 (toList!3671 lm!1616)))))

(assert (=> d!1348764 (= (forall!9715 (toList!3671 lm!1616) lambda!157554) e!2766325)))

(declare-fun b!4442879 () Bool)

(declare-fun e!2766326 () Bool)

(assert (=> b!4442879 (= e!2766325 e!2766326)))

(declare-fun res!1839829 () Bool)

(assert (=> b!4442879 (=> (not res!1839829) (not e!2766326))))

(assert (=> b!4442879 (= res!1839829 (dynLambda!20915 lambda!157554 (h!55542 (toList!3671 lm!1616))))))

(declare-fun b!4442880 () Bool)

(assert (=> b!4442880 (= e!2766326 (forall!9715 (t!356877 (toList!3671 lm!1616)) lambda!157554))))

(assert (= (and d!1348764 (not res!1839828)) b!4442879))

(assert (= (and b!4442879 res!1839829) b!4442880))

(declare-fun b_lambda!145225 () Bool)

(assert (=> (not b_lambda!145225) (not b!4442879)))

(declare-fun m!5132061 () Bool)

(assert (=> b!4442879 m!5132061))

(declare-fun m!5132063 () Bool)

(assert (=> b!4442880 m!5132063))

(assert (=> d!1348554 d!1348764))

(declare-fun d!1348766 () Bool)

(declare-fun res!1839830 () Bool)

(declare-fun e!2766327 () Bool)

(assert (=> d!1348766 (=> res!1839830 e!2766327)))

(assert (=> d!1348766 (= res!1839830 (is-Nil!49811 (t!356877 (toList!3671 lm!1616))))))

(assert (=> d!1348766 (= (forall!9715 (t!356877 (toList!3671 lm!1616)) lambda!157521) e!2766327)))

(declare-fun b!4442881 () Bool)

(declare-fun e!2766328 () Bool)

(assert (=> b!4442881 (= e!2766327 e!2766328)))

(declare-fun res!1839831 () Bool)

(assert (=> b!4442881 (=> (not res!1839831) (not e!2766328))))

(assert (=> b!4442881 (= res!1839831 (dynLambda!20915 lambda!157521 (h!55542 (t!356877 (toList!3671 lm!1616)))))))

(declare-fun b!4442882 () Bool)

(assert (=> b!4442882 (= e!2766328 (forall!9715 (t!356877 (t!356877 (toList!3671 lm!1616))) lambda!157521))))

(assert (= (and d!1348766 (not res!1839830)) b!4442881))

(assert (= (and b!4442881 res!1839831) b!4442882))

(declare-fun b_lambda!145227 () Bool)

(assert (=> (not b_lambda!145227) (not b!4442881)))

(declare-fun m!5132065 () Bool)

(assert (=> b!4442881 m!5132065))

(declare-fun m!5132067 () Bool)

(assert (=> b!4442882 m!5132067))

(assert (=> b!4442355 d!1348766))

(assert (=> b!4442413 d!1348666))

(assert (=> b!4442413 d!1348668))

(declare-fun e!2766330 () Option!10812)

(declare-fun b!4442885 () Bool)

(assert (=> b!4442885 (= e!2766330 (getValueByKey!798 (t!356877 (toList!3671 lt!1637545)) (_1!28168 (tuple2!49749 hash!366 newBucket!194))))))

(declare-fun b!4442886 () Bool)

(assert (=> b!4442886 (= e!2766330 None!10811)))

(declare-fun b!4442883 () Bool)

(declare-fun e!2766329 () Option!10812)

(assert (=> b!4442883 (= e!2766329 (Some!10811 (_2!28168 (h!55542 (toList!3671 lt!1637545)))))))

(declare-fun c!756115 () Bool)

(declare-fun d!1348768 () Bool)

(assert (=> d!1348768 (= c!756115 (and (is-Cons!49811 (toList!3671 lt!1637545)) (= (_1!28168 (h!55542 (toList!3671 lt!1637545))) (_1!28168 (tuple2!49749 hash!366 newBucket!194)))))))

(assert (=> d!1348768 (= (getValueByKey!798 (toList!3671 lt!1637545) (_1!28168 (tuple2!49749 hash!366 newBucket!194))) e!2766329)))

(declare-fun b!4442884 () Bool)

(assert (=> b!4442884 (= e!2766329 e!2766330)))

(declare-fun c!756116 () Bool)

(assert (=> b!4442884 (= c!756116 (and (is-Cons!49811 (toList!3671 lt!1637545)) (not (= (_1!28168 (h!55542 (toList!3671 lt!1637545))) (_1!28168 (tuple2!49749 hash!366 newBucket!194))))))))

(assert (= (and d!1348768 c!756115) b!4442883))

(assert (= (and d!1348768 (not c!756115)) b!4442884))

(assert (= (and b!4442884 c!756116) b!4442885))

(assert (= (and b!4442884 (not c!756116)) b!4442886))

(declare-fun m!5132069 () Bool)

(assert (=> b!4442885 m!5132069))

(assert (=> b!4442447 d!1348768))

(declare-fun d!1348770 () Bool)

(assert (=> d!1348770 (isDefined!8101 (getValueByKey!797 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717))))

(declare-fun lt!1637902 () Unit!83978)

(assert (=> d!1348770 (= lt!1637902 (choose!28228 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717))))

(assert (=> d!1348770 (invariantList!847 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))))

(assert (=> d!1348770 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!704 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717) lt!1637902)))

(declare-fun bs!764703 () Bool)

(assert (= bs!764703 d!1348770))

(assert (=> bs!764703 m!5131301))

(assert (=> bs!764703 m!5131301))

(assert (=> bs!764703 m!5131303))

(declare-fun m!5132071 () Bool)

(assert (=> bs!764703 m!5132071))

(assert (=> bs!764703 m!5131637))

(assert (=> b!4442411 d!1348770))

(assert (=> b!4442411 d!1348688))

(assert (=> b!4442411 d!1348690))

(declare-fun d!1348772 () Bool)

(assert (=> d!1348772 (contains!12388 (getKeysList!294 (toList!3672 (extractMap!903 (toList!3671 lm!1616)))) key!3717)))

(declare-fun lt!1637903 () Unit!83978)

(assert (=> d!1348772 (= lt!1637903 (choose!28229 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717))))

(assert (=> d!1348772 (invariantList!847 (toList!3672 (extractMap!903 (toList!3671 lm!1616))))))

(assert (=> d!1348772 (= (lemmaInListThenGetKeysListContains!291 (toList!3672 (extractMap!903 (toList!3671 lm!1616))) key!3717) lt!1637903)))

(declare-fun bs!764704 () Bool)

(assert (= bs!764704 d!1348772))

(assert (=> bs!764704 m!5131311))

(assert (=> bs!764704 m!5131311))

(declare-fun m!5132073 () Bool)

(assert (=> bs!764704 m!5132073))

(declare-fun m!5132075 () Bool)

(assert (=> bs!764704 m!5132075))

(assert (=> bs!764704 m!5131637))

(assert (=> b!4442411 d!1348772))

(assert (=> b!4442386 d!1348746))

(declare-fun d!1348774 () Bool)

(assert (=> d!1348774 (containsKey!1255 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717)))

(declare-fun lt!1637904 () Unit!83978)

(assert (=> d!1348774 (= lt!1637904 (choose!28224 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717))))

(assert (=> d!1348774 (invariantList!847 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))))))

(assert (=> d!1348774 (= (lemmaInGetKeysListThenContainsKey!292 (toList!3672 (extractMap!903 (toList!3671 lt!1637450))) key!3717) lt!1637904)))

(declare-fun bs!764705 () Bool)

(assert (= bs!764705 d!1348774))

(assert (=> bs!764705 m!5131269))

(declare-fun m!5132077 () Bool)

(assert (=> bs!764705 m!5132077))

(assert (=> bs!764705 m!5131621))

(assert (=> b!4442386 d!1348774))

(assert (=> b!4442470 d!1348726))

(assert (=> b!4442470 d!1348728))

(declare-fun tp!1334283 () Bool)

(declare-fun b!4442887 () Bool)

(declare-fun e!2766331 () Bool)

(assert (=> b!4442887 (= e!2766331 (and tp_is_empty!26615 tp_is_empty!26613 tp!1334283))))

(assert (=> b!4442475 (= tp!1334269 e!2766331)))

(assert (= (and b!4442475 (is-Cons!49810 (_2!28168 (h!55542 (toList!3671 lm!1616))))) b!4442887))

(declare-fun b!4442888 () Bool)

(declare-fun e!2766332 () Bool)

(declare-fun tp!1334284 () Bool)

(declare-fun tp!1334285 () Bool)

(assert (=> b!4442888 (= e!2766332 (and tp!1334284 tp!1334285))))

(assert (=> b!4442475 (= tp!1334270 e!2766332)))

(assert (= (and b!4442475 (is-Cons!49811 (t!356877 (toList!3671 lm!1616)))) b!4442888))

(declare-fun b!4442889 () Bool)

(declare-fun e!2766333 () Bool)

(declare-fun tp!1334286 () Bool)

(assert (=> b!4442889 (= e!2766333 (and tp_is_empty!26615 tp_is_empty!26613 tp!1334286))))

(assert (=> b!4442480 (= tp!1334273 e!2766333)))

(assert (= (and b!4442480 (is-Cons!49810 (t!356876 (t!356876 newBucket!194)))) b!4442889))

(declare-fun b_lambda!145229 () Bool)

(assert (= b_lambda!145215 (or start!434766 b_lambda!145229)))

(declare-fun bs!764706 () Bool)

(declare-fun d!1348776 () Bool)

(assert (= bs!764706 (and d!1348776 start!434766)))

(assert (=> bs!764706 (= (dynLambda!20915 lambda!157521 (h!55542 (t!356877 (toList!3671 lt!1637450)))) (noDuplicateKeys!842 (_2!28168 (h!55542 (t!356877 (toList!3671 lt!1637450))))))))

(declare-fun m!5132097 () Bool)

(assert (=> bs!764706 m!5132097))

(assert (=> b!4442826 d!1348776))

(declare-fun b_lambda!145231 () Bool)

(assert (= b_lambda!145219 (or start!434766 b_lambda!145231)))

(declare-fun bs!764707 () Bool)

(declare-fun d!1348778 () Bool)

(assert (= bs!764707 (and d!1348778 start!434766)))

(assert (=> bs!764707 (= (dynLambda!20915 lambda!157521 (h!55542 (t!356877 (toList!3671 lt!1637447)))) (noDuplicateKeys!842 (_2!28168 (h!55542 (t!356877 (toList!3671 lt!1637447))))))))

(declare-fun m!5132103 () Bool)

(assert (=> bs!764707 m!5132103))

(assert (=> b!4442852 d!1348778))

(declare-fun b_lambda!145233 () Bool)

(assert (= b_lambda!145213 (or d!1348502 b_lambda!145233)))

(declare-fun bs!764708 () Bool)

(declare-fun d!1348780 () Bool)

(assert (= bs!764708 (and d!1348780 d!1348502)))

(assert (=> bs!764708 (= (dynLambda!20915 lambda!157541 (h!55542 (toList!3671 lt!1637450))) (noDuplicateKeys!842 (_2!28168 (h!55542 (toList!3671 lt!1637450)))))))

(assert (=> bs!764708 m!5131435))

(assert (=> b!4442805 d!1348780))

(declare-fun b_lambda!145235 () Bool)

(assert (= b_lambda!145209 (or d!1348490 b_lambda!145235)))

(declare-fun bs!764709 () Bool)

(declare-fun d!1348782 () Bool)

(assert (= bs!764709 (and d!1348782 d!1348490)))

(assert (=> bs!764709 (= (dynLambda!20917 lambda!157535 (h!55541 newBucket!194)) (= (hash!2300 hashF!1220 (_1!28167 (h!55541 newBucket!194))) hash!366))))

(declare-fun m!5132111 () Bool)

(assert (=> bs!764709 m!5132111))

(assert (=> b!4442773 d!1348782))

(declare-fun b_lambda!145237 () Bool)

(assert (= b_lambda!145211 (or d!1348496 b_lambda!145237)))

(declare-fun bs!764710 () Bool)

(declare-fun d!1348784 () Bool)

(assert (= bs!764710 (and d!1348784 d!1348496)))

(assert (=> bs!764710 (= (dynLambda!20915 lambda!157538 (h!55542 (toList!3671 lm!1616))) (allKeysSameHash!802 (_2!28168 (h!55542 (toList!3671 lm!1616))) (_1!28168 (h!55542 (toList!3671 lm!1616))) hashF!1220))))

(declare-fun m!5132119 () Bool)

(assert (=> bs!764710 m!5132119))

(assert (=> b!4442803 d!1348784))

(declare-fun b_lambda!145239 () Bool)

(assert (= b_lambda!145201 (or d!1348518 b_lambda!145239)))

(declare-fun bs!764711 () Bool)

(declare-fun d!1348786 () Bool)

(assert (= bs!764711 (and d!1348786 d!1348518)))

(assert (=> bs!764711 (= (dynLambda!20915 lambda!157545 (h!55542 (toList!3671 lt!1637450))) (allKeysSameHash!802 (_2!28168 (h!55542 (toList!3671 lt!1637450))) (_1!28168 (h!55542 (toList!3671 lt!1637450))) hashF!1220))))

(declare-fun m!5132123 () Bool)

(assert (=> bs!764711 m!5132123))

(assert (=> b!4442629 d!1348786))

(declare-fun b_lambda!145241 () Bool)

(assert (= b_lambda!145217 (or start!434766 b_lambda!145241)))

(declare-fun bs!764712 () Bool)

(declare-fun d!1348790 () Bool)

(assert (= bs!764712 (and d!1348790 start!434766)))

(assert (=> bs!764712 (= (dynLambda!20915 lambda!157521 (h!55542 (toList!3671 (+!1225 lm!1616 (tuple2!49749 hash!366 newBucket!194))))) (noDuplicateKeys!842 (_2!28168 (h!55542 (toList!3671 (+!1225 lm!1616 (tuple2!49749 hash!366 newBucket!194)))))))))

(declare-fun m!5132125 () Bool)

(assert (=> bs!764712 m!5132125))

(assert (=> b!4442845 d!1348790))

(declare-fun b_lambda!145243 () Bool)

(assert (= b_lambda!145227 (or start!434766 b_lambda!145243)))

(declare-fun bs!764713 () Bool)

(declare-fun d!1348792 () Bool)

(assert (= bs!764713 (and d!1348792 start!434766)))

(assert (=> bs!764713 (= (dynLambda!20915 lambda!157521 (h!55542 (t!356877 (toList!3671 lm!1616)))) (noDuplicateKeys!842 (_2!28168 (h!55542 (t!356877 (toList!3671 lm!1616))))))))

(declare-fun m!5132127 () Bool)

(assert (=> bs!764713 m!5132127))

(assert (=> b!4442881 d!1348792))

(declare-fun b_lambda!145245 () Bool)

(assert (= b_lambda!145225 (or d!1348554 b_lambda!145245)))

(declare-fun bs!764715 () Bool)

(declare-fun d!1348794 () Bool)

(assert (= bs!764715 (and d!1348794 d!1348554)))

(assert (=> bs!764715 (= (dynLambda!20915 lambda!157554 (h!55542 (toList!3671 lm!1616))) (noDuplicateKeys!842 (_2!28168 (h!55542 (toList!3671 lm!1616)))))))

(assert (=> bs!764715 m!5131433))

(assert (=> b!4442879 d!1348794))

(declare-fun b_lambda!145247 () Bool)

(assert (= b_lambda!145203 (or d!1348548 b_lambda!145247)))

(declare-fun bs!764717 () Bool)

(declare-fun d!1348796 () Bool)

(assert (= bs!764717 (and d!1348796 d!1348548)))

(assert (=> bs!764717 (= (dynLambda!20915 lambda!157551 (h!55542 (tail!7385 (toList!3671 lm!1616)))) (noDuplicateKeys!842 (_2!28168 (h!55542 (tail!7385 (toList!3671 lm!1616))))))))

(assert (=> bs!764717 m!5131717))

(assert (=> b!4442631 d!1348796))

(declare-fun b_lambda!145249 () Bool)

(assert (= b_lambda!145221 (or d!1348512 b_lambda!145249)))

(declare-fun bs!764719 () Bool)

(declare-fun d!1348798 () Bool)

(assert (= bs!764719 (and d!1348798 d!1348512)))

(assert (=> bs!764719 (= (dynLambda!20915 lambda!157542 (h!55542 (toList!3671 lm!1616))) (noDuplicateKeys!842 (_2!28168 (h!55542 (toList!3671 lm!1616)))))))

(assert (=> bs!764719 m!5131433))

(assert (=> b!4442862 d!1348798))

(push 1)

(assert (not bm!309092))

(assert (not b_lambda!145249))

(assert (not b!4442843))

(assert (not d!1348700))

(assert (not d!1348732))

(assert (not b!4442755))

(assert (not b_lambda!145241))

(assert (not d!1348724))

(assert (not d!1348600))

(assert (not b!4442730))

(assert (not b!4442729))

(assert (not b!4442652))

(assert (not b!4442807))

(assert (not d!1348772))

(assert (not b_lambda!145245))

(assert (not b!4442787))

(assert (not d!1348736))

(assert (not d!1348692))

(assert (not b!4442657))

(assert (not bs!764708))

(assert (not d!1348638))

(assert (not d!1348712))

(assert (not b!4442589))

(assert (not b!4442753))

(assert (not b!4442885))

(assert (not b!4442596))

(assert (not d!1348658))

(assert (not d!1348608))

(assert (not b!4442863))

(assert (not b!4442732))

(assert (not b!4442801))

(assert (not b!4442868))

(assert (not b!4442764))

(assert (not bm!309091))

(assert (not b!4442854))

(assert (not d!1348678))

(assert (not b!4442889))

(assert (not b!4442680))

(assert (not bs!764712))

(assert (not d!1348666))

(assert (not d!1348668))

(assert (not b!4442781))

(assert (not b!4442723))

(assert (not bm!309078))

(assert (not b!4442620))

(assert (not b!4442754))

(assert (not bm!309090))

(assert (not d!1348610))

(assert (not b!4442725))

(assert (not d!1348720))

(assert (not d!1348756))

(assert (not d!1348726))

(assert (not b!4442846))

(assert (not d!1348620))

(assert (not b!4442795))

(assert (not bm!309088))

(assert (not b!4442856))

(assert (not d!1348604))

(assert (not b!4442880))

(assert (not b!4442728))

(assert (not bs!764719))

(assert (not d!1348684))

(assert (not d!1348662))

(assert (not b!4442726))

(assert (not b!4442778))

(assert (not d!1348664))

(assert (not bs!764707))

(assert (not d!1348688))

(assert (not b!4442815))

(assert (not d!1348706))

(assert (not b!4442827))

(assert (not b!4442761))

(assert (not b!4442625))

(assert (not b!4442812))

(assert (not b_lambda!145229))

(assert (not b!4442811))

(assert (not bs!764710))

(assert (not d!1348670))

(assert (not b!4442792))

(assert (not b_lambda!145247))

(assert (not bs!764709))

(assert (not d!1348616))

(assert (not b!4442719))

(assert (not b!4442630))

(assert (not b!4442716))

(assert (not b!4442746))

(assert (not b!4442768))

(assert (not b!4442671))

(assert (not b!4442651))

(assert (not b_lambda!145189))

(assert (not d!1348660))

(assert (not b!4442656))

(assert (not b!4442814))

(assert (not d!1348774))

(assert (not d!1348634))

(assert (not b!4442829))

(assert (not d!1348734))

(assert (not d!1348694))

(assert (not b!4442578))

(assert (not b!4442840))

(assert (not b!4442759))

(assert (not d!1348770))

(assert (not b!4442632))

(assert (not b!4442853))

(assert (not b!4442767))

(assert (not b!4442804))

(assert (not b!4442735))

(assert tp_is_empty!26613)

(assert (not d!1348682))

(assert (not b_lambda!145233))

(assert (not b_lambda!145243))

(assert (not b!4442617))

(assert (not b!4442810))

(assert (not b!4442835))

(assert (not b!4442679))

(assert (not b!4442627))

(assert (not b!4442790))

(assert (not bm!309086))

(assert (not bs!764717))

(assert (not bm!309093))

(assert (not b!4442677))

(assert (not b!4442791))

(assert (not d!1348710))

(assert (not d!1348676))

(assert (not d!1348748))

(assert (not b_lambda!145191))

(assert (not b!4442664))

(assert (not bs!764715))

(assert (not b!4442779))

(assert (not b_lambda!145235))

(assert (not b_lambda!145237))

(assert (not b!4442681))

(assert (not b!4442733))

(assert (not d!1348680))

(assert (not b!4442595))

(assert (not b!4442774))

(assert tp_is_empty!26615)

(assert (not b!4442720))

(assert (not b!4442737))

(assert (not bm!309087))

(assert (not b!4442654))

(assert (not b!4442717))

(assert (not b_lambda!145187))

(assert (not d!1348744))

(assert (not b_lambda!145239))

(assert (not b!4442806))

(assert (not b_lambda!145231))

(assert (not b!4442777))

(assert (not bs!764713))

(assert (not d!1348686))

(assert (not b_lambda!145185))

(assert (not b!4442763))

(assert (not b!4442776))

(assert (not bs!764706))

(assert (not d!1348742))

(assert (not bm!309089))

(assert (not b!4442574))

(assert (not d!1348628))

(assert (not b!4442628))

(assert (not b!4442758))

(assert (not b!4442867))

(assert (not b!4442789))

(assert (not b!4442869))

(assert (not b!4442887))

(assert (not d!1348716))

(assert (not b!4442888))

(assert (not b!4442882))

(assert (not b!4442798))

(assert (not bm!309085))

(assert (not b!4442738))

(assert (not b!4442808))

(assert (not b!4442825))

(assert (not d!1348704))

(assert (not bs!764711))

(assert (not b!4442576))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

