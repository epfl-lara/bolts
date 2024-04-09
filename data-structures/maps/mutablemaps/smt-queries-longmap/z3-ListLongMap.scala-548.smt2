; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14588 () Bool)

(assert start!14588)

(declare-fun b!137978 () Bool)

(declare-fun b_free!2969 () Bool)

(declare-fun b_next!2969 () Bool)

(assert (=> b!137978 (= b_free!2969 (not b_next!2969))))

(declare-fun tp!11369 () Bool)

(declare-fun b_and!8593 () Bool)

(assert (=> b!137978 (= tp!11369 b_and!8593)))

(declare-fun b!137979 () Bool)

(declare-fun b_free!2971 () Bool)

(declare-fun b_next!2971 () Bool)

(assert (=> b!137979 (= b_free!2971 (not b_next!2971))))

(declare-fun tp!11367 () Bool)

(declare-fun b_and!8595 () Bool)

(assert (=> b!137979 (= tp!11367 b_and!8595)))

(declare-fun mapIsEmpty!4733 () Bool)

(declare-fun mapRes!4733 () Bool)

(assert (=> mapIsEmpty!4733 mapRes!4733))

(declare-fun res!66107 () Bool)

(declare-fun e!89875 () Bool)

(assert (=> start!14588 (=> (not res!66107) (not e!89875))))

(declare-datatypes ((V!3515 0))(
  ( (V!3516 (val!1495 Int)) )
))
(declare-datatypes ((array!4832 0))(
  ( (array!4833 (arr!2284 (Array (_ BitVec 32) (_ BitVec 64))) (size!2555 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1107 0))(
  ( (ValueCellFull!1107 (v!3241 V!3515)) (EmptyCell!1107) )
))
(declare-datatypes ((array!4834 0))(
  ( (array!4835 (arr!2285 (Array (_ BitVec 32) ValueCell!1107)) (size!2556 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1122 0))(
  ( (LongMapFixedSize!1123 (defaultEntry!2913 Int) (mask!7239 (_ BitVec 32)) (extraKeys!2670 (_ BitVec 32)) (zeroValue!2764 V!3515) (minValue!2764 V!3515) (_size!610 (_ BitVec 32)) (_keys!4670 array!4832) (_values!2896 array!4834) (_vacant!610 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!910 0))(
  ( (Cell!911 (v!3242 LongMapFixedSize!1122)) )
))
(declare-datatypes ((LongMap!910 0))(
  ( (LongMap!911 (underlying!466 Cell!910)) )
))
(declare-fun thiss!992 () LongMap!910)

(declare-fun valid!534 (LongMap!910) Bool)

(assert (=> start!14588 (= res!66107 (valid!534 thiss!992))))

(assert (=> start!14588 e!89875))

(declare-fun e!89876 () Bool)

(assert (=> start!14588 e!89876))

(assert (=> start!14588 true))

(declare-fun e!89872 () Bool)

(assert (=> start!14588 e!89872))

(declare-fun b!137966 () Bool)

(declare-fun e!89868 () Bool)

(declare-fun e!89865 () Bool)

(declare-fun mapRes!4734 () Bool)

(assert (=> b!137966 (= e!89868 (and e!89865 mapRes!4734))))

(declare-fun condMapEmpty!4733 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!1122)

(declare-fun mapDefault!4733 () ValueCell!1107)

(assert (=> b!137966 (= condMapEmpty!4733 (= (arr!2285 (_values!2896 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1107)) mapDefault!4733)))))

(declare-fun mapIsEmpty!4734 () Bool)

(assert (=> mapIsEmpty!4734 mapRes!4734))

(declare-fun b!137967 () Bool)

(declare-fun res!66109 () Bool)

(assert (=> b!137967 (=> (not res!66109) (not e!89875))))

(declare-fun valid!535 (LongMapFixedSize!1122) Bool)

(assert (=> b!137967 (= res!66109 (valid!535 newMap!16))))

(declare-fun b!137968 () Bool)

(declare-fun e!89867 () Bool)

(assert (=> b!137968 (= e!89875 e!89867)))

(declare-fun res!66112 () Bool)

(assert (=> b!137968 (=> (not res!66112) (not e!89867))))

(declare-datatypes ((tuple2!2634 0))(
  ( (tuple2!2635 (_1!1327 (_ BitVec 64)) (_2!1327 V!3515)) )
))
(declare-datatypes ((List!1745 0))(
  ( (Nil!1742) (Cons!1741 (h!2348 tuple2!2634) (t!6277 List!1745)) )
))
(declare-datatypes ((ListLongMap!1721 0))(
  ( (ListLongMap!1722 (toList!876 List!1745)) )
))
(declare-fun lt!72228 () ListLongMap!1721)

(declare-fun lt!72227 () ListLongMap!1721)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!137968 (= res!66112 (and (= lt!72228 lt!72227) (not (= (select (arr!2284 (_keys!4670 (v!3242 (underlying!466 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2284 (_keys!4670 (v!3242 (underlying!466 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1419 (LongMapFixedSize!1122) ListLongMap!1721)

(assert (=> b!137968 (= lt!72227 (map!1419 newMap!16))))

(declare-fun getCurrentListMap!546 (array!4832 array!4834 (_ BitVec 32) (_ BitVec 32) V!3515 V!3515 (_ BitVec 32) Int) ListLongMap!1721)

(assert (=> b!137968 (= lt!72228 (getCurrentListMap!546 (_keys!4670 (v!3242 (underlying!466 thiss!992))) (_values!2896 (v!3242 (underlying!466 thiss!992))) (mask!7239 (v!3242 (underlying!466 thiss!992))) (extraKeys!2670 (v!3242 (underlying!466 thiss!992))) (zeroValue!2764 (v!3242 (underlying!466 thiss!992))) (minValue!2764 (v!3242 (underlying!466 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2913 (v!3242 (underlying!466 thiss!992)))))))

(declare-fun b!137969 () Bool)

(declare-fun e!89870 () Bool)

(declare-fun tp_is_empty!2901 () Bool)

(assert (=> b!137969 (= e!89870 tp_is_empty!2901)))

(declare-fun b!137970 () Bool)

(declare-fun res!66108 () Bool)

(assert (=> b!137970 (=> (not res!66108) (not e!89875))))

(assert (=> b!137970 (= res!66108 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7239 newMap!16)) (_size!610 (v!3242 (underlying!466 thiss!992)))))))

(declare-fun b!137971 () Bool)

(declare-fun e!89866 () Bool)

(declare-fun e!89878 () Bool)

(assert (=> b!137971 (= e!89866 (and e!89878 mapRes!4733))))

(declare-fun condMapEmpty!4734 () Bool)

(declare-fun mapDefault!4734 () ValueCell!1107)

(assert (=> b!137971 (= condMapEmpty!4734 (= (arr!2285 (_values!2896 (v!3242 (underlying!466 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1107)) mapDefault!4734)))))

(declare-fun b!137972 () Bool)

(declare-fun e!89877 () Bool)

(assert (=> b!137972 (= e!89877 tp_is_empty!2901)))

(declare-fun b!137973 () Bool)

(declare-fun res!66111 () Bool)

(assert (=> b!137973 (=> (not res!66111) (not e!89875))))

(assert (=> b!137973 (= res!66111 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2555 (_keys!4670 (v!3242 (underlying!466 thiss!992)))))))))

(declare-fun b!137974 () Bool)

(assert (=> b!137974 (= e!89878 tp_is_empty!2901)))

(declare-fun b!137975 () Bool)

(assert (=> b!137975 (= e!89865 tp_is_empty!2901)))

(declare-fun b!137976 () Bool)

(declare-fun e!89869 () Bool)

(assert (=> b!137976 (= e!89876 e!89869)))

(declare-fun b!137977 () Bool)

(declare-fun e!89871 () Bool)

(assert (=> b!137977 (= e!89871 (not (or (bvsge (size!2555 (_keys!4670 (v!3242 (underlying!466 thiss!992)))) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!2555 (_keys!4670 (v!3242 (underlying!466 thiss!992))))))))))

(declare-fun arrayContainsKey!0 (array!4832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!137977 (arrayContainsKey!0 (_keys!4670 (v!3242 (underlying!466 thiss!992))) (select (arr!2284 (_keys!4670 (v!3242 (underlying!466 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-datatypes ((Unit!4358 0))(
  ( (Unit!4359) )
))
(declare-fun lt!72230 () Unit!4358)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!136 (array!4832 array!4834 (_ BitVec 32) (_ BitVec 32) V!3515 V!3515 (_ BitVec 64) (_ BitVec 32) Int) Unit!4358)

(assert (=> b!137977 (= lt!72230 (lemmaListMapContainsThenArrayContainsFrom!136 (_keys!4670 (v!3242 (underlying!466 thiss!992))) (_values!2896 (v!3242 (underlying!466 thiss!992))) (mask!7239 (v!3242 (underlying!466 thiss!992))) (extraKeys!2670 (v!3242 (underlying!466 thiss!992))) (zeroValue!2764 (v!3242 (underlying!466 thiss!992))) (minValue!2764 (v!3242 (underlying!466 thiss!992))) (select (arr!2284 (_keys!4670 (v!3242 (underlying!466 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2913 (v!3242 (underlying!466 thiss!992)))))))

(declare-fun e!89879 () Bool)

(declare-fun array_inv!1409 (array!4832) Bool)

(declare-fun array_inv!1410 (array!4834) Bool)

(assert (=> b!137978 (= e!89879 (and tp!11369 tp_is_empty!2901 (array_inv!1409 (_keys!4670 (v!3242 (underlying!466 thiss!992)))) (array_inv!1410 (_values!2896 (v!3242 (underlying!466 thiss!992)))) e!89866))))

(declare-fun mapNonEmpty!4733 () Bool)

(declare-fun tp!11368 () Bool)

(assert (=> mapNonEmpty!4733 (= mapRes!4733 (and tp!11368 e!89877))))

(declare-fun mapValue!4733 () ValueCell!1107)

(declare-fun mapKey!4734 () (_ BitVec 32))

(declare-fun mapRest!4734 () (Array (_ BitVec 32) ValueCell!1107))

(assert (=> mapNonEmpty!4733 (= (arr!2285 (_values!2896 (v!3242 (underlying!466 thiss!992)))) (store mapRest!4734 mapKey!4734 mapValue!4733))))

(assert (=> b!137979 (= e!89872 (and tp!11367 tp_is_empty!2901 (array_inv!1409 (_keys!4670 newMap!16)) (array_inv!1410 (_values!2896 newMap!16)) e!89868))))

(declare-fun b!137980 () Bool)

(assert (=> b!137980 (= e!89869 e!89879)))

(declare-fun b!137981 () Bool)

(assert (=> b!137981 (= e!89867 e!89871)))

(declare-fun res!66110 () Bool)

(assert (=> b!137981 (=> (not res!66110) (not e!89871))))

(declare-fun contains!906 (ListLongMap!1721 (_ BitVec 64)) Bool)

(assert (=> b!137981 (= res!66110 (contains!906 lt!72227 (select (arr!2284 (_keys!4670 (v!3242 (underlying!466 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2636 0))(
  ( (tuple2!2637 (_1!1328 Bool) (_2!1328 LongMapFixedSize!1122)) )
))
(declare-fun lt!72229 () tuple2!2636)

(declare-fun update!198 (LongMapFixedSize!1122 (_ BitVec 64) V!3515) tuple2!2636)

(declare-fun get!1508 (ValueCell!1107 V!3515) V!3515)

(declare-fun dynLambda!431 (Int (_ BitVec 64)) V!3515)

(assert (=> b!137981 (= lt!72229 (update!198 newMap!16 (select (arr!2284 (_keys!4670 (v!3242 (underlying!466 thiss!992)))) from!355) (get!1508 (select (arr!2285 (_values!2896 (v!3242 (underlying!466 thiss!992)))) from!355) (dynLambda!431 (defaultEntry!2913 (v!3242 (underlying!466 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!4734 () Bool)

(declare-fun tp!11370 () Bool)

(assert (=> mapNonEmpty!4734 (= mapRes!4734 (and tp!11370 e!89870))))

(declare-fun mapValue!4734 () ValueCell!1107)

(declare-fun mapRest!4733 () (Array (_ BitVec 32) ValueCell!1107))

(declare-fun mapKey!4733 () (_ BitVec 32))

(assert (=> mapNonEmpty!4734 (= (arr!2285 (_values!2896 newMap!16)) (store mapRest!4733 mapKey!4733 mapValue!4734))))

(assert (= (and start!14588 res!66107) b!137973))

(assert (= (and b!137973 res!66111) b!137967))

(assert (= (and b!137967 res!66109) b!137970))

(assert (= (and b!137970 res!66108) b!137968))

(assert (= (and b!137968 res!66112) b!137981))

(assert (= (and b!137981 res!66110) b!137977))

(assert (= (and b!137971 condMapEmpty!4734) mapIsEmpty!4733))

(assert (= (and b!137971 (not condMapEmpty!4734)) mapNonEmpty!4733))

(get-info :version)

(assert (= (and mapNonEmpty!4733 ((_ is ValueCellFull!1107) mapValue!4733)) b!137972))

(assert (= (and b!137971 ((_ is ValueCellFull!1107) mapDefault!4734)) b!137974))

(assert (= b!137978 b!137971))

(assert (= b!137980 b!137978))

(assert (= b!137976 b!137980))

(assert (= start!14588 b!137976))

(assert (= (and b!137966 condMapEmpty!4733) mapIsEmpty!4734))

(assert (= (and b!137966 (not condMapEmpty!4733)) mapNonEmpty!4734))

(assert (= (and mapNonEmpty!4734 ((_ is ValueCellFull!1107) mapValue!4734)) b!137969))

(assert (= (and b!137966 ((_ is ValueCellFull!1107) mapDefault!4733)) b!137975))

(assert (= b!137979 b!137966))

(assert (= start!14588 b!137979))

(declare-fun b_lambda!6219 () Bool)

(assert (=> (not b_lambda!6219) (not b!137981)))

(declare-fun t!6274 () Bool)

(declare-fun tb!2493 () Bool)

(assert (=> (and b!137978 (= (defaultEntry!2913 (v!3242 (underlying!466 thiss!992))) (defaultEntry!2913 (v!3242 (underlying!466 thiss!992)))) t!6274) tb!2493))

(declare-fun result!4091 () Bool)

(assert (=> tb!2493 (= result!4091 tp_is_empty!2901)))

(assert (=> b!137981 t!6274))

(declare-fun b_and!8597 () Bool)

(assert (= b_and!8593 (and (=> t!6274 result!4091) b_and!8597)))

(declare-fun t!6276 () Bool)

(declare-fun tb!2495 () Bool)

(assert (=> (and b!137979 (= (defaultEntry!2913 newMap!16) (defaultEntry!2913 (v!3242 (underlying!466 thiss!992)))) t!6276) tb!2495))

(declare-fun result!4095 () Bool)

(assert (= result!4095 result!4091))

(assert (=> b!137981 t!6276))

(declare-fun b_and!8599 () Bool)

(assert (= b_and!8595 (and (=> t!6276 result!4095) b_and!8599)))

(declare-fun m!165281 () Bool)

(assert (=> b!137968 m!165281))

(declare-fun m!165283 () Bool)

(assert (=> b!137968 m!165283))

(declare-fun m!165285 () Bool)

(assert (=> b!137968 m!165285))

(declare-fun m!165287 () Bool)

(assert (=> b!137978 m!165287))

(declare-fun m!165289 () Bool)

(assert (=> b!137978 m!165289))

(declare-fun m!165291 () Bool)

(assert (=> start!14588 m!165291))

(assert (=> b!137977 m!165281))

(assert (=> b!137977 m!165281))

(declare-fun m!165293 () Bool)

(assert (=> b!137977 m!165293))

(assert (=> b!137977 m!165281))

(declare-fun m!165295 () Bool)

(assert (=> b!137977 m!165295))

(assert (=> b!137981 m!165281))

(declare-fun m!165297 () Bool)

(assert (=> b!137981 m!165297))

(declare-fun m!165299 () Bool)

(assert (=> b!137981 m!165299))

(declare-fun m!165301 () Bool)

(assert (=> b!137981 m!165301))

(declare-fun m!165303 () Bool)

(assert (=> b!137981 m!165303))

(assert (=> b!137981 m!165281))

(assert (=> b!137981 m!165301))

(assert (=> b!137981 m!165281))

(assert (=> b!137981 m!165303))

(declare-fun m!165305 () Bool)

(assert (=> b!137981 m!165305))

(assert (=> b!137981 m!165299))

(declare-fun m!165307 () Bool)

(assert (=> b!137979 m!165307))

(declare-fun m!165309 () Bool)

(assert (=> b!137979 m!165309))

(declare-fun m!165311 () Bool)

(assert (=> mapNonEmpty!4733 m!165311))

(declare-fun m!165313 () Bool)

(assert (=> b!137967 m!165313))

(declare-fun m!165315 () Bool)

(assert (=> mapNonEmpty!4734 m!165315))

(check-sat (not mapNonEmpty!4733) (not b!137979) (not b!137977) (not b!137981) b_and!8599 b_and!8597 (not b!137968) (not b_next!2969) tp_is_empty!2901 (not mapNonEmpty!4734) (not start!14588) (not b!137978) (not b_next!2971) (not b_lambda!6219) (not b!137967))
(check-sat b_and!8597 b_and!8599 (not b_next!2969) (not b_next!2971))
