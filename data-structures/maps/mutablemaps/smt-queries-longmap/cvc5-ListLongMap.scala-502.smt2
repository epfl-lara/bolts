; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11656 () Bool)

(assert start!11656)

(declare-fun b!97279 () Bool)

(declare-fun b_free!2413 () Bool)

(declare-fun b_next!2413 () Bool)

(assert (=> b!97279 (= b_free!2413 (not b_next!2413))))

(declare-fun tp!9523 () Bool)

(declare-fun b_and!5961 () Bool)

(assert (=> b!97279 (= tp!9523 b_and!5961)))

(declare-fun b!97267 () Bool)

(declare-fun b_free!2415 () Bool)

(declare-fun b_next!2415 () Bool)

(assert (=> b!97267 (= b_free!2415 (not b_next!2415))))

(declare-fun tp!9522 () Bool)

(declare-fun b_and!5963 () Bool)

(assert (=> b!97267 (= tp!9522 b_and!5963)))

(declare-fun b!97264 () Bool)

(declare-fun e!63409 () Bool)

(declare-fun e!63404 () Bool)

(assert (=> b!97264 (= e!63409 e!63404)))

(declare-fun b!97265 () Bool)

(declare-fun e!63415 () Bool)

(declare-datatypes ((V!3145 0))(
  ( (V!3146 (val!1356 Int)) )
))
(declare-datatypes ((array!4224 0))(
  ( (array!4225 (arr!2006 (Array (_ BitVec 32) (_ BitVec 64))) (size!2256 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!968 0))(
  ( (ValueCellFull!968 (v!2792 V!3145)) (EmptyCell!968) )
))
(declare-datatypes ((array!4226 0))(
  ( (array!4227 (arr!2007 (Array (_ BitVec 32) ValueCell!968)) (size!2257 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!844 0))(
  ( (LongMapFixedSize!845 (defaultEntry!2477 Int) (mask!6572 (_ BitVec 32)) (extraKeys!2298 (_ BitVec 32)) (zeroValue!2360 V!3145) (minValue!2360 V!3145) (_size!471 (_ BitVec 32)) (_keys!4167 array!4224) (_values!2460 array!4226) (_vacant!471 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!648 0))(
  ( (Cell!649 (v!2793 LongMapFixedSize!844)) )
))
(declare-datatypes ((LongMap!648 0))(
  ( (LongMap!649 (underlying!335 Cell!648)) )
))
(declare-fun thiss!992 () LongMap!648)

(assert (=> b!97265 (= e!63415 (and (= (size!2257 (_values!2460 (v!2793 (underlying!335 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6572 (v!2793 (underlying!335 thiss!992))))) (= (size!2256 (_keys!4167 (v!2793 (underlying!335 thiss!992)))) (size!2257 (_values!2460 (v!2793 (underlying!335 thiss!992))))) (bvslt (mask!6572 (v!2793 (underlying!335 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!3721 () Bool)

(declare-fun mapRes!3722 () Bool)

(assert (=> mapIsEmpty!3721 mapRes!3722))

(declare-fun newMap!16 () LongMapFixedSize!844)

(declare-fun e!63407 () Bool)

(declare-fun tp_is_empty!2623 () Bool)

(declare-fun e!63419 () Bool)

(declare-fun array_inv!1203 (array!4224) Bool)

(declare-fun array_inv!1204 (array!4226) Bool)

(assert (=> b!97267 (= e!63407 (and tp!9522 tp_is_empty!2623 (array_inv!1203 (_keys!4167 newMap!16)) (array_inv!1204 (_values!2460 newMap!16)) e!63419))))

(declare-fun mapIsEmpty!3722 () Bool)

(declare-fun mapRes!3721 () Bool)

(assert (=> mapIsEmpty!3722 mapRes!3721))

(declare-fun b!97268 () Bool)

(declare-datatypes ((Unit!2952 0))(
  ( (Unit!2953) )
))
(declare-fun e!63413 () Unit!2952)

(declare-fun Unit!2954 () Unit!2952)

(assert (=> b!97268 (= e!63413 Unit!2954)))

(declare-fun lt!48716 () Unit!2952)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!95 (array!4224 array!4226 (_ BitVec 32) (_ BitVec 32) V!3145 V!3145 (_ BitVec 64) (_ BitVec 32) Int) Unit!2952)

(assert (=> b!97268 (= lt!48716 (lemmaListMapContainsThenArrayContainsFrom!95 (_keys!4167 (v!2793 (underlying!335 thiss!992))) (_values!2460 (v!2793 (underlying!335 thiss!992))) (mask!6572 (v!2793 (underlying!335 thiss!992))) (extraKeys!2298 (v!2793 (underlying!335 thiss!992))) (zeroValue!2360 (v!2793 (underlying!335 thiss!992))) (minValue!2360 (v!2793 (underlying!335 thiss!992))) (select (arr!2006 (_keys!4167 (v!2793 (underlying!335 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2477 (v!2793 (underlying!335 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!97268 (arrayContainsKey!0 (_keys!4167 (v!2793 (underlying!335 thiss!992))) (select (arr!2006 (_keys!4167 (v!2793 (underlying!335 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!48720 () Unit!2952)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4224 (_ BitVec 32) (_ BitVec 32)) Unit!2952)

(assert (=> b!97268 (= lt!48720 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4167 (v!2793 (underlying!335 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1604 0))(
  ( (Nil!1601) (Cons!1600 (h!2194 (_ BitVec 64)) (t!5550 List!1604)) )
))
(declare-fun arrayNoDuplicates!0 (array!4224 (_ BitVec 32) List!1604) Bool)

(assert (=> b!97268 (arrayNoDuplicates!0 (_keys!4167 (v!2793 (underlying!335 thiss!992))) from!355 Nil!1601)))

(declare-fun lt!48721 () Unit!2952)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4224 (_ BitVec 32) (_ BitVec 64) List!1604) Unit!2952)

(assert (=> b!97268 (= lt!48721 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4167 (v!2793 (underlying!335 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2006 (_keys!4167 (v!2793 (underlying!335 thiss!992)))) from!355) (Cons!1600 (select (arr!2006 (_keys!4167 (v!2793 (underlying!335 thiss!992)))) from!355) Nil!1601)))))

(assert (=> b!97268 false))

(declare-fun mapNonEmpty!3721 () Bool)

(declare-fun tp!9521 () Bool)

(declare-fun e!63405 () Bool)

(assert (=> mapNonEmpty!3721 (= mapRes!3722 (and tp!9521 e!63405))))

(declare-fun mapRest!3721 () (Array (_ BitVec 32) ValueCell!968))

(declare-fun mapValue!3721 () ValueCell!968)

(declare-fun mapKey!3721 () (_ BitVec 32))

(assert (=> mapNonEmpty!3721 (= (arr!2007 (_values!2460 newMap!16)) (store mapRest!3721 mapKey!3721 mapValue!3721))))

(declare-fun b!97269 () Bool)

(declare-fun e!63417 () Bool)

(declare-fun e!63410 () Bool)

(assert (=> b!97269 (= e!63417 e!63410)))

(declare-fun res!49035 () Bool)

(assert (=> b!97269 (=> (not res!49035) (not e!63410))))

(declare-datatypes ((tuple2!2340 0))(
  ( (tuple2!2341 (_1!1180 (_ BitVec 64)) (_2!1180 V!3145)) )
))
(declare-datatypes ((List!1605 0))(
  ( (Nil!1602) (Cons!1601 (h!2195 tuple2!2340) (t!5551 List!1605)) )
))
(declare-datatypes ((ListLongMap!1543 0))(
  ( (ListLongMap!1544 (toList!787 List!1605)) )
))
(declare-fun lt!48715 () ListLongMap!1543)

(declare-fun lt!48717 () ListLongMap!1543)

(assert (=> b!97269 (= res!49035 (and (= lt!48717 lt!48715) (not (= (select (arr!2006 (_keys!4167 (v!2793 (underlying!335 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2006 (_keys!4167 (v!2793 (underlying!335 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1249 (LongMapFixedSize!844) ListLongMap!1543)

(assert (=> b!97269 (= lt!48715 (map!1249 newMap!16))))

(declare-fun getCurrentListMap!468 (array!4224 array!4226 (_ BitVec 32) (_ BitVec 32) V!3145 V!3145 (_ BitVec 32) Int) ListLongMap!1543)

(assert (=> b!97269 (= lt!48717 (getCurrentListMap!468 (_keys!4167 (v!2793 (underlying!335 thiss!992))) (_values!2460 (v!2793 (underlying!335 thiss!992))) (mask!6572 (v!2793 (underlying!335 thiss!992))) (extraKeys!2298 (v!2793 (underlying!335 thiss!992))) (zeroValue!2360 (v!2793 (underlying!335 thiss!992))) (minValue!2360 (v!2793 (underlying!335 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2477 (v!2793 (underlying!335 thiss!992)))))))

(declare-fun b!97270 () Bool)

(declare-fun res!49038 () Bool)

(assert (=> b!97270 (=> (not res!49038) (not e!63417))))

(declare-fun valid!380 (LongMapFixedSize!844) Bool)

(assert (=> b!97270 (= res!49038 (valid!380 newMap!16))))

(declare-fun b!97271 () Bool)

(declare-fun e!63412 () Bool)

(assert (=> b!97271 (= e!63412 tp_is_empty!2623)))

(declare-fun b!97272 () Bool)

(declare-fun e!63414 () Bool)

(assert (=> b!97272 (= e!63414 e!63409)))

(declare-fun b!97273 () Bool)

(declare-fun res!49034 () Bool)

(assert (=> b!97273 (=> (not res!49034) (not e!63417))))

(assert (=> b!97273 (= res!49034 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6572 newMap!16)) (_size!471 (v!2793 (underlying!335 thiss!992)))))))

(declare-fun b!97274 () Bool)

(declare-fun res!49036 () Bool)

(assert (=> b!97274 (=> (not res!49036) (not e!63417))))

(assert (=> b!97274 (= res!49036 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2256 (_keys!4167 (v!2793 (underlying!335 thiss!992)))))))))

(declare-fun b!97275 () Bool)

(declare-fun e!63418 () Bool)

(assert (=> b!97275 (= e!63418 tp_is_empty!2623)))

(declare-fun res!49037 () Bool)

(assert (=> start!11656 (=> (not res!49037) (not e!63417))))

(declare-fun valid!381 (LongMap!648) Bool)

(assert (=> start!11656 (= res!49037 (valid!381 thiss!992))))

(assert (=> start!11656 e!63417))

(assert (=> start!11656 e!63414))

(assert (=> start!11656 true))

(assert (=> start!11656 e!63407))

(declare-fun b!97266 () Bool)

(declare-fun e!63411 () Bool)

(assert (=> b!97266 (= e!63411 (and e!63412 mapRes!3721))))

(declare-fun condMapEmpty!3721 () Bool)

(declare-fun mapDefault!3722 () ValueCell!968)

