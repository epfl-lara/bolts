; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10692 () Bool)

(assert start!10692)

(declare-fun b!85318 () Bool)

(declare-fun b_free!2241 () Bool)

(declare-fun b_next!2241 () Bool)

(assert (=> b!85318 (= b_free!2241 (not b_next!2241))))

(declare-fun tp!8947 () Bool)

(declare-fun b_and!5161 () Bool)

(assert (=> b!85318 (= tp!8947 b_and!5161)))

(declare-fun b!85309 () Bool)

(declare-fun b_free!2243 () Bool)

(declare-fun b_next!2243 () Bool)

(assert (=> b!85309 (= b_free!2243 (not b_next!2243))))

(declare-fun tp!8948 () Bool)

(declare-fun b_and!5163 () Bool)

(assert (=> b!85309 (= tp!8948 b_and!5163)))

(declare-fun mapIsEmpty!3405 () Bool)

(declare-fun mapRes!3405 () Bool)

(assert (=> mapIsEmpty!3405 mapRes!3405))

(declare-fun b!85302 () Bool)

(declare-datatypes ((Unit!2537 0))(
  ( (Unit!2538) )
))
(declare-fun e!55670 () Unit!2537)

(declare-fun Unit!2539 () Unit!2537)

(assert (=> b!85302 (= e!55670 Unit!2539)))

(declare-fun lt!40228 () Unit!2537)

(declare-datatypes ((V!3029 0))(
  ( (V!3030 (val!1313 Int)) )
))
(declare-datatypes ((array!4032 0))(
  ( (array!4033 (arr!1920 (Array (_ BitVec 32) (_ BitVec 64))) (size!2164 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!925 0))(
  ( (ValueCellFull!925 (v!2649 V!3029)) (EmptyCell!925) )
))
(declare-datatypes ((array!4034 0))(
  ( (array!4035 (arr!1921 (Array (_ BitVec 32) ValueCell!925)) (size!2165 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!758 0))(
  ( (LongMapFixedSize!759 (defaultEntry!2339 Int) (mask!6367 (_ BitVec 32)) (extraKeys!2178 (_ BitVec 32)) (zeroValue!2231 V!3029) (minValue!2231 V!3029) (_size!428 (_ BitVec 32)) (_keys!4011 array!4032) (_values!2322 array!4034) (_vacant!428 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!566 0))(
  ( (Cell!567 (v!2650 LongMapFixedSize!758)) )
))
(declare-datatypes ((LongMap!566 0))(
  ( (LongMap!567 (underlying!294 Cell!566)) )
))
(declare-fun thiss!992 () LongMap!566)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!73 (array!4032 array!4034 (_ BitVec 32) (_ BitVec 32) V!3029 V!3029 (_ BitVec 64) (_ BitVec 32) Int) Unit!2537)

(assert (=> b!85302 (= lt!40228 (lemmaListMapContainsThenArrayContainsFrom!73 (_keys!4011 (v!2650 (underlying!294 thiss!992))) (_values!2322 (v!2650 (underlying!294 thiss!992))) (mask!6367 (v!2650 (underlying!294 thiss!992))) (extraKeys!2178 (v!2650 (underlying!294 thiss!992))) (zeroValue!2231 (v!2650 (underlying!294 thiss!992))) (minValue!2231 (v!2650 (underlying!294 thiss!992))) (select (arr!1920 (_keys!4011 (v!2650 (underlying!294 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2339 (v!2650 (underlying!294 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4032 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!85302 (arrayContainsKey!0 (_keys!4011 (v!2650 (underlying!294 thiss!992))) (select (arr!1920 (_keys!4011 (v!2650 (underlying!294 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!40221 () Unit!2537)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4032 (_ BitVec 32) (_ BitVec 32)) Unit!2537)

(assert (=> b!85302 (= lt!40221 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4011 (v!2650 (underlying!294 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1554 0))(
  ( (Nil!1551) (Cons!1550 (h!2141 (_ BitVec 64)) (t!5283 List!1554)) )
))
(declare-fun arrayNoDuplicates!0 (array!4032 (_ BitVec 32) List!1554) Bool)

(assert (=> b!85302 (arrayNoDuplicates!0 (_keys!4011 (v!2650 (underlying!294 thiss!992))) from!355 Nil!1551)))

(declare-fun lt!40225 () Unit!2537)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4032 (_ BitVec 32) (_ BitVec 64) List!1554) Unit!2537)

(assert (=> b!85302 (= lt!40225 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4011 (v!2650 (underlying!294 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1920 (_keys!4011 (v!2650 (underlying!294 thiss!992)))) from!355) (Cons!1550 (select (arr!1920 (_keys!4011 (v!2650 (underlying!294 thiss!992)))) from!355) Nil!1551)))))

(assert (=> b!85302 false))

(declare-fun b!85303 () Bool)

(declare-fun e!55667 () Bool)

(declare-fun tp_is_empty!2537 () Bool)

(assert (=> b!85303 (= e!55667 tp_is_empty!2537)))

(declare-fun b!85304 () Bool)

(declare-fun e!55677 () Bool)

(assert (=> b!85304 (= e!55677 (or (not (= (size!2165 (_values!2322 (v!2650 (underlying!294 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6367 (v!2650 (underlying!294 thiss!992)))))) (not (= (size!2164 (_keys!4011 (v!2650 (underlying!294 thiss!992)))) (size!2165 (_values!2322 (v!2650 (underlying!294 thiss!992)))))) (bvslt (mask!6367 (v!2650 (underlying!294 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2178 (v!2650 (underlying!294 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2178 (v!2650 (underlying!294 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!85305 () Bool)

(declare-fun e!55662 () Bool)

(declare-fun e!55663 () Bool)

(assert (=> b!85305 (= e!55662 e!55663)))

(declare-fun b!85306 () Bool)

(declare-fun e!55676 () Bool)

(assert (=> b!85306 (= e!55676 tp_is_empty!2537)))

(declare-fun b!85307 () Bool)

(declare-fun e!55672 () Bool)

(assert (=> b!85307 (= e!55672 e!55662)))

(declare-fun b!85308 () Bool)

(declare-fun res!43946 () Bool)

(declare-fun e!55673 () Bool)

(assert (=> b!85308 (=> (not res!43946) (not e!55673))))

(declare-fun newMap!16 () LongMapFixedSize!758)

(assert (=> b!85308 (= res!43946 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6367 newMap!16)) (_size!428 (v!2650 (underlying!294 thiss!992)))))))

(declare-fun e!55671 () Bool)

(declare-fun e!55675 () Bool)

(declare-fun array_inv!1151 (array!4032) Bool)

(declare-fun array_inv!1152 (array!4034) Bool)

(assert (=> b!85309 (= e!55675 (and tp!8948 tp_is_empty!2537 (array_inv!1151 (_keys!4011 newMap!16)) (array_inv!1152 (_values!2322 newMap!16)) e!55671))))

(declare-fun b!85310 () Bool)

(declare-fun e!55664 () Bool)

(declare-fun e!55665 () Bool)

(assert (=> b!85310 (= e!55664 e!55665)))

(declare-fun res!43951 () Bool)

(assert (=> b!85310 (=> (not res!43951) (not e!55665))))

(declare-datatypes ((tuple2!2236 0))(
  ( (tuple2!2237 (_1!1128 Bool) (_2!1128 LongMapFixedSize!758)) )
))
(declare-fun lt!40229 () tuple2!2236)

(assert (=> b!85310 (= res!43951 (and (_1!1128 lt!40229) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!40220 () Unit!2537)

(assert (=> b!85310 (= lt!40220 e!55670)))

(declare-datatypes ((tuple2!2238 0))(
  ( (tuple2!2239 (_1!1129 (_ BitVec 64)) (_2!1129 V!3029)) )
))
(declare-datatypes ((List!1555 0))(
  ( (Nil!1552) (Cons!1551 (h!2142 tuple2!2238) (t!5284 List!1555)) )
))
(declare-datatypes ((ListLongMap!1489 0))(
  ( (ListLongMap!1490 (toList!760 List!1555)) )
))
(declare-fun lt!40224 () ListLongMap!1489)

(declare-fun c!13817 () Bool)

(declare-fun contains!763 (ListLongMap!1489 (_ BitVec 64)) Bool)

(assert (=> b!85310 (= c!13817 (contains!763 lt!40224 (select (arr!1920 (_keys!4011 (v!2650 (underlying!294 thiss!992)))) from!355)))))

(declare-fun lt!40231 () V!3029)

(declare-fun update!123 (LongMapFixedSize!758 (_ BitVec 64) V!3029) tuple2!2236)

(assert (=> b!85310 (= lt!40229 (update!123 newMap!16 (select (arr!1920 (_keys!4011 (v!2650 (underlying!294 thiss!992)))) from!355) lt!40231))))

(declare-fun b!85311 () Bool)

(declare-fun res!43948 () Bool)

(assert (=> b!85311 (=> (not res!43948) (not e!55673))))

(declare-fun valid!328 (LongMapFixedSize!758) Bool)

(assert (=> b!85311 (= res!43948 (valid!328 newMap!16))))

(declare-fun res!43950 () Bool)

(assert (=> start!10692 (=> (not res!43950) (not e!55673))))

(declare-fun valid!329 (LongMap!566) Bool)

(assert (=> start!10692 (= res!43950 (valid!329 thiss!992))))

(assert (=> start!10692 e!55673))

(assert (=> start!10692 e!55672))

(assert (=> start!10692 true))

(assert (=> start!10692 e!55675))

(declare-fun b!85312 () Bool)

(assert (=> b!85312 (= e!55665 (not e!55677))))

(declare-fun res!43944 () Bool)

(assert (=> b!85312 (=> res!43944 e!55677)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!85312 (= res!43944 (not (validMask!0 (mask!6367 (v!2650 (underlying!294 thiss!992))))))))

(declare-fun lt!40217 () tuple2!2238)

(declare-fun lt!40218 () ListLongMap!1489)

(declare-fun lt!40223 () ListLongMap!1489)

(declare-fun lt!40227 () tuple2!2238)

(declare-fun +!117 (ListLongMap!1489 tuple2!2238) ListLongMap!1489)

(assert (=> b!85312 (= (+!117 lt!40223 lt!40227) (+!117 (+!117 lt!40218 lt!40227) lt!40217))))

(assert (=> b!85312 (= lt!40227 (tuple2!2239 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2231 (v!2650 (underlying!294 thiss!992)))))))

(declare-fun lt!40222 () Unit!2537)

(declare-fun addCommutativeForDiffKeys!36 (ListLongMap!1489 (_ BitVec 64) V!3029 (_ BitVec 64) V!3029) Unit!2537)

(assert (=> b!85312 (= lt!40222 (addCommutativeForDiffKeys!36 lt!40218 (select (arr!1920 (_keys!4011 (v!2650 (underlying!294 thiss!992)))) from!355) lt!40231 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2231 (v!2650 (underlying!294 thiss!992)))))))

(declare-fun lt!40215 () ListLongMap!1489)

(assert (=> b!85312 (= lt!40215 lt!40223)))

(assert (=> b!85312 (= lt!40223 (+!117 lt!40218 lt!40217))))

(declare-fun lt!40216 () ListLongMap!1489)

(declare-fun lt!40226 () tuple2!2238)

(assert (=> b!85312 (= lt!40215 (+!117 lt!40216 lt!40226))))

(declare-fun lt!40230 () ListLongMap!1489)

(assert (=> b!85312 (= lt!40218 (+!117 lt!40230 lt!40226))))

(assert (=> b!85312 (= lt!40226 (tuple2!2239 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2231 (v!2650 (underlying!294 thiss!992)))))))

(assert (=> b!85312 (= lt!40216 (+!117 lt!40230 lt!40217))))

(assert (=> b!85312 (= lt!40217 (tuple2!2239 (select (arr!1920 (_keys!4011 (v!2650 (underlying!294 thiss!992)))) from!355) lt!40231))))

(declare-fun lt!40214 () Unit!2537)

(assert (=> b!85312 (= lt!40214 (addCommutativeForDiffKeys!36 lt!40230 (select (arr!1920 (_keys!4011 (v!2650 (underlying!294 thiss!992)))) from!355) lt!40231 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2231 (v!2650 (underlying!294 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!81 (array!4032 array!4034 (_ BitVec 32) (_ BitVec 32) V!3029 V!3029 (_ BitVec 32) Int) ListLongMap!1489)

(assert (=> b!85312 (= lt!40230 (getCurrentListMapNoExtraKeys!81 (_keys!4011 (v!2650 (underlying!294 thiss!992))) (_values!2322 (v!2650 (underlying!294 thiss!992))) (mask!6367 (v!2650 (underlying!294 thiss!992))) (extraKeys!2178 (v!2650 (underlying!294 thiss!992))) (zeroValue!2231 (v!2650 (underlying!294 thiss!992))) (minValue!2231 (v!2650 (underlying!294 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2339 (v!2650 (underlying!294 thiss!992)))))))

(declare-fun mapNonEmpty!3405 () Bool)

(declare-fun mapRes!3406 () Bool)

(declare-fun tp!8949 () Bool)

(assert (=> mapNonEmpty!3405 (= mapRes!3406 (and tp!8949 e!55676))))

(declare-fun mapKey!3405 () (_ BitVec 32))

(declare-fun mapValue!3405 () ValueCell!925)

(declare-fun mapRest!3406 () (Array (_ BitVec 32) ValueCell!925))

(assert (=> mapNonEmpty!3405 (= (arr!1921 (_values!2322 newMap!16)) (store mapRest!3406 mapKey!3405 mapValue!3405))))

(declare-fun b!85313 () Bool)

(declare-fun e!55666 () Bool)

(assert (=> b!85313 (= e!55666 e!55664)))

(declare-fun res!43945 () Bool)

(assert (=> b!85313 (=> (not res!43945) (not e!55664))))

(assert (=> b!85313 (= res!43945 (and (not (= (select (arr!1920 (_keys!4011 (v!2650 (underlying!294 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1920 (_keys!4011 (v!2650 (underlying!294 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1213 (ValueCell!925 V!3029) V!3029)

(declare-fun dynLambda!353 (Int (_ BitVec 64)) V!3029)

(assert (=> b!85313 (= lt!40231 (get!1213 (select (arr!1921 (_values!2322 (v!2650 (underlying!294 thiss!992)))) from!355) (dynLambda!353 (defaultEntry!2339 (v!2650 (underlying!294 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!3406 () Bool)

(assert (=> mapIsEmpty!3406 mapRes!3406))

(declare-fun b!85314 () Bool)

(declare-fun e!55661 () Bool)

(assert (=> b!85314 (= e!55661 tp_is_empty!2537)))

(declare-fun b!85315 () Bool)

(declare-fun Unit!2540 () Unit!2537)

(assert (=> b!85315 (= e!55670 Unit!2540)))

(declare-fun b!85316 () Bool)

(declare-fun res!43947 () Bool)

(assert (=> b!85316 (=> (not res!43947) (not e!55673))))

(assert (=> b!85316 (= res!43947 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2164 (_keys!4011 (v!2650 (underlying!294 thiss!992)))))))))

(declare-fun b!85317 () Bool)

(assert (=> b!85317 (= e!55671 (and e!55661 mapRes!3406))))

(declare-fun condMapEmpty!3406 () Bool)

(declare-fun mapDefault!3406 () ValueCell!925)

