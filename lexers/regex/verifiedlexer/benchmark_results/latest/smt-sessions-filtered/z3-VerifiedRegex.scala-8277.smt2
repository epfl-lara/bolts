; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!429922 () Bool)

(assert start!429922)

(declare-fun b!4415143 () Bool)

(declare-fun res!1823421 () Bool)

(declare-fun e!2749330 () Bool)

(assert (=> b!4415143 (=> (not res!1823421) (not e!2749330))))

(declare-datatypes ((K!10790 0))(
  ( (K!10791 (val!16903 Int)) )
))
(declare-fun key!3717 () K!10790)

(declare-datatypes ((Hashable!5081 0))(
  ( (HashableExt!5080 (__x!30784 Int)) )
))
(declare-fun hashF!1220 () Hashable!5081)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!1998 (Hashable!5081 K!10790) (_ BitVec 64))

(assert (=> b!4415143 (= res!1823421 (= (hash!1998 hashF!1220 key!3717) hash!366))))

(declare-datatypes ((V!11036 0))(
  ( (V!11037 (val!16904 Int)) )
))
(declare-datatypes ((tuple2!49126 0))(
  ( (tuple2!49127 (_1!27857 K!10790) (_2!27857 V!11036)) )
))
(declare-datatypes ((List!49555 0))(
  ( (Nil!49431) (Cons!49431 (h!55088 tuple2!49126) (t!356493 List!49555)) )
))
(declare-fun newBucket!194 () List!49555)

(declare-fun lt!1616969 () Bool)

(declare-fun e!2749321 () Bool)

(declare-fun newValue!93 () V!11036)

(declare-fun b!4415144 () Bool)

(assert (=> b!4415144 (= e!2749321 (and (not lt!1616969) (= newBucket!194 (Cons!49431 (tuple2!49127 key!3717 newValue!93) Nil!49431))))))

(declare-fun tp!1332529 () Bool)

(declare-fun b!4415145 () Bool)

(declare-fun tp_is_empty!25995 () Bool)

(declare-fun tp_is_empty!25993 () Bool)

(declare-fun e!2749327 () Bool)

(assert (=> b!4415145 (= e!2749327 (and tp_is_empty!25995 tp_is_empty!25993 tp!1332529))))

(declare-fun b!4415146 () Bool)

(declare-fun res!1823422 () Bool)

(declare-fun e!2749328 () Bool)

(assert (=> b!4415146 (=> res!1823422 e!2749328)))

(declare-datatypes ((tuple2!49128 0))(
  ( (tuple2!49129 (_1!27858 (_ BitVec 64)) (_2!27858 List!49555)) )
))
(declare-datatypes ((List!49556 0))(
  ( (Nil!49432) (Cons!49432 (h!55089 tuple2!49128) (t!356494 List!49556)) )
))
(declare-datatypes ((ListLongMap!2011 0))(
  ( (ListLongMap!2012 (toList!3361 List!49556)) )
))
(declare-fun lm!1616 () ListLongMap!2011)

(declare-fun lt!1616968 () Bool)

(get-info :version)

(assert (=> b!4415146 (= res!1823422 (or (not ((_ is Cons!49432) (toList!3361 lm!1616))) (not (= (_1!27858 (h!55089 (toList!3361 lm!1616))) hash!366)) lt!1616968))))

(declare-fun b!4415147 () Bool)

(declare-fun e!2749322 () Bool)

(assert (=> b!4415147 (= e!2749328 e!2749322)))

(declare-fun res!1823420 () Bool)

(assert (=> b!4415147 (=> res!1823420 e!2749322)))

(declare-datatypes ((ListMap!2605 0))(
  ( (ListMap!2606 (toList!3362 List!49555)) )
))
(declare-fun lt!1616972 () ListMap!2605)

(declare-fun lt!1616970 () ListMap!2605)

(assert (=> b!4415147 (= res!1823420 (not (= lt!1616972 lt!1616970)))))

(declare-fun lt!1616967 () ListMap!2605)

(declare-fun addToMapMapFromBucket!341 (List!49555 ListMap!2605) ListMap!2605)

(assert (=> b!4415147 (= lt!1616970 (addToMapMapFromBucket!341 newBucket!194 lt!1616967))))

(declare-fun lt!1616974 () ListLongMap!2011)

(declare-fun extractMap!748 (List!49556) ListMap!2605)

(assert (=> b!4415147 (= lt!1616972 (extractMap!748 (toList!3361 lt!1616974)))))

(assert (=> b!4415147 (= lt!1616967 (extractMap!748 (t!356494 (toList!3361 lm!1616))))))

(declare-fun b!4415148 () Bool)

(declare-fun res!1823407 () Bool)

(declare-fun e!2749324 () Bool)

(assert (=> b!4415148 (=> (not res!1823407) (not e!2749324))))

(declare-fun lambda!151704 () Int)

(declare-fun forall!9466 (List!49556 Int) Bool)

(assert (=> b!4415148 (= res!1823407 (forall!9466 (toList!3361 lm!1616) lambda!151704))))

(declare-fun b!4415149 () Bool)

(declare-fun e!2749325 () Bool)

(assert (=> b!4415149 (= e!2749322 e!2749325)))

(declare-fun res!1823412 () Bool)

(assert (=> b!4415149 (=> res!1823412 e!2749325)))

(declare-fun lt!1616966 () List!49555)

(declare-fun lt!1616975 () tuple2!49126)

(assert (=> b!4415149 (= res!1823412 (not (= newBucket!194 (Cons!49431 lt!1616975 lt!1616966))))))

(declare-fun apply!11539 (ListLongMap!2011 (_ BitVec 64)) List!49555)

(assert (=> b!4415149 (= lt!1616966 (apply!11539 lm!1616 hash!366))))

(assert (=> b!4415149 (= lt!1616975 (tuple2!49127 key!3717 newValue!93))))

(declare-fun b!4415150 () Bool)

(declare-fun e!2749326 () Bool)

(declare-fun noDuplicateKeys!687 (List!49555) Bool)

(assert (=> b!4415150 (= e!2749326 (noDuplicateKeys!687 lt!1616966))))

(declare-fun lt!1616971 () ListMap!2605)

(declare-fun eq!363 (ListMap!2605 ListMap!2605) Bool)

(declare-fun +!974 (ListMap!2605 tuple2!49126) ListMap!2605)

(assert (=> b!4415150 (eq!363 lt!1616971 (+!974 (addToMapMapFromBucket!341 lt!1616966 lt!1616967) lt!1616975))))

(declare-datatypes ((Unit!80743 0))(
  ( (Unit!80744) )
))
(declare-fun lt!1616977 () Unit!80743)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!158 (ListMap!2605 K!10790 V!11036 List!49555) Unit!80743)

(assert (=> b!4415150 (= lt!1616977 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!158 lt!1616967 key!3717 newValue!93 lt!1616966))))

(declare-fun b!4415151 () Bool)

(declare-fun res!1823409 () Bool)

(assert (=> b!4415151 (=> res!1823409 e!2749328)))

(declare-fun tail!7175 (List!49556) List!49556)

(assert (=> b!4415151 (= res!1823409 (not (= (tail!7175 (toList!3361 lt!1616974)) (t!356494 (toList!3361 lm!1616)))))))

(declare-fun b!4415153 () Bool)

(assert (=> b!4415153 (= e!2749324 (not e!2749328))))

(declare-fun res!1823415 () Bool)

(assert (=> b!4415153 (=> res!1823415 e!2749328)))

(assert (=> b!4415153 (= res!1823415 (not (forall!9466 (toList!3361 lt!1616974) lambda!151704)))))

(assert (=> b!4415153 (forall!9466 (toList!3361 lt!1616974) lambda!151704)))

(declare-fun lt!1616976 () tuple2!49128)

(declare-fun +!975 (ListLongMap!2011 tuple2!49128) ListLongMap!2011)

(assert (=> b!4415153 (= lt!1616974 (+!975 lm!1616 lt!1616976))))

(assert (=> b!4415153 (= lt!1616976 (tuple2!49129 hash!366 newBucket!194))))

(declare-fun lt!1616973 () Unit!80743)

(declare-fun addValidProp!331 (ListLongMap!2011 Int (_ BitVec 64) List!49555) Unit!80743)

(assert (=> b!4415153 (= lt!1616973 (addValidProp!331 lm!1616 lambda!151704 hash!366 newBucket!194))))

(declare-fun b!4415154 () Bool)

(declare-fun res!1823419 () Bool)

(assert (=> b!4415154 (=> (not res!1823419) (not e!2749330))))

(declare-fun contains!11881 (ListMap!2605 K!10790) Bool)

(assert (=> b!4415154 (= res!1823419 (not (contains!11881 (extractMap!748 (toList!3361 lm!1616)) key!3717)))))

(declare-fun b!4415155 () Bool)

(declare-fun res!1823417 () Bool)

(assert (=> b!4415155 (=> res!1823417 e!2749328)))

(declare-fun head!9166 (List!49556) tuple2!49128)

(assert (=> b!4415155 (= res!1823417 (not (= (head!9166 (toList!3361 lt!1616974)) lt!1616976)))))

(declare-fun b!4415156 () Bool)

(declare-fun e!2749329 () Bool)

(declare-fun tp!1332530 () Bool)

(assert (=> b!4415156 (= e!2749329 tp!1332530)))

(declare-fun b!4415157 () Bool)

(declare-fun res!1823410 () Bool)

(assert (=> b!4415157 (=> (not res!1823410) (not e!2749324))))

(assert (=> b!4415157 (= res!1823410 (noDuplicateKeys!687 newBucket!194))))

(declare-fun b!4415158 () Bool)

(declare-fun res!1823418 () Bool)

(assert (=> b!4415158 (=> (not res!1823418) (not e!2749330))))

(declare-fun allKeysSameHashInMap!793 (ListLongMap!2011 Hashable!5081) Bool)

(assert (=> b!4415158 (= res!1823418 (allKeysSameHashInMap!793 lm!1616 hashF!1220))))

(declare-fun b!4415159 () Bool)

(assert (=> b!4415159 (= e!2749325 e!2749326)))

(declare-fun res!1823411 () Bool)

(assert (=> b!4415159 (=> res!1823411 e!2749326)))

(assert (=> b!4415159 (= res!1823411 (not (= lt!1616970 lt!1616971)))))

(assert (=> b!4415159 (= lt!1616971 (addToMapMapFromBucket!341 lt!1616966 (+!974 lt!1616967 lt!1616975)))))

(declare-fun b!4415160 () Bool)

(declare-fun e!2749323 () Bool)

(assert (=> b!4415160 (= e!2749323 (= newBucket!194 (Cons!49431 (tuple2!49127 key!3717 newValue!93) (apply!11539 lm!1616 hash!366))))))

(declare-fun b!4415161 () Bool)

(assert (=> b!4415161 (= e!2749330 e!2749324)))

(declare-fun res!1823423 () Bool)

(assert (=> b!4415161 (=> (not res!1823423) (not e!2749324))))

(assert (=> b!4415161 (= res!1823423 e!2749321)))

(declare-fun res!1823413 () Bool)

(assert (=> b!4415161 (=> res!1823413 e!2749321)))

(assert (=> b!4415161 (= res!1823413 e!2749323)))

(declare-fun res!1823414 () Bool)

(assert (=> b!4415161 (=> (not res!1823414) (not e!2749323))))

(assert (=> b!4415161 (= res!1823414 (not lt!1616968))))

(assert (=> b!4415161 (= lt!1616968 (not lt!1616969))))

(declare-fun contains!11882 (ListLongMap!2011 (_ BitVec 64)) Bool)

(assert (=> b!4415161 (= lt!1616969 (contains!11882 lm!1616 hash!366))))

(declare-fun res!1823416 () Bool)

(assert (=> start!429922 (=> (not res!1823416) (not e!2749330))))

(assert (=> start!429922 (= res!1823416 (forall!9466 (toList!3361 lm!1616) lambda!151704))))

(assert (=> start!429922 e!2749330))

(assert (=> start!429922 tp_is_empty!25993))

(assert (=> start!429922 tp_is_empty!25995))

(assert (=> start!429922 e!2749327))

(declare-fun inv!64976 (ListLongMap!2011) Bool)

(assert (=> start!429922 (and (inv!64976 lm!1616) e!2749329)))

(assert (=> start!429922 true))

(declare-fun b!4415152 () Bool)

(declare-fun res!1823408 () Bool)

(assert (=> b!4415152 (=> (not res!1823408) (not e!2749330))))

(declare-fun allKeysSameHash!647 (List!49555 (_ BitVec 64) Hashable!5081) Bool)

(assert (=> b!4415152 (= res!1823408 (allKeysSameHash!647 newBucket!194 hash!366 hashF!1220))))

(assert (= (and start!429922 res!1823416) b!4415158))

(assert (= (and b!4415158 res!1823418) b!4415143))

(assert (= (and b!4415143 res!1823421) b!4415152))

(assert (= (and b!4415152 res!1823408) b!4415154))

(assert (= (and b!4415154 res!1823419) b!4415161))

(assert (= (and b!4415161 res!1823414) b!4415160))

(assert (= (and b!4415161 (not res!1823413)) b!4415144))

(assert (= (and b!4415161 res!1823423) b!4415157))

(assert (= (and b!4415157 res!1823410) b!4415148))

(assert (= (and b!4415148 res!1823407) b!4415153))

(assert (= (and b!4415153 (not res!1823415)) b!4415146))

(assert (= (and b!4415146 (not res!1823422)) b!4415155))

(assert (= (and b!4415155 (not res!1823417)) b!4415151))

(assert (= (and b!4415151 (not res!1823409)) b!4415147))

(assert (= (and b!4415147 (not res!1823420)) b!4415149))

(assert (= (and b!4415149 (not res!1823412)) b!4415159))

(assert (= (and b!4415159 (not res!1823411)) b!4415150))

(assert (= (and start!429922 ((_ is Cons!49431) newBucket!194)) b!4415145))

(assert (= start!429922 b!4415156))

(declare-fun m!5091019 () Bool)

(assert (=> b!4415143 m!5091019))

(declare-fun m!5091021 () Bool)

(assert (=> b!4415153 m!5091021))

(assert (=> b!4415153 m!5091021))

(declare-fun m!5091023 () Bool)

(assert (=> b!4415153 m!5091023))

(declare-fun m!5091025 () Bool)

(assert (=> b!4415153 m!5091025))

(declare-fun m!5091027 () Bool)

(assert (=> b!4415154 m!5091027))

(assert (=> b!4415154 m!5091027))

(declare-fun m!5091029 () Bool)

(assert (=> b!4415154 m!5091029))

(declare-fun m!5091031 () Bool)

(assert (=> b!4415148 m!5091031))

(declare-fun m!5091033 () Bool)

(assert (=> b!4415161 m!5091033))

(declare-fun m!5091035 () Bool)

(assert (=> b!4415152 m!5091035))

(declare-fun m!5091037 () Bool)

(assert (=> b!4415155 m!5091037))

(declare-fun m!5091039 () Bool)

(assert (=> b!4415151 m!5091039))

(declare-fun m!5091041 () Bool)

(assert (=> b!4415158 m!5091041))

(declare-fun m!5091043 () Bool)

(assert (=> b!4415157 m!5091043))

(declare-fun m!5091045 () Bool)

(assert (=> b!4415160 m!5091045))

(assert (=> start!429922 m!5091031))

(declare-fun m!5091047 () Bool)

(assert (=> start!429922 m!5091047))

(declare-fun m!5091049 () Bool)

(assert (=> b!4415147 m!5091049))

(declare-fun m!5091051 () Bool)

(assert (=> b!4415147 m!5091051))

(declare-fun m!5091053 () Bool)

(assert (=> b!4415147 m!5091053))

(declare-fun m!5091055 () Bool)

(assert (=> b!4415150 m!5091055))

(declare-fun m!5091057 () Bool)

(assert (=> b!4415150 m!5091057))

(declare-fun m!5091059 () Bool)

(assert (=> b!4415150 m!5091059))

(assert (=> b!4415150 m!5091055))

(declare-fun m!5091061 () Bool)

(assert (=> b!4415150 m!5091061))

(declare-fun m!5091063 () Bool)

(assert (=> b!4415150 m!5091063))

(assert (=> b!4415150 m!5091059))

(assert (=> b!4415149 m!5091045))

(declare-fun m!5091065 () Bool)

(assert (=> b!4415159 m!5091065))

(assert (=> b!4415159 m!5091065))

(declare-fun m!5091067 () Bool)

(assert (=> b!4415159 m!5091067))

(check-sat (not b!4415149) (not b!4415143) (not b!4415157) (not b!4415155) (not b!4415161) (not b!4415158) (not b!4415147) (not b!4415145) (not b!4415150) (not b!4415156) (not b!4415154) tp_is_empty!25995 (not b!4415151) (not b!4415152) tp_is_empty!25993 (not start!429922) (not b!4415148) (not b!4415159) (not b!4415153) (not b!4415160))
(check-sat)
(get-model)

(declare-fun d!1337778 () Bool)

(declare-fun e!2749335 () Bool)

(assert (=> d!1337778 e!2749335))

(declare-fun res!1823426 () Bool)

(assert (=> d!1337778 (=> res!1823426 e!2749335)))

(declare-fun lt!1616988 () Bool)

(assert (=> d!1337778 (= res!1823426 (not lt!1616988))))

(declare-fun lt!1616989 () Bool)

(assert (=> d!1337778 (= lt!1616988 lt!1616989)))

(declare-fun lt!1616987 () Unit!80743)

(declare-fun e!2749336 () Unit!80743)

(assert (=> d!1337778 (= lt!1616987 e!2749336)))

(declare-fun c!751758 () Bool)

(assert (=> d!1337778 (= c!751758 lt!1616989)))

(declare-fun containsKey!1031 (List!49556 (_ BitVec 64)) Bool)

(assert (=> d!1337778 (= lt!1616989 (containsKey!1031 (toList!3361 lm!1616) hash!366))))

(assert (=> d!1337778 (= (contains!11882 lm!1616 hash!366) lt!1616988)))

(declare-fun b!4415168 () Bool)

(declare-fun lt!1616986 () Unit!80743)

(assert (=> b!4415168 (= e!2749336 lt!1616986)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!566 (List!49556 (_ BitVec 64)) Unit!80743)

(assert (=> b!4415168 (= lt!1616986 (lemmaContainsKeyImpliesGetValueByKeyDefined!566 (toList!3361 lm!1616) hash!366))))

(declare-datatypes ((Option!10671 0))(
  ( (None!10670) (Some!10670 (v!43830 List!49555)) )
))
(declare-fun isDefined!7963 (Option!10671) Bool)

(declare-fun getValueByKey!657 (List!49556 (_ BitVec 64)) Option!10671)

(assert (=> b!4415168 (isDefined!7963 (getValueByKey!657 (toList!3361 lm!1616) hash!366))))

(declare-fun b!4415169 () Bool)

(declare-fun Unit!80753 () Unit!80743)

(assert (=> b!4415169 (= e!2749336 Unit!80753)))

(declare-fun b!4415170 () Bool)

(assert (=> b!4415170 (= e!2749335 (isDefined!7963 (getValueByKey!657 (toList!3361 lm!1616) hash!366)))))

(assert (= (and d!1337778 c!751758) b!4415168))

(assert (= (and d!1337778 (not c!751758)) b!4415169))

(assert (= (and d!1337778 (not res!1823426)) b!4415170))

(declare-fun m!5091069 () Bool)

(assert (=> d!1337778 m!5091069))

(declare-fun m!5091071 () Bool)

(assert (=> b!4415168 m!5091071))

(declare-fun m!5091073 () Bool)

(assert (=> b!4415168 m!5091073))

(assert (=> b!4415168 m!5091073))

(declare-fun m!5091075 () Bool)

(assert (=> b!4415168 m!5091075))

(assert (=> b!4415170 m!5091073))

(assert (=> b!4415170 m!5091073))

(assert (=> b!4415170 m!5091075))

(assert (=> b!4415161 d!1337778))

(declare-fun d!1337782 () Bool)

(assert (=> d!1337782 (eq!363 (addToMapMapFromBucket!341 lt!1616966 (+!974 lt!1616967 (tuple2!49127 key!3717 newValue!93))) (+!974 (addToMapMapFromBucket!341 lt!1616966 lt!1616967) (tuple2!49127 key!3717 newValue!93)))))

(declare-fun lt!1617016 () Unit!80743)

(declare-fun choose!27785 (ListMap!2605 K!10790 V!11036 List!49555) Unit!80743)

(assert (=> d!1337782 (= lt!1617016 (choose!27785 lt!1616967 key!3717 newValue!93 lt!1616966))))

(declare-fun containsKey!1032 (List!49555 K!10790) Bool)

(assert (=> d!1337782 (not (containsKey!1032 lt!1616966 key!3717))))

(assert (=> d!1337782 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!158 lt!1616967 key!3717 newValue!93 lt!1616966) lt!1617016)))

(declare-fun bs!753282 () Bool)

(assert (= bs!753282 d!1337782))

(declare-fun m!5091103 () Bool)

(assert (=> bs!753282 m!5091103))

(assert (=> bs!753282 m!5091059))

(declare-fun m!5091105 () Bool)

(assert (=> bs!753282 m!5091105))

(declare-fun m!5091107 () Bool)

(assert (=> bs!753282 m!5091107))

(declare-fun m!5091109 () Bool)

(assert (=> bs!753282 m!5091109))

(assert (=> bs!753282 m!5091105))

(declare-fun m!5091111 () Bool)

(assert (=> bs!753282 m!5091111))

(declare-fun m!5091113 () Bool)

(assert (=> bs!753282 m!5091113))

(assert (=> bs!753282 m!5091059))

(assert (=> bs!753282 m!5091107))

(assert (=> bs!753282 m!5091109))

(assert (=> b!4415150 d!1337782))

(declare-fun d!1337790 () Bool)

(declare-fun res!1823440 () Bool)

(declare-fun e!2749359 () Bool)

(assert (=> d!1337790 (=> res!1823440 e!2749359)))

(assert (=> d!1337790 (= res!1823440 (not ((_ is Cons!49431) lt!1616966)))))

(assert (=> d!1337790 (= (noDuplicateKeys!687 lt!1616966) e!2749359)))

(declare-fun b!4415202 () Bool)

(declare-fun e!2749360 () Bool)

(assert (=> b!4415202 (= e!2749359 e!2749360)))

(declare-fun res!1823441 () Bool)

(assert (=> b!4415202 (=> (not res!1823441) (not e!2749360))))

(assert (=> b!4415202 (= res!1823441 (not (containsKey!1032 (t!356493 lt!1616966) (_1!27857 (h!55088 lt!1616966)))))))

(declare-fun b!4415203 () Bool)

(assert (=> b!4415203 (= e!2749360 (noDuplicateKeys!687 (t!356493 lt!1616966)))))

(assert (= (and d!1337790 (not res!1823440)) b!4415202))

(assert (= (and b!4415202 res!1823441) b!4415203))

(declare-fun m!5091115 () Bool)

(assert (=> b!4415202 m!5091115))

(declare-fun m!5091117 () Bool)

(assert (=> b!4415203 m!5091117))

(assert (=> b!4415150 d!1337790))

(declare-fun d!1337792 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7913 (List!49555) (InoxSet tuple2!49126))

(assert (=> d!1337792 (= (eq!363 lt!1616971 (+!974 (addToMapMapFromBucket!341 lt!1616966 lt!1616967) lt!1616975)) (= (content!7913 (toList!3362 lt!1616971)) (content!7913 (toList!3362 (+!974 (addToMapMapFromBucket!341 lt!1616966 lt!1616967) lt!1616975)))))))

(declare-fun bs!753283 () Bool)

(assert (= bs!753283 d!1337792))

(declare-fun m!5091119 () Bool)

(assert (=> bs!753283 m!5091119))

(declare-fun m!5091121 () Bool)

(assert (=> bs!753283 m!5091121))

(assert (=> b!4415150 d!1337792))

(declare-fun b!4415259 () Bool)

(assert (=> b!4415259 true))

(declare-fun bs!753289 () Bool)

(declare-fun b!4415261 () Bool)

(assert (= bs!753289 (and b!4415261 b!4415259)))

(declare-fun lambda!151769 () Int)

(declare-fun lambda!151768 () Int)

(assert (=> bs!753289 (= lambda!151769 lambda!151768)))

(assert (=> b!4415261 true))

(declare-fun lambda!151770 () Int)

(declare-fun lt!1617169 () ListMap!2605)

(assert (=> bs!753289 (= (= lt!1617169 lt!1616967) (= lambda!151770 lambda!151768))))

(assert (=> b!4415261 (= (= lt!1617169 lt!1616967) (= lambda!151770 lambda!151769))))

(assert (=> b!4415261 true))

(declare-fun bs!753290 () Bool)

(declare-fun d!1337794 () Bool)

(assert (= bs!753290 (and d!1337794 b!4415259)))

(declare-fun lambda!151771 () Int)

(declare-fun lt!1617154 () ListMap!2605)

(assert (=> bs!753290 (= (= lt!1617154 lt!1616967) (= lambda!151771 lambda!151768))))

(declare-fun bs!753291 () Bool)

(assert (= bs!753291 (and d!1337794 b!4415261)))

(assert (=> bs!753291 (= (= lt!1617154 lt!1616967) (= lambda!151771 lambda!151769))))

(assert (=> bs!753291 (= (= lt!1617154 lt!1617169) (= lambda!151771 lambda!151770))))

(assert (=> d!1337794 true))

(declare-fun call!307284 () Bool)

(declare-fun c!751776 () Bool)

(declare-fun bm!307278 () Bool)

(declare-fun forall!9468 (List!49555 Int) Bool)

(assert (=> bm!307278 (= call!307284 (forall!9468 (toList!3362 lt!1616967) (ite c!751776 lambda!151768 lambda!151770)))))

(declare-fun b!4415257 () Bool)

(declare-fun e!2749393 () Bool)

(declare-fun invariantList!778 (List!49555) Bool)

(assert (=> b!4415257 (= e!2749393 (invariantList!778 (toList!3362 lt!1617154)))))

(declare-fun bm!307279 () Bool)

(declare-fun call!307283 () Unit!80743)

(declare-fun lemmaContainsAllItsOwnKeys!155 (ListMap!2605) Unit!80743)

(assert (=> bm!307279 (= call!307283 (lemmaContainsAllItsOwnKeys!155 lt!1616967))))

(declare-fun b!4415258 () Bool)

(declare-fun e!2749394 () Bool)

(assert (=> b!4415258 (= e!2749394 (forall!9468 (toList!3362 lt!1616967) lambda!151770))))

(declare-fun e!2749395 () ListMap!2605)

(assert (=> b!4415259 (= e!2749395 lt!1616967)))

(declare-fun lt!1617165 () Unit!80743)

(assert (=> b!4415259 (= lt!1617165 call!307283)))

(assert (=> b!4415259 call!307284))

(declare-fun lt!1617157 () Unit!80743)

(assert (=> b!4415259 (= lt!1617157 lt!1617165)))

(declare-fun call!307285 () Bool)

(assert (=> b!4415259 call!307285))

(declare-fun lt!1617158 () Unit!80743)

(declare-fun Unit!80759 () Unit!80743)

(assert (=> b!4415259 (= lt!1617158 Unit!80759)))

(declare-fun b!4415260 () Bool)

(declare-fun res!1823479 () Bool)

(assert (=> b!4415260 (=> (not res!1823479) (not e!2749393))))

(assert (=> b!4415260 (= res!1823479 (forall!9468 (toList!3362 lt!1616967) lambda!151771))))

(assert (=> b!4415261 (= e!2749395 lt!1617169)))

(declare-fun lt!1617161 () ListMap!2605)

(assert (=> b!4415261 (= lt!1617161 (+!974 lt!1616967 (h!55088 lt!1616966)))))

(assert (=> b!4415261 (= lt!1617169 (addToMapMapFromBucket!341 (t!356493 lt!1616966) (+!974 lt!1616967 (h!55088 lt!1616966))))))

(declare-fun lt!1617155 () Unit!80743)

(assert (=> b!4415261 (= lt!1617155 call!307283)))

(assert (=> b!4415261 call!307285))

(declare-fun lt!1617160 () Unit!80743)

(assert (=> b!4415261 (= lt!1617160 lt!1617155)))

(assert (=> b!4415261 (forall!9468 (toList!3362 lt!1617161) lambda!151770)))

(declare-fun lt!1617164 () Unit!80743)

(declare-fun Unit!80760 () Unit!80743)

(assert (=> b!4415261 (= lt!1617164 Unit!80760)))

(assert (=> b!4415261 (forall!9468 (t!356493 lt!1616966) lambda!151770)))

(declare-fun lt!1617153 () Unit!80743)

(declare-fun Unit!80761 () Unit!80743)

(assert (=> b!4415261 (= lt!1617153 Unit!80761)))

(declare-fun lt!1617159 () Unit!80743)

(declare-fun Unit!80762 () Unit!80743)

(assert (=> b!4415261 (= lt!1617159 Unit!80762)))

(declare-fun lt!1617162 () Unit!80743)

(declare-fun forallContained!2065 (List!49555 Int tuple2!49126) Unit!80743)

(assert (=> b!4415261 (= lt!1617162 (forallContained!2065 (toList!3362 lt!1617161) lambda!151770 (h!55088 lt!1616966)))))

(assert (=> b!4415261 (contains!11881 lt!1617161 (_1!27857 (h!55088 lt!1616966)))))

(declare-fun lt!1617151 () Unit!80743)

(declare-fun Unit!80763 () Unit!80743)

(assert (=> b!4415261 (= lt!1617151 Unit!80763)))

(assert (=> b!4415261 (contains!11881 lt!1617169 (_1!27857 (h!55088 lt!1616966)))))

(declare-fun lt!1617168 () Unit!80743)

(declare-fun Unit!80764 () Unit!80743)

(assert (=> b!4415261 (= lt!1617168 Unit!80764)))

(assert (=> b!4415261 (forall!9468 lt!1616966 lambda!151770)))

(declare-fun lt!1617167 () Unit!80743)

(declare-fun Unit!80765 () Unit!80743)

(assert (=> b!4415261 (= lt!1617167 Unit!80765)))

(assert (=> b!4415261 (forall!9468 (toList!3362 lt!1617161) lambda!151770)))

(declare-fun lt!1617152 () Unit!80743)

(declare-fun Unit!80766 () Unit!80743)

(assert (=> b!4415261 (= lt!1617152 Unit!80766)))

(declare-fun lt!1617163 () Unit!80743)

(declare-fun Unit!80767 () Unit!80743)

(assert (=> b!4415261 (= lt!1617163 Unit!80767)))

(declare-fun lt!1617166 () Unit!80743)

(declare-fun addForallContainsKeyThenBeforeAdding!155 (ListMap!2605 ListMap!2605 K!10790 V!11036) Unit!80743)

(assert (=> b!4415261 (= lt!1617166 (addForallContainsKeyThenBeforeAdding!155 lt!1616967 lt!1617169 (_1!27857 (h!55088 lt!1616966)) (_2!27857 (h!55088 lt!1616966))))))

(assert (=> b!4415261 call!307284))

(declare-fun lt!1617149 () Unit!80743)

(assert (=> b!4415261 (= lt!1617149 lt!1617166)))

(assert (=> b!4415261 (forall!9468 (toList!3362 lt!1616967) lambda!151770)))

(declare-fun lt!1617150 () Unit!80743)

(declare-fun Unit!80768 () Unit!80743)

(assert (=> b!4415261 (= lt!1617150 Unit!80768)))

(declare-fun res!1823477 () Bool)

(assert (=> b!4415261 (= res!1823477 (forall!9468 lt!1616966 lambda!151770))))

(assert (=> b!4415261 (=> (not res!1823477) (not e!2749394))))

(assert (=> b!4415261 e!2749394))

(declare-fun lt!1617156 () Unit!80743)

(declare-fun Unit!80769 () Unit!80743)

(assert (=> b!4415261 (= lt!1617156 Unit!80769)))

(assert (=> d!1337794 e!2749393))

(declare-fun res!1823478 () Bool)

(assert (=> d!1337794 (=> (not res!1823478) (not e!2749393))))

(assert (=> d!1337794 (= res!1823478 (forall!9468 lt!1616966 lambda!151771))))

(assert (=> d!1337794 (= lt!1617154 e!2749395)))

(assert (=> d!1337794 (= c!751776 ((_ is Nil!49431) lt!1616966))))

(assert (=> d!1337794 (noDuplicateKeys!687 lt!1616966)))

(assert (=> d!1337794 (= (addToMapMapFromBucket!341 lt!1616966 lt!1616967) lt!1617154)))

(declare-fun bm!307280 () Bool)

(assert (=> bm!307280 (= call!307285 (forall!9468 (toList!3362 lt!1616967) (ite c!751776 lambda!151768 lambda!151769)))))

(assert (= (and d!1337794 c!751776) b!4415259))

(assert (= (and d!1337794 (not c!751776)) b!4415261))

(assert (= (and b!4415261 res!1823477) b!4415258))

(assert (= (or b!4415259 b!4415261) bm!307279))

(assert (= (or b!4415259 b!4415261) bm!307280))

(assert (= (or b!4415259 b!4415261) bm!307278))

(assert (= (and d!1337794 res!1823478) b!4415260))

(assert (= (and b!4415260 res!1823479) b!4415257))

(declare-fun m!5091205 () Bool)

(assert (=> b!4415258 m!5091205))

(declare-fun m!5091207 () Bool)

(assert (=> bm!307278 m!5091207))

(declare-fun m!5091209 () Bool)

(assert (=> b!4415260 m!5091209))

(declare-fun m!5091211 () Bool)

(assert (=> b!4415261 m!5091211))

(declare-fun m!5091213 () Bool)

(assert (=> b!4415261 m!5091213))

(declare-fun m!5091215 () Bool)

(assert (=> b!4415261 m!5091215))

(declare-fun m!5091217 () Bool)

(assert (=> b!4415261 m!5091217))

(declare-fun m!5091219 () Bool)

(assert (=> b!4415261 m!5091219))

(assert (=> b!4415261 m!5091211))

(declare-fun m!5091221 () Bool)

(assert (=> b!4415261 m!5091221))

(assert (=> b!4415261 m!5091215))

(declare-fun m!5091223 () Bool)

(assert (=> b!4415261 m!5091223))

(declare-fun m!5091225 () Bool)

(assert (=> b!4415261 m!5091225))

(assert (=> b!4415261 m!5091217))

(assert (=> b!4415261 m!5091205))

(declare-fun m!5091227 () Bool)

(assert (=> b!4415261 m!5091227))

(declare-fun m!5091229 () Bool)

(assert (=> d!1337794 m!5091229))

(assert (=> d!1337794 m!5091061))

(declare-fun m!5091231 () Bool)

(assert (=> bm!307279 m!5091231))

(declare-fun m!5091233 () Bool)

(assert (=> b!4415257 m!5091233))

(declare-fun m!5091235 () Bool)

(assert (=> bm!307280 m!5091235))

(assert (=> b!4415150 d!1337794))

(declare-fun d!1337814 () Bool)

(declare-fun e!2749412 () Bool)

(assert (=> d!1337814 e!2749412))

(declare-fun res!1823499 () Bool)

(assert (=> d!1337814 (=> (not res!1823499) (not e!2749412))))

(declare-fun lt!1617204 () ListMap!2605)

(assert (=> d!1337814 (= res!1823499 (contains!11881 lt!1617204 (_1!27857 lt!1616975)))))

(declare-fun lt!1617205 () List!49555)

(assert (=> d!1337814 (= lt!1617204 (ListMap!2606 lt!1617205))))

(declare-fun lt!1617202 () Unit!80743)

(declare-fun lt!1617203 () Unit!80743)

(assert (=> d!1337814 (= lt!1617202 lt!1617203)))

(declare-datatypes ((Option!10672 0))(
  ( (None!10671) (Some!10671 (v!43831 V!11036)) )
))
(declare-fun getValueByKey!658 (List!49555 K!10790) Option!10672)

(assert (=> d!1337814 (= (getValueByKey!658 lt!1617205 (_1!27857 lt!1616975)) (Some!10671 (_2!27857 lt!1616975)))))

(declare-fun lemmaContainsTupThenGetReturnValue!395 (List!49555 K!10790 V!11036) Unit!80743)

(assert (=> d!1337814 (= lt!1617203 (lemmaContainsTupThenGetReturnValue!395 lt!1617205 (_1!27857 lt!1616975) (_2!27857 lt!1616975)))))

(declare-fun insertNoDuplicatedKeys!171 (List!49555 K!10790 V!11036) List!49555)

(assert (=> d!1337814 (= lt!1617205 (insertNoDuplicatedKeys!171 (toList!3362 (addToMapMapFromBucket!341 lt!1616966 lt!1616967)) (_1!27857 lt!1616975) (_2!27857 lt!1616975)))))

(assert (=> d!1337814 (= (+!974 (addToMapMapFromBucket!341 lt!1616966 lt!1616967) lt!1616975) lt!1617204)))

(declare-fun b!4415287 () Bool)

(declare-fun res!1823498 () Bool)

(assert (=> b!4415287 (=> (not res!1823498) (not e!2749412))))

(assert (=> b!4415287 (= res!1823498 (= (getValueByKey!658 (toList!3362 lt!1617204) (_1!27857 lt!1616975)) (Some!10671 (_2!27857 lt!1616975))))))

(declare-fun b!4415288 () Bool)

(declare-fun contains!11886 (List!49555 tuple2!49126) Bool)

(assert (=> b!4415288 (= e!2749412 (contains!11886 (toList!3362 lt!1617204) lt!1616975))))

(assert (= (and d!1337814 res!1823499) b!4415287))

(assert (= (and b!4415287 res!1823498) b!4415288))

(declare-fun m!5091281 () Bool)

(assert (=> d!1337814 m!5091281))

(declare-fun m!5091283 () Bool)

(assert (=> d!1337814 m!5091283))

(declare-fun m!5091285 () Bool)

(assert (=> d!1337814 m!5091285))

(declare-fun m!5091287 () Bool)

(assert (=> d!1337814 m!5091287))

(declare-fun m!5091291 () Bool)

(assert (=> b!4415287 m!5091291))

(declare-fun m!5091295 () Bool)

(assert (=> b!4415288 m!5091295))

(assert (=> b!4415150 d!1337814))

(declare-fun d!1337824 () Bool)

(declare-fun get!16102 (Option!10671) List!49555)

(assert (=> d!1337824 (= (apply!11539 lm!1616 hash!366) (get!16102 (getValueByKey!657 (toList!3361 lm!1616) hash!366)))))

(declare-fun bs!753307 () Bool)

(assert (= bs!753307 d!1337824))

(assert (=> bs!753307 m!5091073))

(assert (=> bs!753307 m!5091073))

(declare-fun m!5091305 () Bool)

(assert (=> bs!753307 m!5091305))

(assert (=> b!4415160 d!1337824))

(declare-fun d!1337828 () Bool)

(assert (=> d!1337828 (= (tail!7175 (toList!3361 lt!1616974)) (t!356494 (toList!3361 lt!1616974)))))

(assert (=> b!4415151 d!1337828))

(declare-fun bs!753308 () Bool)

(declare-fun d!1337830 () Bool)

(assert (= bs!753308 (and d!1337830 start!429922)))

(declare-fun lambda!151781 () Int)

(assert (=> bs!753308 (not (= lambda!151781 lambda!151704))))

(assert (=> d!1337830 true))

(assert (=> d!1337830 (= (allKeysSameHashInMap!793 lm!1616 hashF!1220) (forall!9466 (toList!3361 lm!1616) lambda!151781))))

(declare-fun bs!753309 () Bool)

(assert (= bs!753309 d!1337830))

(declare-fun m!5091307 () Bool)

(assert (=> bs!753309 m!5091307))

(assert (=> b!4415158 d!1337830))

(declare-fun bs!753310 () Bool)

(declare-fun b!4415295 () Bool)

(assert (= bs!753310 (and b!4415295 b!4415259)))

(declare-fun lambda!151782 () Int)

(assert (=> bs!753310 (= lambda!151782 lambda!151768)))

(declare-fun bs!753311 () Bool)

(assert (= bs!753311 (and b!4415295 b!4415261)))

(assert (=> bs!753311 (= lambda!151782 lambda!151769)))

(assert (=> bs!753311 (= (= lt!1616967 lt!1617169) (= lambda!151782 lambda!151770))))

(declare-fun bs!753312 () Bool)

(assert (= bs!753312 (and b!4415295 d!1337794)))

(assert (=> bs!753312 (= (= lt!1616967 lt!1617154) (= lambda!151782 lambda!151771))))

(assert (=> b!4415295 true))

(declare-fun bs!753313 () Bool)

(declare-fun b!4415297 () Bool)

(assert (= bs!753313 (and b!4415297 b!4415295)))

(declare-fun lambda!151783 () Int)

(assert (=> bs!753313 (= lambda!151783 lambda!151782)))

(declare-fun bs!753314 () Bool)

(assert (= bs!753314 (and b!4415297 b!4415261)))

(assert (=> bs!753314 (= (= lt!1616967 lt!1617169) (= lambda!151783 lambda!151770))))

(assert (=> bs!753314 (= lambda!151783 lambda!151769)))

(declare-fun bs!753315 () Bool)

(assert (= bs!753315 (and b!4415297 d!1337794)))

(assert (=> bs!753315 (= (= lt!1616967 lt!1617154) (= lambda!151783 lambda!151771))))

(declare-fun bs!753316 () Bool)

(assert (= bs!753316 (and b!4415297 b!4415259)))

(assert (=> bs!753316 (= lambda!151783 lambda!151768)))

(assert (=> b!4415297 true))

(declare-fun lt!1617230 () ListMap!2605)

(declare-fun lambda!151784 () Int)

(assert (=> bs!753313 (= (= lt!1617230 lt!1616967) (= lambda!151784 lambda!151782))))

(assert (=> bs!753314 (= (= lt!1617230 lt!1617169) (= lambda!151784 lambda!151770))))

(assert (=> bs!753314 (= (= lt!1617230 lt!1616967) (= lambda!151784 lambda!151769))))

(assert (=> b!4415297 (= (= lt!1617230 lt!1616967) (= lambda!151784 lambda!151783))))

(assert (=> bs!753315 (= (= lt!1617230 lt!1617154) (= lambda!151784 lambda!151771))))

(assert (=> bs!753316 (= (= lt!1617230 lt!1616967) (= lambda!151784 lambda!151768))))

(assert (=> b!4415297 true))

(declare-fun bs!753317 () Bool)

(declare-fun d!1337832 () Bool)

(assert (= bs!753317 (and d!1337832 b!4415295)))

(declare-fun lambda!151785 () Int)

(declare-fun lt!1617215 () ListMap!2605)

(assert (=> bs!753317 (= (= lt!1617215 lt!1616967) (= lambda!151785 lambda!151782))))

(declare-fun bs!753318 () Bool)

(assert (= bs!753318 (and d!1337832 b!4415261)))

(assert (=> bs!753318 (= (= lt!1617215 lt!1616967) (= lambda!151785 lambda!151769))))

(declare-fun bs!753319 () Bool)

(assert (= bs!753319 (and d!1337832 b!4415297)))

(assert (=> bs!753319 (= (= lt!1617215 lt!1616967) (= lambda!151785 lambda!151783))))

(assert (=> bs!753318 (= (= lt!1617215 lt!1617169) (= lambda!151785 lambda!151770))))

(assert (=> bs!753319 (= (= lt!1617215 lt!1617230) (= lambda!151785 lambda!151784))))

(declare-fun bs!753320 () Bool)

(assert (= bs!753320 (and d!1337832 d!1337794)))

(assert (=> bs!753320 (= (= lt!1617215 lt!1617154) (= lambda!151785 lambda!151771))))

(declare-fun bs!753321 () Bool)

(assert (= bs!753321 (and d!1337832 b!4415259)))

(assert (=> bs!753321 (= (= lt!1617215 lt!1616967) (= lambda!151785 lambda!151768))))

(assert (=> d!1337832 true))

(declare-fun call!307290 () Bool)

(declare-fun c!751778 () Bool)

(declare-fun bm!307284 () Bool)

(assert (=> bm!307284 (= call!307290 (forall!9468 (toList!3362 lt!1616967) (ite c!751778 lambda!151782 lambda!151784)))))

(declare-fun b!4415293 () Bool)

(declare-fun e!2749414 () Bool)

(assert (=> b!4415293 (= e!2749414 (invariantList!778 (toList!3362 lt!1617215)))))

(declare-fun bm!307285 () Bool)

(declare-fun call!307289 () Unit!80743)

(assert (=> bm!307285 (= call!307289 (lemmaContainsAllItsOwnKeys!155 lt!1616967))))

(declare-fun b!4415294 () Bool)

(declare-fun e!2749415 () Bool)

(assert (=> b!4415294 (= e!2749415 (forall!9468 (toList!3362 lt!1616967) lambda!151784))))

(declare-fun e!2749416 () ListMap!2605)

(assert (=> b!4415295 (= e!2749416 lt!1616967)))

(declare-fun lt!1617226 () Unit!80743)

(assert (=> b!4415295 (= lt!1617226 call!307289)))

(assert (=> b!4415295 call!307290))

(declare-fun lt!1617218 () Unit!80743)

(assert (=> b!4415295 (= lt!1617218 lt!1617226)))

(declare-fun call!307291 () Bool)

(assert (=> b!4415295 call!307291))

(declare-fun lt!1617219 () Unit!80743)

(declare-fun Unit!80771 () Unit!80743)

(assert (=> b!4415295 (= lt!1617219 Unit!80771)))

(declare-fun b!4415296 () Bool)

(declare-fun res!1823504 () Bool)

(assert (=> b!4415296 (=> (not res!1823504) (not e!2749414))))

(assert (=> b!4415296 (= res!1823504 (forall!9468 (toList!3362 lt!1616967) lambda!151785))))

(assert (=> b!4415297 (= e!2749416 lt!1617230)))

(declare-fun lt!1617222 () ListMap!2605)

(assert (=> b!4415297 (= lt!1617222 (+!974 lt!1616967 (h!55088 newBucket!194)))))

(assert (=> b!4415297 (= lt!1617230 (addToMapMapFromBucket!341 (t!356493 newBucket!194) (+!974 lt!1616967 (h!55088 newBucket!194))))))

(declare-fun lt!1617216 () Unit!80743)

(assert (=> b!4415297 (= lt!1617216 call!307289)))

(assert (=> b!4415297 call!307291))

(declare-fun lt!1617221 () Unit!80743)

(assert (=> b!4415297 (= lt!1617221 lt!1617216)))

(assert (=> b!4415297 (forall!9468 (toList!3362 lt!1617222) lambda!151784)))

(declare-fun lt!1617225 () Unit!80743)

(declare-fun Unit!80775 () Unit!80743)

(assert (=> b!4415297 (= lt!1617225 Unit!80775)))

(assert (=> b!4415297 (forall!9468 (t!356493 newBucket!194) lambda!151784)))

(declare-fun lt!1617214 () Unit!80743)

(declare-fun Unit!80776 () Unit!80743)

(assert (=> b!4415297 (= lt!1617214 Unit!80776)))

(declare-fun lt!1617220 () Unit!80743)

(declare-fun Unit!80778 () Unit!80743)

(assert (=> b!4415297 (= lt!1617220 Unit!80778)))

(declare-fun lt!1617223 () Unit!80743)

(assert (=> b!4415297 (= lt!1617223 (forallContained!2065 (toList!3362 lt!1617222) lambda!151784 (h!55088 newBucket!194)))))

(assert (=> b!4415297 (contains!11881 lt!1617222 (_1!27857 (h!55088 newBucket!194)))))

(declare-fun lt!1617212 () Unit!80743)

(declare-fun Unit!80781 () Unit!80743)

(assert (=> b!4415297 (= lt!1617212 Unit!80781)))

(assert (=> b!4415297 (contains!11881 lt!1617230 (_1!27857 (h!55088 newBucket!194)))))

(declare-fun lt!1617229 () Unit!80743)

(declare-fun Unit!80783 () Unit!80743)

(assert (=> b!4415297 (= lt!1617229 Unit!80783)))

(assert (=> b!4415297 (forall!9468 newBucket!194 lambda!151784)))

(declare-fun lt!1617228 () Unit!80743)

(declare-fun Unit!80785 () Unit!80743)

(assert (=> b!4415297 (= lt!1617228 Unit!80785)))

(assert (=> b!4415297 (forall!9468 (toList!3362 lt!1617222) lambda!151784)))

(declare-fun lt!1617213 () Unit!80743)

(declare-fun Unit!80786 () Unit!80743)

(assert (=> b!4415297 (= lt!1617213 Unit!80786)))

(declare-fun lt!1617224 () Unit!80743)

(declare-fun Unit!80787 () Unit!80743)

(assert (=> b!4415297 (= lt!1617224 Unit!80787)))

(declare-fun lt!1617227 () Unit!80743)

(assert (=> b!4415297 (= lt!1617227 (addForallContainsKeyThenBeforeAdding!155 lt!1616967 lt!1617230 (_1!27857 (h!55088 newBucket!194)) (_2!27857 (h!55088 newBucket!194))))))

(assert (=> b!4415297 call!307290))

(declare-fun lt!1617210 () Unit!80743)

(assert (=> b!4415297 (= lt!1617210 lt!1617227)))

(assert (=> b!4415297 (forall!9468 (toList!3362 lt!1616967) lambda!151784)))

(declare-fun lt!1617211 () Unit!80743)

(declare-fun Unit!80789 () Unit!80743)

(assert (=> b!4415297 (= lt!1617211 Unit!80789)))

(declare-fun res!1823502 () Bool)

(assert (=> b!4415297 (= res!1823502 (forall!9468 newBucket!194 lambda!151784))))

(assert (=> b!4415297 (=> (not res!1823502) (not e!2749415))))

(assert (=> b!4415297 e!2749415))

(declare-fun lt!1617217 () Unit!80743)

(declare-fun Unit!80791 () Unit!80743)

(assert (=> b!4415297 (= lt!1617217 Unit!80791)))

(assert (=> d!1337832 e!2749414))

(declare-fun res!1823503 () Bool)

(assert (=> d!1337832 (=> (not res!1823503) (not e!2749414))))

(assert (=> d!1337832 (= res!1823503 (forall!9468 newBucket!194 lambda!151785))))

(assert (=> d!1337832 (= lt!1617215 e!2749416)))

(assert (=> d!1337832 (= c!751778 ((_ is Nil!49431) newBucket!194))))

(assert (=> d!1337832 (noDuplicateKeys!687 newBucket!194)))

(assert (=> d!1337832 (= (addToMapMapFromBucket!341 newBucket!194 lt!1616967) lt!1617215)))

(declare-fun bm!307286 () Bool)

(assert (=> bm!307286 (= call!307291 (forall!9468 (toList!3362 lt!1616967) (ite c!751778 lambda!151782 lambda!151783)))))

(assert (= (and d!1337832 c!751778) b!4415295))

(assert (= (and d!1337832 (not c!751778)) b!4415297))

(assert (= (and b!4415297 res!1823502) b!4415294))

(assert (= (or b!4415295 b!4415297) bm!307285))

(assert (= (or b!4415295 b!4415297) bm!307286))

(assert (= (or b!4415295 b!4415297) bm!307284))

(assert (= (and d!1337832 res!1823503) b!4415296))

(assert (= (and b!4415296 res!1823504) b!4415293))

(declare-fun m!5091309 () Bool)

(assert (=> b!4415294 m!5091309))

(declare-fun m!5091311 () Bool)

(assert (=> bm!307284 m!5091311))

(declare-fun m!5091313 () Bool)

(assert (=> b!4415296 m!5091313))

(declare-fun m!5091315 () Bool)

(assert (=> b!4415297 m!5091315))

(declare-fun m!5091317 () Bool)

(assert (=> b!4415297 m!5091317))

(declare-fun m!5091319 () Bool)

(assert (=> b!4415297 m!5091319))

(declare-fun m!5091321 () Bool)

(assert (=> b!4415297 m!5091321))

(declare-fun m!5091323 () Bool)

(assert (=> b!4415297 m!5091323))

(assert (=> b!4415297 m!5091315))

(declare-fun m!5091325 () Bool)

(assert (=> b!4415297 m!5091325))

(assert (=> b!4415297 m!5091319))

(declare-fun m!5091327 () Bool)

(assert (=> b!4415297 m!5091327))

(declare-fun m!5091329 () Bool)

(assert (=> b!4415297 m!5091329))

(assert (=> b!4415297 m!5091321))

(assert (=> b!4415297 m!5091309))

(declare-fun m!5091331 () Bool)

(assert (=> b!4415297 m!5091331))

(declare-fun m!5091333 () Bool)

(assert (=> d!1337832 m!5091333))

(assert (=> d!1337832 m!5091043))

(assert (=> bm!307285 m!5091231))

(declare-fun m!5091335 () Bool)

(assert (=> b!4415293 m!5091335))

(declare-fun m!5091337 () Bool)

(assert (=> bm!307286 m!5091337))

(assert (=> b!4415147 d!1337832))

(declare-fun bs!753352 () Bool)

(declare-fun d!1337834 () Bool)

(assert (= bs!753352 (and d!1337834 start!429922)))

(declare-fun lambda!151794 () Int)

(assert (=> bs!753352 (= lambda!151794 lambda!151704)))

(declare-fun bs!753353 () Bool)

(assert (= bs!753353 (and d!1337834 d!1337830)))

(assert (=> bs!753353 (not (= lambda!151794 lambda!151781))))

(declare-fun lt!1617259 () ListMap!2605)

(assert (=> d!1337834 (invariantList!778 (toList!3362 lt!1617259))))

(declare-fun e!2749424 () ListMap!2605)

(assert (=> d!1337834 (= lt!1617259 e!2749424)))

(declare-fun c!751784 () Bool)

(assert (=> d!1337834 (= c!751784 ((_ is Cons!49432) (toList!3361 lt!1616974)))))

(assert (=> d!1337834 (forall!9466 (toList!3361 lt!1616974) lambda!151794)))

(assert (=> d!1337834 (= (extractMap!748 (toList!3361 lt!1616974)) lt!1617259)))

(declare-fun b!4415311 () Bool)

(assert (=> b!4415311 (= e!2749424 (addToMapMapFromBucket!341 (_2!27858 (h!55089 (toList!3361 lt!1616974))) (extractMap!748 (t!356494 (toList!3361 lt!1616974)))))))

(declare-fun b!4415312 () Bool)

(assert (=> b!4415312 (= e!2749424 (ListMap!2606 Nil!49431))))

(assert (= (and d!1337834 c!751784) b!4415311))

(assert (= (and d!1337834 (not c!751784)) b!4415312))

(declare-fun m!5091403 () Bool)

(assert (=> d!1337834 m!5091403))

(declare-fun m!5091405 () Bool)

(assert (=> d!1337834 m!5091405))

(declare-fun m!5091407 () Bool)

(assert (=> b!4415311 m!5091407))

(assert (=> b!4415311 m!5091407))

(declare-fun m!5091409 () Bool)

(assert (=> b!4415311 m!5091409))

(assert (=> b!4415147 d!1337834))

(declare-fun bs!753354 () Bool)

(declare-fun d!1337848 () Bool)

(assert (= bs!753354 (and d!1337848 start!429922)))

(declare-fun lambda!151795 () Int)

(assert (=> bs!753354 (= lambda!151795 lambda!151704)))

(declare-fun bs!753355 () Bool)

(assert (= bs!753355 (and d!1337848 d!1337830)))

(assert (=> bs!753355 (not (= lambda!151795 lambda!151781))))

(declare-fun bs!753356 () Bool)

(assert (= bs!753356 (and d!1337848 d!1337834)))

(assert (=> bs!753356 (= lambda!151795 lambda!151794)))

(declare-fun lt!1617260 () ListMap!2605)

(assert (=> d!1337848 (invariantList!778 (toList!3362 lt!1617260))))

(declare-fun e!2749425 () ListMap!2605)

(assert (=> d!1337848 (= lt!1617260 e!2749425)))

(declare-fun c!751785 () Bool)

(assert (=> d!1337848 (= c!751785 ((_ is Cons!49432) (t!356494 (toList!3361 lm!1616))))))

(assert (=> d!1337848 (forall!9466 (t!356494 (toList!3361 lm!1616)) lambda!151795)))

(assert (=> d!1337848 (= (extractMap!748 (t!356494 (toList!3361 lm!1616))) lt!1617260)))

(declare-fun b!4415313 () Bool)

(assert (=> b!4415313 (= e!2749425 (addToMapMapFromBucket!341 (_2!27858 (h!55089 (t!356494 (toList!3361 lm!1616)))) (extractMap!748 (t!356494 (t!356494 (toList!3361 lm!1616))))))))

(declare-fun b!4415314 () Bool)

(assert (=> b!4415314 (= e!2749425 (ListMap!2606 Nil!49431))))

(assert (= (and d!1337848 c!751785) b!4415313))

(assert (= (and d!1337848 (not c!751785)) b!4415314))

(declare-fun m!5091411 () Bool)

(assert (=> d!1337848 m!5091411))

(declare-fun m!5091413 () Bool)

(assert (=> d!1337848 m!5091413))

(declare-fun m!5091415 () Bool)

(assert (=> b!4415313 m!5091415))

(assert (=> b!4415313 m!5091415))

(declare-fun m!5091417 () Bool)

(assert (=> b!4415313 m!5091417))

(assert (=> b!4415147 d!1337848))

(declare-fun d!1337850 () Bool)

(declare-fun res!1823512 () Bool)

(declare-fun e!2749430 () Bool)

(assert (=> d!1337850 (=> res!1823512 e!2749430)))

(assert (=> d!1337850 (= res!1823512 ((_ is Nil!49432) (toList!3361 lm!1616)))))

(assert (=> d!1337850 (= (forall!9466 (toList!3361 lm!1616) lambda!151704) e!2749430)))

(declare-fun b!4415319 () Bool)

(declare-fun e!2749431 () Bool)

(assert (=> b!4415319 (= e!2749430 e!2749431)))

(declare-fun res!1823513 () Bool)

(assert (=> b!4415319 (=> (not res!1823513) (not e!2749431))))

(declare-fun dynLambda!20809 (Int tuple2!49128) Bool)

(assert (=> b!4415319 (= res!1823513 (dynLambda!20809 lambda!151704 (h!55089 (toList!3361 lm!1616))))))

(declare-fun b!4415320 () Bool)

(assert (=> b!4415320 (= e!2749431 (forall!9466 (t!356494 (toList!3361 lm!1616)) lambda!151704))))

(assert (= (and d!1337850 (not res!1823512)) b!4415319))

(assert (= (and b!4415319 res!1823513) b!4415320))

(declare-fun b_lambda!142157 () Bool)

(assert (=> (not b_lambda!142157) (not b!4415319)))

(declare-fun m!5091419 () Bool)

(assert (=> b!4415319 m!5091419))

(declare-fun m!5091421 () Bool)

(assert (=> b!4415320 m!5091421))

(assert (=> start!429922 d!1337850))

(declare-fun d!1337852 () Bool)

(declare-fun isStrictlySorted!205 (List!49556) Bool)

(assert (=> d!1337852 (= (inv!64976 lm!1616) (isStrictlySorted!205 (toList!3361 lm!1616)))))

(declare-fun bs!753357 () Bool)

(assert (= bs!753357 d!1337852))

(declare-fun m!5091423 () Bool)

(assert (=> bs!753357 m!5091423))

(assert (=> start!429922 d!1337852))

(assert (=> b!4415149 d!1337824))

(declare-fun bs!753358 () Bool)

(declare-fun b!4415329 () Bool)

(assert (= bs!753358 (and b!4415329 b!4415295)))

(declare-fun lambda!151796 () Int)

(assert (=> bs!753358 (= (= (+!974 lt!1616967 lt!1616975) lt!1616967) (= lambda!151796 lambda!151782))))

(declare-fun bs!753359 () Bool)

(assert (= bs!753359 (and b!4415329 b!4415261)))

(assert (=> bs!753359 (= (= (+!974 lt!1616967 lt!1616975) lt!1616967) (= lambda!151796 lambda!151769))))

(declare-fun bs!753360 () Bool)

(assert (= bs!753360 (and b!4415329 d!1337832)))

(assert (=> bs!753360 (= (= (+!974 lt!1616967 lt!1616975) lt!1617215) (= lambda!151796 lambda!151785))))

(declare-fun bs!753361 () Bool)

(assert (= bs!753361 (and b!4415329 b!4415297)))

(assert (=> bs!753361 (= (= (+!974 lt!1616967 lt!1616975) lt!1616967) (= lambda!151796 lambda!151783))))

(assert (=> bs!753359 (= (= (+!974 lt!1616967 lt!1616975) lt!1617169) (= lambda!151796 lambda!151770))))

(assert (=> bs!753361 (= (= (+!974 lt!1616967 lt!1616975) lt!1617230) (= lambda!151796 lambda!151784))))

(declare-fun bs!753362 () Bool)

(assert (= bs!753362 (and b!4415329 d!1337794)))

(assert (=> bs!753362 (= (= (+!974 lt!1616967 lt!1616975) lt!1617154) (= lambda!151796 lambda!151771))))

(declare-fun bs!753363 () Bool)

(assert (= bs!753363 (and b!4415329 b!4415259)))

(assert (=> bs!753363 (= (= (+!974 lt!1616967 lt!1616975) lt!1616967) (= lambda!151796 lambda!151768))))

(assert (=> b!4415329 true))

(declare-fun bs!753364 () Bool)

(declare-fun b!4415331 () Bool)

(assert (= bs!753364 (and b!4415331 b!4415329)))

(declare-fun lambda!151797 () Int)

(assert (=> bs!753364 (= lambda!151797 lambda!151796)))

(declare-fun bs!753365 () Bool)

(assert (= bs!753365 (and b!4415331 b!4415295)))

(assert (=> bs!753365 (= (= (+!974 lt!1616967 lt!1616975) lt!1616967) (= lambda!151797 lambda!151782))))

(declare-fun bs!753366 () Bool)

(assert (= bs!753366 (and b!4415331 b!4415261)))

(assert (=> bs!753366 (= (= (+!974 lt!1616967 lt!1616975) lt!1616967) (= lambda!151797 lambda!151769))))

(declare-fun bs!753367 () Bool)

(assert (= bs!753367 (and b!4415331 d!1337832)))

(assert (=> bs!753367 (= (= (+!974 lt!1616967 lt!1616975) lt!1617215) (= lambda!151797 lambda!151785))))

(declare-fun bs!753368 () Bool)

(assert (= bs!753368 (and b!4415331 b!4415297)))

(assert (=> bs!753368 (= (= (+!974 lt!1616967 lt!1616975) lt!1616967) (= lambda!151797 lambda!151783))))

(assert (=> bs!753366 (= (= (+!974 lt!1616967 lt!1616975) lt!1617169) (= lambda!151797 lambda!151770))))

(assert (=> bs!753368 (= (= (+!974 lt!1616967 lt!1616975) lt!1617230) (= lambda!151797 lambda!151784))))

(declare-fun bs!753369 () Bool)

(assert (= bs!753369 (and b!4415331 d!1337794)))

(assert (=> bs!753369 (= (= (+!974 lt!1616967 lt!1616975) lt!1617154) (= lambda!151797 lambda!151771))))

(declare-fun bs!753370 () Bool)

(assert (= bs!753370 (and b!4415331 b!4415259)))

(assert (=> bs!753370 (= (= (+!974 lt!1616967 lt!1616975) lt!1616967) (= lambda!151797 lambda!151768))))

(assert (=> b!4415331 true))

(declare-fun lambda!151798 () Int)

(declare-fun lt!1617289 () ListMap!2605)

(assert (=> bs!753364 (= (= lt!1617289 (+!974 lt!1616967 lt!1616975)) (= lambda!151798 lambda!151796))))

(assert (=> bs!753365 (= (= lt!1617289 lt!1616967) (= lambda!151798 lambda!151782))))

(assert (=> b!4415331 (= (= lt!1617289 (+!974 lt!1616967 lt!1616975)) (= lambda!151798 lambda!151797))))

(assert (=> bs!753366 (= (= lt!1617289 lt!1616967) (= lambda!151798 lambda!151769))))

(assert (=> bs!753367 (= (= lt!1617289 lt!1617215) (= lambda!151798 lambda!151785))))

(assert (=> bs!753368 (= (= lt!1617289 lt!1616967) (= lambda!151798 lambda!151783))))

(assert (=> bs!753366 (= (= lt!1617289 lt!1617169) (= lambda!151798 lambda!151770))))

(assert (=> bs!753368 (= (= lt!1617289 lt!1617230) (= lambda!151798 lambda!151784))))

(assert (=> bs!753369 (= (= lt!1617289 lt!1617154) (= lambda!151798 lambda!151771))))

(assert (=> bs!753370 (= (= lt!1617289 lt!1616967) (= lambda!151798 lambda!151768))))

(assert (=> b!4415331 true))

(declare-fun bs!753378 () Bool)

(declare-fun d!1337854 () Bool)

(assert (= bs!753378 (and d!1337854 b!4415329)))

(declare-fun lt!1617274 () ListMap!2605)

(declare-fun lambda!151802 () Int)

(assert (=> bs!753378 (= (= lt!1617274 (+!974 lt!1616967 lt!1616975)) (= lambda!151802 lambda!151796))))

(declare-fun bs!753379 () Bool)

(assert (= bs!753379 (and d!1337854 b!4415331)))

(assert (=> bs!753379 (= (= lt!1617274 lt!1617289) (= lambda!151802 lambda!151798))))

(declare-fun bs!753380 () Bool)

(assert (= bs!753380 (and d!1337854 b!4415295)))

(assert (=> bs!753380 (= (= lt!1617274 lt!1616967) (= lambda!151802 lambda!151782))))

(assert (=> bs!753379 (= (= lt!1617274 (+!974 lt!1616967 lt!1616975)) (= lambda!151802 lambda!151797))))

(declare-fun bs!753383 () Bool)

(assert (= bs!753383 (and d!1337854 b!4415261)))

(assert (=> bs!753383 (= (= lt!1617274 lt!1616967) (= lambda!151802 lambda!151769))))

(declare-fun bs!753384 () Bool)

(assert (= bs!753384 (and d!1337854 d!1337832)))

(assert (=> bs!753384 (= (= lt!1617274 lt!1617215) (= lambda!151802 lambda!151785))))

(declare-fun bs!753385 () Bool)

(assert (= bs!753385 (and d!1337854 b!4415297)))

(assert (=> bs!753385 (= (= lt!1617274 lt!1616967) (= lambda!151802 lambda!151783))))

(assert (=> bs!753383 (= (= lt!1617274 lt!1617169) (= lambda!151802 lambda!151770))))

(assert (=> bs!753385 (= (= lt!1617274 lt!1617230) (= lambda!151802 lambda!151784))))

(declare-fun bs!753387 () Bool)

(assert (= bs!753387 (and d!1337854 d!1337794)))

(assert (=> bs!753387 (= (= lt!1617274 lt!1617154) (= lambda!151802 lambda!151771))))

(declare-fun bs!753388 () Bool)

(assert (= bs!753388 (and d!1337854 b!4415259)))

(assert (=> bs!753388 (= (= lt!1617274 lt!1616967) (= lambda!151802 lambda!151768))))

(assert (=> d!1337854 true))

(declare-fun c!751788 () Bool)

(declare-fun bm!307290 () Bool)

(declare-fun call!307296 () Bool)

(assert (=> bm!307290 (= call!307296 (forall!9468 (toList!3362 (+!974 lt!1616967 lt!1616975)) (ite c!751788 lambda!151796 lambda!151798)))))

(declare-fun b!4415327 () Bool)

(declare-fun e!2749436 () Bool)

(assert (=> b!4415327 (= e!2749436 (invariantList!778 (toList!3362 lt!1617274)))))

(declare-fun bm!307291 () Bool)

(declare-fun call!307295 () Unit!80743)

(assert (=> bm!307291 (= call!307295 (lemmaContainsAllItsOwnKeys!155 (+!974 lt!1616967 lt!1616975)))))

(declare-fun e!2749437 () Bool)

(declare-fun b!4415328 () Bool)

(assert (=> b!4415328 (= e!2749437 (forall!9468 (toList!3362 (+!974 lt!1616967 lt!1616975)) lambda!151798))))

(declare-fun e!2749438 () ListMap!2605)

(assert (=> b!4415329 (= e!2749438 (+!974 lt!1616967 lt!1616975))))

(declare-fun lt!1617285 () Unit!80743)

(assert (=> b!4415329 (= lt!1617285 call!307295)))

(assert (=> b!4415329 call!307296))

(declare-fun lt!1617277 () Unit!80743)

(assert (=> b!4415329 (= lt!1617277 lt!1617285)))

(declare-fun call!307297 () Bool)

(assert (=> b!4415329 call!307297))

(declare-fun lt!1617278 () Unit!80743)

(declare-fun Unit!80795 () Unit!80743)

(assert (=> b!4415329 (= lt!1617278 Unit!80795)))

(declare-fun b!4415330 () Bool)

(declare-fun res!1823518 () Bool)

(assert (=> b!4415330 (=> (not res!1823518) (not e!2749436))))

(assert (=> b!4415330 (= res!1823518 (forall!9468 (toList!3362 (+!974 lt!1616967 lt!1616975)) lambda!151802))))

(assert (=> b!4415331 (= e!2749438 lt!1617289)))

(declare-fun lt!1617281 () ListMap!2605)

(assert (=> b!4415331 (= lt!1617281 (+!974 (+!974 lt!1616967 lt!1616975) (h!55088 lt!1616966)))))

(assert (=> b!4415331 (= lt!1617289 (addToMapMapFromBucket!341 (t!356493 lt!1616966) (+!974 (+!974 lt!1616967 lt!1616975) (h!55088 lt!1616966))))))

(declare-fun lt!1617275 () Unit!80743)

(assert (=> b!4415331 (= lt!1617275 call!307295)))

(assert (=> b!4415331 call!307297))

(declare-fun lt!1617280 () Unit!80743)

(assert (=> b!4415331 (= lt!1617280 lt!1617275)))

(assert (=> b!4415331 (forall!9468 (toList!3362 lt!1617281) lambda!151798)))

(declare-fun lt!1617284 () Unit!80743)

(declare-fun Unit!80800 () Unit!80743)

(assert (=> b!4415331 (= lt!1617284 Unit!80800)))

(assert (=> b!4415331 (forall!9468 (t!356493 lt!1616966) lambda!151798)))

(declare-fun lt!1617273 () Unit!80743)

(declare-fun Unit!80801 () Unit!80743)

(assert (=> b!4415331 (= lt!1617273 Unit!80801)))

(declare-fun lt!1617279 () Unit!80743)

(declare-fun Unit!80803 () Unit!80743)

(assert (=> b!4415331 (= lt!1617279 Unit!80803)))

(declare-fun lt!1617282 () Unit!80743)

(assert (=> b!4415331 (= lt!1617282 (forallContained!2065 (toList!3362 lt!1617281) lambda!151798 (h!55088 lt!1616966)))))

(assert (=> b!4415331 (contains!11881 lt!1617281 (_1!27857 (h!55088 lt!1616966)))))

(declare-fun lt!1617271 () Unit!80743)

(declare-fun Unit!80805 () Unit!80743)

(assert (=> b!4415331 (= lt!1617271 Unit!80805)))

(assert (=> b!4415331 (contains!11881 lt!1617289 (_1!27857 (h!55088 lt!1616966)))))

(declare-fun lt!1617288 () Unit!80743)

(declare-fun Unit!80806 () Unit!80743)

(assert (=> b!4415331 (= lt!1617288 Unit!80806)))

(assert (=> b!4415331 (forall!9468 lt!1616966 lambda!151798)))

(declare-fun lt!1617287 () Unit!80743)

(declare-fun Unit!80808 () Unit!80743)

(assert (=> b!4415331 (= lt!1617287 Unit!80808)))

(assert (=> b!4415331 (forall!9468 (toList!3362 lt!1617281) lambda!151798)))

(declare-fun lt!1617272 () Unit!80743)

(declare-fun Unit!80810 () Unit!80743)

(assert (=> b!4415331 (= lt!1617272 Unit!80810)))

(declare-fun lt!1617283 () Unit!80743)

(declare-fun Unit!80811 () Unit!80743)

(assert (=> b!4415331 (= lt!1617283 Unit!80811)))

(declare-fun lt!1617286 () Unit!80743)

(assert (=> b!4415331 (= lt!1617286 (addForallContainsKeyThenBeforeAdding!155 (+!974 lt!1616967 lt!1616975) lt!1617289 (_1!27857 (h!55088 lt!1616966)) (_2!27857 (h!55088 lt!1616966))))))

(assert (=> b!4415331 call!307296))

(declare-fun lt!1617269 () Unit!80743)

(assert (=> b!4415331 (= lt!1617269 lt!1617286)))

(assert (=> b!4415331 (forall!9468 (toList!3362 (+!974 lt!1616967 lt!1616975)) lambda!151798)))

(declare-fun lt!1617270 () Unit!80743)

(declare-fun Unit!80812 () Unit!80743)

(assert (=> b!4415331 (= lt!1617270 Unit!80812)))

(declare-fun res!1823516 () Bool)

(assert (=> b!4415331 (= res!1823516 (forall!9468 lt!1616966 lambda!151798))))

(assert (=> b!4415331 (=> (not res!1823516) (not e!2749437))))

(assert (=> b!4415331 e!2749437))

(declare-fun lt!1617276 () Unit!80743)

(declare-fun Unit!80813 () Unit!80743)

(assert (=> b!4415331 (= lt!1617276 Unit!80813)))

(assert (=> d!1337854 e!2749436))

(declare-fun res!1823517 () Bool)

(assert (=> d!1337854 (=> (not res!1823517) (not e!2749436))))

(assert (=> d!1337854 (= res!1823517 (forall!9468 lt!1616966 lambda!151802))))

(assert (=> d!1337854 (= lt!1617274 e!2749438)))

(assert (=> d!1337854 (= c!751788 ((_ is Nil!49431) lt!1616966))))

(assert (=> d!1337854 (noDuplicateKeys!687 lt!1616966)))

(assert (=> d!1337854 (= (addToMapMapFromBucket!341 lt!1616966 (+!974 lt!1616967 lt!1616975)) lt!1617274)))

(declare-fun bm!307292 () Bool)

(assert (=> bm!307292 (= call!307297 (forall!9468 (toList!3362 (+!974 lt!1616967 lt!1616975)) (ite c!751788 lambda!151796 lambda!151797)))))

(assert (= (and d!1337854 c!751788) b!4415329))

(assert (= (and d!1337854 (not c!751788)) b!4415331))

(assert (= (and b!4415331 res!1823516) b!4415328))

(assert (= (or b!4415329 b!4415331) bm!307291))

(assert (= (or b!4415329 b!4415331) bm!307292))

(assert (= (or b!4415329 b!4415331) bm!307290))

(assert (= (and d!1337854 res!1823517) b!4415330))

(assert (= (and b!4415330 res!1823518) b!4415327))

(declare-fun m!5091435 () Bool)

(assert (=> b!4415328 m!5091435))

(declare-fun m!5091439 () Bool)

(assert (=> bm!307290 m!5091439))

(declare-fun m!5091441 () Bool)

(assert (=> b!4415330 m!5091441))

(declare-fun m!5091445 () Bool)

(assert (=> b!4415331 m!5091445))

(declare-fun m!5091447 () Bool)

(assert (=> b!4415331 m!5091447))

(declare-fun m!5091449 () Bool)

(assert (=> b!4415331 m!5091449))

(declare-fun m!5091451 () Bool)

(assert (=> b!4415331 m!5091451))

(declare-fun m!5091453 () Bool)

(assert (=> b!4415331 m!5091453))

(assert (=> b!4415331 m!5091445))

(declare-fun m!5091455 () Bool)

(assert (=> b!4415331 m!5091455))

(assert (=> b!4415331 m!5091449))

(assert (=> b!4415331 m!5091065))

(declare-fun m!5091457 () Bool)

(assert (=> b!4415331 m!5091457))

(declare-fun m!5091459 () Bool)

(assert (=> b!4415331 m!5091459))

(assert (=> b!4415331 m!5091065))

(assert (=> b!4415331 m!5091451))

(assert (=> b!4415331 m!5091435))

(declare-fun m!5091461 () Bool)

(assert (=> b!4415331 m!5091461))

(declare-fun m!5091463 () Bool)

(assert (=> d!1337854 m!5091463))

(assert (=> d!1337854 m!5091061))

(assert (=> bm!307291 m!5091065))

(declare-fun m!5091465 () Bool)

(assert (=> bm!307291 m!5091465))

(declare-fun m!5091467 () Bool)

(assert (=> b!4415327 m!5091467))

(declare-fun m!5091469 () Bool)

(assert (=> bm!307292 m!5091469))

(assert (=> b!4415159 d!1337854))

(declare-fun d!1337864 () Bool)

(declare-fun e!2749447 () Bool)

(assert (=> d!1337864 e!2749447))

(declare-fun res!1823521 () Bool)

(assert (=> d!1337864 (=> (not res!1823521) (not e!2749447))))

(declare-fun lt!1617296 () ListMap!2605)

(assert (=> d!1337864 (= res!1823521 (contains!11881 lt!1617296 (_1!27857 lt!1616975)))))

(declare-fun lt!1617297 () List!49555)

(assert (=> d!1337864 (= lt!1617296 (ListMap!2606 lt!1617297))))

(declare-fun lt!1617294 () Unit!80743)

(declare-fun lt!1617295 () Unit!80743)

(assert (=> d!1337864 (= lt!1617294 lt!1617295)))

(assert (=> d!1337864 (= (getValueByKey!658 lt!1617297 (_1!27857 lt!1616975)) (Some!10671 (_2!27857 lt!1616975)))))

(assert (=> d!1337864 (= lt!1617295 (lemmaContainsTupThenGetReturnValue!395 lt!1617297 (_1!27857 lt!1616975) (_2!27857 lt!1616975)))))

(assert (=> d!1337864 (= lt!1617297 (insertNoDuplicatedKeys!171 (toList!3362 lt!1616967) (_1!27857 lt!1616975) (_2!27857 lt!1616975)))))

(assert (=> d!1337864 (= (+!974 lt!1616967 lt!1616975) lt!1617296)))

(declare-fun b!4415349 () Bool)

(declare-fun res!1823520 () Bool)

(assert (=> b!4415349 (=> (not res!1823520) (not e!2749447))))

(assert (=> b!4415349 (= res!1823520 (= (getValueByKey!658 (toList!3362 lt!1617296) (_1!27857 lt!1616975)) (Some!10671 (_2!27857 lt!1616975))))))

(declare-fun b!4415350 () Bool)

(assert (=> b!4415350 (= e!2749447 (contains!11886 (toList!3362 lt!1617296) lt!1616975))))

(assert (= (and d!1337864 res!1823521) b!4415349))

(assert (= (and b!4415349 res!1823520) b!4415350))

(declare-fun m!5091471 () Bool)

(assert (=> d!1337864 m!5091471))

(declare-fun m!5091473 () Bool)

(assert (=> d!1337864 m!5091473))

(declare-fun m!5091475 () Bool)

(assert (=> d!1337864 m!5091475))

(declare-fun m!5091477 () Bool)

(assert (=> d!1337864 m!5091477))

(declare-fun m!5091479 () Bool)

(assert (=> b!4415349 m!5091479))

(declare-fun m!5091481 () Bool)

(assert (=> b!4415350 m!5091481))

(assert (=> b!4415159 d!1337864))

(assert (=> b!4415148 d!1337850))

(declare-fun d!1337866 () Bool)

(assert (=> d!1337866 (= (head!9166 (toList!3361 lt!1616974)) (h!55089 (toList!3361 lt!1616974)))))

(assert (=> b!4415155 d!1337866))

(declare-fun d!1337868 () Bool)

(declare-fun res!1823522 () Bool)

(declare-fun e!2749448 () Bool)

(assert (=> d!1337868 (=> res!1823522 e!2749448)))

(assert (=> d!1337868 (= res!1823522 (not ((_ is Cons!49431) newBucket!194)))))

(assert (=> d!1337868 (= (noDuplicateKeys!687 newBucket!194) e!2749448)))

(declare-fun b!4415351 () Bool)

(declare-fun e!2749449 () Bool)

(assert (=> b!4415351 (= e!2749448 e!2749449)))

(declare-fun res!1823523 () Bool)

(assert (=> b!4415351 (=> (not res!1823523) (not e!2749449))))

(assert (=> b!4415351 (= res!1823523 (not (containsKey!1032 (t!356493 newBucket!194) (_1!27857 (h!55088 newBucket!194)))))))

(declare-fun b!4415352 () Bool)

(assert (=> b!4415352 (= e!2749449 (noDuplicateKeys!687 (t!356493 newBucket!194)))))

(assert (= (and d!1337868 (not res!1823522)) b!4415351))

(assert (= (and b!4415351 res!1823523) b!4415352))

(declare-fun m!5091483 () Bool)

(assert (=> b!4415351 m!5091483))

(declare-fun m!5091485 () Bool)

(assert (=> b!4415352 m!5091485))

(assert (=> b!4415157 d!1337868))

(declare-fun d!1337870 () Bool)

(declare-fun res!1823524 () Bool)

(declare-fun e!2749450 () Bool)

(assert (=> d!1337870 (=> res!1823524 e!2749450)))

(assert (=> d!1337870 (= res!1823524 ((_ is Nil!49432) (toList!3361 lt!1616974)))))

(assert (=> d!1337870 (= (forall!9466 (toList!3361 lt!1616974) lambda!151704) e!2749450)))

(declare-fun b!4415353 () Bool)

(declare-fun e!2749451 () Bool)

(assert (=> b!4415353 (= e!2749450 e!2749451)))

(declare-fun res!1823525 () Bool)

(assert (=> b!4415353 (=> (not res!1823525) (not e!2749451))))

(assert (=> b!4415353 (= res!1823525 (dynLambda!20809 lambda!151704 (h!55089 (toList!3361 lt!1616974))))))

(declare-fun b!4415354 () Bool)

(assert (=> b!4415354 (= e!2749451 (forall!9466 (t!356494 (toList!3361 lt!1616974)) lambda!151704))))

(assert (= (and d!1337870 (not res!1823524)) b!4415353))

(assert (= (and b!4415353 res!1823525) b!4415354))

(declare-fun b_lambda!142165 () Bool)

(assert (=> (not b_lambda!142165) (not b!4415353)))

(declare-fun m!5091487 () Bool)

(assert (=> b!4415353 m!5091487))

(declare-fun m!5091489 () Bool)

(assert (=> b!4415354 m!5091489))

(assert (=> b!4415153 d!1337870))

(declare-fun d!1337872 () Bool)

(declare-fun e!2749454 () Bool)

(assert (=> d!1337872 e!2749454))

(declare-fun res!1823530 () Bool)

(assert (=> d!1337872 (=> (not res!1823530) (not e!2749454))))

(declare-fun lt!1617307 () ListLongMap!2011)

(assert (=> d!1337872 (= res!1823530 (contains!11882 lt!1617307 (_1!27858 lt!1616976)))))

(declare-fun lt!1617308 () List!49556)

(assert (=> d!1337872 (= lt!1617307 (ListLongMap!2012 lt!1617308))))

(declare-fun lt!1617306 () Unit!80743)

(declare-fun lt!1617309 () Unit!80743)

(assert (=> d!1337872 (= lt!1617306 lt!1617309)))

(assert (=> d!1337872 (= (getValueByKey!657 lt!1617308 (_1!27858 lt!1616976)) (Some!10670 (_2!27858 lt!1616976)))))

(declare-fun lemmaContainsTupThenGetReturnValue!396 (List!49556 (_ BitVec 64) List!49555) Unit!80743)

(assert (=> d!1337872 (= lt!1617309 (lemmaContainsTupThenGetReturnValue!396 lt!1617308 (_1!27858 lt!1616976) (_2!27858 lt!1616976)))))

(declare-fun insertStrictlySorted!233 (List!49556 (_ BitVec 64) List!49555) List!49556)

(assert (=> d!1337872 (= lt!1617308 (insertStrictlySorted!233 (toList!3361 lm!1616) (_1!27858 lt!1616976) (_2!27858 lt!1616976)))))

(assert (=> d!1337872 (= (+!975 lm!1616 lt!1616976) lt!1617307)))

(declare-fun b!4415359 () Bool)

(declare-fun res!1823531 () Bool)

(assert (=> b!4415359 (=> (not res!1823531) (not e!2749454))))

(assert (=> b!4415359 (= res!1823531 (= (getValueByKey!657 (toList!3361 lt!1617307) (_1!27858 lt!1616976)) (Some!10670 (_2!27858 lt!1616976))))))

(declare-fun b!4415360 () Bool)

(declare-fun contains!11887 (List!49556 tuple2!49128) Bool)

(assert (=> b!4415360 (= e!2749454 (contains!11887 (toList!3361 lt!1617307) lt!1616976))))

(assert (= (and d!1337872 res!1823530) b!4415359))

(assert (= (and b!4415359 res!1823531) b!4415360))

(declare-fun m!5091491 () Bool)

(assert (=> d!1337872 m!5091491))

(declare-fun m!5091493 () Bool)

(assert (=> d!1337872 m!5091493))

(declare-fun m!5091495 () Bool)

(assert (=> d!1337872 m!5091495))

(declare-fun m!5091497 () Bool)

(assert (=> d!1337872 m!5091497))

(declare-fun m!5091499 () Bool)

(assert (=> b!4415359 m!5091499))

(declare-fun m!5091501 () Bool)

(assert (=> b!4415360 m!5091501))

(assert (=> b!4415153 d!1337872))

(declare-fun d!1337874 () Bool)

(assert (=> d!1337874 (forall!9466 (toList!3361 (+!975 lm!1616 (tuple2!49129 hash!366 newBucket!194))) lambda!151704)))

(declare-fun lt!1617312 () Unit!80743)

(declare-fun choose!27788 (ListLongMap!2011 Int (_ BitVec 64) List!49555) Unit!80743)

(assert (=> d!1337874 (= lt!1617312 (choose!27788 lm!1616 lambda!151704 hash!366 newBucket!194))))

(declare-fun e!2749457 () Bool)

(assert (=> d!1337874 e!2749457))

(declare-fun res!1823534 () Bool)

(assert (=> d!1337874 (=> (not res!1823534) (not e!2749457))))

(assert (=> d!1337874 (= res!1823534 (forall!9466 (toList!3361 lm!1616) lambda!151704))))

(assert (=> d!1337874 (= (addValidProp!331 lm!1616 lambda!151704 hash!366 newBucket!194) lt!1617312)))

(declare-fun b!4415364 () Bool)

(assert (=> b!4415364 (= e!2749457 (dynLambda!20809 lambda!151704 (tuple2!49129 hash!366 newBucket!194)))))

(assert (= (and d!1337874 res!1823534) b!4415364))

(declare-fun b_lambda!142167 () Bool)

(assert (=> (not b_lambda!142167) (not b!4415364)))

(declare-fun m!5091503 () Bool)

(assert (=> d!1337874 m!5091503))

(declare-fun m!5091505 () Bool)

(assert (=> d!1337874 m!5091505))

(declare-fun m!5091507 () Bool)

(assert (=> d!1337874 m!5091507))

(assert (=> d!1337874 m!5091031))

(declare-fun m!5091509 () Bool)

(assert (=> b!4415364 m!5091509))

(assert (=> b!4415153 d!1337874))

(declare-fun bs!753392 () Bool)

(declare-fun d!1337876 () Bool)

(assert (= bs!753392 (and d!1337876 b!4415329)))

(declare-fun lambda!151805 () Int)

(assert (=> bs!753392 (not (= lambda!151805 lambda!151796))))

(declare-fun bs!753393 () Bool)

(assert (= bs!753393 (and d!1337876 d!1337854)))

(assert (=> bs!753393 (not (= lambda!151805 lambda!151802))))

(declare-fun bs!753394 () Bool)

(assert (= bs!753394 (and d!1337876 b!4415331)))

(assert (=> bs!753394 (not (= lambda!151805 lambda!151798))))

(declare-fun bs!753395 () Bool)

(assert (= bs!753395 (and d!1337876 b!4415295)))

(assert (=> bs!753395 (not (= lambda!151805 lambda!151782))))

(assert (=> bs!753394 (not (= lambda!151805 lambda!151797))))

(declare-fun bs!753396 () Bool)

(assert (= bs!753396 (and d!1337876 b!4415261)))

(assert (=> bs!753396 (not (= lambda!151805 lambda!151769))))

(declare-fun bs!753397 () Bool)

(assert (= bs!753397 (and d!1337876 d!1337832)))

(assert (=> bs!753397 (not (= lambda!151805 lambda!151785))))

(declare-fun bs!753398 () Bool)

(assert (= bs!753398 (and d!1337876 b!4415297)))

(assert (=> bs!753398 (not (= lambda!151805 lambda!151783))))

(assert (=> bs!753396 (not (= lambda!151805 lambda!151770))))

(assert (=> bs!753398 (not (= lambda!151805 lambda!151784))))

(declare-fun bs!753399 () Bool)

(assert (= bs!753399 (and d!1337876 d!1337794)))

(assert (=> bs!753399 (not (= lambda!151805 lambda!151771))))

(declare-fun bs!753400 () Bool)

(assert (= bs!753400 (and d!1337876 b!4415259)))

(assert (=> bs!753400 (not (= lambda!151805 lambda!151768))))

(assert (=> d!1337876 true))

(assert (=> d!1337876 true))

(assert (=> d!1337876 (= (allKeysSameHash!647 newBucket!194 hash!366 hashF!1220) (forall!9468 newBucket!194 lambda!151805))))

(declare-fun bs!753401 () Bool)

(assert (= bs!753401 d!1337876))

(declare-fun m!5091511 () Bool)

(assert (=> bs!753401 m!5091511))

(assert (=> b!4415152 d!1337876))

(declare-fun b!4415387 () Bool)

(declare-fun e!2749474 () Unit!80743)

(declare-fun Unit!80815 () Unit!80743)

(assert (=> b!4415387 (= e!2749474 Unit!80815)))

(declare-fun bm!307295 () Bool)

(declare-fun call!307300 () Bool)

(declare-datatypes ((List!49558 0))(
  ( (Nil!49434) (Cons!49434 (h!55093 K!10790) (t!356496 List!49558)) )
))
(declare-fun e!2749470 () List!49558)

(declare-fun contains!11888 (List!49558 K!10790) Bool)

(assert (=> bm!307295 (= call!307300 (contains!11888 e!2749470 key!3717))))

(declare-fun c!751797 () Bool)

(declare-fun c!751798 () Bool)

(assert (=> bm!307295 (= c!751797 c!751798)))

(declare-fun b!4415388 () Bool)

(assert (=> b!4415388 false))

(declare-fun lt!1617329 () Unit!80743)

(declare-fun lt!1617331 () Unit!80743)

(assert (=> b!4415388 (= lt!1617329 lt!1617331)))

(declare-fun containsKey!1035 (List!49555 K!10790) Bool)

(assert (=> b!4415388 (containsKey!1035 (toList!3362 (extractMap!748 (toList!3361 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!224 (List!49555 K!10790) Unit!80743)

(assert (=> b!4415388 (= lt!1617331 (lemmaInGetKeysListThenContainsKey!224 (toList!3362 (extractMap!748 (toList!3361 lm!1616))) key!3717))))

(declare-fun Unit!80816 () Unit!80743)

(assert (=> b!4415388 (= e!2749474 Unit!80816)))

(declare-fun d!1337878 () Bool)

(declare-fun e!2749472 () Bool)

(assert (=> d!1337878 e!2749472))

(declare-fun res!1823541 () Bool)

(assert (=> d!1337878 (=> res!1823541 e!2749472)))

(declare-fun e!2749471 () Bool)

(assert (=> d!1337878 (= res!1823541 e!2749471)))

(declare-fun res!1823542 () Bool)

(assert (=> d!1337878 (=> (not res!1823542) (not e!2749471))))

(declare-fun lt!1617333 () Bool)

(assert (=> d!1337878 (= res!1823542 (not lt!1617333))))

(declare-fun lt!1617334 () Bool)

(assert (=> d!1337878 (= lt!1617333 lt!1617334)))

(declare-fun lt!1617330 () Unit!80743)

(declare-fun e!2749475 () Unit!80743)

(assert (=> d!1337878 (= lt!1617330 e!2749475)))

(assert (=> d!1337878 (= c!751798 lt!1617334)))

(assert (=> d!1337878 (= lt!1617334 (containsKey!1035 (toList!3362 (extractMap!748 (toList!3361 lm!1616))) key!3717))))

(assert (=> d!1337878 (= (contains!11881 (extractMap!748 (toList!3361 lm!1616)) key!3717) lt!1617333)))

(declare-fun b!4415389 () Bool)

(assert (=> b!4415389 (= e!2749475 e!2749474)))

(declare-fun c!751796 () Bool)

(assert (=> b!4415389 (= c!751796 call!307300)))

(declare-fun b!4415390 () Bool)

(declare-fun getKeysList!226 (List!49555) List!49558)

(assert (=> b!4415390 (= e!2749470 (getKeysList!226 (toList!3362 (extractMap!748 (toList!3361 lm!1616)))))))

(declare-fun b!4415391 () Bool)

(declare-fun lt!1617336 () Unit!80743)

(assert (=> b!4415391 (= e!2749475 lt!1617336)))

(declare-fun lt!1617332 () Unit!80743)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!568 (List!49555 K!10790) Unit!80743)

(assert (=> b!4415391 (= lt!1617332 (lemmaContainsKeyImpliesGetValueByKeyDefined!568 (toList!3362 (extractMap!748 (toList!3361 lm!1616))) key!3717))))

(declare-fun isDefined!7965 (Option!10672) Bool)

(assert (=> b!4415391 (isDefined!7965 (getValueByKey!658 (toList!3362 (extractMap!748 (toList!3361 lm!1616))) key!3717))))

(declare-fun lt!1617335 () Unit!80743)

(assert (=> b!4415391 (= lt!1617335 lt!1617332)))

(declare-fun lemmaInListThenGetKeysListContains!223 (List!49555 K!10790) Unit!80743)

(assert (=> b!4415391 (= lt!1617336 (lemmaInListThenGetKeysListContains!223 (toList!3362 (extractMap!748 (toList!3361 lm!1616))) key!3717))))

(assert (=> b!4415391 call!307300))

(declare-fun b!4415392 () Bool)

(declare-fun e!2749473 () Bool)

(declare-fun keys!16840 (ListMap!2605) List!49558)

(assert (=> b!4415392 (= e!2749473 (contains!11888 (keys!16840 (extractMap!748 (toList!3361 lm!1616))) key!3717))))

(declare-fun b!4415393 () Bool)

(assert (=> b!4415393 (= e!2749472 e!2749473)))

(declare-fun res!1823543 () Bool)

(assert (=> b!4415393 (=> (not res!1823543) (not e!2749473))))

(assert (=> b!4415393 (= res!1823543 (isDefined!7965 (getValueByKey!658 (toList!3362 (extractMap!748 (toList!3361 lm!1616))) key!3717)))))

(declare-fun b!4415394 () Bool)

(assert (=> b!4415394 (= e!2749470 (keys!16840 (extractMap!748 (toList!3361 lm!1616))))))

(declare-fun b!4415395 () Bool)

(assert (=> b!4415395 (= e!2749471 (not (contains!11888 (keys!16840 (extractMap!748 (toList!3361 lm!1616))) key!3717)))))

(assert (= (and d!1337878 c!751798) b!4415391))

(assert (= (and d!1337878 (not c!751798)) b!4415389))

(assert (= (and b!4415389 c!751796) b!4415388))

(assert (= (and b!4415389 (not c!751796)) b!4415387))

(assert (= (or b!4415391 b!4415389) bm!307295))

(assert (= (and bm!307295 c!751797) b!4415390))

(assert (= (and bm!307295 (not c!751797)) b!4415394))

(assert (= (and d!1337878 res!1823542) b!4415395))

(assert (= (and d!1337878 (not res!1823541)) b!4415393))

(assert (= (and b!4415393 res!1823543) b!4415392))

(assert (=> b!4415392 m!5091027))

(declare-fun m!5091513 () Bool)

(assert (=> b!4415392 m!5091513))

(assert (=> b!4415392 m!5091513))

(declare-fun m!5091515 () Bool)

(assert (=> b!4415392 m!5091515))

(assert (=> b!4415395 m!5091027))

(assert (=> b!4415395 m!5091513))

(assert (=> b!4415395 m!5091513))

(assert (=> b!4415395 m!5091515))

(declare-fun m!5091517 () Bool)

(assert (=> b!4415391 m!5091517))

(declare-fun m!5091519 () Bool)

(assert (=> b!4415391 m!5091519))

(assert (=> b!4415391 m!5091519))

(declare-fun m!5091521 () Bool)

(assert (=> b!4415391 m!5091521))

(declare-fun m!5091523 () Bool)

(assert (=> b!4415391 m!5091523))

(assert (=> b!4415394 m!5091027))

(assert (=> b!4415394 m!5091513))

(declare-fun m!5091525 () Bool)

(assert (=> b!4415390 m!5091525))

(declare-fun m!5091527 () Bool)

(assert (=> bm!307295 m!5091527))

(declare-fun m!5091529 () Bool)

(assert (=> b!4415388 m!5091529))

(declare-fun m!5091531 () Bool)

(assert (=> b!4415388 m!5091531))

(assert (=> d!1337878 m!5091529))

(assert (=> b!4415393 m!5091519))

(assert (=> b!4415393 m!5091519))

(assert (=> b!4415393 m!5091521))

(assert (=> b!4415154 d!1337878))

(declare-fun bs!753402 () Bool)

(declare-fun d!1337880 () Bool)

(assert (= bs!753402 (and d!1337880 start!429922)))

(declare-fun lambda!151806 () Int)

(assert (=> bs!753402 (= lambda!151806 lambda!151704)))

(declare-fun bs!753403 () Bool)

(assert (= bs!753403 (and d!1337880 d!1337830)))

(assert (=> bs!753403 (not (= lambda!151806 lambda!151781))))

(declare-fun bs!753404 () Bool)

(assert (= bs!753404 (and d!1337880 d!1337834)))

(assert (=> bs!753404 (= lambda!151806 lambda!151794)))

(declare-fun bs!753405 () Bool)

(assert (= bs!753405 (and d!1337880 d!1337848)))

(assert (=> bs!753405 (= lambda!151806 lambda!151795)))

(declare-fun lt!1617337 () ListMap!2605)

(assert (=> d!1337880 (invariantList!778 (toList!3362 lt!1617337))))

(declare-fun e!2749476 () ListMap!2605)

(assert (=> d!1337880 (= lt!1617337 e!2749476)))

(declare-fun c!751799 () Bool)

(assert (=> d!1337880 (= c!751799 ((_ is Cons!49432) (toList!3361 lm!1616)))))

(assert (=> d!1337880 (forall!9466 (toList!3361 lm!1616) lambda!151806)))

(assert (=> d!1337880 (= (extractMap!748 (toList!3361 lm!1616)) lt!1617337)))

(declare-fun b!4415396 () Bool)

(assert (=> b!4415396 (= e!2749476 (addToMapMapFromBucket!341 (_2!27858 (h!55089 (toList!3361 lm!1616))) (extractMap!748 (t!356494 (toList!3361 lm!1616)))))))

(declare-fun b!4415397 () Bool)

(assert (=> b!4415397 (= e!2749476 (ListMap!2606 Nil!49431))))

(assert (= (and d!1337880 c!751799) b!4415396))

(assert (= (and d!1337880 (not c!751799)) b!4415397))

(declare-fun m!5091533 () Bool)

(assert (=> d!1337880 m!5091533))

(declare-fun m!5091535 () Bool)

(assert (=> d!1337880 m!5091535))

(assert (=> b!4415396 m!5091053))

(assert (=> b!4415396 m!5091053))

(declare-fun m!5091537 () Bool)

(assert (=> b!4415396 m!5091537))

(assert (=> b!4415154 d!1337880))

(declare-fun d!1337882 () Bool)

(declare-fun hash!2000 (Hashable!5081 K!10790) (_ BitVec 64))

(assert (=> d!1337882 (= (hash!1998 hashF!1220 key!3717) (hash!2000 hashF!1220 key!3717))))

(declare-fun bs!753406 () Bool)

(assert (= bs!753406 d!1337882))

(declare-fun m!5091539 () Bool)

(assert (=> bs!753406 m!5091539))

(assert (=> b!4415143 d!1337882))

(declare-fun e!2749479 () Bool)

(declare-fun tp!1332542 () Bool)

(declare-fun b!4415402 () Bool)

(assert (=> b!4415402 (= e!2749479 (and tp_is_empty!25995 tp_is_empty!25993 tp!1332542))))

(assert (=> b!4415145 (= tp!1332529 e!2749479)))

(assert (= (and b!4415145 ((_ is Cons!49431) (t!356493 newBucket!194))) b!4415402))

(declare-fun b!4415407 () Bool)

(declare-fun e!2749482 () Bool)

(declare-fun tp!1332547 () Bool)

(declare-fun tp!1332548 () Bool)

(assert (=> b!4415407 (= e!2749482 (and tp!1332547 tp!1332548))))

(assert (=> b!4415156 (= tp!1332530 e!2749482)))

(assert (= (and b!4415156 ((_ is Cons!49432) (toList!3361 lm!1616))) b!4415407))

(declare-fun b_lambda!142169 () Bool)

(assert (= b_lambda!142165 (or start!429922 b_lambda!142169)))

(declare-fun bs!753407 () Bool)

(declare-fun d!1337884 () Bool)

(assert (= bs!753407 (and d!1337884 start!429922)))

(assert (=> bs!753407 (= (dynLambda!20809 lambda!151704 (h!55089 (toList!3361 lt!1616974))) (noDuplicateKeys!687 (_2!27858 (h!55089 (toList!3361 lt!1616974)))))))

(declare-fun m!5091541 () Bool)

(assert (=> bs!753407 m!5091541))

(assert (=> b!4415353 d!1337884))

(declare-fun b_lambda!142171 () Bool)

(assert (= b_lambda!142157 (or start!429922 b_lambda!142171)))

(declare-fun bs!753408 () Bool)

(declare-fun d!1337886 () Bool)

(assert (= bs!753408 (and d!1337886 start!429922)))

(assert (=> bs!753408 (= (dynLambda!20809 lambda!151704 (h!55089 (toList!3361 lm!1616))) (noDuplicateKeys!687 (_2!27858 (h!55089 (toList!3361 lm!1616)))))))

(declare-fun m!5091543 () Bool)

(assert (=> bs!753408 m!5091543))

(assert (=> b!4415319 d!1337886))

(declare-fun b_lambda!142173 () Bool)

(assert (= b_lambda!142167 (or start!429922 b_lambda!142173)))

(declare-fun bs!753409 () Bool)

(declare-fun d!1337888 () Bool)

(assert (= bs!753409 (and d!1337888 start!429922)))

(assert (=> bs!753409 (= (dynLambda!20809 lambda!151704 (tuple2!49129 hash!366 newBucket!194)) (noDuplicateKeys!687 (_2!27858 (tuple2!49129 hash!366 newBucket!194))))))

(declare-fun m!5091545 () Bool)

(assert (=> bs!753409 m!5091545))

(assert (=> b!4415364 d!1337888))

(check-sat (not b!4415297) (not d!1337880) (not d!1337848) (not d!1337876) (not d!1337882) (not b!4415360) (not d!1337874) (not b!4415402) (not b!4415349) (not bm!307280) (not bm!307290) (not b!4415393) (not d!1337854) (not d!1337794) (not b!4415203) (not b_lambda!142169) (not b!4415258) (not b!4415257) (not d!1337852) (not b!4415261) (not b!4415296) (not b!4415170) (not b!4415294) (not bm!307295) (not d!1337782) (not b!4415351) (not d!1337778) (not b!4415331) (not b!4415359) (not b!4415330) tp_is_empty!25995 (not d!1337792) (not b!4415392) (not b!4415168) (not b!4415320) (not d!1337814) (not b!4415293) (not b_lambda!142173) tp_is_empty!25993 (not d!1337864) (not b!4415202) (not bm!307291) (not bs!753407) (not bm!307292) (not d!1337878) (not b!4415327) (not b!4415390) (not bs!753409) (not d!1337832) (not b!4415260) (not bm!307278) (not b!4415354) (not b!4415287) (not bm!307284) (not b!4415388) (not bm!307285) (not b!4415350) (not b!4415407) (not d!1337872) (not b!4415391) (not b!4415394) (not b!4415311) (not b!4415396) (not bs!753408) (not b!4415328) (not b!4415313) (not b_lambda!142171) (not d!1337830) (not d!1337824) (not d!1337834) (not b!4415395) (not bm!307279) (not b!4415352) (not bm!307286) (not b!4415288))
(check-sat)
