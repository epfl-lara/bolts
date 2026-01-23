; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241654 () Bool)

(assert start!241654)

(declare-fun b!2477400 () Bool)

(declare-fun b_free!71985 () Bool)

(declare-fun b_next!72689 () Bool)

(assert (=> b!2477400 (= b_free!71985 (not b_next!72689))))

(declare-fun tp!792557 () Bool)

(declare-fun b_and!188211 () Bool)

(assert (=> b!2477400 (= tp!792557 b_and!188211)))

(declare-fun b!2477394 () Bool)

(declare-fun b_free!71987 () Bool)

(declare-fun b_next!72691 () Bool)

(assert (=> b!2477394 (= b_free!71987 (not b_next!72691))))

(declare-fun tp!792555 () Bool)

(declare-fun b_and!188213 () Bool)

(assert (=> b!2477394 (= tp!792555 b_and!188213)))

(declare-fun b!2477392 () Bool)

(declare-fun e!1571955 () Bool)

(declare-datatypes ((Hashable!3192 0))(
  ( (HashableExt!3191 (__x!18752 Int)) )
))
(declare-datatypes ((K!5290 0))(
  ( (K!5291 (val!8707 Int)) )
))
(declare-datatypes ((V!5492 0))(
  ( (V!5493 (val!8708 Int)) )
))
(declare-datatypes ((tuple2!28394 0))(
  ( (tuple2!28395 (_1!16738 K!5290) (_2!16738 V!5492)) )
))
(declare-datatypes ((List!29062 0))(
  ( (Nil!28962) (Cons!28962 (h!34364 tuple2!28394) (t!210699 List!29062)) )
))
(declare-datatypes ((array!11563 0))(
  ( (array!11564 (arr!5154 (Array (_ BitVec 32) List!29062)) (size!22573 (_ BitVec 32))) )
))
(declare-datatypes ((array!11565 0))(
  ( (array!11566 (arr!5155 (Array (_ BitVec 32) (_ BitVec 64))) (size!22574 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6564 0))(
  ( (LongMapFixedSize!6565 (defaultEntry!3656 Int) (mask!8412 (_ BitVec 32)) (extraKeys!3530 (_ BitVec 32)) (zeroValue!3540 List!29062) (minValue!3540 List!29062) (_size!6611 (_ BitVec 32)) (_keys!3579 array!11565) (_values!3562 array!11563) (_vacant!3343 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12945 0))(
  ( (Cell!12946 (v!31237 LongMapFixedSize!6564)) )
))
(declare-datatypes ((MutLongMap!3282 0))(
  ( (LongMap!3282 (underlying!6771 Cell!12945)) (MutLongMapExt!3281 (__x!18753 Int)) )
))
(declare-datatypes ((Cell!12947 0))(
  ( (Cell!12948 (v!31238 MutLongMap!3282)) )
))
(declare-datatypes ((MutableMap!3192 0))(
  ( (MutableMapExt!3191 (__x!18754 Int)) (HashMap!3192 (underlying!6772 Cell!12947) (hashF!5130 Hashable!3192) (_size!6612 (_ BitVec 32)) (defaultValue!3354 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3192)

(declare-fun valid!2484 (MutLongMap!3282) Bool)

(assert (=> b!2477392 (= e!1571955 (not (valid!2484 (v!31238 (underlying!6772 thiss!42540)))))))

(declare-fun b!2477393 () Bool)

(declare-fun res!1048753 () Bool)

(assert (=> b!2477393 (=> (not res!1048753) (not e!1571955))))

(declare-fun key!2246 () K!5290)

(declare-fun contains!4961 (MutableMap!3192 K!5290) Bool)

(assert (=> b!2477393 (= res!1048753 (contains!4961 thiss!42540 key!2246))))

(declare-fun e!1571958 () Bool)

(declare-fun e!1571957 () Bool)

(assert (=> b!2477394 (= e!1571958 (and e!1571957 tp!792555))))

(declare-fun res!1048756 () Bool)

(assert (=> start!241654 (=> (not res!1048756) (not e!1571955))))

(get-info :version)

(assert (=> start!241654 (= res!1048756 ((_ is HashMap!3192) thiss!42540))))

(assert (=> start!241654 e!1571955))

(assert (=> start!241654 e!1571958))

(declare-fun tp_is_empty!12065 () Bool)

(assert (=> start!241654 tp_is_empty!12065))

(declare-fun b!2477395 () Bool)

(declare-fun e!1571954 () Bool)

(declare-fun e!1571956 () Bool)

(assert (=> b!2477395 (= e!1571954 e!1571956)))

(declare-fun b!2477396 () Bool)

(declare-fun e!1571960 () Bool)

(declare-fun tp!792554 () Bool)

(declare-fun mapRes!15271 () Bool)

(assert (=> b!2477396 (= e!1571960 (and tp!792554 mapRes!15271))))

(declare-fun condMapEmpty!15271 () Bool)

(declare-fun mapDefault!15271 () List!29062)

(assert (=> b!2477396 (= condMapEmpty!15271 (= (arr!5154 (_values!3562 (v!31237 (underlying!6771 (v!31238 (underlying!6772 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29062)) mapDefault!15271)))))

(declare-fun b!2477397 () Bool)

(declare-fun res!1048754 () Bool)

(assert (=> b!2477397 (=> (not res!1048754) (not e!1571955))))

(declare-fun valid!2485 (MutableMap!3192) Bool)

(assert (=> b!2477397 (= res!1048754 (valid!2485 thiss!42540))))

(declare-fun mapNonEmpty!15271 () Bool)

(declare-fun tp!792551 () Bool)

(declare-fun tp!792553 () Bool)

(assert (=> mapNonEmpty!15271 (= mapRes!15271 (and tp!792551 tp!792553))))

(declare-fun mapRest!15271 () (Array (_ BitVec 32) List!29062))

(declare-fun mapValue!15271 () List!29062)

(declare-fun mapKey!15271 () (_ BitVec 32))

(assert (=> mapNonEmpty!15271 (= (arr!5154 (_values!3562 (v!31237 (underlying!6771 (v!31238 (underlying!6772 thiss!42540)))))) (store mapRest!15271 mapKey!15271 mapValue!15271))))

(declare-fun b!2477398 () Bool)

(declare-fun e!1571953 () Bool)

(assert (=> b!2477398 (= e!1571953 e!1571954)))

(declare-fun b!2477399 () Bool)

(declare-fun res!1048755 () Bool)

(assert (=> b!2477399 (=> (not res!1048755) (not e!1571955))))

(assert (=> b!2477399 (= res!1048755 ((_ is LongMap!3282) (v!31238 (underlying!6772 thiss!42540))))))

(declare-fun tp!792556 () Bool)

(declare-fun tp!792552 () Bool)

(declare-fun array_inv!3697 (array!11565) Bool)

(declare-fun array_inv!3698 (array!11563) Bool)

(assert (=> b!2477400 (= e!1571956 (and tp!792557 tp!792552 tp!792556 (array_inv!3697 (_keys!3579 (v!31237 (underlying!6771 (v!31238 (underlying!6772 thiss!42540)))))) (array_inv!3698 (_values!3562 (v!31237 (underlying!6771 (v!31238 (underlying!6772 thiss!42540)))))) e!1571960))))

(declare-fun b!2477401 () Bool)

(declare-fun lt!884850 () MutLongMap!3282)

(assert (=> b!2477401 (= e!1571957 (and e!1571953 ((_ is LongMap!3282) lt!884850)))))

(assert (=> b!2477401 (= lt!884850 (v!31238 (underlying!6772 thiss!42540)))))

(declare-fun mapIsEmpty!15271 () Bool)

(assert (=> mapIsEmpty!15271 mapRes!15271))

(assert (= (and start!241654 res!1048756) b!2477397))

(assert (= (and b!2477397 res!1048754) b!2477393))

(assert (= (and b!2477393 res!1048753) b!2477399))

(assert (= (and b!2477399 res!1048755) b!2477392))

(assert (= (and b!2477396 condMapEmpty!15271) mapIsEmpty!15271))

(assert (= (and b!2477396 (not condMapEmpty!15271)) mapNonEmpty!15271))

(assert (= b!2477400 b!2477396))

(assert (= b!2477395 b!2477400))

(assert (= b!2477398 b!2477395))

(assert (= (and b!2477401 ((_ is LongMap!3282) (v!31238 (underlying!6772 thiss!42540)))) b!2477398))

(assert (= b!2477394 b!2477401))

(assert (= (and start!241654 ((_ is HashMap!3192) thiss!42540)) b!2477394))

(declare-fun m!2845267 () Bool)

(assert (=> b!2477400 m!2845267))

(declare-fun m!2845269 () Bool)

(assert (=> b!2477400 m!2845269))

(declare-fun m!2845271 () Bool)

(assert (=> b!2477397 m!2845271))

(declare-fun m!2845273 () Bool)

(assert (=> b!2477392 m!2845273))

(declare-fun m!2845275 () Bool)

(assert (=> b!2477393 m!2845275))

(declare-fun m!2845277 () Bool)

(assert (=> mapNonEmpty!15271 m!2845277))

(check-sat tp_is_empty!12065 b_and!188213 (not b!2477400) (not b!2477392) (not b!2477393) b_and!188211 (not b_next!72689) (not b!2477397) (not mapNonEmpty!15271) (not b!2477396) (not b_next!72691))
(check-sat b_and!188213 b_and!188211 (not b_next!72689) (not b_next!72691))
(get-model)

(declare-fun d!712414 () Bool)

(declare-fun valid!2486 (LongMapFixedSize!6564) Bool)

(assert (=> d!712414 (= (valid!2484 (v!31238 (underlying!6772 thiss!42540))) (valid!2486 (v!31237 (underlying!6771 (v!31238 (underlying!6772 thiss!42540))))))))

(declare-fun bs!467176 () Bool)

(assert (= bs!467176 d!712414))

(declare-fun m!2845279 () Bool)

(assert (=> bs!467176 m!2845279))

(assert (=> b!2477392 d!712414))

(declare-fun d!712416 () Bool)

(declare-fun res!1048761 () Bool)

(declare-fun e!1571963 () Bool)

(assert (=> d!712416 (=> (not res!1048761) (not e!1571963))))

(assert (=> d!712416 (= res!1048761 (valid!2484 (v!31238 (underlying!6772 thiss!42540))))))

(assert (=> d!712416 (= (valid!2485 thiss!42540) e!1571963)))

(declare-fun b!2477406 () Bool)

(declare-fun res!1048762 () Bool)

(assert (=> b!2477406 (=> (not res!1048762) (not e!1571963))))

(declare-fun lambda!93469 () Int)

(declare-datatypes ((tuple2!28396 0))(
  ( (tuple2!28397 (_1!16739 (_ BitVec 64)) (_2!16739 List!29062)) )
))
(declare-datatypes ((List!29063 0))(
  ( (Nil!28963) (Cons!28963 (h!34365 tuple2!28396) (t!210700 List!29063)) )
))
(declare-fun forall!5930 (List!29063 Int) Bool)

(declare-datatypes ((ListLongMap!403 0))(
  ( (ListLongMap!404 (toList!1464 List!29063)) )
))
(declare-fun map!6038 (MutLongMap!3282) ListLongMap!403)

(assert (=> b!2477406 (= res!1048762 (forall!5930 (toList!1464 (map!6038 (v!31238 (underlying!6772 thiss!42540)))) lambda!93469))))

(declare-fun b!2477407 () Bool)

(declare-fun allKeysSameHashInMap!130 (ListLongMap!403 Hashable!3192) Bool)

(assert (=> b!2477407 (= e!1571963 (allKeysSameHashInMap!130 (map!6038 (v!31238 (underlying!6772 thiss!42540))) (hashF!5130 thiss!42540)))))

(assert (= (and d!712416 res!1048761) b!2477406))

(assert (= (and b!2477406 res!1048762) b!2477407))

(assert (=> d!712416 m!2845273))

(declare-fun m!2845281 () Bool)

(assert (=> b!2477406 m!2845281))

(declare-fun m!2845283 () Bool)

(assert (=> b!2477406 m!2845283))

(assert (=> b!2477407 m!2845281))

(assert (=> b!2477407 m!2845281))

(declare-fun m!2845285 () Bool)

(assert (=> b!2477407 m!2845285))

(assert (=> b!2477397 d!712416))

(declare-fun bs!467177 () Bool)

(declare-fun b!2477436 () Bool)

(assert (= bs!467177 (and b!2477436 b!2477406)))

(declare-fun lambda!93472 () Int)

(assert (=> bs!467177 (= lambda!93472 lambda!93469)))

(declare-fun b!2477430 () Bool)

(declare-datatypes ((Unit!42344 0))(
  ( (Unit!42345) )
))
(declare-fun e!1571983 () Unit!42344)

(declare-fun e!1571979 () Unit!42344)

(assert (=> b!2477430 (= e!1571983 e!1571979)))

(declare-fun res!1048771 () Bool)

(declare-fun call!151726 () Bool)

(assert (=> b!2477430 (= res!1048771 call!151726)))

(declare-fun e!1571978 () Bool)

(assert (=> b!2477430 (=> (not res!1048771) (not e!1571978))))

(declare-fun c!394232 () Bool)

(assert (=> b!2477430 (= c!394232 e!1571978)))

(declare-fun bm!151716 () Bool)

(declare-fun call!151721 () (_ BitVec 64))

(declare-fun hash!611 (Hashable!3192 K!5290) (_ BitVec 64))

(assert (=> bm!151716 (= call!151721 (hash!611 (hashF!5130 thiss!42540) key!2246))))

(declare-fun b!2477431 () Bool)

(declare-fun lt!884891 () Unit!42344)

(assert (=> b!2477431 (= e!1571983 lt!884891)))

(declare-fun lt!884899 () ListLongMap!403)

(declare-fun call!151723 () ListLongMap!403)

(assert (=> b!2477431 (= lt!884899 call!151723)))

(declare-fun lemmaInGenericMapThenInLongMap!56 (ListLongMap!403 K!5290 Hashable!3192) Unit!42344)

(assert (=> b!2477431 (= lt!884891 (lemmaInGenericMapThenInLongMap!56 lt!884899 key!2246 (hashF!5130 thiss!42540)))))

(declare-fun res!1048770 () Bool)

(assert (=> b!2477431 (= res!1048770 call!151726)))

(declare-fun e!1571984 () Bool)

(assert (=> b!2477431 (=> (not res!1048770) (not e!1571984))))

(assert (=> b!2477431 e!1571984))

(declare-fun bm!151717 () Bool)

(declare-fun c!394230 () Bool)

(declare-fun contains!4962 (ListLongMap!403 (_ BitVec 64)) Bool)

(assert (=> bm!151717 (= call!151726 (contains!4962 (ite c!394230 lt!884899 call!151723) call!151721))))

(declare-fun b!2477433 () Bool)

(declare-fun Unit!42346 () Unit!42344)

(assert (=> b!2477433 (= e!1571979 Unit!42346)))

(declare-fun b!2477434 () Bool)

(assert (=> b!2477434 false))

(declare-fun lt!884903 () Unit!42344)

(declare-fun lt!884895 () Unit!42344)

(assert (=> b!2477434 (= lt!884903 lt!884895)))

(declare-fun lt!884892 () List!29063)

(declare-fun lt!884910 () (_ BitVec 64))

(declare-fun lt!884901 () List!29062)

(declare-fun contains!4963 (List!29063 tuple2!28396) Bool)

(assert (=> b!2477434 (contains!4963 lt!884892 (tuple2!28397 lt!884910 lt!884901))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!57 (List!29063 (_ BitVec 64) List!29062) Unit!42344)

(assert (=> b!2477434 (= lt!884895 (lemmaGetValueByKeyImpliesContainsTuple!57 lt!884892 lt!884910 lt!884901))))

(declare-fun apply!6833 (MutLongMap!3282 (_ BitVec 64)) List!29062)

(assert (=> b!2477434 (= lt!884901 (apply!6833 (v!31238 (underlying!6772 thiss!42540)) lt!884910))))

(assert (=> b!2477434 (= lt!884892 (toList!1464 (map!6038 (v!31238 (underlying!6772 thiss!42540)))))))

(declare-fun lt!884907 () Unit!42344)

(declare-fun lt!884906 () Unit!42344)

(assert (=> b!2477434 (= lt!884907 lt!884906)))

(declare-fun lt!884908 () List!29063)

(declare-datatypes ((Option!5722 0))(
  ( (None!5721) (Some!5721 (v!31239 List!29062)) )
))
(declare-fun isDefined!4544 (Option!5722) Bool)

(declare-fun getValueByKey!123 (List!29063 (_ BitVec 64)) Option!5722)

(assert (=> b!2477434 (isDefined!4544 (getValueByKey!123 lt!884908 lt!884910))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!80 (List!29063 (_ BitVec 64)) Unit!42344)

(assert (=> b!2477434 (= lt!884906 (lemmaContainsKeyImpliesGetValueByKeyDefined!80 lt!884908 lt!884910))))

(assert (=> b!2477434 (= lt!884908 (toList!1464 (map!6038 (v!31238 (underlying!6772 thiss!42540)))))))

(declare-fun lt!884905 () Unit!42344)

(declare-fun lt!884893 () Unit!42344)

(assert (=> b!2477434 (= lt!884905 lt!884893)))

(declare-fun lt!884894 () List!29063)

(declare-fun containsKey!114 (List!29063 (_ BitVec 64)) Bool)

(assert (=> b!2477434 (containsKey!114 lt!884894 lt!884910)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!57 (List!29063 (_ BitVec 64)) Unit!42344)

(assert (=> b!2477434 (= lt!884893 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!57 lt!884894 lt!884910))))

(assert (=> b!2477434 (= lt!884894 (toList!1464 (map!6038 (v!31238 (underlying!6772 thiss!42540)))))))

(declare-fun e!1571982 () Unit!42344)

(declare-fun Unit!42347 () Unit!42344)

(assert (=> b!2477434 (= e!1571982 Unit!42347)))

(declare-fun bm!151718 () Bool)

(assert (=> bm!151718 (= call!151723 (map!6038 (v!31238 (underlying!6772 thiss!42540))))))

(declare-fun bm!151719 () Bool)

(declare-fun call!151724 () Bool)

(declare-datatypes ((Option!5723 0))(
  ( (None!5722) (Some!5722 (v!31240 tuple2!28394)) )
))
(declare-fun call!151725 () Option!5723)

(declare-fun isDefined!4545 (Option!5723) Bool)

(assert (=> bm!151719 (= call!151724 (isDefined!4545 call!151725))))

(declare-fun b!2477435 () Bool)

(assert (=> b!2477435 false))

(declare-fun lt!884904 () Unit!42344)

(declare-fun lt!884902 () Unit!42344)

(assert (=> b!2477435 (= lt!884904 lt!884902)))

(declare-fun lt!884897 () ListLongMap!403)

(declare-datatypes ((ListMap!955 0))(
  ( (ListMap!956 (toList!1465 List!29062)) )
))
(declare-fun contains!4964 (ListMap!955 K!5290) Bool)

(declare-fun extractMap!144 (List!29063) ListMap!955)

(assert (=> b!2477435 (contains!4964 (extractMap!144 (toList!1464 lt!884897)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!56 (ListLongMap!403 K!5290 Hashable!3192) Unit!42344)

(assert (=> b!2477435 (= lt!884902 (lemmaInLongMapThenInGenericMap!56 lt!884897 key!2246 (hashF!5130 thiss!42540)))))

(assert (=> b!2477435 (= lt!884897 call!151723)))

(declare-fun Unit!42348 () Unit!42344)

(assert (=> b!2477435 (= e!1571979 Unit!42348)))

(declare-fun e!1571980 () Unit!42344)

(declare-fun forallContained!806 (List!29063 Int tuple2!28396) Unit!42344)

(assert (=> b!2477436 (= e!1571980 (forallContained!806 (toList!1464 (map!6038 (v!31238 (underlying!6772 thiss!42540)))) lambda!93472 (tuple2!28397 lt!884910 (apply!6833 (v!31238 (underlying!6772 thiss!42540)) lt!884910))))))

(declare-fun c!394231 () Bool)

(assert (=> b!2477436 (= c!394231 (not (contains!4963 (toList!1464 (map!6038 (v!31238 (underlying!6772 thiss!42540)))) (tuple2!28397 lt!884910 (apply!6833 (v!31238 (underlying!6772 thiss!42540)) lt!884910)))))))

(declare-fun lt!884898 () Unit!42344)

(assert (=> b!2477436 (= lt!884898 e!1571982)))

(declare-fun bm!151720 () Bool)

(declare-fun call!151722 () List!29062)

(declare-fun getPair!56 (List!29062 K!5290) Option!5723)

(assert (=> bm!151720 (= call!151725 (getPair!56 call!151722 key!2246))))

(declare-fun b!2477437 () Bool)

(assert (=> b!2477437 (= e!1571978 call!151724)))

(declare-fun b!2477438 () Bool)

(declare-fun e!1571981 () Bool)

(assert (=> b!2477438 (= e!1571981 (isDefined!4545 (getPair!56 (apply!6833 (v!31238 (underlying!6772 thiss!42540)) lt!884910) key!2246)))))

(declare-fun bm!151721 () Bool)

(declare-fun apply!6834 (ListLongMap!403 (_ BitVec 64)) List!29062)

(assert (=> bm!151721 (= call!151722 (apply!6834 (ite c!394230 lt!884899 call!151723) call!151721))))

(declare-fun d!712418 () Bool)

(declare-fun lt!884896 () Bool)

(declare-fun map!6039 (MutableMap!3192) ListMap!955)

(assert (=> d!712418 (= lt!884896 (contains!4964 (map!6039 thiss!42540) key!2246))))

(assert (=> d!712418 (= lt!884896 e!1571981)))

(declare-fun res!1048769 () Bool)

(assert (=> d!712418 (=> (not res!1048769) (not e!1571981))))

(declare-fun contains!4965 (MutLongMap!3282 (_ BitVec 64)) Bool)

(assert (=> d!712418 (= res!1048769 (contains!4965 (v!31238 (underlying!6772 thiss!42540)) lt!884910))))

(declare-fun lt!884900 () Unit!42344)

(assert (=> d!712418 (= lt!884900 e!1571983)))

(assert (=> d!712418 (= c!394230 (contains!4964 (extractMap!144 (toList!1464 (map!6038 (v!31238 (underlying!6772 thiss!42540))))) key!2246))))

(declare-fun lt!884909 () Unit!42344)

(assert (=> d!712418 (= lt!884909 e!1571980)))

(declare-fun c!394233 () Bool)

(assert (=> d!712418 (= c!394233 (contains!4965 (v!31238 (underlying!6772 thiss!42540)) lt!884910))))

(assert (=> d!712418 (= lt!884910 (hash!611 (hashF!5130 thiss!42540) key!2246))))

(assert (=> d!712418 (valid!2485 thiss!42540)))

(assert (=> d!712418 (= (contains!4961 thiss!42540 key!2246) lt!884896)))

(declare-fun b!2477432 () Bool)

(assert (=> b!2477432 (= e!1571984 call!151724)))

(declare-fun b!2477439 () Bool)

(declare-fun Unit!42349 () Unit!42344)

(assert (=> b!2477439 (= e!1571982 Unit!42349)))

(declare-fun b!2477440 () Bool)

(declare-fun Unit!42350 () Unit!42344)

(assert (=> b!2477440 (= e!1571980 Unit!42350)))

(assert (= (and d!712418 c!394233) b!2477436))

(assert (= (and d!712418 (not c!394233)) b!2477440))

(assert (= (and b!2477436 c!394231) b!2477434))

(assert (= (and b!2477436 (not c!394231)) b!2477439))

(assert (= (and d!712418 c!394230) b!2477431))

(assert (= (and d!712418 (not c!394230)) b!2477430))

(assert (= (and b!2477431 res!1048770) b!2477432))

(assert (= (and b!2477430 res!1048771) b!2477437))

(assert (= (and b!2477430 c!394232) b!2477435))

(assert (= (and b!2477430 (not c!394232)) b!2477433))

(assert (= (or b!2477431 b!2477432 b!2477430 b!2477437) bm!151716))

(assert (= (or b!2477431 b!2477430 b!2477437 b!2477435) bm!151718))

(assert (= (or b!2477432 b!2477437) bm!151721))

(assert (= (or b!2477431 b!2477430) bm!151717))

(assert (= (or b!2477432 b!2477437) bm!151720))

(assert (= (or b!2477432 b!2477437) bm!151719))

(assert (= (and d!712418 res!1048769) b!2477438))

(assert (=> bm!151718 m!2845281))

(declare-fun m!2845287 () Bool)

(assert (=> bm!151721 m!2845287))

(declare-fun m!2845289 () Bool)

(assert (=> b!2477431 m!2845289))

(declare-fun m!2845291 () Bool)

(assert (=> bm!151720 m!2845291))

(declare-fun m!2845293 () Bool)

(assert (=> bm!151719 m!2845293))

(assert (=> b!2477436 m!2845281))

(declare-fun m!2845295 () Bool)

(assert (=> b!2477436 m!2845295))

(declare-fun m!2845297 () Bool)

(assert (=> b!2477436 m!2845297))

(declare-fun m!2845299 () Bool)

(assert (=> b!2477436 m!2845299))

(assert (=> d!712418 m!2845281))

(declare-fun m!2845301 () Bool)

(assert (=> d!712418 m!2845301))

(declare-fun m!2845303 () Bool)

(assert (=> d!712418 m!2845303))

(declare-fun m!2845305 () Bool)

(assert (=> d!712418 m!2845305))

(assert (=> d!712418 m!2845301))

(declare-fun m!2845307 () Bool)

(assert (=> d!712418 m!2845307))

(assert (=> d!712418 m!2845305))

(declare-fun m!2845309 () Bool)

(assert (=> d!712418 m!2845309))

(assert (=> d!712418 m!2845271))

(declare-fun m!2845311 () Bool)

(assert (=> d!712418 m!2845311))

(assert (=> b!2477438 m!2845295))

(assert (=> b!2477438 m!2845295))

(declare-fun m!2845313 () Bool)

(assert (=> b!2477438 m!2845313))

(assert (=> b!2477438 m!2845313))

(declare-fun m!2845315 () Bool)

(assert (=> b!2477438 m!2845315))

(declare-fun m!2845317 () Bool)

(assert (=> b!2477434 m!2845317))

(assert (=> b!2477434 m!2845281))

(assert (=> b!2477434 m!2845295))

(declare-fun m!2845319 () Bool)

(assert (=> b!2477434 m!2845319))

(declare-fun m!2845321 () Bool)

(assert (=> b!2477434 m!2845321))

(declare-fun m!2845323 () Bool)

(assert (=> b!2477434 m!2845323))

(assert (=> b!2477434 m!2845319))

(declare-fun m!2845325 () Bool)

(assert (=> b!2477434 m!2845325))

(declare-fun m!2845327 () Bool)

(assert (=> b!2477434 m!2845327))

(declare-fun m!2845329 () Bool)

(assert (=> b!2477434 m!2845329))

(assert (=> bm!151716 m!2845311))

(declare-fun m!2845331 () Bool)

(assert (=> bm!151717 m!2845331))

(declare-fun m!2845333 () Bool)

(assert (=> b!2477435 m!2845333))

(assert (=> b!2477435 m!2845333))

(declare-fun m!2845335 () Bool)

(assert (=> b!2477435 m!2845335))

(declare-fun m!2845337 () Bool)

(assert (=> b!2477435 m!2845337))

(assert (=> b!2477393 d!712418))

(declare-fun d!712420 () Bool)

(assert (=> d!712420 (= (array_inv!3697 (_keys!3579 (v!31237 (underlying!6771 (v!31238 (underlying!6772 thiss!42540)))))) (bvsge (size!22574 (_keys!3579 (v!31237 (underlying!6771 (v!31238 (underlying!6772 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2477400 d!712420))

(declare-fun d!712422 () Bool)

(assert (=> d!712422 (= (array_inv!3698 (_values!3562 (v!31237 (underlying!6771 (v!31238 (underlying!6772 thiss!42540)))))) (bvsge (size!22573 (_values!3562 (v!31237 (underlying!6771 (v!31238 (underlying!6772 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2477400 d!712422))

(declare-fun tp!792564 () Bool)

(declare-fun b!2477447 () Bool)

(declare-fun tp_is_empty!12067 () Bool)

(declare-fun e!1571989 () Bool)

(assert (=> b!2477447 (= e!1571989 (and tp_is_empty!12065 tp_is_empty!12067 tp!792564))))

(declare-fun e!1571990 () Bool)

(declare-fun b!2477448 () Bool)

(declare-fun tp!792565 () Bool)

(assert (=> b!2477448 (= e!1571990 (and tp_is_empty!12065 tp_is_empty!12067 tp!792565))))

(declare-fun condMapEmpty!15274 () Bool)

(declare-fun mapDefault!15274 () List!29062)

(assert (=> mapNonEmpty!15271 (= condMapEmpty!15274 (= mapRest!15271 ((as const (Array (_ BitVec 32) List!29062)) mapDefault!15274)))))

(declare-fun mapRes!15274 () Bool)

(assert (=> mapNonEmpty!15271 (= tp!792551 (and e!1571990 mapRes!15274))))

(declare-fun mapIsEmpty!15274 () Bool)

(assert (=> mapIsEmpty!15274 mapRes!15274))

(declare-fun mapNonEmpty!15274 () Bool)

(declare-fun tp!792566 () Bool)

(assert (=> mapNonEmpty!15274 (= mapRes!15274 (and tp!792566 e!1571989))))

(declare-fun mapValue!15274 () List!29062)

(declare-fun mapRest!15274 () (Array (_ BitVec 32) List!29062))

(declare-fun mapKey!15274 () (_ BitVec 32))

(assert (=> mapNonEmpty!15274 (= mapRest!15271 (store mapRest!15274 mapKey!15274 mapValue!15274))))

(assert (= (and mapNonEmpty!15271 condMapEmpty!15274) mapIsEmpty!15274))

(assert (= (and mapNonEmpty!15271 (not condMapEmpty!15274)) mapNonEmpty!15274))

(assert (= (and mapNonEmpty!15274 ((_ is Cons!28962) mapValue!15274)) b!2477447))

(assert (= (and mapNonEmpty!15271 ((_ is Cons!28962) mapDefault!15274)) b!2477448))

(declare-fun m!2845339 () Bool)

(assert (=> mapNonEmpty!15274 m!2845339))

(declare-fun b!2477453 () Bool)

(declare-fun tp!792569 () Bool)

(declare-fun e!1571993 () Bool)

(assert (=> b!2477453 (= e!1571993 (and tp_is_empty!12065 tp_is_empty!12067 tp!792569))))

(assert (=> mapNonEmpty!15271 (= tp!792553 e!1571993)))

(assert (= (and mapNonEmpty!15271 ((_ is Cons!28962) mapValue!15271)) b!2477453))

(declare-fun e!1571994 () Bool)

(declare-fun tp!792570 () Bool)

(declare-fun b!2477454 () Bool)

(assert (=> b!2477454 (= e!1571994 (and tp_is_empty!12065 tp_is_empty!12067 tp!792570))))

(assert (=> b!2477396 (= tp!792554 e!1571994)))

(assert (= (and b!2477396 ((_ is Cons!28962) mapDefault!15271)) b!2477454))

(declare-fun tp!792571 () Bool)

(declare-fun e!1571995 () Bool)

(declare-fun b!2477455 () Bool)

(assert (=> b!2477455 (= e!1571995 (and tp_is_empty!12065 tp_is_empty!12067 tp!792571))))

(assert (=> b!2477400 (= tp!792552 e!1571995)))

(assert (= (and b!2477400 ((_ is Cons!28962) (zeroValue!3540 (v!31237 (underlying!6771 (v!31238 (underlying!6772 thiss!42540))))))) b!2477455))

(declare-fun b!2477456 () Bool)

(declare-fun e!1571996 () Bool)

(declare-fun tp!792572 () Bool)

(assert (=> b!2477456 (= e!1571996 (and tp_is_empty!12065 tp_is_empty!12067 tp!792572))))

(assert (=> b!2477400 (= tp!792556 e!1571996)))

(assert (= (and b!2477400 ((_ is Cons!28962) (minValue!3540 (v!31237 (underlying!6771 (v!31238 (underlying!6772 thiss!42540))))))) b!2477456))

(check-sat (not b!2477447) (not bm!151719) b_and!188213 (not bm!151721) (not b!2477454) (not b!2477438) (not b_next!72691) (not b!2477453) tp_is_empty!12067 (not mapNonEmpty!15274) (not bm!151718) tp_is_empty!12065 (not b!2477434) (not b!2477436) (not b!2477435) (not b!2477406) (not d!712414) (not d!712416) b_and!188211 (not b!2477455) (not bm!151717) (not b!2477456) (not d!712418) (not b!2477448) (not bm!151716) (not b_next!72689) (not b!2477431) (not bm!151720) (not b!2477407))
(check-sat b_and!188213 b_and!188211 (not b_next!72689) (not b_next!72691))
