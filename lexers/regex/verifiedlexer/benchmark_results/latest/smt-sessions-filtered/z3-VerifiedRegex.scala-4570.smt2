; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241498 () Bool)

(assert start!241498)

(declare-fun b!2476170 () Bool)

(declare-fun b_free!71897 () Bool)

(declare-fun b_next!72601 () Bool)

(assert (=> b!2476170 (= b_free!71897 (not b_next!72601))))

(declare-fun tp!792008 () Bool)

(declare-fun b_and!188121 () Bool)

(assert (=> b!2476170 (= tp!792008 b_and!188121)))

(declare-fun b!2476167 () Bool)

(declare-fun b_free!71899 () Bool)

(declare-fun b_next!72603 () Bool)

(assert (=> b!2476167 (= b_free!71899 (not b_next!72603))))

(declare-fun tp!792009 () Bool)

(declare-fun b_and!188123 () Bool)

(assert (=> b!2476167 (= tp!792009 b_and!188123)))

(declare-fun e!1571053 () Bool)

(declare-fun e!1571054 () Bool)

(assert (=> b!2476167 (= e!1571053 (and e!1571054 tp!792009))))

(declare-fun res!1048373 () Bool)

(declare-fun e!1571051 () Bool)

(assert (=> start!241498 (=> (not res!1048373) (not e!1571051))))

(declare-datatypes ((array!11465 0))(
  ( (array!11466 (arr!5110 (Array (_ BitVec 32) (_ BitVec 64))) (size!22529 (_ BitVec 32))) )
))
(declare-datatypes ((K!5235 0))(
  ( (K!5236 (val!8663 Int)) )
))
(declare-datatypes ((V!5437 0))(
  ( (V!5438 (val!8664 Int)) )
))
(declare-datatypes ((tuple2!28306 0))(
  ( (tuple2!28307 (_1!16694 K!5235) (_2!16694 V!5437)) )
))
(declare-datatypes ((List!29027 0))(
  ( (Nil!28927) (Cons!28927 (h!34328 tuple2!28306) (t!210662 List!29027)) )
))
(declare-datatypes ((array!11467 0))(
  ( (array!11468 (arr!5111 (Array (_ BitVec 32) List!29027)) (size!22530 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6520 0))(
  ( (LongMapFixedSize!6521 (defaultEntry!3634 Int) (mask!8379 (_ BitVec 32)) (extraKeys!3508 (_ BitVec 32)) (zeroValue!3518 List!29027) (minValue!3518 List!29027) (_size!6567 (_ BitVec 32)) (_keys!3557 array!11465) (_values!3540 array!11467) (_vacant!3321 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12857 0))(
  ( (Cell!12858 (v!31184 LongMapFixedSize!6520)) )
))
(declare-datatypes ((MutLongMap!3260 0))(
  ( (LongMap!3260 (underlying!6727 Cell!12857)) (MutLongMapExt!3259 (__x!18686 Int)) )
))
(declare-datatypes ((Cell!12859 0))(
  ( (Cell!12860 (v!31185 MutLongMap!3260)) )
))
(declare-datatypes ((Hashable!3170 0))(
  ( (HashableExt!3169 (__x!18687 Int)) )
))
(declare-datatypes ((MutableMap!3170 0))(
  ( (MutableMapExt!3169 (__x!18688 Int)) (HashMap!3170 (underlying!6728 Cell!12859) (hashF!5101 Hashable!3170) (_size!6568 (_ BitVec 32)) (defaultValue!3332 Int)) )
))
(declare-fun thiss!47892 () MutableMap!3170)

(declare-fun valid!2457 (MutableMap!3170) Bool)

(assert (=> start!241498 (= res!1048373 (valid!2457 thiss!47892))))

(assert (=> start!241498 e!1571051))

(assert (=> start!241498 e!1571053))

(declare-fun tp_is_empty!12011 () Bool)

(assert (=> start!241498 tp_is_empty!12011))

(declare-fun b!2476168 () Bool)

(declare-fun e!1571056 () Bool)

(declare-fun e!1571055 () Bool)

(assert (=> b!2476168 (= e!1571056 e!1571055)))

(declare-fun b!2476169 () Bool)

(declare-fun e!1571057 () Bool)

(declare-fun tp!792010 () Bool)

(declare-fun mapRes!15189 () Bool)

(assert (=> b!2476169 (= e!1571057 (and tp!792010 mapRes!15189))))

(declare-fun condMapEmpty!15189 () Bool)

(declare-fun mapDefault!15189 () List!29027)

(assert (=> b!2476169 (= condMapEmpty!15189 (= (arr!5111 (_values!3540 (v!31184 (underlying!6727 (v!31185 (underlying!6728 thiss!47892)))))) ((as const (Array (_ BitVec 32) List!29027)) mapDefault!15189)))))

(declare-fun e!1571052 () Bool)

(declare-fun tp!792011 () Bool)

(declare-fun tp!792006 () Bool)

(declare-fun array_inv!3665 (array!11465) Bool)

(declare-fun array_inv!3666 (array!11467) Bool)

(assert (=> b!2476170 (= e!1571052 (and tp!792008 tp!792006 tp!792011 (array_inv!3665 (_keys!3557 (v!31184 (underlying!6727 (v!31185 (underlying!6728 thiss!47892)))))) (array_inv!3666 (_values!3540 (v!31184 (underlying!6727 (v!31185 (underlying!6728 thiss!47892)))))) e!1571057))))

(declare-fun b!2476171 () Bool)

(declare-fun key!7256 () K!5235)

(get-info :version)

(declare-datatypes ((tuple2!28308 0))(
  ( (tuple2!28309 (_1!16695 Bool) (_2!16695 MutableMap!3170)) )
))
(declare-fun remove!73 (MutableMap!3170 K!5235) tuple2!28308)

(assert (=> b!2476171 (= e!1571051 (not ((_ is MutableMapExt!3169) (_2!16695 (remove!73 thiss!47892 key!7256)))))))

(declare-fun mapNonEmpty!15189 () Bool)

(declare-fun tp!792007 () Bool)

(declare-fun tp!792005 () Bool)

(assert (=> mapNonEmpty!15189 (= mapRes!15189 (and tp!792007 tp!792005))))

(declare-fun mapKey!15189 () (_ BitVec 32))

(declare-fun mapValue!15189 () List!29027)

(declare-fun mapRest!15189 () (Array (_ BitVec 32) List!29027))

(assert (=> mapNonEmpty!15189 (= (arr!5111 (_values!3540 (v!31184 (underlying!6727 (v!31185 (underlying!6728 thiss!47892)))))) (store mapRest!15189 mapKey!15189 mapValue!15189))))

(declare-fun b!2476172 () Bool)

(declare-fun lt!884246 () MutLongMap!3260)

(assert (=> b!2476172 (= e!1571054 (and e!1571056 ((_ is LongMap!3260) lt!884246)))))

(assert (=> b!2476172 (= lt!884246 (v!31185 (underlying!6728 thiss!47892)))))

(declare-fun b!2476173 () Bool)

(declare-fun res!1048372 () Bool)

(assert (=> b!2476173 (=> (not res!1048372) (not e!1571051))))

(assert (=> b!2476173 (= res!1048372 ((_ is MutableMapExt!3169) thiss!47892))))

(declare-fun mapIsEmpty!15189 () Bool)

(assert (=> mapIsEmpty!15189 mapRes!15189))

(declare-fun b!2476174 () Bool)

(assert (=> b!2476174 (= e!1571055 e!1571052)))

(assert (= (and start!241498 res!1048373) b!2476173))

(assert (= (and b!2476173 res!1048372) b!2476171))

(assert (= (and b!2476169 condMapEmpty!15189) mapIsEmpty!15189))

(assert (= (and b!2476169 (not condMapEmpty!15189)) mapNonEmpty!15189))

(assert (= b!2476170 b!2476169))

(assert (= b!2476174 b!2476170))

(assert (= b!2476168 b!2476174))

(assert (= (and b!2476172 ((_ is LongMap!3260) (v!31185 (underlying!6728 thiss!47892)))) b!2476168))

(assert (= b!2476167 b!2476172))

(assert (= (and start!241498 ((_ is HashMap!3170) thiss!47892)) b!2476167))

(declare-fun m!2844181 () Bool)

(assert (=> start!241498 m!2844181))

(declare-fun m!2844183 () Bool)

(assert (=> b!2476170 m!2844183))

(declare-fun m!2844185 () Bool)

(assert (=> b!2476170 m!2844185))

(declare-fun m!2844187 () Bool)

(assert (=> b!2476171 m!2844187))

(declare-fun m!2844189 () Bool)

(assert (=> mapNonEmpty!15189 m!2844189))

(check-sat b_and!188121 tp_is_empty!12011 (not b!2476171) (not b_next!72601) (not b!2476169) (not b!2476170) (not start!241498) (not mapNonEmpty!15189) (not b_next!72603) b_and!188123)
(check-sat b_and!188123 b_and!188121 (not b_next!72603) (not b_next!72601))
(get-model)

(declare-fun d!712229 () Bool)

(assert (=> d!712229 (= (array_inv!3665 (_keys!3557 (v!31184 (underlying!6727 (v!31185 (underlying!6728 thiss!47892)))))) (bvsge (size!22529 (_keys!3557 (v!31184 (underlying!6727 (v!31185 (underlying!6728 thiss!47892)))))) #b00000000000000000000000000000000))))

(assert (=> b!2476170 d!712229))

(declare-fun d!712231 () Bool)

(assert (=> d!712231 (= (array_inv!3666 (_values!3540 (v!31184 (underlying!6727 (v!31185 (underlying!6728 thiss!47892)))))) (bvsge (size!22530 (_values!3540 (v!31184 (underlying!6727 (v!31185 (underlying!6728 thiss!47892)))))) #b00000000000000000000000000000000))))

(assert (=> b!2476170 d!712231))

(declare-datatypes ((ListMap!929 0))(
  ( (ListMap!930 (toList!1440 List!29027)) )
))
(declare-fun call!151550 () ListMap!929)

(declare-fun c!394054 () Bool)

(declare-fun call!151551 () Bool)

(declare-fun e!1571067 () ListMap!929)

(declare-fun bm!151544 () Bool)

(declare-fun call!151549 () ListMap!929)

(declare-fun eq!55 (ListMap!929 ListMap!929) Bool)

(assert (=> bm!151544 (= call!151551 (eq!55 (ite c!394054 call!151550 call!151549) e!1571067))))

(declare-fun c!394055 () Bool)

(assert (=> bm!151544 (= c!394055 c!394054)))

(declare-fun b!2476187 () Bool)

(declare-fun -!107 (ListMap!929 K!5235) ListMap!929)

(assert (=> b!2476187 (= e!1571067 (-!107 call!151549 key!7256))))

(declare-fun b!2476188 () Bool)

(declare-fun e!1571066 () Bool)

(assert (=> b!2476188 (= e!1571066 call!151551)))

(declare-fun b!2476189 () Bool)

(assert (=> b!2476189 (= e!1571067 call!151550)))

(declare-fun b!2476190 () Bool)

(assert (=> b!2476190 (= e!1571066 call!151551)))

(declare-fun b!2476191 () Bool)

(declare-fun e!1571065 () Bool)

(assert (=> b!2476191 (= e!1571065 e!1571066)))

(declare-fun lt!884249 () tuple2!28308)

(assert (=> b!2476191 (= c!394054 (_1!16695 lt!884249))))

(declare-fun bm!151546 () Bool)

(declare-fun abstractMap!114 (MutableMap!3170) ListMap!929)

(assert (=> bm!151546 (= call!151550 (abstractMap!114 (ite c!394054 (_2!16695 lt!884249) thiss!47892)))))

(declare-fun b!2476192 () Bool)

(declare-fun res!1048378 () Bool)

(assert (=> b!2476192 (=> (not res!1048378) (not e!1571065))))

(assert (=> b!2476192 (= res!1048378 (valid!2457 (_2!16695 lt!884249)))))

(declare-fun bm!151545 () Bool)

(assert (=> bm!151545 (= call!151549 (abstractMap!114 (ite c!394054 thiss!47892 (_2!16695 lt!884249))))))

(declare-fun d!712233 () Bool)

(assert (=> d!712233 e!1571065))

(declare-fun res!1048379 () Bool)

(assert (=> d!712233 (=> (not res!1048379) (not e!1571065))))

(assert (=> d!712233 (= res!1048379 ((_ is MutableMapExt!3169) (_2!16695 lt!884249)))))

(declare-fun choose!14604 (MutableMap!3170 K!5235) tuple2!28308)

(assert (=> d!712233 (= lt!884249 (choose!14604 thiss!47892 key!7256))))

(assert (=> d!712233 (valid!2457 thiss!47892)))

(assert (=> d!712233 (= (remove!73 thiss!47892 key!7256) lt!884249)))

(assert (= (and d!712233 res!1048379) b!2476192))

(assert (= (and b!2476192 res!1048378) b!2476191))

(assert (= (and b!2476191 c!394054) b!2476190))

(assert (= (and b!2476191 (not c!394054)) b!2476188))

(assert (= (or b!2476190 b!2476188) bm!151545))

(assert (= (or b!2476190 b!2476188) bm!151546))

(assert (= (or b!2476190 b!2476188) bm!151544))

(assert (= (and bm!151544 c!394055) b!2476187))

(assert (= (and bm!151544 (not c!394055)) b!2476189))

(declare-fun m!2844191 () Bool)

(assert (=> b!2476192 m!2844191))

(declare-fun m!2844193 () Bool)

(assert (=> d!712233 m!2844193))

(assert (=> d!712233 m!2844181))

(declare-fun m!2844195 () Bool)

(assert (=> bm!151545 m!2844195))

(declare-fun m!2844197 () Bool)

(assert (=> b!2476187 m!2844197))

(declare-fun m!2844199 () Bool)

(assert (=> bm!151546 m!2844199))

(declare-fun m!2844201 () Bool)

(assert (=> bm!151544 m!2844201))

(assert (=> b!2476171 d!712233))

(declare-fun d!712235 () Bool)

(declare-fun c!394058 () Bool)

(assert (=> d!712235 (= c!394058 ((_ is MutableMapExt!3169) thiss!47892))))

(declare-fun e!1571070 () Bool)

(assert (=> d!712235 (= (valid!2457 thiss!47892) e!1571070)))

(declare-fun b!2476197 () Bool)

(declare-fun valid!2458 (MutableMap!3170) Bool)

(assert (=> b!2476197 (= e!1571070 (valid!2458 thiss!47892))))

(declare-fun b!2476198 () Bool)

(declare-fun valid!2459 (MutableMap!3170) Bool)

(assert (=> b!2476198 (= e!1571070 (valid!2459 thiss!47892))))

(assert (= (and d!712235 c!394058) b!2476197))

(assert (= (and d!712235 (not c!394058)) b!2476198))

(declare-fun m!2844203 () Bool)

(assert (=> b!2476197 m!2844203))

(declare-fun m!2844205 () Bool)

(assert (=> b!2476198 m!2844205))

(assert (=> start!241498 d!712235))

(declare-fun condMapEmpty!15192 () Bool)

(declare-fun mapDefault!15192 () List!29027)

(assert (=> mapNonEmpty!15189 (= condMapEmpty!15192 (= mapRest!15189 ((as const (Array (_ BitVec 32) List!29027)) mapDefault!15192)))))

(declare-fun e!1571075 () Bool)

(declare-fun mapRes!15192 () Bool)

(assert (=> mapNonEmpty!15189 (= tp!792007 (and e!1571075 mapRes!15192))))

(declare-fun tp_is_empty!12013 () Bool)

(declare-fun tp!792019 () Bool)

(declare-fun e!1571076 () Bool)

(declare-fun b!2476205 () Bool)

(assert (=> b!2476205 (= e!1571076 (and tp_is_empty!12011 tp_is_empty!12013 tp!792019))))

(declare-fun mapNonEmpty!15192 () Bool)

(declare-fun tp!792020 () Bool)

(assert (=> mapNonEmpty!15192 (= mapRes!15192 (and tp!792020 e!1571076))))

(declare-fun mapKey!15192 () (_ BitVec 32))

(declare-fun mapValue!15192 () List!29027)

(declare-fun mapRest!15192 () (Array (_ BitVec 32) List!29027))

(assert (=> mapNonEmpty!15192 (= mapRest!15189 (store mapRest!15192 mapKey!15192 mapValue!15192))))

(declare-fun mapIsEmpty!15192 () Bool)

(assert (=> mapIsEmpty!15192 mapRes!15192))

(declare-fun b!2476206 () Bool)

(declare-fun tp!792018 () Bool)

(assert (=> b!2476206 (= e!1571075 (and tp_is_empty!12011 tp_is_empty!12013 tp!792018))))

(assert (= (and mapNonEmpty!15189 condMapEmpty!15192) mapIsEmpty!15192))

(assert (= (and mapNonEmpty!15189 (not condMapEmpty!15192)) mapNonEmpty!15192))

(assert (= (and mapNonEmpty!15192 ((_ is Cons!28927) mapValue!15192)) b!2476205))

(assert (= (and mapNonEmpty!15189 ((_ is Cons!28927) mapDefault!15192)) b!2476206))

(declare-fun m!2844207 () Bool)

(assert (=> mapNonEmpty!15192 m!2844207))

(declare-fun tp!792023 () Bool)

(declare-fun e!1571079 () Bool)

(declare-fun b!2476211 () Bool)

(assert (=> b!2476211 (= e!1571079 (and tp_is_empty!12011 tp_is_empty!12013 tp!792023))))

(assert (=> mapNonEmpty!15189 (= tp!792005 e!1571079)))

(assert (= (and mapNonEmpty!15189 ((_ is Cons!28927) mapValue!15189)) b!2476211))

(declare-fun e!1571080 () Bool)

(declare-fun tp!792024 () Bool)

(declare-fun b!2476212 () Bool)

(assert (=> b!2476212 (= e!1571080 (and tp_is_empty!12011 tp_is_empty!12013 tp!792024))))

(assert (=> b!2476170 (= tp!792006 e!1571080)))

(assert (= (and b!2476170 ((_ is Cons!28927) (zeroValue!3518 (v!31184 (underlying!6727 (v!31185 (underlying!6728 thiss!47892))))))) b!2476212))

(declare-fun b!2476213 () Bool)

(declare-fun e!1571081 () Bool)

(declare-fun tp!792025 () Bool)

(assert (=> b!2476213 (= e!1571081 (and tp_is_empty!12011 tp_is_empty!12013 tp!792025))))

(assert (=> b!2476170 (= tp!792011 e!1571081)))

(assert (= (and b!2476170 ((_ is Cons!28927) (minValue!3518 (v!31184 (underlying!6727 (v!31185 (underlying!6728 thiss!47892))))))) b!2476213))

(declare-fun b!2476214 () Bool)

(declare-fun tp!792026 () Bool)

(declare-fun e!1571082 () Bool)

(assert (=> b!2476214 (= e!1571082 (and tp_is_empty!12011 tp_is_empty!12013 tp!792026))))

(assert (=> b!2476169 (= tp!792010 e!1571082)))

(assert (= (and b!2476169 ((_ is Cons!28927) mapDefault!15189)) b!2476214))

(check-sat (not bm!151545) b_and!188121 tp_is_empty!12011 (not bm!151546) (not b!2476198) (not b!2476206) (not b!2476197) (not bm!151544) (not b!2476213) (not b_next!72601) (not b!2476187) (not b!2476192) (not b!2476212) (not b!2476205) tp_is_empty!12013 (not mapNonEmpty!15192) (not b!2476211) (not b_next!72603) b_and!188123 (not b!2476214) (not d!712233))
(check-sat b_and!188123 b_and!188121 (not b_next!72603) (not b_next!72601))
