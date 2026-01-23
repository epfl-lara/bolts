; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241768 () Bool)

(assert start!241768)

(declare-fun b!2478219 () Bool)

(declare-fun b_free!72057 () Bool)

(declare-fun b_next!72761 () Bool)

(assert (=> b!2478219 (= b_free!72057 (not b_next!72761))))

(declare-fun tp!793007 () Bool)

(declare-fun b_and!188291 () Bool)

(assert (=> b!2478219 (= tp!793007 b_and!188291)))

(declare-fun b!2478225 () Bool)

(declare-fun b_free!72059 () Bool)

(declare-fun b_next!72763 () Bool)

(assert (=> b!2478225 (= b_free!72059 (not b_next!72763))))

(declare-fun tp!793009 () Bool)

(declare-fun b_and!188293 () Bool)

(assert (=> b!2478225 (= tp!793009 b_and!188293)))

(declare-fun b!2478217 () Bool)

(declare-fun e!1572621 () Bool)

(declare-fun e!1572623 () Bool)

(assert (=> b!2478217 (= e!1572621 e!1572623)))

(declare-fun b!2478218 () Bool)

(declare-fun e!1572618 () Bool)

(assert (=> b!2478218 (= e!1572618 e!1572621)))

(declare-fun tp!793006 () Bool)

(declare-datatypes ((Hashable!3210 0))(
  ( (HashableExt!3209 (__x!18806 Int)) )
))
(declare-datatypes ((K!5335 0))(
  ( (K!5336 (val!8743 Int)) )
))
(declare-datatypes ((V!5537 0))(
  ( (V!5538 (val!8744 Int)) )
))
(declare-datatypes ((tuple2!28456 0))(
  ( (tuple2!28457 (_1!16769 K!5335) (_2!16769 V!5537)) )
))
(declare-datatypes ((List!29093 0))(
  ( (Nil!28993) (Cons!28993 (h!34395 tuple2!28456) (t!210738 List!29093)) )
))
(declare-datatypes ((array!11645 0))(
  ( (array!11646 (arr!5190 (Array (_ BitVec 32) List!29093)) (size!22609 (_ BitVec 32))) )
))
(declare-datatypes ((array!11647 0))(
  ( (array!11648 (arr!5191 (Array (_ BitVec 32) (_ BitVec 64))) (size!22610 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6600 0))(
  ( (LongMapFixedSize!6601 (defaultEntry!3674 Int) (mask!8439 (_ BitVec 32)) (extraKeys!3548 (_ BitVec 32)) (zeroValue!3558 List!29093) (minValue!3558 List!29093) (_size!6647 (_ BitVec 32)) (_keys!3597 array!11647) (_values!3580 array!11645) (_vacant!3361 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13017 0))(
  ( (Cell!13018 (v!31284 LongMapFixedSize!6600)) )
))
(declare-datatypes ((MutLongMap!3300 0))(
  ( (LongMap!3300 (underlying!6807 Cell!13017)) (MutLongMapExt!3299 (__x!18807 Int)) )
))
(declare-datatypes ((Cell!13019 0))(
  ( (Cell!13020 (v!31285 MutLongMap!3300)) )
))
(declare-datatypes ((MutableMap!3210 0))(
  ( (MutableMapExt!3209 (__x!18808 Int)) (HashMap!3210 (underlying!6808 Cell!13019) (hashF!5148 Hashable!3210) (_size!6648 (_ BitVec 32)) (defaultValue!3372 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3210)

(declare-fun e!1572619 () Bool)

(declare-fun tp!793005 () Bool)

(declare-fun array_inv!3725 (array!11647) Bool)

(declare-fun array_inv!3726 (array!11645) Bool)

(assert (=> b!2478219 (= e!1572623 (and tp!793007 tp!793006 tp!793005 (array_inv!3725 (_keys!3597 (v!31284 (underlying!6807 (v!31285 (underlying!6808 thiss!42540)))))) (array_inv!3726 (_values!3580 (v!31284 (underlying!6807 (v!31285 (underlying!6808 thiss!42540)))))) e!1572619))))

(declare-fun mapIsEmpty!15340 () Bool)

(declare-fun mapRes!15340 () Bool)

(assert (=> mapIsEmpty!15340 mapRes!15340))

(declare-fun b!2478220 () Bool)

(declare-fun res!1049032 () Bool)

(declare-fun e!1572616 () Bool)

(assert (=> b!2478220 (=> (not res!1049032) (not e!1572616))))

(declare-fun valid!2513 (MutableMap!3210) Bool)

(assert (=> b!2478220 (= res!1049032 (valid!2513 thiss!42540))))

(declare-fun b!2478222 () Bool)

(declare-fun lt!885351 () List!29093)

(declare-fun noDuplicateKeys!47 (List!29093) Bool)

(assert (=> b!2478222 (= e!1572616 (not (noDuplicateKeys!47 lt!885351)))))

(declare-datatypes ((ListMap!971 0))(
  ( (ListMap!972 (toList!1485 List!29093)) )
))
(declare-fun lt!885350 () ListMap!971)

(declare-fun map!6071 (MutableMap!3210) ListMap!971)

(assert (=> b!2478222 (= lt!885350 (map!6071 thiss!42540))))

(declare-datatypes ((Unit!42389 0))(
  ( (Unit!42390) )
))
(declare-fun lt!885347 () Unit!42389)

(declare-fun lt!885349 () (_ BitVec 64))

(declare-fun lambda!93526 () Int)

(declare-datatypes ((tuple2!28458 0))(
  ( (tuple2!28459 (_1!16770 (_ BitVec 64)) (_2!16770 List!29093)) )
))
(declare-datatypes ((List!29094 0))(
  ( (Nil!28994) (Cons!28994 (h!34396 tuple2!28458) (t!210739 List!29094)) )
))
(declare-fun forallContained!816 (List!29094 Int tuple2!28458) Unit!42389)

(declare-datatypes ((ListLongMap!429 0))(
  ( (ListLongMap!430 (toList!1486 List!29094)) )
))
(declare-fun map!6072 (MutLongMap!3300) ListLongMap!429)

(assert (=> b!2478222 (= lt!885347 (forallContained!816 (toList!1486 (map!6072 (v!31285 (underlying!6808 thiss!42540)))) lambda!93526 (tuple2!28459 lt!885349 lt!885351)))))

(declare-fun apply!6857 (MutLongMap!3300 (_ BitVec 64)) List!29093)

(assert (=> b!2478222 (= lt!885351 (apply!6857 (v!31285 (underlying!6808 thiss!42540)) lt!885349))))

(declare-fun key!2246 () K!5335)

(declare-fun hash!630 (Hashable!3210 K!5335) (_ BitVec 64))

(assert (=> b!2478222 (= lt!885349 (hash!630 (hashF!5148 thiss!42540) key!2246))))

(declare-fun b!2478223 () Bool)

(declare-fun e!1572622 () Bool)

(declare-fun lt!885348 () MutLongMap!3300)

(get-info :version)

(assert (=> b!2478223 (= e!1572622 (and e!1572618 ((_ is LongMap!3300) lt!885348)))))

(assert (=> b!2478223 (= lt!885348 (v!31285 (underlying!6808 thiss!42540)))))

(declare-fun b!2478224 () Bool)

(declare-fun tp!793004 () Bool)

(assert (=> b!2478224 (= e!1572619 (and tp!793004 mapRes!15340))))

(declare-fun condMapEmpty!15340 () Bool)

(declare-fun mapDefault!15340 () List!29093)

(assert (=> b!2478224 (= condMapEmpty!15340 (= (arr!5190 (_values!3580 (v!31284 (underlying!6807 (v!31285 (underlying!6808 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29093)) mapDefault!15340)))))

(declare-fun e!1572620 () Bool)

(assert (=> b!2478225 (= e!1572620 (and e!1572622 tp!793009))))

(declare-fun mapNonEmpty!15340 () Bool)

(declare-fun tp!793010 () Bool)

(declare-fun tp!793008 () Bool)

(assert (=> mapNonEmpty!15340 (= mapRes!15340 (and tp!793010 tp!793008))))

(declare-fun mapRest!15340 () (Array (_ BitVec 32) List!29093))

(declare-fun mapKey!15340 () (_ BitVec 32))

(declare-fun mapValue!15340 () List!29093)

(assert (=> mapNonEmpty!15340 (= (arr!5190 (_values!3580 (v!31284 (underlying!6807 (v!31285 (underlying!6808 thiss!42540)))))) (store mapRest!15340 mapKey!15340 mapValue!15340))))

(declare-fun res!1049031 () Bool)

(assert (=> start!241768 (=> (not res!1049031) (not e!1572616))))

(assert (=> start!241768 (= res!1049031 ((_ is HashMap!3210) thiss!42540))))

(assert (=> start!241768 e!1572616))

(assert (=> start!241768 e!1572620))

(declare-fun tp_is_empty!12111 () Bool)

(assert (=> start!241768 tp_is_empty!12111))

(declare-fun b!2478221 () Bool)

(declare-fun res!1049030 () Bool)

(assert (=> b!2478221 (=> (not res!1049030) (not e!1572616))))

(declare-fun contains!4995 (MutableMap!3210 K!5335) Bool)

(assert (=> b!2478221 (= res!1049030 (contains!4995 thiss!42540 key!2246))))

(assert (= (and start!241768 res!1049031) b!2478220))

(assert (= (and b!2478220 res!1049032) b!2478221))

(assert (= (and b!2478221 res!1049030) b!2478222))

(assert (= (and b!2478224 condMapEmpty!15340) mapIsEmpty!15340))

(assert (= (and b!2478224 (not condMapEmpty!15340)) mapNonEmpty!15340))

(assert (= b!2478219 b!2478224))

(assert (= b!2478217 b!2478219))

(assert (= b!2478218 b!2478217))

(assert (= (and b!2478223 ((_ is LongMap!3300) (v!31285 (underlying!6808 thiss!42540)))) b!2478218))

(assert (= b!2478225 b!2478223))

(assert (= (and start!241768 ((_ is HashMap!3210) thiss!42540)) b!2478225))

(declare-fun m!2845961 () Bool)

(assert (=> b!2478220 m!2845961))

(declare-fun m!2845963 () Bool)

(assert (=> b!2478219 m!2845963))

(declare-fun m!2845965 () Bool)

(assert (=> b!2478219 m!2845965))

(declare-fun m!2845967 () Bool)

(assert (=> b!2478221 m!2845967))

(declare-fun m!2845969 () Bool)

(assert (=> mapNonEmpty!15340 m!2845969))

(declare-fun m!2845971 () Bool)

(assert (=> b!2478222 m!2845971))

(declare-fun m!2845973 () Bool)

(assert (=> b!2478222 m!2845973))

(declare-fun m!2845975 () Bool)

(assert (=> b!2478222 m!2845975))

(declare-fun m!2845977 () Bool)

(assert (=> b!2478222 m!2845977))

(declare-fun m!2845979 () Bool)

(assert (=> b!2478222 m!2845979))

(declare-fun m!2845981 () Bool)

(assert (=> b!2478222 m!2845981))

(check-sat b_and!188291 (not b!2478219) (not b_next!72763) (not b!2478220) (not mapNonEmpty!15340) tp_is_empty!12111 (not b!2478221) (not b_next!72761) b_and!188293 (not b!2478222) (not b!2478224))
(check-sat b_and!188293 b_and!188291 (not b_next!72761) (not b_next!72763))
(get-model)

(declare-fun bs!467217 () Bool)

(declare-fun b!2478251 () Bool)

(assert (= bs!467217 (and b!2478251 b!2478222)))

(declare-fun lambda!93529 () Int)

(assert (=> bs!467217 (= lambda!93529 lambda!93526)))

(declare-fun b!2478248 () Bool)

(declare-fun e!1572642 () Unit!42389)

(declare-fun lt!885410 () Unit!42389)

(assert (=> b!2478248 (= e!1572642 lt!885410)))

(declare-fun lt!885402 () ListLongMap!429)

(declare-fun call!151816 () ListLongMap!429)

(assert (=> b!2478248 (= lt!885402 call!151816)))

(declare-fun lemmaInGenericMapThenInLongMap!61 (ListLongMap!429 K!5335 Hashable!3210) Unit!42389)

(assert (=> b!2478248 (= lt!885410 (lemmaInGenericMapThenInLongMap!61 lt!885402 key!2246 (hashF!5148 thiss!42540)))))

(declare-fun res!1049039 () Bool)

(declare-fun call!151812 () Bool)

(assert (=> b!2478248 (= res!1049039 call!151812)))

(declare-fun e!1572638 () Bool)

(assert (=> b!2478248 (=> (not res!1049039) (not e!1572638))))

(assert (=> b!2478248 e!1572638))

(declare-fun c!394305 () Bool)

(declare-fun call!151811 () (_ BitVec 64))

(declare-fun call!151813 () List!29093)

(declare-fun bm!151806 () Bool)

(declare-fun apply!6858 (ListLongMap!429 (_ BitVec 64)) List!29093)

(assert (=> bm!151806 (= call!151813 (apply!6858 (ite c!394305 lt!885402 call!151816) call!151811))))

(declare-fun bm!151807 () Bool)

(assert (=> bm!151807 (= call!151816 (map!6072 (v!31285 (underlying!6808 thiss!42540))))))

(declare-fun b!2478249 () Bool)

(declare-fun e!1572640 () Bool)

(declare-fun call!151815 () Bool)

(assert (=> b!2478249 (= e!1572640 call!151815)))

(declare-fun b!2478250 () Bool)

(declare-fun e!1572644 () Unit!42389)

(declare-fun Unit!42391 () Unit!42389)

(assert (=> b!2478250 (= e!1572644 Unit!42391)))

(declare-fun lt!885408 () (_ BitVec 64))

(assert (=> b!2478251 (= e!1572644 (forallContained!816 (toList!1486 (map!6072 (v!31285 (underlying!6808 thiss!42540)))) lambda!93529 (tuple2!28459 lt!885408 (apply!6857 (v!31285 (underlying!6808 thiss!42540)) lt!885408))))))

(declare-fun c!394303 () Bool)

(declare-fun contains!4996 (List!29094 tuple2!28458) Bool)

(assert (=> b!2478251 (= c!394303 (not (contains!4996 (toList!1486 (map!6072 (v!31285 (underlying!6808 thiss!42540)))) (tuple2!28459 lt!885408 (apply!6857 (v!31285 (underlying!6808 thiss!42540)) lt!885408)))))))

(declare-fun lt!885401 () Unit!42389)

(declare-fun e!1572639 () Unit!42389)

(assert (=> b!2478251 (= lt!885401 e!1572639)))

(declare-fun b!2478252 () Bool)

(declare-fun Unit!42392 () Unit!42389)

(assert (=> b!2478252 (= e!1572639 Unit!42392)))

(declare-fun bm!151808 () Bool)

(declare-datatypes ((Option!5732 0))(
  ( (None!5731) (Some!5731 (v!31286 tuple2!28456)) )
))
(declare-fun call!151814 () Option!5732)

(declare-fun isDefined!4554 (Option!5732) Bool)

(assert (=> bm!151808 (= call!151815 (isDefined!4554 call!151814))))

(declare-fun d!712505 () Bool)

(declare-fun lt!885406 () Bool)

(declare-fun contains!4997 (ListMap!971 K!5335) Bool)

(assert (=> d!712505 (= lt!885406 (contains!4997 (map!6071 thiss!42540) key!2246))))

(declare-fun e!1572641 () Bool)

(assert (=> d!712505 (= lt!885406 e!1572641)))

(declare-fun res!1049041 () Bool)

(assert (=> d!712505 (=> (not res!1049041) (not e!1572641))))

(declare-fun contains!4998 (MutLongMap!3300 (_ BitVec 64)) Bool)

(assert (=> d!712505 (= res!1049041 (contains!4998 (v!31285 (underlying!6808 thiss!42540)) lt!885408))))

(declare-fun lt!885407 () Unit!42389)

(assert (=> d!712505 (= lt!885407 e!1572642)))

(declare-fun extractMap!149 (List!29094) ListMap!971)

(assert (=> d!712505 (= c!394305 (contains!4997 (extractMap!149 (toList!1486 (map!6072 (v!31285 (underlying!6808 thiss!42540))))) key!2246))))

(declare-fun lt!885393 () Unit!42389)

(assert (=> d!712505 (= lt!885393 e!1572644)))

(declare-fun c!394304 () Bool)

(assert (=> d!712505 (= c!394304 (contains!4998 (v!31285 (underlying!6808 thiss!42540)) lt!885408))))

(assert (=> d!712505 (= lt!885408 (hash!630 (hashF!5148 thiss!42540) key!2246))))

(assert (=> d!712505 (valid!2513 thiss!42540)))

(assert (=> d!712505 (= (contains!4995 thiss!42540 key!2246) lt!885406)))

(declare-fun bm!151809 () Bool)

(assert (=> bm!151809 (= call!151811 (hash!630 (hashF!5148 thiss!42540) key!2246))))

(declare-fun bm!151810 () Bool)

(declare-fun getPair!61 (List!29093 K!5335) Option!5732)

(assert (=> bm!151810 (= call!151814 (getPair!61 call!151813 key!2246))))

(declare-fun b!2478253 () Bool)

(assert (=> b!2478253 false))

(declare-fun lt!885398 () Unit!42389)

(declare-fun lt!885397 () Unit!42389)

(assert (=> b!2478253 (= lt!885398 lt!885397)))

(declare-fun lt!885405 () List!29094)

(declare-fun lt!885409 () List!29093)

(assert (=> b!2478253 (contains!4996 lt!885405 (tuple2!28459 lt!885408 lt!885409))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!62 (List!29094 (_ BitVec 64) List!29093) Unit!42389)

(assert (=> b!2478253 (= lt!885397 (lemmaGetValueByKeyImpliesContainsTuple!62 lt!885405 lt!885408 lt!885409))))

(assert (=> b!2478253 (= lt!885409 (apply!6857 (v!31285 (underlying!6808 thiss!42540)) lt!885408))))

(assert (=> b!2478253 (= lt!885405 (toList!1486 (map!6072 (v!31285 (underlying!6808 thiss!42540)))))))

(declare-fun lt!885411 () Unit!42389)

(declare-fun lt!885396 () Unit!42389)

(assert (=> b!2478253 (= lt!885411 lt!885396)))

(declare-fun lt!885400 () List!29094)

(declare-datatypes ((Option!5733 0))(
  ( (None!5732) (Some!5732 (v!31287 List!29093)) )
))
(declare-fun isDefined!4555 (Option!5733) Bool)

(declare-fun getValueByKey!128 (List!29094 (_ BitVec 64)) Option!5733)

(assert (=> b!2478253 (isDefined!4555 (getValueByKey!128 lt!885400 lt!885408))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!85 (List!29094 (_ BitVec 64)) Unit!42389)

(assert (=> b!2478253 (= lt!885396 (lemmaContainsKeyImpliesGetValueByKeyDefined!85 lt!885400 lt!885408))))

(assert (=> b!2478253 (= lt!885400 (toList!1486 (map!6072 (v!31285 (underlying!6808 thiss!42540)))))))

(declare-fun lt!885394 () Unit!42389)

(declare-fun lt!885399 () Unit!42389)

(assert (=> b!2478253 (= lt!885394 lt!885399)))

(declare-fun lt!885403 () List!29094)

(declare-fun containsKey!119 (List!29094 (_ BitVec 64)) Bool)

(assert (=> b!2478253 (containsKey!119 lt!885403 lt!885408)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!62 (List!29094 (_ BitVec 64)) Unit!42389)

(assert (=> b!2478253 (= lt!885399 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!62 lt!885403 lt!885408))))

(assert (=> b!2478253 (= lt!885403 (toList!1486 (map!6072 (v!31285 (underlying!6808 thiss!42540)))))))

(declare-fun Unit!42393 () Unit!42389)

(assert (=> b!2478253 (= e!1572639 Unit!42393)))

(declare-fun b!2478254 () Bool)

(assert (=> b!2478254 (= e!1572641 (isDefined!4554 (getPair!61 (apply!6857 (v!31285 (underlying!6808 thiss!42540)) lt!885408) key!2246)))))

(declare-fun b!2478255 () Bool)

(declare-fun e!1572643 () Unit!42389)

(assert (=> b!2478255 (= e!1572642 e!1572643)))

(declare-fun res!1049040 () Bool)

(assert (=> b!2478255 (= res!1049040 call!151812)))

(assert (=> b!2478255 (=> (not res!1049040) (not e!1572640))))

(declare-fun c!394302 () Bool)

(assert (=> b!2478255 (= c!394302 e!1572640)))

(declare-fun b!2478256 () Bool)

(assert (=> b!2478256 (= e!1572638 call!151815)))

(declare-fun b!2478257 () Bool)

(declare-fun Unit!42394 () Unit!42389)

(assert (=> b!2478257 (= e!1572643 Unit!42394)))

(declare-fun bm!151811 () Bool)

(declare-fun contains!4999 (ListLongMap!429 (_ BitVec 64)) Bool)

(assert (=> bm!151811 (= call!151812 (contains!4999 (ite c!394305 lt!885402 call!151816) call!151811))))

(declare-fun b!2478258 () Bool)

(assert (=> b!2478258 false))

(declare-fun lt!885392 () Unit!42389)

(declare-fun lt!885395 () Unit!42389)

(assert (=> b!2478258 (= lt!885392 lt!885395)))

(declare-fun lt!885404 () ListLongMap!429)

(assert (=> b!2478258 (contains!4997 (extractMap!149 (toList!1486 lt!885404)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!61 (ListLongMap!429 K!5335 Hashable!3210) Unit!42389)

(assert (=> b!2478258 (= lt!885395 (lemmaInLongMapThenInGenericMap!61 lt!885404 key!2246 (hashF!5148 thiss!42540)))))

(assert (=> b!2478258 (= lt!885404 call!151816)))

(declare-fun Unit!42395 () Unit!42389)

(assert (=> b!2478258 (= e!1572643 Unit!42395)))

(assert (= (and d!712505 c!394304) b!2478251))

(assert (= (and d!712505 (not c!394304)) b!2478250))

(assert (= (and b!2478251 c!394303) b!2478253))

(assert (= (and b!2478251 (not c!394303)) b!2478252))

(assert (= (and d!712505 c!394305) b!2478248))

(assert (= (and d!712505 (not c!394305)) b!2478255))

(assert (= (and b!2478248 res!1049039) b!2478256))

(assert (= (and b!2478255 res!1049040) b!2478249))

(assert (= (and b!2478255 c!394302) b!2478258))

(assert (= (and b!2478255 (not c!394302)) b!2478257))

(assert (= (or b!2478248 b!2478255 b!2478249 b!2478258) bm!151807))

(assert (= (or b!2478248 b!2478256 b!2478255 b!2478249) bm!151809))

(assert (= (or b!2478248 b!2478255) bm!151811))

(assert (= (or b!2478256 b!2478249) bm!151806))

(assert (= (or b!2478256 b!2478249) bm!151810))

(assert (= (or b!2478256 b!2478249) bm!151808))

(assert (= (and d!712505 res!1049041) b!2478254))

(declare-fun m!2845983 () Bool)

(assert (=> bm!151810 m!2845983))

(assert (=> b!2478251 m!2845973))

(declare-fun m!2845985 () Bool)

(assert (=> b!2478251 m!2845985))

(declare-fun m!2845987 () Bool)

(assert (=> b!2478251 m!2845987))

(declare-fun m!2845989 () Bool)

(assert (=> b!2478251 m!2845989))

(declare-fun m!2845991 () Bool)

(assert (=> bm!151808 m!2845991))

(declare-fun m!2845993 () Bool)

(assert (=> bm!151811 m!2845993))

(declare-fun m!2845995 () Bool)

(assert (=> b!2478253 m!2845995))

(declare-fun m!2845997 () Bool)

(assert (=> b!2478253 m!2845997))

(assert (=> b!2478253 m!2845985))

(assert (=> b!2478253 m!2845973))

(declare-fun m!2845999 () Bool)

(assert (=> b!2478253 m!2845999))

(declare-fun m!2846001 () Bool)

(assert (=> b!2478253 m!2846001))

(declare-fun m!2846003 () Bool)

(assert (=> b!2478253 m!2846003))

(declare-fun m!2846005 () Bool)

(assert (=> b!2478253 m!2846005))

(assert (=> b!2478253 m!2845995))

(declare-fun m!2846007 () Bool)

(assert (=> b!2478253 m!2846007))

(assert (=> d!712505 m!2845975))

(declare-fun m!2846009 () Bool)

(assert (=> d!712505 m!2846009))

(assert (=> d!712505 m!2845975))

(declare-fun m!2846011 () Bool)

(assert (=> d!712505 m!2846011))

(assert (=> d!712505 m!2845973))

(declare-fun m!2846013 () Bool)

(assert (=> d!712505 m!2846013))

(assert (=> d!712505 m!2845977))

(assert (=> d!712505 m!2845961))

(assert (=> d!712505 m!2846013))

(declare-fun m!2846015 () Bool)

(assert (=> d!712505 m!2846015))

(declare-fun m!2846017 () Bool)

(assert (=> b!2478258 m!2846017))

(assert (=> b!2478258 m!2846017))

(declare-fun m!2846019 () Bool)

(assert (=> b!2478258 m!2846019))

(declare-fun m!2846021 () Bool)

(assert (=> b!2478258 m!2846021))

(assert (=> bm!151807 m!2845973))

(assert (=> b!2478254 m!2845985))

(assert (=> b!2478254 m!2845985))

(declare-fun m!2846023 () Bool)

(assert (=> b!2478254 m!2846023))

(assert (=> b!2478254 m!2846023))

(declare-fun m!2846025 () Bool)

(assert (=> b!2478254 m!2846025))

(declare-fun m!2846027 () Bool)

(assert (=> b!2478248 m!2846027))

(declare-fun m!2846029 () Bool)

(assert (=> bm!151806 m!2846029))

(assert (=> bm!151809 m!2845977))

(assert (=> b!2478221 d!712505))

(declare-fun bs!467218 () Bool)

(declare-fun b!2478263 () Bool)

(assert (= bs!467218 (and b!2478263 b!2478222)))

(declare-fun lambda!93532 () Int)

(assert (=> bs!467218 (= lambda!93532 lambda!93526)))

(declare-fun bs!467219 () Bool)

(assert (= bs!467219 (and b!2478263 b!2478251)))

(assert (=> bs!467219 (= lambda!93532 lambda!93529)))

(declare-fun d!712507 () Bool)

(declare-fun res!1049046 () Bool)

(declare-fun e!1572647 () Bool)

(assert (=> d!712507 (=> (not res!1049046) (not e!1572647))))

(declare-fun valid!2514 (MutLongMap!3300) Bool)

(assert (=> d!712507 (= res!1049046 (valid!2514 (v!31285 (underlying!6808 thiss!42540))))))

(assert (=> d!712507 (= (valid!2513 thiss!42540) e!1572647)))

(declare-fun res!1049047 () Bool)

(assert (=> b!2478263 (=> (not res!1049047) (not e!1572647))))

(declare-fun forall!5935 (List!29094 Int) Bool)

(assert (=> b!2478263 (= res!1049047 (forall!5935 (toList!1486 (map!6072 (v!31285 (underlying!6808 thiss!42540)))) lambda!93532))))

(declare-fun b!2478264 () Bool)

(declare-fun allKeysSameHashInMap!135 (ListLongMap!429 Hashable!3210) Bool)

(assert (=> b!2478264 (= e!1572647 (allKeysSameHashInMap!135 (map!6072 (v!31285 (underlying!6808 thiss!42540))) (hashF!5148 thiss!42540)))))

(assert (= (and d!712507 res!1049046) b!2478263))

(assert (= (and b!2478263 res!1049047) b!2478264))

(declare-fun m!2846031 () Bool)

(assert (=> d!712507 m!2846031))

(assert (=> b!2478263 m!2845973))

(declare-fun m!2846033 () Bool)

(assert (=> b!2478263 m!2846033))

(assert (=> b!2478264 m!2845973))

(assert (=> b!2478264 m!2845973))

(declare-fun m!2846035 () Bool)

(assert (=> b!2478264 m!2846035))

(assert (=> b!2478220 d!712507))

(declare-fun d!712509 () Bool)

(assert (=> d!712509 (= (array_inv!3725 (_keys!3597 (v!31284 (underlying!6807 (v!31285 (underlying!6808 thiss!42540)))))) (bvsge (size!22610 (_keys!3597 (v!31284 (underlying!6807 (v!31285 (underlying!6808 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2478219 d!712509))

(declare-fun d!712511 () Bool)

(assert (=> d!712511 (= (array_inv!3726 (_values!3580 (v!31284 (underlying!6807 (v!31285 (underlying!6808 thiss!42540)))))) (bvsge (size!22609 (_values!3580 (v!31284 (underlying!6807 (v!31285 (underlying!6808 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2478219 d!712511))

(declare-fun d!712513 () Bool)

(declare-fun res!1049052 () Bool)

(declare-fun e!1572652 () Bool)

(assert (=> d!712513 (=> res!1049052 e!1572652)))

(assert (=> d!712513 (= res!1049052 (not ((_ is Cons!28993) lt!885351)))))

(assert (=> d!712513 (= (noDuplicateKeys!47 lt!885351) e!1572652)))

(declare-fun b!2478269 () Bool)

(declare-fun e!1572653 () Bool)

(assert (=> b!2478269 (= e!1572652 e!1572653)))

(declare-fun res!1049053 () Bool)

(assert (=> b!2478269 (=> (not res!1049053) (not e!1572653))))

(declare-fun containsKey!120 (List!29093 K!5335) Bool)

(assert (=> b!2478269 (= res!1049053 (not (containsKey!120 (t!210738 lt!885351) (_1!16769 (h!34395 lt!885351)))))))

(declare-fun b!2478270 () Bool)

(assert (=> b!2478270 (= e!1572653 (noDuplicateKeys!47 (t!210738 lt!885351)))))

(assert (= (and d!712513 (not res!1049052)) b!2478269))

(assert (= (and b!2478269 res!1049053) b!2478270))

(declare-fun m!2846037 () Bool)

(assert (=> b!2478269 m!2846037))

(declare-fun m!2846039 () Bool)

(assert (=> b!2478270 m!2846039))

(assert (=> b!2478222 d!712513))

(declare-fun d!712515 () Bool)

(declare-fun map!6073 (LongMapFixedSize!6600) ListLongMap!429)

(assert (=> d!712515 (= (map!6072 (v!31285 (underlying!6808 thiss!42540))) (map!6073 (v!31284 (underlying!6807 (v!31285 (underlying!6808 thiss!42540))))))))

(declare-fun bs!467220 () Bool)

(assert (= bs!467220 d!712515))

(declare-fun m!2846041 () Bool)

(assert (=> bs!467220 m!2846041))

(assert (=> b!2478222 d!712515))

(declare-fun d!712517 () Bool)

(declare-fun dynLambda!12438 (Int tuple2!28458) Bool)

(assert (=> d!712517 (dynLambda!12438 lambda!93526 (tuple2!28459 lt!885349 lt!885351))))

(declare-fun lt!885414 () Unit!42389)

(declare-fun choose!14616 (List!29094 Int tuple2!28458) Unit!42389)

(assert (=> d!712517 (= lt!885414 (choose!14616 (toList!1486 (map!6072 (v!31285 (underlying!6808 thiss!42540)))) lambda!93526 (tuple2!28459 lt!885349 lt!885351)))))

(declare-fun e!1572656 () Bool)

(assert (=> d!712517 e!1572656))

(declare-fun res!1049056 () Bool)

(assert (=> d!712517 (=> (not res!1049056) (not e!1572656))))

(assert (=> d!712517 (= res!1049056 (forall!5935 (toList!1486 (map!6072 (v!31285 (underlying!6808 thiss!42540)))) lambda!93526))))

(assert (=> d!712517 (= (forallContained!816 (toList!1486 (map!6072 (v!31285 (underlying!6808 thiss!42540)))) lambda!93526 (tuple2!28459 lt!885349 lt!885351)) lt!885414)))

(declare-fun b!2478273 () Bool)

(assert (=> b!2478273 (= e!1572656 (contains!4996 (toList!1486 (map!6072 (v!31285 (underlying!6808 thiss!42540)))) (tuple2!28459 lt!885349 lt!885351)))))

(assert (= (and d!712517 res!1049056) b!2478273))

(declare-fun b_lambda!76023 () Bool)

(assert (=> (not b_lambda!76023) (not d!712517)))

(declare-fun m!2846043 () Bool)

(assert (=> d!712517 m!2846043))

(declare-fun m!2846045 () Bool)

(assert (=> d!712517 m!2846045))

(declare-fun m!2846047 () Bool)

(assert (=> d!712517 m!2846047))

(declare-fun m!2846049 () Bool)

(assert (=> b!2478273 m!2846049))

(assert (=> b!2478222 d!712517))

(declare-fun d!712519 () Bool)

(declare-fun lt!885417 () ListMap!971)

(declare-fun invariantList!402 (List!29093) Bool)

(assert (=> d!712519 (invariantList!402 (toList!1485 lt!885417))))

(assert (=> d!712519 (= lt!885417 (extractMap!149 (toList!1486 (map!6072 (v!31285 (underlying!6808 thiss!42540))))))))

(assert (=> d!712519 (valid!2513 thiss!42540)))

(assert (=> d!712519 (= (map!6071 thiss!42540) lt!885417)))

(declare-fun bs!467221 () Bool)

(assert (= bs!467221 d!712519))

(declare-fun m!2846051 () Bool)

(assert (=> bs!467221 m!2846051))

(assert (=> bs!467221 m!2845973))

(assert (=> bs!467221 m!2846013))

(assert (=> bs!467221 m!2845961))

(assert (=> b!2478222 d!712519))

(declare-fun d!712521 () Bool)

(declare-fun e!1572659 () Bool)

(assert (=> d!712521 e!1572659))

(declare-fun c!394308 () Bool)

(assert (=> d!712521 (= c!394308 (contains!4998 (v!31285 (underlying!6808 thiss!42540)) lt!885349))))

(declare-fun lt!885420 () List!29093)

(declare-fun apply!6859 (LongMapFixedSize!6600 (_ BitVec 64)) List!29093)

(assert (=> d!712521 (= lt!885420 (apply!6859 (v!31284 (underlying!6807 (v!31285 (underlying!6808 thiss!42540)))) lt!885349))))

(assert (=> d!712521 (valid!2514 (v!31285 (underlying!6808 thiss!42540)))))

(assert (=> d!712521 (= (apply!6857 (v!31285 (underlying!6808 thiss!42540)) lt!885349) lt!885420)))

(declare-fun b!2478278 () Bool)

(declare-fun get!8937 (Option!5733) List!29093)

(assert (=> b!2478278 (= e!1572659 (= lt!885420 (get!8937 (getValueByKey!128 (toList!1486 (map!6072 (v!31285 (underlying!6808 thiss!42540)))) lt!885349))))))

(declare-fun b!2478279 () Bool)

(declare-fun dynLambda!12439 (Int (_ BitVec 64)) List!29093)

(assert (=> b!2478279 (= e!1572659 (= lt!885420 (dynLambda!12439 (defaultEntry!3674 (v!31284 (underlying!6807 (v!31285 (underlying!6808 thiss!42540))))) lt!885349)))))

(assert (=> b!2478279 ((_ is LongMap!3300) (v!31285 (underlying!6808 thiss!42540)))))

(assert (= (and d!712521 c!394308) b!2478278))

(assert (= (and d!712521 (not c!394308)) b!2478279))

(declare-fun b_lambda!76025 () Bool)

(assert (=> (not b_lambda!76025) (not b!2478279)))

(declare-fun t!210741 () Bool)

(declare-fun tb!140363 () Bool)

(assert (=> (and b!2478219 (= (defaultEntry!3674 (v!31284 (underlying!6807 (v!31285 (underlying!6808 thiss!42540))))) (defaultEntry!3674 (v!31284 (underlying!6807 (v!31285 (underlying!6808 thiss!42540)))))) t!210741) tb!140363))

(assert (=> b!2478279 t!210741))

(declare-fun result!173276 () Bool)

(declare-fun b_and!188295 () Bool)

(assert (= b_and!188291 (and (=> t!210741 result!173276) b_and!188295)))

(declare-fun m!2846053 () Bool)

(assert (=> d!712521 m!2846053))

(declare-fun m!2846055 () Bool)

(assert (=> d!712521 m!2846055))

(assert (=> d!712521 m!2846031))

(assert (=> b!2478278 m!2845973))

(declare-fun m!2846057 () Bool)

(assert (=> b!2478278 m!2846057))

(assert (=> b!2478278 m!2846057))

(declare-fun m!2846059 () Bool)

(assert (=> b!2478278 m!2846059))

(declare-fun m!2846061 () Bool)

(assert (=> b!2478279 m!2846061))

(assert (=> b!2478222 d!712521))

(declare-fun d!712523 () Bool)

(declare-fun hash!631 (Hashable!3210 K!5335) (_ BitVec 64))

(assert (=> d!712523 (= (hash!630 (hashF!5148 thiss!42540) key!2246) (hash!631 (hashF!5148 thiss!42540) key!2246))))

(declare-fun bs!467222 () Bool)

(assert (= bs!467222 d!712523))

(declare-fun m!2846063 () Bool)

(assert (=> bs!467222 m!2846063))

(assert (=> b!2478222 d!712523))

(declare-fun condMapEmpty!15343 () Bool)

(declare-fun mapDefault!15343 () List!29093)

(assert (=> mapNonEmpty!15340 (= condMapEmpty!15343 (= mapRest!15340 ((as const (Array (_ BitVec 32) List!29093)) mapDefault!15343)))))

(declare-fun e!1572664 () Bool)

(declare-fun mapRes!15343 () Bool)

(assert (=> mapNonEmpty!15340 (= tp!793010 (and e!1572664 mapRes!15343))))

(declare-fun mapIsEmpty!15343 () Bool)

(assert (=> mapIsEmpty!15343 mapRes!15343))

(declare-fun tp!793019 () Bool)

(declare-fun tp_is_empty!12113 () Bool)

(declare-fun e!1572665 () Bool)

(declare-fun b!2478286 () Bool)

(assert (=> b!2478286 (= e!1572665 (and tp_is_empty!12111 tp_is_empty!12113 tp!793019))))

(declare-fun tp!793018 () Bool)

(declare-fun b!2478287 () Bool)

(assert (=> b!2478287 (= e!1572664 (and tp_is_empty!12111 tp_is_empty!12113 tp!793018))))

(declare-fun mapNonEmpty!15343 () Bool)

(declare-fun tp!793017 () Bool)

(assert (=> mapNonEmpty!15343 (= mapRes!15343 (and tp!793017 e!1572665))))

(declare-fun mapKey!15343 () (_ BitVec 32))

(declare-fun mapValue!15343 () List!29093)

(declare-fun mapRest!15343 () (Array (_ BitVec 32) List!29093))

(assert (=> mapNonEmpty!15343 (= mapRest!15340 (store mapRest!15343 mapKey!15343 mapValue!15343))))

(assert (= (and mapNonEmpty!15340 condMapEmpty!15343) mapIsEmpty!15343))

(assert (= (and mapNonEmpty!15340 (not condMapEmpty!15343)) mapNonEmpty!15343))

(assert (= (and mapNonEmpty!15343 ((_ is Cons!28993) mapValue!15343)) b!2478286))

(assert (= (and mapNonEmpty!15340 ((_ is Cons!28993) mapDefault!15343)) b!2478287))

(declare-fun m!2846065 () Bool)

(assert (=> mapNonEmpty!15343 m!2846065))

(declare-fun tp!793022 () Bool)

(declare-fun e!1572668 () Bool)

(declare-fun b!2478292 () Bool)

(assert (=> b!2478292 (= e!1572668 (and tp_is_empty!12111 tp_is_empty!12113 tp!793022))))

(assert (=> mapNonEmpty!15340 (= tp!793008 e!1572668)))

(assert (= (and mapNonEmpty!15340 ((_ is Cons!28993) mapValue!15340)) b!2478292))

(declare-fun b!2478293 () Bool)

(declare-fun tp!793023 () Bool)

(declare-fun e!1572669 () Bool)

(assert (=> b!2478293 (= e!1572669 (and tp_is_empty!12111 tp_is_empty!12113 tp!793023))))

(assert (=> b!2478219 (= tp!793006 e!1572669)))

(assert (= (and b!2478219 ((_ is Cons!28993) (zeroValue!3558 (v!31284 (underlying!6807 (v!31285 (underlying!6808 thiss!42540))))))) b!2478293))

(declare-fun tp!793024 () Bool)

(declare-fun b!2478294 () Bool)

(declare-fun e!1572670 () Bool)

(assert (=> b!2478294 (= e!1572670 (and tp_is_empty!12111 tp_is_empty!12113 tp!793024))))

(assert (=> b!2478219 (= tp!793005 e!1572670)))

(assert (= (and b!2478219 ((_ is Cons!28993) (minValue!3558 (v!31284 (underlying!6807 (v!31285 (underlying!6808 thiss!42540))))))) b!2478294))

(declare-fun tp!793025 () Bool)

(declare-fun b!2478295 () Bool)

(declare-fun e!1572671 () Bool)

(assert (=> b!2478295 (= e!1572671 (and tp_is_empty!12111 tp_is_empty!12113 tp!793025))))

(assert (=> b!2478224 (= tp!793004 e!1572671)))

(assert (= (and b!2478224 ((_ is Cons!28993) mapDefault!15340)) b!2478295))

(declare-fun b_lambda!76027 () Bool)

(assert (= b_lambda!76023 (or b!2478222 b_lambda!76027)))

(declare-fun bs!467223 () Bool)

(declare-fun d!712525 () Bool)

(assert (= bs!467223 (and d!712525 b!2478222)))

(assert (=> bs!467223 (= (dynLambda!12438 lambda!93526 (tuple2!28459 lt!885349 lt!885351)) (noDuplicateKeys!47 (_2!16770 (tuple2!28459 lt!885349 lt!885351))))))

(declare-fun m!2846067 () Bool)

(assert (=> bs!467223 m!2846067))

(assert (=> d!712517 d!712525))

(declare-fun b_lambda!76029 () Bool)

(assert (= b_lambda!76025 (or (and b!2478219 b_free!72057) b_lambda!76029)))

(check-sat (not bs!467223) (not d!712523) (not bm!151808) (not b!2478293) (not b!2478253) (not b!2478251) (not bm!151807) tp_is_empty!12111 (not mapNonEmpty!15343) (not d!712521) b_and!188293 (not b!2478269) (not b!2478286) b_and!188295 (not b!2478292) (not bm!151806) (not b!2478294) (not b!2478263) (not b!2478273) (not bm!151810) (not b_next!72763) (not bm!151811) (not d!712507) (not b_lambda!76027) (not d!712515) (not d!712519) (not b!2478264) (not b!2478258) (not b_lambda!76029) (not b!2478287) (not b!2478295) tp_is_empty!12113 (not bm!151809) (not b!2478248) (not b!2478254) (not b!2478278) (not b_next!72761) (not b!2478270) (not tb!140363) (not d!712505) (not d!712517))
(check-sat b_and!188293 b_and!188295 (not b_next!72761) (not b_next!72763))
