; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413608 () Bool)

(assert start!413608)

(declare-fun b!4305199 () Bool)

(declare-fun b_free!128355 () Bool)

(declare-fun b_next!129059 () Bool)

(assert (=> b!4305199 (= b_free!128355 (not b_next!129059))))

(declare-fun tp!1323018 () Bool)

(declare-fun b_and!339753 () Bool)

(assert (=> b!4305199 (= tp!1323018 b_and!339753)))

(declare-fun b!4305192 () Bool)

(declare-fun b_free!128357 () Bool)

(declare-fun b_next!129061 () Bool)

(assert (=> b!4305192 (= b_free!128357 (not b_next!129061))))

(declare-fun tp!1323021 () Bool)

(declare-fun b_and!339755 () Bool)

(assert (=> b!4305192 (= tp!1323021 b_and!339755)))

(declare-fun b!4305190 () Bool)

(declare-fun e!2676847 () Bool)

(declare-fun e!2676848 () Bool)

(assert (=> b!4305190 (= e!2676847 e!2676848)))

(declare-fun res!1764586 () Bool)

(assert (=> b!4305190 (=> (not res!1764586) (not e!2676848))))

(declare-datatypes ((V!9446 0))(
  ( (V!9447 (val!15653 Int)) )
))
(declare-datatypes ((K!9244 0))(
  ( (K!9245 (val!15654 Int)) )
))
(declare-datatypes ((tuple2!46272 0))(
  ( (tuple2!46273 (_1!26415 K!9244) (_2!26415 V!9446)) )
))
(declare-datatypes ((List!48203 0))(
  ( (Nil!48079) (Cons!48079 (h!53506 tuple2!46272) (t!354986 List!48203)) )
))
(declare-datatypes ((array!16536 0))(
  ( (array!16537 (arr!7383 (Array (_ BitVec 32) (_ BitVec 64))) (size!35422 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4515 0))(
  ( (HashableExt!4514 (__x!29822 Int)) )
))
(declare-datatypes ((array!16538 0))(
  ( (array!16539 (arr!7384 (Array (_ BitVec 32) List!48203)) (size!35423 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9198 0))(
  ( (LongMapFixedSize!9199 (defaultEntry!4984 Int) (mask!13127 (_ BitVec 32)) (extraKeys!4848 (_ BitVec 32)) (zeroValue!4858 List!48203) (minValue!4858 List!48203) (_size!9241 (_ BitVec 32)) (_keys!4899 array!16536) (_values!4880 array!16538) (_vacant!4660 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18205 0))(
  ( (Cell!18206 (v!42132 LongMapFixedSize!9198)) )
))
(declare-datatypes ((MutLongMap!4599 0))(
  ( (LongMap!4599 (underlying!9427 Cell!18205)) (MutLongMapExt!4598 (__x!29823 Int)) )
))
(declare-datatypes ((Cell!18207 0))(
  ( (Cell!18208 (v!42133 MutLongMap!4599)) )
))
(declare-datatypes ((MutableMap!4505 0))(
  ( (MutableMapExt!4504 (__x!29824 Int)) (HashMap!4505 (underlying!9428 Cell!18207) (hashF!6589 Hashable!4515) (_size!9242 (_ BitVec 32)) (defaultValue!4676 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4505)

(declare-fun key!2048 () K!9244)

(declare-fun contains!10013 (MutableMap!4505 K!9244) Bool)

(assert (=> b!4305190 (= res!1764586 (not (contains!10013 thiss!42308 key!2048)))))

(declare-datatypes ((tuple2!46274 0))(
  ( (tuple2!46275 (_1!26416 (_ BitVec 64)) (_2!26416 List!48203)) )
))
(declare-datatypes ((List!48204 0))(
  ( (Nil!48080) (Cons!48080 (h!53507 tuple2!46274) (t!354987 List!48204)) )
))
(declare-datatypes ((ListLongMap!911 0))(
  ( (ListLongMap!912 (toList!2302 List!48204)) )
))
(declare-fun lt!1526528 () ListLongMap!911)

(declare-fun map!10051 (MutLongMap!4599) ListLongMap!911)

(assert (=> b!4305190 (= lt!1526528 (map!10051 (v!42133 (underlying!9428 thiss!42308))))))

(declare-datatypes ((ListMap!1587 0))(
  ( (ListMap!1588 (toList!2303 List!48203)) )
))
(declare-fun lt!1526527 () ListMap!1587)

(declare-fun map!10052 (MutableMap!4505) ListMap!1587)

(assert (=> b!4305190 (= lt!1526527 (map!10052 thiss!42308))))

(declare-fun b!4305191 () Bool)

(declare-fun e!2676840 () List!48203)

(declare-fun lt!1526525 () (_ BitVec 64))

(declare-fun apply!10947 (MutLongMap!4599 (_ BitVec 64)) List!48203)

(assert (=> b!4305191 (= e!2676840 (apply!10947 (v!42133 (underlying!9428 thiss!42308)) lt!1526525))))

(declare-fun e!2676839 () Bool)

(declare-fun e!2676849 () Bool)

(assert (=> b!4305192 (= e!2676839 (and e!2676849 tp!1323021))))

(declare-fun mapIsEmpty!20596 () Bool)

(declare-fun mapRes!20596 () Bool)

(assert (=> mapIsEmpty!20596 mapRes!20596))

(declare-fun b!4305193 () Bool)

(declare-fun e!2676841 () Bool)

(declare-fun e!2676845 () Bool)

(assert (=> b!4305193 (= e!2676841 e!2676845)))

(declare-fun mapNonEmpty!20596 () Bool)

(declare-fun tp!1323019 () Bool)

(declare-fun tp!1323023 () Bool)

(assert (=> mapNonEmpty!20596 (= mapRes!20596 (and tp!1323019 tp!1323023))))

(declare-fun mapRest!20596 () (Array (_ BitVec 32) List!48203))

(declare-fun mapValue!20596 () List!48203)

(declare-fun mapKey!20596 () (_ BitVec 32))

(assert (=> mapNonEmpty!20596 (= (arr!7384 (_values!4880 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308)))))) (store mapRest!20596 mapKey!20596 mapValue!20596))))

(declare-fun b!4305194 () Bool)

(declare-fun res!1764589 () Bool)

(assert (=> b!4305194 (=> (not res!1764589) (not e!2676847))))

(declare-fun valid!3585 (MutableMap!4505) Bool)

(assert (=> b!4305194 (= res!1764589 (valid!3585 thiss!42308))))

(declare-fun res!1764587 () Bool)

(assert (=> start!413608 (=> (not res!1764587) (not e!2676847))))

(get-info :version)

(assert (=> start!413608 (= res!1764587 ((_ is HashMap!4505) thiss!42308))))

(assert (=> start!413608 e!2676847))

(assert (=> start!413608 e!2676839))

(declare-fun tp_is_empty!23517 () Bool)

(assert (=> start!413608 tp_is_empty!23517))

(declare-fun b!4305195 () Bool)

(declare-fun e!2676844 () Bool)

(declare-fun tp!1323022 () Bool)

(assert (=> b!4305195 (= e!2676844 (and tp!1323022 mapRes!20596))))

(declare-fun condMapEmpty!20596 () Bool)

(declare-fun mapDefault!20596 () List!48203)

(assert (=> b!4305195 (= condMapEmpty!20596 (= (arr!7384 (_values!4880 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48203)) mapDefault!20596)))))

(declare-fun b!4305196 () Bool)

(declare-fun e!2676843 () Bool)

(declare-fun lt!1526524 () MutLongMap!4599)

(assert (=> b!4305196 (= e!2676849 (and e!2676843 ((_ is LongMap!4599) lt!1526524)))))

(assert (=> b!4305196 (= lt!1526524 (v!42133 (underlying!9428 thiss!42308)))))

(declare-fun b!4305197 () Bool)

(declare-fun e!2676842 () Bool)

(declare-fun valid!3586 (MutLongMap!4599) Bool)

(assert (=> b!4305197 (= e!2676842 (not (valid!3586 (v!42133 (underlying!9428 thiss!42308)))))))

(declare-fun b!4305198 () Bool)

(assert (=> b!4305198 (= e!2676843 e!2676841)))

(declare-fun tp!1323017 () Bool)

(declare-fun tp!1323020 () Bool)

(declare-fun array_inv!5297 (array!16536) Bool)

(declare-fun array_inv!5298 (array!16538) Bool)

(assert (=> b!4305199 (= e!2676845 (and tp!1323018 tp!1323017 tp!1323020 (array_inv!5297 (_keys!4899 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308)))))) (array_inv!5298 (_values!4880 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308)))))) e!2676844))))

(declare-fun b!4305200 () Bool)

(assert (=> b!4305200 (= e!2676840 Nil!48079)))

(declare-fun b!4305201 () Bool)

(assert (=> b!4305201 (= e!2676848 e!2676842)))

(declare-fun res!1764588 () Bool)

(assert (=> b!4305201 (=> (not res!1764588) (not e!2676842))))

(assert (=> b!4305201 (= res!1764588 ((_ is LongMap!4599) (v!42133 (underlying!9428 thiss!42308))))))

(declare-fun lt!1526526 () List!48203)

(assert (=> b!4305201 (= lt!1526526 e!2676840)))

(declare-fun c!732023 () Bool)

(declare-fun contains!10014 (MutLongMap!4599 (_ BitVec 64)) Bool)

(assert (=> b!4305201 (= c!732023 (contains!10014 (v!42133 (underlying!9428 thiss!42308)) lt!1526525))))

(declare-fun hash!922 (Hashable!4515 K!9244) (_ BitVec 64))

(assert (=> b!4305201 (= lt!1526525 (hash!922 (hashF!6589 thiss!42308) key!2048))))

(assert (= (and start!413608 res!1764587) b!4305194))

(assert (= (and b!4305194 res!1764589) b!4305190))

(assert (= (and b!4305190 res!1764586) b!4305201))

(assert (= (and b!4305201 c!732023) b!4305191))

(assert (= (and b!4305201 (not c!732023)) b!4305200))

(assert (= (and b!4305201 res!1764588) b!4305197))

(assert (= (and b!4305195 condMapEmpty!20596) mapIsEmpty!20596))

(assert (= (and b!4305195 (not condMapEmpty!20596)) mapNonEmpty!20596))

(assert (= b!4305199 b!4305195))

(assert (= b!4305193 b!4305199))

(assert (= b!4305198 b!4305193))

(assert (= (and b!4305196 ((_ is LongMap!4599) (v!42133 (underlying!9428 thiss!42308)))) b!4305198))

(assert (= b!4305192 b!4305196))

(assert (= (and start!413608 ((_ is HashMap!4505) thiss!42308)) b!4305192))

(declare-fun m!4898047 () Bool)

(assert (=> mapNonEmpty!20596 m!4898047))

(declare-fun m!4898049 () Bool)

(assert (=> b!4305194 m!4898049))

(declare-fun m!4898051 () Bool)

(assert (=> b!4305201 m!4898051))

(declare-fun m!4898053 () Bool)

(assert (=> b!4305201 m!4898053))

(declare-fun m!4898055 () Bool)

(assert (=> b!4305197 m!4898055))

(declare-fun m!4898057 () Bool)

(assert (=> b!4305199 m!4898057))

(declare-fun m!4898059 () Bool)

(assert (=> b!4305199 m!4898059))

(declare-fun m!4898061 () Bool)

(assert (=> b!4305191 m!4898061))

(declare-fun m!4898063 () Bool)

(assert (=> b!4305190 m!4898063))

(declare-fun m!4898065 () Bool)

(assert (=> b!4305190 m!4898065))

(declare-fun m!4898067 () Bool)

(assert (=> b!4305190 m!4898067))

(check-sat b_and!339753 (not b_next!129061) (not b!4305190) (not b!4305195) b_and!339755 (not b_next!129059) (not mapNonEmpty!20596) (not b!4305199) (not b!4305191) (not b!4305194) (not b!4305201) (not b!4305197) tp_is_empty!23517)
(check-sat b_and!339753 b_and!339755 (not b_next!129061) (not b_next!129059))
(get-model)

(declare-fun d!1267378 () Bool)

(declare-fun valid!3587 (LongMapFixedSize!9198) Bool)

(assert (=> d!1267378 (= (valid!3586 (v!42133 (underlying!9428 thiss!42308))) (valid!3587 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308))))))))

(declare-fun bs!604492 () Bool)

(assert (= bs!604492 d!1267378))

(declare-fun m!4898069 () Bool)

(assert (=> bs!604492 m!4898069))

(assert (=> b!4305197 d!1267378))

(declare-fun b!4305224 () Bool)

(declare-datatypes ((Unit!67091 0))(
  ( (Unit!67092) )
))
(declare-fun e!2676870 () Unit!67091)

(declare-fun Unit!67093 () Unit!67091)

(assert (=> b!4305224 (= e!2676870 Unit!67093)))

(declare-fun b!4305225 () Bool)

(declare-fun e!2676866 () Unit!67091)

(declare-fun Unit!67094 () Unit!67091)

(assert (=> b!4305225 (= e!2676866 Unit!67094)))

(declare-fun b!4305226 () Bool)

(declare-fun e!2676869 () Bool)

(declare-fun call!296901 () Bool)

(assert (=> b!4305226 (= e!2676869 call!296901)))

(declare-fun call!296900 () List!48203)

(declare-fun c!732034 () Bool)

(declare-fun call!296903 () ListLongMap!911)

(declare-fun lt!1526574 () ListLongMap!911)

(declare-fun bm!296895 () Bool)

(declare-fun call!296902 () (_ BitVec 64))

(declare-fun apply!10948 (ListLongMap!911 (_ BitVec 64)) List!48203)

(assert (=> bm!296895 (= call!296900 (apply!10948 (ite c!732034 lt!1526574 call!296903) call!296902))))

(declare-fun bm!296896 () Bool)

(declare-datatypes ((Option!10199 0))(
  ( (None!10198) (Some!10198 (v!42134 tuple2!46272)) )
))
(declare-fun call!296905 () Option!10199)

(declare-fun getPair!122 (List!48203 K!9244) Option!10199)

(assert (=> bm!296896 (= call!296905 (getPair!122 call!296900 key!2048))))

(declare-fun bm!296897 () Bool)

(assert (=> bm!296897 (= call!296903 (map!10051 (v!42133 (underlying!9428 thiss!42308))))))

(declare-fun b!4305227 () Bool)

(declare-fun e!2676867 () Unit!67091)

(declare-fun lt!1526575 () Unit!67091)

(assert (=> b!4305227 (= e!2676867 lt!1526575)))

(assert (=> b!4305227 (= lt!1526574 call!296903)))

(declare-fun lemmaInGenericMapThenInLongMap!122 (ListLongMap!911 K!9244 Hashable!4515) Unit!67091)

(assert (=> b!4305227 (= lt!1526575 (lemmaInGenericMapThenInLongMap!122 lt!1526574 key!2048 (hashF!6589 thiss!42308)))))

(declare-fun res!1764596 () Bool)

(declare-fun call!296904 () Bool)

(assert (=> b!4305227 (= res!1764596 call!296904)))

(assert (=> b!4305227 (=> (not res!1764596) (not e!2676869))))

(assert (=> b!4305227 e!2676869))

(declare-fun bm!296898 () Bool)

(assert (=> bm!296898 (= call!296902 (hash!922 (hashF!6589 thiss!42308) key!2048))))

(declare-fun b!4305229 () Bool)

(declare-fun lambda!132417 () Int)

(declare-fun lt!1526570 () (_ BitVec 64))

(declare-fun e!2676864 () Unit!67091)

(declare-fun forallContained!1489 (List!48204 Int tuple2!46274) Unit!67091)

(assert (=> b!4305229 (= e!2676864 (forallContained!1489 (toList!2302 (map!10051 (v!42133 (underlying!9428 thiss!42308)))) lambda!132417 (tuple2!46275 lt!1526570 (apply!10947 (v!42133 (underlying!9428 thiss!42308)) lt!1526570))))))

(declare-fun c!732032 () Bool)

(declare-fun contains!10015 (List!48204 tuple2!46274) Bool)

(assert (=> b!4305229 (= c!732032 (not (contains!10015 (toList!2302 (map!10051 (v!42133 (underlying!9428 thiss!42308)))) (tuple2!46275 lt!1526570 (apply!10947 (v!42133 (underlying!9428 thiss!42308)) lt!1526570)))))))

(declare-fun lt!1526576 () Unit!67091)

(assert (=> b!4305229 (= lt!1526576 e!2676870)))

(declare-fun b!4305230 () Bool)

(declare-fun Unit!67095 () Unit!67091)

(assert (=> b!4305230 (= e!2676864 Unit!67095)))

(declare-fun b!4305231 () Bool)

(assert (=> b!4305231 false))

(declare-fun lt!1526587 () Unit!67091)

(declare-fun lt!1526582 () Unit!67091)

(assert (=> b!4305231 (= lt!1526587 lt!1526582)))

(declare-fun lt!1526581 () List!48204)

(declare-fun lt!1526588 () List!48203)

(assert (=> b!4305231 (contains!10015 lt!1526581 (tuple2!46275 lt!1526570 lt!1526588))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!133 (List!48204 (_ BitVec 64) List!48203) Unit!67091)

(assert (=> b!4305231 (= lt!1526582 (lemmaGetValueByKeyImpliesContainsTuple!133 lt!1526581 lt!1526570 lt!1526588))))

(assert (=> b!4305231 (= lt!1526588 (apply!10947 (v!42133 (underlying!9428 thiss!42308)) lt!1526570))))

(assert (=> b!4305231 (= lt!1526581 (toList!2302 (map!10051 (v!42133 (underlying!9428 thiss!42308)))))))

(declare-fun lt!1526569 () Unit!67091)

(declare-fun lt!1526583 () Unit!67091)

(assert (=> b!4305231 (= lt!1526569 lt!1526583)))

(declare-fun lt!1526585 () List!48204)

(declare-datatypes ((Option!10200 0))(
  ( (None!10199) (Some!10199 (v!42135 List!48203)) )
))
(declare-fun isDefined!7507 (Option!10200) Bool)

(declare-fun getValueByKey!236 (List!48204 (_ BitVec 64)) Option!10200)

(assert (=> b!4305231 (isDefined!7507 (getValueByKey!236 lt!1526585 lt!1526570))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!162 (List!48204 (_ BitVec 64)) Unit!67091)

(assert (=> b!4305231 (= lt!1526583 (lemmaContainsKeyImpliesGetValueByKeyDefined!162 lt!1526585 lt!1526570))))

(assert (=> b!4305231 (= lt!1526585 (toList!2302 (map!10051 (v!42133 (underlying!9428 thiss!42308)))))))

(declare-fun lt!1526579 () Unit!67091)

(declare-fun lt!1526586 () Unit!67091)

(assert (=> b!4305231 (= lt!1526579 lt!1526586)))

(declare-fun lt!1526580 () List!48204)

(declare-fun containsKey!283 (List!48204 (_ BitVec 64)) Bool)

(assert (=> b!4305231 (containsKey!283 lt!1526580 lt!1526570)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!123 (List!48204 (_ BitVec 64)) Unit!67091)

(assert (=> b!4305231 (= lt!1526586 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!123 lt!1526580 lt!1526570))))

(assert (=> b!4305231 (= lt!1526580 (toList!2302 (map!10051 (v!42133 (underlying!9428 thiss!42308)))))))

(declare-fun Unit!67096 () Unit!67091)

(assert (=> b!4305231 (= e!2676870 Unit!67096)))

(declare-fun bm!296899 () Bool)

(declare-fun contains!10016 (ListLongMap!911 (_ BitVec 64)) Bool)

(assert (=> bm!296899 (= call!296904 (contains!10016 (ite c!732034 lt!1526574 call!296903) call!296902))))

(declare-fun b!4305232 () Bool)

(assert (=> b!4305232 (= e!2676867 e!2676866)))

(declare-fun res!1764598 () Bool)

(assert (=> b!4305232 (= res!1764598 call!296904)))

(declare-fun e!2676865 () Bool)

(assert (=> b!4305232 (=> (not res!1764598) (not e!2676865))))

(declare-fun c!732035 () Bool)

(assert (=> b!4305232 (= c!732035 e!2676865)))

(declare-fun b!4305233 () Bool)

(assert (=> b!4305233 false))

(declare-fun lt!1526573 () Unit!67091)

(declare-fun lt!1526571 () Unit!67091)

(assert (=> b!4305233 (= lt!1526573 lt!1526571)))

(declare-fun lt!1526577 () ListLongMap!911)

(declare-fun contains!10017 (ListMap!1587 K!9244) Bool)

(declare-fun extractMap!300 (List!48204) ListMap!1587)

(assert (=> b!4305233 (contains!10017 (extractMap!300 (toList!2302 lt!1526577)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!122 (ListLongMap!911 K!9244 Hashable!4515) Unit!67091)

(assert (=> b!4305233 (= lt!1526571 (lemmaInLongMapThenInGenericMap!122 lt!1526577 key!2048 (hashF!6589 thiss!42308)))))

(assert (=> b!4305233 (= lt!1526577 call!296903)))

(declare-fun Unit!67097 () Unit!67091)

(assert (=> b!4305233 (= e!2676866 Unit!67097)))

(declare-fun b!4305234 () Bool)

(assert (=> b!4305234 (= e!2676865 call!296901)))

(declare-fun bm!296900 () Bool)

(declare-fun isDefined!7508 (Option!10199) Bool)

(assert (=> bm!296900 (= call!296901 (isDefined!7508 call!296905))))

(declare-fun e!2676868 () Bool)

(declare-fun b!4305228 () Bool)

(assert (=> b!4305228 (= e!2676868 (isDefined!7508 (getPair!122 (apply!10947 (v!42133 (underlying!9428 thiss!42308)) lt!1526570) key!2048)))))

(declare-fun d!1267380 () Bool)

(declare-fun lt!1526584 () Bool)

(assert (=> d!1267380 (= lt!1526584 (contains!10017 (map!10052 thiss!42308) key!2048))))

(assert (=> d!1267380 (= lt!1526584 e!2676868)))

(declare-fun res!1764597 () Bool)

(assert (=> d!1267380 (=> (not res!1764597) (not e!2676868))))

(assert (=> d!1267380 (= res!1764597 (contains!10014 (v!42133 (underlying!9428 thiss!42308)) lt!1526570))))

(declare-fun lt!1526572 () Unit!67091)

(assert (=> d!1267380 (= lt!1526572 e!2676867)))

(assert (=> d!1267380 (= c!732034 (contains!10017 (extractMap!300 (toList!2302 (map!10051 (v!42133 (underlying!9428 thiss!42308))))) key!2048))))

(declare-fun lt!1526578 () Unit!67091)

(assert (=> d!1267380 (= lt!1526578 e!2676864)))

(declare-fun c!732033 () Bool)

(assert (=> d!1267380 (= c!732033 (contains!10014 (v!42133 (underlying!9428 thiss!42308)) lt!1526570))))

(assert (=> d!1267380 (= lt!1526570 (hash!922 (hashF!6589 thiss!42308) key!2048))))

(assert (=> d!1267380 (valid!3585 thiss!42308)))

(assert (=> d!1267380 (= (contains!10013 thiss!42308 key!2048) lt!1526584)))

(assert (= (and d!1267380 c!732033) b!4305229))

(assert (= (and d!1267380 (not c!732033)) b!4305230))

(assert (= (and b!4305229 c!732032) b!4305231))

(assert (= (and b!4305229 (not c!732032)) b!4305224))

(assert (= (and d!1267380 c!732034) b!4305227))

(assert (= (and d!1267380 (not c!732034)) b!4305232))

(assert (= (and b!4305227 res!1764596) b!4305226))

(assert (= (and b!4305232 res!1764598) b!4305234))

(assert (= (and b!4305232 c!732035) b!4305233))

(assert (= (and b!4305232 (not c!732035)) b!4305225))

(assert (= (or b!4305227 b!4305226 b!4305232 b!4305234) bm!296898))

(assert (= (or b!4305227 b!4305232 b!4305234 b!4305233) bm!296897))

(assert (= (or b!4305226 b!4305234) bm!296895))

(assert (= (or b!4305227 b!4305232) bm!296899))

(assert (= (or b!4305226 b!4305234) bm!296896))

(assert (= (or b!4305226 b!4305234) bm!296900))

(assert (= (and d!1267380 res!1764597) b!4305228))

(declare-fun m!4898071 () Bool)

(assert (=> bm!296899 m!4898071))

(assert (=> b!4305229 m!4898065))

(declare-fun m!4898073 () Bool)

(assert (=> b!4305229 m!4898073))

(declare-fun m!4898075 () Bool)

(assert (=> b!4305229 m!4898075))

(declare-fun m!4898077 () Bool)

(assert (=> b!4305229 m!4898077))

(declare-fun m!4898079 () Bool)

(assert (=> bm!296896 m!4898079))

(declare-fun m!4898081 () Bool)

(assert (=> b!4305231 m!4898081))

(declare-fun m!4898083 () Bool)

(assert (=> b!4305231 m!4898083))

(declare-fun m!4898085 () Bool)

(assert (=> b!4305231 m!4898085))

(assert (=> b!4305231 m!4898081))

(declare-fun m!4898087 () Bool)

(assert (=> b!4305231 m!4898087))

(declare-fun m!4898089 () Bool)

(assert (=> b!4305231 m!4898089))

(declare-fun m!4898091 () Bool)

(assert (=> b!4305231 m!4898091))

(declare-fun m!4898093 () Bool)

(assert (=> b!4305231 m!4898093))

(assert (=> b!4305231 m!4898073))

(assert (=> b!4305231 m!4898065))

(declare-fun m!4898095 () Bool)

(assert (=> b!4305227 m!4898095))

(declare-fun m!4898097 () Bool)

(assert (=> bm!296900 m!4898097))

(assert (=> b!4305228 m!4898073))

(assert (=> b!4305228 m!4898073))

(declare-fun m!4898099 () Bool)

(assert (=> b!4305228 m!4898099))

(assert (=> b!4305228 m!4898099))

(declare-fun m!4898101 () Bool)

(assert (=> b!4305228 m!4898101))

(assert (=> bm!296898 m!4898053))

(declare-fun m!4898103 () Bool)

(assert (=> bm!296895 m!4898103))

(declare-fun m!4898105 () Bool)

(assert (=> b!4305233 m!4898105))

(assert (=> b!4305233 m!4898105))

(declare-fun m!4898107 () Bool)

(assert (=> b!4305233 m!4898107))

(declare-fun m!4898109 () Bool)

(assert (=> b!4305233 m!4898109))

(assert (=> bm!296897 m!4898065))

(declare-fun m!4898111 () Bool)

(assert (=> d!1267380 m!4898111))

(declare-fun m!4898113 () Bool)

(assert (=> d!1267380 m!4898113))

(assert (=> d!1267380 m!4898111))

(declare-fun m!4898115 () Bool)

(assert (=> d!1267380 m!4898115))

(assert (=> d!1267380 m!4898067))

(declare-fun m!4898117 () Bool)

(assert (=> d!1267380 m!4898117))

(assert (=> d!1267380 m!4898053))

(assert (=> d!1267380 m!4898065))

(assert (=> d!1267380 m!4898067))

(assert (=> d!1267380 m!4898049))

(assert (=> b!4305190 d!1267380))

(declare-fun d!1267382 () Bool)

(declare-fun map!10053 (LongMapFixedSize!9198) ListLongMap!911)

(assert (=> d!1267382 (= (map!10051 (v!42133 (underlying!9428 thiss!42308))) (map!10053 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308))))))))

(declare-fun bs!604493 () Bool)

(assert (= bs!604493 d!1267382))

(declare-fun m!4898119 () Bool)

(assert (=> bs!604493 m!4898119))

(assert (=> b!4305190 d!1267382))

(declare-fun d!1267384 () Bool)

(declare-fun lt!1526591 () ListMap!1587)

(declare-fun invariantList!561 (List!48203) Bool)

(assert (=> d!1267384 (invariantList!561 (toList!2303 lt!1526591))))

(assert (=> d!1267384 (= lt!1526591 (extractMap!300 (toList!2302 (map!10051 (v!42133 (underlying!9428 thiss!42308))))))))

(assert (=> d!1267384 (valid!3585 thiss!42308)))

(assert (=> d!1267384 (= (map!10052 thiss!42308) lt!1526591)))

(declare-fun bs!604494 () Bool)

(assert (= bs!604494 d!1267384))

(declare-fun m!4898121 () Bool)

(assert (=> bs!604494 m!4898121))

(assert (=> bs!604494 m!4898065))

(assert (=> bs!604494 m!4898111))

(assert (=> bs!604494 m!4898049))

(assert (=> b!4305190 d!1267384))

(declare-fun bs!604495 () Bool)

(declare-fun b!4305239 () Bool)

(assert (= bs!604495 (and b!4305239 b!4305229)))

(declare-fun lambda!132420 () Int)

(assert (=> bs!604495 (= lambda!132420 lambda!132417)))

(declare-fun d!1267386 () Bool)

(declare-fun res!1764603 () Bool)

(declare-fun e!2676873 () Bool)

(assert (=> d!1267386 (=> (not res!1764603) (not e!2676873))))

(assert (=> d!1267386 (= res!1764603 (valid!3586 (v!42133 (underlying!9428 thiss!42308))))))

(assert (=> d!1267386 (= (valid!3585 thiss!42308) e!2676873)))

(declare-fun res!1764604 () Bool)

(assert (=> b!4305239 (=> (not res!1764604) (not e!2676873))))

(declare-fun forall!8685 (List!48204 Int) Bool)

(assert (=> b!4305239 (= res!1764604 (forall!8685 (toList!2302 (map!10051 (v!42133 (underlying!9428 thiss!42308)))) lambda!132420))))

(declare-fun b!4305240 () Bool)

(declare-fun allKeysSameHashInMap!304 (ListLongMap!911 Hashable!4515) Bool)

(assert (=> b!4305240 (= e!2676873 (allKeysSameHashInMap!304 (map!10051 (v!42133 (underlying!9428 thiss!42308))) (hashF!6589 thiss!42308)))))

(assert (= (and d!1267386 res!1764603) b!4305239))

(assert (= (and b!4305239 res!1764604) b!4305240))

(assert (=> d!1267386 m!4898055))

(assert (=> b!4305239 m!4898065))

(declare-fun m!4898123 () Bool)

(assert (=> b!4305239 m!4898123))

(assert (=> b!4305240 m!4898065))

(assert (=> b!4305240 m!4898065))

(declare-fun m!4898125 () Bool)

(assert (=> b!4305240 m!4898125))

(assert (=> b!4305194 d!1267386))

(declare-fun d!1267388 () Bool)

(assert (=> d!1267388 (= (array_inv!5297 (_keys!4899 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308)))))) (bvsge (size!35422 (_keys!4899 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4305199 d!1267388))

(declare-fun d!1267390 () Bool)

(assert (=> d!1267390 (= (array_inv!5298 (_values!4880 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308)))))) (bvsge (size!35423 (_values!4880 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4305199 d!1267390))

(declare-fun d!1267392 () Bool)

(declare-fun e!2676876 () Bool)

(assert (=> d!1267392 e!2676876))

(declare-fun c!732038 () Bool)

(assert (=> d!1267392 (= c!732038 (contains!10014 (v!42133 (underlying!9428 thiss!42308)) lt!1526525))))

(declare-fun lt!1526594 () List!48203)

(declare-fun apply!10949 (LongMapFixedSize!9198 (_ BitVec 64)) List!48203)

(assert (=> d!1267392 (= lt!1526594 (apply!10949 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308)))) lt!1526525))))

(assert (=> d!1267392 (valid!3586 (v!42133 (underlying!9428 thiss!42308)))))

(assert (=> d!1267392 (= (apply!10947 (v!42133 (underlying!9428 thiss!42308)) lt!1526525) lt!1526594)))

(declare-fun b!4305245 () Bool)

(declare-fun get!15551 (Option!10200) List!48203)

(assert (=> b!4305245 (= e!2676876 (= lt!1526594 (get!15551 (getValueByKey!236 (toList!2302 (map!10051 (v!42133 (underlying!9428 thiss!42308)))) lt!1526525))))))

(declare-fun b!4305246 () Bool)

(declare-fun dynLambda!20394 (Int (_ BitVec 64)) List!48203)

(assert (=> b!4305246 (= e!2676876 (= lt!1526594 (dynLambda!20394 (defaultEntry!4984 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308))))) lt!1526525)))))

(assert (=> b!4305246 ((_ is LongMap!4599) (v!42133 (underlying!9428 thiss!42308)))))

(assert (= (and d!1267392 c!732038) b!4305245))

(assert (= (and d!1267392 (not c!732038)) b!4305246))

(declare-fun b_lambda!126503 () Bool)

(assert (=> (not b_lambda!126503) (not b!4305246)))

(declare-fun t!354989 () Bool)

(declare-fun tb!257269 () Bool)

(assert (=> (and b!4305199 (= (defaultEntry!4984 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308))))) (defaultEntry!4984 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308)))))) t!354989) tb!257269))

(assert (=> b!4305246 t!354989))

(declare-fun result!314622 () Bool)

(declare-fun b_and!339757 () Bool)

(assert (= b_and!339753 (and (=> t!354989 result!314622) b_and!339757)))

(assert (=> d!1267392 m!4898051))

(declare-fun m!4898127 () Bool)

(assert (=> d!1267392 m!4898127))

(assert (=> d!1267392 m!4898055))

(assert (=> b!4305245 m!4898065))

(declare-fun m!4898129 () Bool)

(assert (=> b!4305245 m!4898129))

(assert (=> b!4305245 m!4898129))

(declare-fun m!4898131 () Bool)

(assert (=> b!4305245 m!4898131))

(declare-fun m!4898133 () Bool)

(assert (=> b!4305246 m!4898133))

(assert (=> b!4305191 d!1267392))

(declare-fun d!1267394 () Bool)

(declare-fun lt!1526597 () Bool)

(assert (=> d!1267394 (= lt!1526597 (contains!10016 (map!10051 (v!42133 (underlying!9428 thiss!42308))) lt!1526525))))

(declare-fun contains!10018 (LongMapFixedSize!9198 (_ BitVec 64)) Bool)

(assert (=> d!1267394 (= lt!1526597 (contains!10018 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308)))) lt!1526525))))

(assert (=> d!1267394 (valid!3586 (v!42133 (underlying!9428 thiss!42308)))))

(assert (=> d!1267394 (= (contains!10014 (v!42133 (underlying!9428 thiss!42308)) lt!1526525) lt!1526597)))

(declare-fun bs!604496 () Bool)

(assert (= bs!604496 d!1267394))

(assert (=> bs!604496 m!4898065))

(assert (=> bs!604496 m!4898065))

(declare-fun m!4898135 () Bool)

(assert (=> bs!604496 m!4898135))

(declare-fun m!4898137 () Bool)

(assert (=> bs!604496 m!4898137))

(assert (=> bs!604496 m!4898055))

(assert (=> b!4305201 d!1267394))

(declare-fun d!1267396 () Bool)

(declare-fun hash!923 (Hashable!4515 K!9244) (_ BitVec 64))

(assert (=> d!1267396 (= (hash!922 (hashF!6589 thiss!42308) key!2048) (hash!923 (hashF!6589 thiss!42308) key!2048))))

(declare-fun bs!604497 () Bool)

(assert (= bs!604497 d!1267396))

(declare-fun m!4898139 () Bool)

(assert (=> bs!604497 m!4898139))

(assert (=> b!4305201 d!1267396))

(declare-fun condMapEmpty!20599 () Bool)

(declare-fun mapDefault!20599 () List!48203)

(assert (=> mapNonEmpty!20596 (= condMapEmpty!20599 (= mapRest!20596 ((as const (Array (_ BitVec 32) List!48203)) mapDefault!20599)))))

(declare-fun e!2676882 () Bool)

(declare-fun mapRes!20599 () Bool)

(assert (=> mapNonEmpty!20596 (= tp!1323019 (and e!2676882 mapRes!20599))))

(declare-fun b!4305254 () Bool)

(declare-fun tp!1323031 () Bool)

(declare-fun tp_is_empty!23519 () Bool)

(assert (=> b!4305254 (= e!2676882 (and tp_is_empty!23517 tp_is_empty!23519 tp!1323031))))

(declare-fun mapNonEmpty!20599 () Bool)

(declare-fun tp!1323030 () Bool)

(declare-fun e!2676881 () Bool)

(assert (=> mapNonEmpty!20599 (= mapRes!20599 (and tp!1323030 e!2676881))))

(declare-fun mapRest!20599 () (Array (_ BitVec 32) List!48203))

(declare-fun mapValue!20599 () List!48203)

(declare-fun mapKey!20599 () (_ BitVec 32))

(assert (=> mapNonEmpty!20599 (= mapRest!20596 (store mapRest!20599 mapKey!20599 mapValue!20599))))

(declare-fun mapIsEmpty!20599 () Bool)

(assert (=> mapIsEmpty!20599 mapRes!20599))

(declare-fun tp!1323032 () Bool)

(declare-fun b!4305253 () Bool)

(assert (=> b!4305253 (= e!2676881 (and tp_is_empty!23517 tp_is_empty!23519 tp!1323032))))

(assert (= (and mapNonEmpty!20596 condMapEmpty!20599) mapIsEmpty!20599))

(assert (= (and mapNonEmpty!20596 (not condMapEmpty!20599)) mapNonEmpty!20599))

(assert (= (and mapNonEmpty!20599 ((_ is Cons!48079) mapValue!20599)) b!4305253))

(assert (= (and mapNonEmpty!20596 ((_ is Cons!48079) mapDefault!20599)) b!4305254))

(declare-fun m!4898141 () Bool)

(assert (=> mapNonEmpty!20599 m!4898141))

(declare-fun tp!1323035 () Bool)

(declare-fun e!2676885 () Bool)

(declare-fun b!4305259 () Bool)

(assert (=> b!4305259 (= e!2676885 (and tp_is_empty!23517 tp_is_empty!23519 tp!1323035))))

(assert (=> mapNonEmpty!20596 (= tp!1323023 e!2676885)))

(assert (= (and mapNonEmpty!20596 ((_ is Cons!48079) mapValue!20596)) b!4305259))

(declare-fun tp!1323036 () Bool)

(declare-fun b!4305260 () Bool)

(declare-fun e!2676886 () Bool)

(assert (=> b!4305260 (= e!2676886 (and tp_is_empty!23517 tp_is_empty!23519 tp!1323036))))

(assert (=> b!4305199 (= tp!1323017 e!2676886)))

(assert (= (and b!4305199 ((_ is Cons!48079) (zeroValue!4858 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308))))))) b!4305260))

(declare-fun e!2676887 () Bool)

(declare-fun tp!1323037 () Bool)

(declare-fun b!4305261 () Bool)

(assert (=> b!4305261 (= e!2676887 (and tp_is_empty!23517 tp_is_empty!23519 tp!1323037))))

(assert (=> b!4305199 (= tp!1323020 e!2676887)))

(assert (= (and b!4305199 ((_ is Cons!48079) (minValue!4858 (v!42132 (underlying!9427 (v!42133 (underlying!9428 thiss!42308))))))) b!4305261))

(declare-fun b!4305262 () Bool)

(declare-fun e!2676888 () Bool)

(declare-fun tp!1323038 () Bool)

(assert (=> b!4305262 (= e!2676888 (and tp_is_empty!23517 tp_is_empty!23519 tp!1323038))))

(assert (=> b!4305195 (= tp!1323022 e!2676888)))

(assert (= (and b!4305195 ((_ is Cons!48079) mapDefault!20596)) b!4305262))

(declare-fun b_lambda!126505 () Bool)

(assert (= b_lambda!126503 (or (and b!4305199 b_free!128355) b_lambda!126505)))

(check-sat b_and!339757 (not b!4305240) (not bm!296897) b_and!339755 (not b!4305227) (not b!4305239) (not b!4305260) (not b!4305229) (not d!1267378) (not bm!296900) (not b!4305262) tp_is_empty!23517 (not b!4305245) (not bm!296896) (not tb!257269) (not bm!296895) (not d!1267380) (not d!1267382) (not mapNonEmpty!20599) (not b_next!129061) (not bm!296898) (not b!4305233) (not b!4305228) (not b!4305231) (not d!1267396) tp_is_empty!23519 (not b!4305259) (not d!1267384) (not bm!296899) (not b_next!129059) (not b!4305253) (not d!1267386) (not b_lambda!126505) (not d!1267394) (not b!4305261) (not b!4305254) (not d!1267392))
(check-sat b_and!339757 b_and!339755 (not b_next!129061) (not b_next!129059))
