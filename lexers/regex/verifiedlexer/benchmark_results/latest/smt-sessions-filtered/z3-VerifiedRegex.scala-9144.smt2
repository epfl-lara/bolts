; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488124 () Bool)

(assert start!488124)

(declare-fun b!4769254 () Bool)

(declare-fun b_free!129731 () Bool)

(declare-fun b_next!130521 () Bool)

(assert (=> b!4769254 (= b_free!129731 (not b_next!130521))))

(declare-fun tp!1356040 () Bool)

(declare-fun b_and!341465 () Bool)

(assert (=> b!4769254 (= tp!1356040 b_and!341465)))

(declare-fun b!4769251 () Bool)

(declare-fun b_free!129733 () Bool)

(declare-fun b_next!130523 () Bool)

(assert (=> b!4769251 (= b_free!129733 (not b_next!130523))))

(declare-fun tp!1356044 () Bool)

(declare-fun b_and!341467 () Bool)

(assert (=> b!4769251 (= tp!1356044 b_and!341467)))

(declare-fun e!2977040 () Bool)

(declare-fun e!2977036 () Bool)

(assert (=> b!4769251 (= e!2977040 (and e!2977036 tp!1356044))))

(declare-fun res!2022780 () Bool)

(declare-fun e!2977031 () Bool)

(assert (=> start!488124 (=> (not res!2022780) (not e!2977031))))

(declare-datatypes ((K!15009 0))(
  ( (K!15010 (val!20313 Int)) )
))
(declare-datatypes ((V!15255 0))(
  ( (V!15256 (val!20314 Int)) )
))
(declare-datatypes ((tuple2!55604 0))(
  ( (tuple2!55605 (_1!31096 K!15009) (_2!31096 V!15255)) )
))
(declare-datatypes ((array!18116 0))(
  ( (array!18117 (arr!8079 (Array (_ BitVec 32) (_ BitVec 64))) (size!36309 (_ BitVec 32))) )
))
(declare-datatypes ((List!53648 0))(
  ( (Nil!53524) (Cons!53524 (h!59936 tuple2!55604) (t!361084 List!53648)) )
))
(declare-datatypes ((array!18118 0))(
  ( (array!18119 (arr!8080 (Array (_ BitVec 32) List!53648)) (size!36310 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6608 0))(
  ( (HashableExt!6607 (__x!32589 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9894 0))(
  ( (LongMapFixedSize!9895 (defaultEntry!5365 Int) (mask!14716 (_ BitVec 32)) (extraKeys!5222 (_ BitVec 32)) (zeroValue!5235 List!53648) (minValue!5235 List!53648) (_size!9919 (_ BitVec 32)) (_keys!5289 array!18116) (_values!5260 array!18118) (_vacant!5012 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19553 0))(
  ( (Cell!19554 (v!47776 LongMapFixedSize!9894)) )
))
(declare-datatypes ((MutLongMap!4947 0))(
  ( (LongMap!4947 (underlying!10101 Cell!19553)) (MutLongMapExt!4946 (__x!32590 Int)) )
))
(declare-datatypes ((Cell!19555 0))(
  ( (Cell!19556 (v!47777 MutLongMap!4947)) )
))
(declare-datatypes ((MutableMap!4831 0))(
  ( (MutableMapExt!4830 (__x!32591 Int)) (HashMap!4831 (underlying!10102 Cell!19555) (hashF!12499 Hashable!6608) (_size!9920 (_ BitVec 32)) (defaultValue!5002 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4831)

(get-info :version)

(assert (=> start!488124 (= res!2022780 ((_ is HashMap!4831) thiss!42052))))

(assert (=> start!488124 e!2977031))

(assert (=> start!488124 e!2977040))

(declare-fun tp_is_empty!32499 () Bool)

(assert (=> start!488124 tp_is_empty!32499))

(declare-fun b!4769252 () Bool)

(declare-fun e!2977032 () Bool)

(declare-fun e!2977039 () Bool)

(assert (=> b!4769252 (= e!2977032 e!2977039)))

(declare-fun mapNonEmpty!21940 () Bool)

(declare-fun mapRes!21940 () Bool)

(declare-fun tp!1356041 () Bool)

(declare-fun tp!1356042 () Bool)

(assert (=> mapNonEmpty!21940 (= mapRes!21940 (and tp!1356041 tp!1356042))))

(declare-fun mapValue!21940 () List!53648)

(declare-fun mapRest!21940 () (Array (_ BitVec 32) List!53648))

(declare-fun mapKey!21940 () (_ BitVec 32))

(assert (=> mapNonEmpty!21940 (= (arr!8080 (_values!5260 (v!47776 (underlying!10101 (v!47777 (underlying!10102 thiss!42052)))))) (store mapRest!21940 mapKey!21940 mapValue!21940))))

(declare-fun b!4769253 () Bool)

(declare-fun e!2977037 () Bool)

(declare-fun tp!1356039 () Bool)

(assert (=> b!4769253 (= e!2977037 (and tp!1356039 mapRes!21940))))

(declare-fun condMapEmpty!21940 () Bool)

(declare-fun mapDefault!21940 () List!53648)

(assert (=> b!4769253 (= condMapEmpty!21940 (= (arr!8080 (_values!5260 (v!47776 (underlying!10101 (v!47777 (underlying!10102 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53648)) mapDefault!21940)))))

(declare-fun tp!1356038 () Bool)

(declare-fun tp!1356043 () Bool)

(declare-fun e!2977035 () Bool)

(declare-fun array_inv!5819 (array!18116) Bool)

(declare-fun array_inv!5820 (array!18118) Bool)

(assert (=> b!4769254 (= e!2977035 (and tp!1356040 tp!1356038 tp!1356043 (array_inv!5819 (_keys!5289 (v!47776 (underlying!10101 (v!47777 (underlying!10102 thiss!42052)))))) (array_inv!5820 (_values!5260 (v!47776 (underlying!10101 (v!47777 (underlying!10102 thiss!42052)))))) e!2977037))))

(declare-fun mapIsEmpty!21940 () Bool)

(assert (=> mapIsEmpty!21940 mapRes!21940))

(declare-fun b!4769255 () Bool)

(declare-fun e!2977034 () Bool)

(declare-fun e!2977038 () Bool)

(assert (=> b!4769255 (= e!2977034 e!2977038)))

(declare-fun res!2022781 () Bool)

(assert (=> b!4769255 (=> res!2022781 e!2977038)))

(declare-datatypes ((tuple2!55606 0))(
  ( (tuple2!55607 (_1!31097 (_ BitVec 64)) (_2!31097 List!53648)) )
))
(declare-datatypes ((List!53649 0))(
  ( (Nil!53525) (Cons!53525 (h!59937 tuple2!55606) (t!361085 List!53649)) )
))
(declare-datatypes ((ListLongMap!4721 0))(
  ( (ListLongMap!4722 (toList!6319 List!53649)) )
))
(declare-fun lt!1932047 () ListLongMap!4721)

(declare-fun isStrictlySorted!813 (List!53649) Bool)

(assert (=> b!4769255 (= res!2022781 (not (isStrictlySorted!813 (toList!6319 lt!1932047))))))

(declare-fun b!4769256 () Bool)

(declare-fun lt!1932045 () (_ BitVec 64))

(declare-fun containsKey!3677 (List!53649 (_ BitVec 64)) Bool)

(assert (=> b!4769256 (= e!2977038 (not (containsKey!3677 (toList!6319 lt!1932047) lt!1932045)))))

(declare-fun b!4769257 () Bool)

(declare-fun lt!1932046 () MutLongMap!4947)

(assert (=> b!4769257 (= e!2977036 (and e!2977032 ((_ is LongMap!4947) lt!1932046)))))

(assert (=> b!4769257 (= lt!1932046 (v!47777 (underlying!10102 thiss!42052)))))

(declare-fun b!4769258 () Bool)

(assert (=> b!4769258 (= e!2977031 e!2977034)))

(declare-fun res!2022783 () Bool)

(assert (=> b!4769258 (=> (not res!2022783) (not e!2977034))))

(declare-fun contains!16886 (List!53649 tuple2!55606) Bool)

(declare-fun apply!12652 (MutLongMap!4947 (_ BitVec 64)) List!53648)

(assert (=> b!4769258 (= res!2022783 (not (contains!16886 (toList!6319 lt!1932047) (tuple2!55607 lt!1932045 (apply!12652 (v!47777 (underlying!10102 thiss!42052)) lt!1932045)))))))

(declare-fun map!12023 (MutLongMap!4947) ListLongMap!4721)

(assert (=> b!4769258 (= lt!1932047 (map!12023 (v!47777 (underlying!10102 thiss!42052))))))

(declare-fun key!1776 () K!15009)

(declare-fun hash!4586 (Hashable!6608 K!15009) (_ BitVec 64))

(assert (=> b!4769258 (= lt!1932045 (hash!4586 (hashF!12499 thiss!42052) key!1776))))

(declare-fun b!4769259 () Bool)

(declare-fun res!2022779 () Bool)

(assert (=> b!4769259 (=> (not res!2022779) (not e!2977031))))

(declare-fun valid!3954 (MutableMap!4831) Bool)

(assert (=> b!4769259 (= res!2022779 (valid!3954 thiss!42052))))

(declare-fun b!4769260 () Bool)

(assert (=> b!4769260 (= e!2977039 e!2977035)))

(declare-fun b!4769261 () Bool)

(declare-fun res!2022782 () Bool)

(assert (=> b!4769261 (=> (not res!2022782) (not e!2977031))))

(declare-fun contains!16887 (MutableMap!4831 K!15009) Bool)

(assert (=> b!4769261 (= res!2022782 (contains!16887 thiss!42052 key!1776))))

(assert (= (and start!488124 res!2022780) b!4769259))

(assert (= (and b!4769259 res!2022779) b!4769261))

(assert (= (and b!4769261 res!2022782) b!4769258))

(assert (= (and b!4769258 res!2022783) b!4769255))

(assert (= (and b!4769255 (not res!2022781)) b!4769256))

(assert (= (and b!4769253 condMapEmpty!21940) mapIsEmpty!21940))

(assert (= (and b!4769253 (not condMapEmpty!21940)) mapNonEmpty!21940))

(assert (= b!4769254 b!4769253))

(assert (= b!4769260 b!4769254))

(assert (= b!4769252 b!4769260))

(assert (= (and b!4769257 ((_ is LongMap!4947) (v!47777 (underlying!10102 thiss!42052)))) b!4769252))

(assert (= b!4769251 b!4769257))

(assert (= (and start!488124 ((_ is HashMap!4831) thiss!42052)) b!4769251))

(declare-fun m!5740936 () Bool)

(assert (=> b!4769261 m!5740936))

(declare-fun m!5740938 () Bool)

(assert (=> b!4769254 m!5740938))

(declare-fun m!5740940 () Bool)

(assert (=> b!4769254 m!5740940))

(declare-fun m!5740942 () Bool)

(assert (=> b!4769255 m!5740942))

(declare-fun m!5740944 () Bool)

(assert (=> b!4769259 m!5740944))

(declare-fun m!5740946 () Bool)

(assert (=> b!4769256 m!5740946))

(declare-fun m!5740948 () Bool)

(assert (=> b!4769258 m!5740948))

(declare-fun m!5740950 () Bool)

(assert (=> b!4769258 m!5740950))

(declare-fun m!5740952 () Bool)

(assert (=> b!4769258 m!5740952))

(declare-fun m!5740954 () Bool)

(assert (=> b!4769258 m!5740954))

(declare-fun m!5740956 () Bool)

(assert (=> mapNonEmpty!21940 m!5740956))

(check-sat (not b_next!130523) (not b!4769255) b_and!341467 (not b!4769258) (not b!4769253) (not b!4769254) (not b!4769256) (not b!4769261) tp_is_empty!32499 b_and!341465 (not b_next!130521) (not mapNonEmpty!21940) (not b!4769259))
(check-sat b_and!341467 b_and!341465 (not b_next!130523) (not b_next!130521))
(get-model)

(declare-fun d!1524475 () Bool)

(declare-fun res!2022788 () Bool)

(declare-fun e!2977045 () Bool)

(assert (=> d!1524475 (=> res!2022788 e!2977045)))

(assert (=> d!1524475 (= res!2022788 (and ((_ is Cons!53525) (toList!6319 lt!1932047)) (= (_1!31097 (h!59937 (toList!6319 lt!1932047))) lt!1932045)))))

(assert (=> d!1524475 (= (containsKey!3677 (toList!6319 lt!1932047) lt!1932045) e!2977045)))

(declare-fun b!4769266 () Bool)

(declare-fun e!2977046 () Bool)

(assert (=> b!4769266 (= e!2977045 e!2977046)))

(declare-fun res!2022789 () Bool)

(assert (=> b!4769266 (=> (not res!2022789) (not e!2977046))))

(assert (=> b!4769266 (= res!2022789 (and (or (not ((_ is Cons!53525) (toList!6319 lt!1932047))) (bvsle (_1!31097 (h!59937 (toList!6319 lt!1932047))) lt!1932045)) ((_ is Cons!53525) (toList!6319 lt!1932047)) (bvslt (_1!31097 (h!59937 (toList!6319 lt!1932047))) lt!1932045)))))

(declare-fun b!4769267 () Bool)

(assert (=> b!4769267 (= e!2977046 (containsKey!3677 (t!361085 (toList!6319 lt!1932047)) lt!1932045))))

(assert (= (and d!1524475 (not res!2022788)) b!4769266))

(assert (= (and b!4769266 res!2022789) b!4769267))

(declare-fun m!5740958 () Bool)

(assert (=> b!4769267 m!5740958))

(assert (=> b!4769256 d!1524475))

(declare-fun call!334361 () (_ BitVec 64))

(declare-fun call!334357 () Bool)

(declare-fun c!813541 () Bool)

(declare-fun call!334358 () ListLongMap!4721)

(declare-fun lt!1932088 () ListLongMap!4721)

(declare-fun bm!334352 () Bool)

(declare-fun contains!16888 (ListLongMap!4721 (_ BitVec 64)) Bool)

(assert (=> bm!334352 (= call!334357 (contains!16888 (ite c!813541 lt!1932088 call!334358) call!334361))))

(declare-datatypes ((Unit!138355 0))(
  ( (Unit!138356) )
))
(declare-fun e!2977062 () Unit!138355)

(declare-fun b!4769290 () Bool)

(declare-fun lt!1932098 () (_ BitVec 64))

(declare-fun lambda!224772 () Int)

(declare-fun forallContained!3872 (List!53649 Int tuple2!55606) Unit!138355)

(assert (=> b!4769290 (= e!2977062 (forallContained!3872 (toList!6319 (map!12023 (v!47777 (underlying!10102 thiss!42052)))) lambda!224772 (tuple2!55607 lt!1932098 (apply!12652 (v!47777 (underlying!10102 thiss!42052)) lt!1932098))))))

(declare-fun c!813542 () Bool)

(assert (=> b!4769290 (= c!813542 (not (contains!16886 (toList!6319 (map!12023 (v!47777 (underlying!10102 thiss!42052)))) (tuple2!55607 lt!1932098 (apply!12652 (v!47777 (underlying!10102 thiss!42052)) lt!1932098)))))))

(declare-fun lt!1932097 () Unit!138355)

(declare-fun e!2977063 () Unit!138355)

(assert (=> b!4769290 (= lt!1932097 e!2977063)))

(declare-fun d!1524477 () Bool)

(declare-fun lt!1932092 () Bool)

(declare-datatypes ((ListMap!5811 0))(
  ( (ListMap!5812 (toList!6320 List!53648)) )
))
(declare-fun contains!16889 (ListMap!5811 K!15009) Bool)

(declare-fun map!12024 (MutableMap!4831) ListMap!5811)

(assert (=> d!1524477 (= lt!1932092 (contains!16889 (map!12024 thiss!42052) key!1776))))

(declare-fun e!2977066 () Bool)

(assert (=> d!1524477 (= lt!1932092 e!2977066)))

(declare-fun res!2022796 () Bool)

(assert (=> d!1524477 (=> (not res!2022796) (not e!2977066))))

(declare-fun contains!16890 (MutLongMap!4947 (_ BitVec 64)) Bool)

(assert (=> d!1524477 (= res!2022796 (contains!16890 (v!47777 (underlying!10102 thiss!42052)) lt!1932098))))

(declare-fun lt!1932094 () Unit!138355)

(declare-fun e!2977061 () Unit!138355)

(assert (=> d!1524477 (= lt!1932094 e!2977061)))

(declare-fun extractMap!2157 (List!53649) ListMap!5811)

(assert (=> d!1524477 (= c!813541 (contains!16889 (extractMap!2157 (toList!6319 (map!12023 (v!47777 (underlying!10102 thiss!42052))))) key!1776))))

(declare-fun lt!1932103 () Unit!138355)

(assert (=> d!1524477 (= lt!1932103 e!2977062)))

(declare-fun c!813539 () Bool)

(assert (=> d!1524477 (= c!813539 (contains!16890 (v!47777 (underlying!10102 thiss!42052)) lt!1932098))))

(assert (=> d!1524477 (= lt!1932098 (hash!4586 (hashF!12499 thiss!42052) key!1776))))

(assert (=> d!1524477 (valid!3954 thiss!42052)))

(assert (=> d!1524477 (= (contains!16887 thiss!42052 key!1776) lt!1932092)))

(declare-fun b!4769291 () Bool)

(declare-fun Unit!138357 () Unit!138355)

(assert (=> b!4769291 (= e!2977062 Unit!138357)))

(declare-fun b!4769292 () Bool)

(declare-fun e!2977065 () Unit!138355)

(assert (=> b!4769292 (= e!2977061 e!2977065)))

(declare-fun res!2022798 () Bool)

(assert (=> b!4769292 (= res!2022798 call!334357)))

(declare-fun e!2977064 () Bool)

(assert (=> b!4769292 (=> (not res!2022798) (not e!2977064))))

(declare-fun c!813540 () Bool)

(assert (=> b!4769292 (= c!813540 e!2977064)))

(declare-fun bm!334353 () Bool)

(declare-fun call!334362 () List!53648)

(declare-fun apply!12653 (ListLongMap!4721 (_ BitVec 64)) List!53648)

(assert (=> bm!334353 (= call!334362 (apply!12653 (ite c!813541 lt!1932088 call!334358) call!334361))))

(declare-fun bm!334354 () Bool)

(declare-datatypes ((Option!12710 0))(
  ( (None!12709) (Some!12709 (v!47779 tuple2!55604)) )
))
(declare-fun call!334360 () Option!12710)

(declare-fun getPair!654 (List!53648 K!15009) Option!12710)

(assert (=> bm!334354 (= call!334360 (getPair!654 call!334362 key!1776))))

(declare-fun bm!334355 () Bool)

(assert (=> bm!334355 (= call!334358 (map!12023 (v!47777 (underlying!10102 thiss!42052))))))

(declare-fun b!4769293 () Bool)

(declare-fun e!2977067 () Bool)

(declare-fun call!334359 () Bool)

(assert (=> b!4769293 (= e!2977067 call!334359)))

(declare-fun b!4769294 () Bool)

(declare-fun Unit!138358 () Unit!138355)

(assert (=> b!4769294 (= e!2977063 Unit!138358)))

(declare-fun bm!334356 () Bool)

(assert (=> bm!334356 (= call!334361 (hash!4586 (hashF!12499 thiss!42052) key!1776))))

(declare-fun b!4769295 () Bool)

(assert (=> b!4769295 false))

(declare-fun lt!1932090 () Unit!138355)

(declare-fun lt!1932105 () Unit!138355)

(assert (=> b!4769295 (= lt!1932090 lt!1932105)))

(declare-fun lt!1932104 () List!53649)

(declare-fun lt!1932089 () List!53648)

(assert (=> b!4769295 (contains!16886 lt!1932104 (tuple2!55607 lt!1932098 lt!1932089))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!942 (List!53649 (_ BitVec 64) List!53648) Unit!138355)

(assert (=> b!4769295 (= lt!1932105 (lemmaGetValueByKeyImpliesContainsTuple!942 lt!1932104 lt!1932098 lt!1932089))))

(assert (=> b!4769295 (= lt!1932089 (apply!12652 (v!47777 (underlying!10102 thiss!42052)) lt!1932098))))

(assert (=> b!4769295 (= lt!1932104 (toList!6319 (map!12023 (v!47777 (underlying!10102 thiss!42052)))))))

(declare-fun lt!1932093 () Unit!138355)

(declare-fun lt!1932106 () Unit!138355)

(assert (=> b!4769295 (= lt!1932093 lt!1932106)))

(declare-fun lt!1932096 () List!53649)

(declare-datatypes ((Option!12711 0))(
  ( (None!12710) (Some!12710 (v!47780 List!53648)) )
))
(declare-fun isDefined!9860 (Option!12711) Bool)

(declare-fun getValueByKey!2204 (List!53649 (_ BitVec 64)) Option!12711)

(assert (=> b!4769295 (isDefined!9860 (getValueByKey!2204 lt!1932096 lt!1932098))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2000 (List!53649 (_ BitVec 64)) Unit!138355)

(assert (=> b!4769295 (= lt!1932106 (lemmaContainsKeyImpliesGetValueByKeyDefined!2000 lt!1932096 lt!1932098))))

(assert (=> b!4769295 (= lt!1932096 (toList!6319 (map!12023 (v!47777 (underlying!10102 thiss!42052)))))))

(declare-fun lt!1932107 () Unit!138355)

(declare-fun lt!1932101 () Unit!138355)

(assert (=> b!4769295 (= lt!1932107 lt!1932101)))

(declare-fun lt!1932095 () List!53649)

(assert (=> b!4769295 (containsKey!3677 lt!1932095 lt!1932098)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!208 (List!53649 (_ BitVec 64)) Unit!138355)

(assert (=> b!4769295 (= lt!1932101 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!208 lt!1932095 lt!1932098))))

(assert (=> b!4769295 (= lt!1932095 (toList!6319 (map!12023 (v!47777 (underlying!10102 thiss!42052)))))))

(declare-fun Unit!138359 () Unit!138355)

(assert (=> b!4769295 (= e!2977063 Unit!138359)))

(declare-fun b!4769296 () Bool)

(assert (=> b!4769296 (= e!2977064 call!334359)))

(declare-fun b!4769297 () Bool)

(declare-fun lt!1932102 () Unit!138355)

(assert (=> b!4769297 (= e!2977061 lt!1932102)))

(assert (=> b!4769297 (= lt!1932088 call!334358)))

(declare-fun lemmaInGenericMapThenInLongMap!207 (ListLongMap!4721 K!15009 Hashable!6608) Unit!138355)

(assert (=> b!4769297 (= lt!1932102 (lemmaInGenericMapThenInLongMap!207 lt!1932088 key!1776 (hashF!12499 thiss!42052)))))

(declare-fun res!2022797 () Bool)

(assert (=> b!4769297 (= res!2022797 call!334357)))

(assert (=> b!4769297 (=> (not res!2022797) (not e!2977067))))

(assert (=> b!4769297 e!2977067))

(declare-fun b!4769298 () Bool)

(declare-fun Unit!138360 () Unit!138355)

(assert (=> b!4769298 (= e!2977065 Unit!138360)))

(declare-fun b!4769299 () Bool)

(assert (=> b!4769299 false))

(declare-fun lt!1932100 () Unit!138355)

(declare-fun lt!1932099 () Unit!138355)

(assert (=> b!4769299 (= lt!1932100 lt!1932099)))

(declare-fun lt!1932091 () ListLongMap!4721)

(assert (=> b!4769299 (contains!16889 (extractMap!2157 (toList!6319 lt!1932091)) key!1776)))

(declare-fun lemmaInLongMapThenInGenericMap!207 (ListLongMap!4721 K!15009 Hashable!6608) Unit!138355)

(assert (=> b!4769299 (= lt!1932099 (lemmaInLongMapThenInGenericMap!207 lt!1932091 key!1776 (hashF!12499 thiss!42052)))))

(assert (=> b!4769299 (= lt!1932091 call!334358)))

(declare-fun Unit!138361 () Unit!138355)

(assert (=> b!4769299 (= e!2977065 Unit!138361)))

(declare-fun bm!334357 () Bool)

(declare-fun isDefined!9861 (Option!12710) Bool)

(assert (=> bm!334357 (= call!334359 (isDefined!9861 call!334360))))

(declare-fun b!4769300 () Bool)

(assert (=> b!4769300 (= e!2977066 (isDefined!9861 (getPair!654 (apply!12652 (v!47777 (underlying!10102 thiss!42052)) lt!1932098) key!1776)))))

(assert (= (and d!1524477 c!813539) b!4769290))

(assert (= (and d!1524477 (not c!813539)) b!4769291))

(assert (= (and b!4769290 c!813542) b!4769295))

(assert (= (and b!4769290 (not c!813542)) b!4769294))

(assert (= (and d!1524477 c!813541) b!4769297))

(assert (= (and d!1524477 (not c!813541)) b!4769292))

(assert (= (and b!4769297 res!2022797) b!4769293))

(assert (= (and b!4769292 res!2022798) b!4769296))

(assert (= (and b!4769292 c!813540) b!4769299))

(assert (= (and b!4769292 (not c!813540)) b!4769298))

(assert (= (or b!4769297 b!4769292 b!4769296 b!4769299) bm!334355))

(assert (= (or b!4769297 b!4769293 b!4769292 b!4769296) bm!334356))

(assert (= (or b!4769293 b!4769296) bm!334353))

(assert (= (or b!4769297 b!4769292) bm!334352))

(assert (= (or b!4769293 b!4769296) bm!334354))

(assert (= (or b!4769293 b!4769296) bm!334357))

(assert (= (and d!1524477 res!2022796) b!4769300))

(declare-fun m!5740960 () Bool)

(assert (=> b!4769295 m!5740960))

(declare-fun m!5740962 () Bool)

(assert (=> b!4769295 m!5740962))

(declare-fun m!5740964 () Bool)

(assert (=> b!4769295 m!5740964))

(declare-fun m!5740966 () Bool)

(assert (=> b!4769295 m!5740966))

(declare-fun m!5740968 () Bool)

(assert (=> b!4769295 m!5740968))

(assert (=> b!4769295 m!5740952))

(declare-fun m!5740970 () Bool)

(assert (=> b!4769295 m!5740970))

(declare-fun m!5740972 () Bool)

(assert (=> b!4769295 m!5740972))

(assert (=> b!4769295 m!5740966))

(declare-fun m!5740974 () Bool)

(assert (=> b!4769295 m!5740974))

(assert (=> b!4769300 m!5740964))

(assert (=> b!4769300 m!5740964))

(declare-fun m!5740976 () Bool)

(assert (=> b!4769300 m!5740976))

(assert (=> b!4769300 m!5740976))

(declare-fun m!5740978 () Bool)

(assert (=> b!4769300 m!5740978))

(declare-fun m!5740980 () Bool)

(assert (=> b!4769297 m!5740980))

(declare-fun m!5740982 () Bool)

(assert (=> bm!334357 m!5740982))

(assert (=> bm!334355 m!5740952))

(assert (=> d!1524477 m!5740944))

(declare-fun m!5740984 () Bool)

(assert (=> d!1524477 m!5740984))

(declare-fun m!5740986 () Bool)

(assert (=> d!1524477 m!5740986))

(assert (=> d!1524477 m!5740954))

(assert (=> d!1524477 m!5740986))

(declare-fun m!5740988 () Bool)

(assert (=> d!1524477 m!5740988))

(assert (=> d!1524477 m!5740952))

(declare-fun m!5740990 () Bool)

(assert (=> d!1524477 m!5740990))

(assert (=> d!1524477 m!5740990))

(declare-fun m!5740992 () Bool)

(assert (=> d!1524477 m!5740992))

(declare-fun m!5740994 () Bool)

(assert (=> bm!334352 m!5740994))

(declare-fun m!5740996 () Bool)

(assert (=> bm!334353 m!5740996))

(assert (=> b!4769290 m!5740952))

(assert (=> b!4769290 m!5740964))

(declare-fun m!5740998 () Bool)

(assert (=> b!4769290 m!5740998))

(declare-fun m!5741000 () Bool)

(assert (=> b!4769290 m!5741000))

(declare-fun m!5741002 () Bool)

(assert (=> b!4769299 m!5741002))

(assert (=> b!4769299 m!5741002))

(declare-fun m!5741004 () Bool)

(assert (=> b!4769299 m!5741004))

(declare-fun m!5741006 () Bool)

(assert (=> b!4769299 m!5741006))

(declare-fun m!5741008 () Bool)

(assert (=> bm!334354 m!5741008))

(assert (=> bm!334356 m!5740954))

(assert (=> b!4769261 d!1524477))

(declare-fun d!1524479 () Bool)

(declare-fun res!2022803 () Bool)

(declare-fun e!2977072 () Bool)

(assert (=> d!1524479 (=> res!2022803 e!2977072)))

(assert (=> d!1524479 (= res!2022803 (or ((_ is Nil!53525) (toList!6319 lt!1932047)) ((_ is Nil!53525) (t!361085 (toList!6319 lt!1932047)))))))

(assert (=> d!1524479 (= (isStrictlySorted!813 (toList!6319 lt!1932047)) e!2977072)))

(declare-fun b!4769305 () Bool)

(declare-fun e!2977073 () Bool)

(assert (=> b!4769305 (= e!2977072 e!2977073)))

(declare-fun res!2022804 () Bool)

(assert (=> b!4769305 (=> (not res!2022804) (not e!2977073))))

(assert (=> b!4769305 (= res!2022804 (bvslt (_1!31097 (h!59937 (toList!6319 lt!1932047))) (_1!31097 (h!59937 (t!361085 (toList!6319 lt!1932047))))))))

(declare-fun b!4769306 () Bool)

(assert (=> b!4769306 (= e!2977073 (isStrictlySorted!813 (t!361085 (toList!6319 lt!1932047))))))

(assert (= (and d!1524479 (not res!2022803)) b!4769305))

(assert (= (and b!4769305 res!2022804) b!4769306))

(declare-fun m!5741010 () Bool)

(assert (=> b!4769306 m!5741010))

(assert (=> b!4769255 d!1524479))

(declare-fun d!1524481 () Bool)

(assert (=> d!1524481 (= (array_inv!5819 (_keys!5289 (v!47776 (underlying!10101 (v!47777 (underlying!10102 thiss!42052)))))) (bvsge (size!36309 (_keys!5289 (v!47776 (underlying!10101 (v!47777 (underlying!10102 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4769254 d!1524481))

(declare-fun d!1524483 () Bool)

(assert (=> d!1524483 (= (array_inv!5820 (_values!5260 (v!47776 (underlying!10101 (v!47777 (underlying!10102 thiss!42052)))))) (bvsge (size!36310 (_values!5260 (v!47776 (underlying!10101 (v!47777 (underlying!10102 thiss!42052)))))) #b00000000000000000000000000000000))))

(assert (=> b!4769254 d!1524483))

(declare-fun bs!1149371 () Bool)

(declare-fun b!4769311 () Bool)

(assert (= bs!1149371 (and b!4769311 b!4769290)))

(declare-fun lambda!224775 () Int)

(assert (=> bs!1149371 (= lambda!224775 lambda!224772)))

(declare-fun d!1524485 () Bool)

(declare-fun res!2022809 () Bool)

(declare-fun e!2977076 () Bool)

(assert (=> d!1524485 (=> (not res!2022809) (not e!2977076))))

(declare-fun valid!3955 (MutLongMap!4947) Bool)

(assert (=> d!1524485 (= res!2022809 (valid!3955 (v!47777 (underlying!10102 thiss!42052))))))

(assert (=> d!1524485 (= (valid!3954 thiss!42052) e!2977076)))

(declare-fun res!2022810 () Bool)

(assert (=> b!4769311 (=> (not res!2022810) (not e!2977076))))

(declare-fun forall!11883 (List!53649 Int) Bool)

(assert (=> b!4769311 (= res!2022810 (forall!11883 (toList!6319 (map!12023 (v!47777 (underlying!10102 thiss!42052)))) lambda!224775))))

(declare-fun b!4769312 () Bool)

(declare-fun allKeysSameHashInMap!2027 (ListLongMap!4721 Hashable!6608) Bool)

(assert (=> b!4769312 (= e!2977076 (allKeysSameHashInMap!2027 (map!12023 (v!47777 (underlying!10102 thiss!42052))) (hashF!12499 thiss!42052)))))

(assert (= (and d!1524485 res!2022809) b!4769311))

(assert (= (and b!4769311 res!2022810) b!4769312))

(declare-fun m!5741012 () Bool)

(assert (=> d!1524485 m!5741012))

(assert (=> b!4769311 m!5740952))

(declare-fun m!5741014 () Bool)

(assert (=> b!4769311 m!5741014))

(assert (=> b!4769312 m!5740952))

(assert (=> b!4769312 m!5740952))

(declare-fun m!5741016 () Bool)

(assert (=> b!4769312 m!5741016))

(assert (=> b!4769259 d!1524485))

(declare-fun lt!1932110 () Bool)

(declare-fun d!1524487 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9594 (List!53649) (InoxSet tuple2!55606))

(assert (=> d!1524487 (= lt!1932110 (select (content!9594 (toList!6319 lt!1932047)) (tuple2!55607 lt!1932045 (apply!12652 (v!47777 (underlying!10102 thiss!42052)) lt!1932045))))))

(declare-fun e!2977081 () Bool)

(assert (=> d!1524487 (= lt!1932110 e!2977081)))

(declare-fun res!2022816 () Bool)

(assert (=> d!1524487 (=> (not res!2022816) (not e!2977081))))

(assert (=> d!1524487 (= res!2022816 ((_ is Cons!53525) (toList!6319 lt!1932047)))))

(assert (=> d!1524487 (= (contains!16886 (toList!6319 lt!1932047) (tuple2!55607 lt!1932045 (apply!12652 (v!47777 (underlying!10102 thiss!42052)) lt!1932045))) lt!1932110)))

(declare-fun b!4769317 () Bool)

(declare-fun e!2977082 () Bool)

(assert (=> b!4769317 (= e!2977081 e!2977082)))

(declare-fun res!2022815 () Bool)

(assert (=> b!4769317 (=> res!2022815 e!2977082)))

(assert (=> b!4769317 (= res!2022815 (= (h!59937 (toList!6319 lt!1932047)) (tuple2!55607 lt!1932045 (apply!12652 (v!47777 (underlying!10102 thiss!42052)) lt!1932045))))))

(declare-fun b!4769318 () Bool)

(assert (=> b!4769318 (= e!2977082 (contains!16886 (t!361085 (toList!6319 lt!1932047)) (tuple2!55607 lt!1932045 (apply!12652 (v!47777 (underlying!10102 thiss!42052)) lt!1932045))))))

(assert (= (and d!1524487 res!2022816) b!4769317))

(assert (= (and b!4769317 (not res!2022815)) b!4769318))

(declare-fun m!5741018 () Bool)

(assert (=> d!1524487 m!5741018))

(declare-fun m!5741020 () Bool)

(assert (=> d!1524487 m!5741020))

(declare-fun m!5741022 () Bool)

(assert (=> b!4769318 m!5741022))

(assert (=> b!4769258 d!1524487))

(declare-fun d!1524489 () Bool)

(declare-fun e!2977085 () Bool)

(assert (=> d!1524489 e!2977085))

(declare-fun c!813545 () Bool)

(assert (=> d!1524489 (= c!813545 (contains!16890 (v!47777 (underlying!10102 thiss!42052)) lt!1932045))))

(declare-fun lt!1932113 () List!53648)

(declare-fun apply!12654 (LongMapFixedSize!9894 (_ BitVec 64)) List!53648)

(assert (=> d!1524489 (= lt!1932113 (apply!12654 (v!47776 (underlying!10101 (v!47777 (underlying!10102 thiss!42052)))) lt!1932045))))

(assert (=> d!1524489 (valid!3955 (v!47777 (underlying!10102 thiss!42052)))))

(assert (=> d!1524489 (= (apply!12652 (v!47777 (underlying!10102 thiss!42052)) lt!1932045) lt!1932113)))

(declare-fun b!4769323 () Bool)

(declare-fun get!18075 (Option!12711) List!53648)

(assert (=> b!4769323 (= e!2977085 (= lt!1932113 (get!18075 (getValueByKey!2204 (toList!6319 (map!12023 (v!47777 (underlying!10102 thiss!42052)))) lt!1932045))))))

(declare-fun b!4769324 () Bool)

(declare-fun dynLambda!21962 (Int (_ BitVec 64)) List!53648)

(assert (=> b!4769324 (= e!2977085 (= lt!1932113 (dynLambda!21962 (defaultEntry!5365 (v!47776 (underlying!10101 (v!47777 (underlying!10102 thiss!42052))))) lt!1932045)))))

(assert (=> b!4769324 ((_ is LongMap!4947) (v!47777 (underlying!10102 thiss!42052)))))

(assert (= (and d!1524489 c!813545) b!4769323))

(assert (= (and d!1524489 (not c!813545)) b!4769324))

(declare-fun b_lambda!184535 () Bool)

(assert (=> (not b_lambda!184535) (not b!4769324)))

(declare-fun t!361087 () Bool)

(declare-fun tb!257489 () Bool)

(assert (=> (and b!4769254 (= (defaultEntry!5365 (v!47776 (underlying!10101 (v!47777 (underlying!10102 thiss!42052))))) (defaultEntry!5365 (v!47776 (underlying!10101 (v!47777 (underlying!10102 thiss!42052)))))) t!361087) tb!257489))

(assert (=> b!4769324 t!361087))

(declare-fun result!319148 () Bool)

(declare-fun b_and!341469 () Bool)

(assert (= b_and!341465 (and (=> t!361087 result!319148) b_and!341469)))

(declare-fun m!5741024 () Bool)

(assert (=> d!1524489 m!5741024))

(declare-fun m!5741026 () Bool)

(assert (=> d!1524489 m!5741026))

(assert (=> d!1524489 m!5741012))

(assert (=> b!4769323 m!5740952))

(declare-fun m!5741028 () Bool)

(assert (=> b!4769323 m!5741028))

(assert (=> b!4769323 m!5741028))

(declare-fun m!5741030 () Bool)

(assert (=> b!4769323 m!5741030))

(declare-fun m!5741032 () Bool)

(assert (=> b!4769324 m!5741032))

(assert (=> b!4769258 d!1524489))

(declare-fun d!1524491 () Bool)

(declare-fun map!12025 (LongMapFixedSize!9894) ListLongMap!4721)

(assert (=> d!1524491 (= (map!12023 (v!47777 (underlying!10102 thiss!42052))) (map!12025 (v!47776 (underlying!10101 (v!47777 (underlying!10102 thiss!42052))))))))

(declare-fun bs!1149372 () Bool)

(assert (= bs!1149372 d!1524491))

(declare-fun m!5741034 () Bool)

(assert (=> bs!1149372 m!5741034))

(assert (=> b!4769258 d!1524491))

(declare-fun d!1524493 () Bool)

(declare-fun hash!4587 (Hashable!6608 K!15009) (_ BitVec 64))

(assert (=> d!1524493 (= (hash!4586 (hashF!12499 thiss!42052) key!1776) (hash!4587 (hashF!12499 thiss!42052) key!1776))))

(declare-fun bs!1149373 () Bool)

(assert (= bs!1149373 d!1524493))

(declare-fun m!5741036 () Bool)

(assert (=> bs!1149373 m!5741036))

(assert (=> b!4769258 d!1524493))

(declare-fun mapNonEmpty!21943 () Bool)

(declare-fun mapRes!21943 () Bool)

(declare-fun tp!1356053 () Bool)

(declare-fun e!2977090 () Bool)

(assert (=> mapNonEmpty!21943 (= mapRes!21943 (and tp!1356053 e!2977090))))

(declare-fun mapValue!21943 () List!53648)

(declare-fun mapKey!21943 () (_ BitVec 32))

(declare-fun mapRest!21943 () (Array (_ BitVec 32) List!53648))

(assert (=> mapNonEmpty!21943 (= mapRest!21940 (store mapRest!21943 mapKey!21943 mapValue!21943))))

(declare-fun tp!1356051 () Bool)

(declare-fun b!4769331 () Bool)

(declare-fun tp_is_empty!32501 () Bool)

(assert (=> b!4769331 (= e!2977090 (and tp_is_empty!32499 tp_is_empty!32501 tp!1356051))))

(declare-fun tp!1356052 () Bool)

(declare-fun e!2977091 () Bool)

(declare-fun b!4769332 () Bool)

(assert (=> b!4769332 (= e!2977091 (and tp_is_empty!32499 tp_is_empty!32501 tp!1356052))))

(declare-fun mapIsEmpty!21943 () Bool)

(assert (=> mapIsEmpty!21943 mapRes!21943))

(declare-fun condMapEmpty!21943 () Bool)

(declare-fun mapDefault!21943 () List!53648)

(assert (=> mapNonEmpty!21940 (= condMapEmpty!21943 (= mapRest!21940 ((as const (Array (_ BitVec 32) List!53648)) mapDefault!21943)))))

(assert (=> mapNonEmpty!21940 (= tp!1356041 (and e!2977091 mapRes!21943))))

(assert (= (and mapNonEmpty!21940 condMapEmpty!21943) mapIsEmpty!21943))

(assert (= (and mapNonEmpty!21940 (not condMapEmpty!21943)) mapNonEmpty!21943))

(assert (= (and mapNonEmpty!21943 ((_ is Cons!53524) mapValue!21943)) b!4769331))

(assert (= (and mapNonEmpty!21940 ((_ is Cons!53524) mapDefault!21943)) b!4769332))

(declare-fun m!5741038 () Bool)

(assert (=> mapNonEmpty!21943 m!5741038))

(declare-fun b!4769337 () Bool)

(declare-fun tp!1356056 () Bool)

(declare-fun e!2977094 () Bool)

(assert (=> b!4769337 (= e!2977094 (and tp_is_empty!32499 tp_is_empty!32501 tp!1356056))))

(assert (=> mapNonEmpty!21940 (= tp!1356042 e!2977094)))

(assert (= (and mapNonEmpty!21940 ((_ is Cons!53524) mapValue!21940)) b!4769337))

(declare-fun e!2977095 () Bool)

(declare-fun b!4769338 () Bool)

(declare-fun tp!1356057 () Bool)

(assert (=> b!4769338 (= e!2977095 (and tp_is_empty!32499 tp_is_empty!32501 tp!1356057))))

(assert (=> b!4769254 (= tp!1356038 e!2977095)))

(assert (= (and b!4769254 ((_ is Cons!53524) (zeroValue!5235 (v!47776 (underlying!10101 (v!47777 (underlying!10102 thiss!42052))))))) b!4769338))

(declare-fun b!4769339 () Bool)

(declare-fun tp!1356058 () Bool)

(declare-fun e!2977096 () Bool)

(assert (=> b!4769339 (= e!2977096 (and tp_is_empty!32499 tp_is_empty!32501 tp!1356058))))

(assert (=> b!4769254 (= tp!1356043 e!2977096)))

(assert (= (and b!4769254 ((_ is Cons!53524) (minValue!5235 (v!47776 (underlying!10101 (v!47777 (underlying!10102 thiss!42052))))))) b!4769339))

(declare-fun b!4769340 () Bool)

(declare-fun e!2977097 () Bool)

(declare-fun tp!1356059 () Bool)

(assert (=> b!4769340 (= e!2977097 (and tp_is_empty!32499 tp_is_empty!32501 tp!1356059))))

(assert (=> b!4769253 (= tp!1356039 e!2977097)))

(assert (= (and b!4769253 ((_ is Cons!53524) mapDefault!21940)) b!4769340))

(declare-fun b_lambda!184537 () Bool)

(assert (= b_lambda!184535 (or (and b!4769254 b_free!129731) b_lambda!184537)))

(check-sat (not d!1524491) (not b!4769311) (not b!4769267) (not b!4769338) b_and!341467 (not b!4769312) (not b!4769331) (not tb!257489) (not bm!334355) (not b!4769339) (not b!4769340) (not bm!334356) tp_is_empty!32499 tp_is_empty!32501 (not bm!334357) (not b!4769290) (not bm!334353) (not bm!334352) (not b_next!130523) (not b!4769318) (not b!4769300) (not d!1524485) (not b!4769332) (not b_lambda!184537) (not d!1524493) (not d!1524487) (not b!4769297) (not b!4769295) (not b!4769323) (not b!4769299) (not b_next!130521) (not d!1524489) (not bm!334354) (not d!1524477) (not b!4769306) b_and!341469 (not b!4769337) (not mapNonEmpty!21943))
(check-sat b_and!341467 b_and!341469 (not b_next!130523) (not b_next!130521))
