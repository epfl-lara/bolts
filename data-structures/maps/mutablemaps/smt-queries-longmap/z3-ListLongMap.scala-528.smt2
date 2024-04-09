; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13210 () Bool)

(assert start!13210)

(declare-fun b!116257 () Bool)

(declare-fun b_free!2729 () Bool)

(declare-fun b_next!2729 () Bool)

(assert (=> b!116257 (= b_free!2729 (not b_next!2729))))

(declare-fun tp!10558 () Bool)

(declare-fun b_and!7249 () Bool)

(assert (=> b!116257 (= tp!10558 b_and!7249)))

(declare-fun b!116252 () Bool)

(declare-fun b_free!2731 () Bool)

(declare-fun b_next!2731 () Bool)

(assert (=> b!116252 (= b_free!2731 (not b_next!2731))))

(declare-fun tp!10557 () Bool)

(declare-fun b_and!7251 () Bool)

(assert (=> b!116252 (= tp!10557 b_and!7251)))

(declare-fun b!116245 () Bool)

(declare-fun e!75882 () Bool)

(declare-fun e!75883 () Bool)

(declare-fun mapRes!4281 () Bool)

(assert (=> b!116245 (= e!75882 (and e!75883 mapRes!4281))))

(declare-fun condMapEmpty!4281 () Bool)

(declare-datatypes ((V!3355 0))(
  ( (V!3356 (val!1435 Int)) )
))
(declare-datatypes ((array!4566 0))(
  ( (array!4567 (arr!2164 (Array (_ BitVec 32) (_ BitVec 64))) (size!2425 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1047 0))(
  ( (ValueCellFull!1047 (v!3036 V!3355)) (EmptyCell!1047) )
))
(declare-datatypes ((array!4568 0))(
  ( (array!4569 (arr!2165 (Array (_ BitVec 32) ValueCell!1047)) (size!2426 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1002 0))(
  ( (LongMapFixedSize!1003 (defaultEntry!2712 Int) (mask!6926 (_ BitVec 32)) (extraKeys!2501 (_ BitVec 32)) (zeroValue!2579 V!3355) (minValue!2579 V!3355) (_size!550 (_ BitVec 32)) (_keys!4435 array!4566) (_values!2695 array!4568) (_vacant!550 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1002)

(declare-fun mapDefault!4282 () ValueCell!1047)

(assert (=> b!116245 (= condMapEmpty!4281 (= (arr!2165 (_values!2695 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1047)) mapDefault!4282)))))

(declare-fun b!116246 () Bool)

(declare-fun e!75879 () Bool)

(declare-fun e!75884 () Bool)

(declare-fun mapRes!4282 () Bool)

(assert (=> b!116246 (= e!75879 (and e!75884 mapRes!4282))))

(declare-fun condMapEmpty!4282 () Bool)

(declare-datatypes ((Cell!796 0))(
  ( (Cell!797 (v!3037 LongMapFixedSize!1002)) )
))
(declare-datatypes ((LongMap!796 0))(
  ( (LongMap!797 (underlying!409 Cell!796)) )
))
(declare-fun thiss!992 () LongMap!796)

(declare-fun mapDefault!4281 () ValueCell!1047)

(assert (=> b!116246 (= condMapEmpty!4282 (= (arr!2165 (_values!2695 (v!3037 (underlying!409 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1047)) mapDefault!4281)))))

(declare-fun b!116247 () Bool)

(declare-fun e!75885 () Bool)

(declare-fun e!75890 () Bool)

(assert (=> b!116247 (= e!75885 e!75890)))

(declare-fun b!116248 () Bool)

(declare-fun tp_is_empty!2781 () Bool)

(assert (=> b!116248 (= e!75883 tp_is_empty!2781)))

(declare-fun mapNonEmpty!4281 () Bool)

(declare-fun tp!10555 () Bool)

(declare-fun e!75886 () Bool)

(assert (=> mapNonEmpty!4281 (= mapRes!4282 (and tp!10555 e!75886))))

(declare-fun mapRest!4282 () (Array (_ BitVec 32) ValueCell!1047))

(declare-fun mapKey!4281 () (_ BitVec 32))

(declare-fun mapValue!4282 () ValueCell!1047)

(assert (=> mapNonEmpty!4281 (= (arr!2165 (_values!2695 (v!3037 (underlying!409 thiss!992)))) (store mapRest!4282 mapKey!4281 mapValue!4282))))

(declare-fun b!116249 () Bool)

(declare-fun e!75889 () Bool)

(assert (=> b!116249 (= e!75890 e!75889)))

(declare-fun b!116250 () Bool)

(declare-fun e!75881 () Bool)

(assert (=> b!116250 (= e!75881 tp_is_empty!2781)))

(declare-fun mapIsEmpty!4281 () Bool)

(assert (=> mapIsEmpty!4281 mapRes!4282))

(declare-fun b!116251 () Bool)

(declare-fun res!56971 () Bool)

(declare-fun e!75878 () Bool)

(assert (=> b!116251 (=> (not res!56971) (not e!75878))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!116251 (= res!56971 (and (or (= (select (arr!2164 (_keys!4435 (v!3037 (underlying!409 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!2164 (_keys!4435 (v!3037 (underlying!409 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun e!75891 () Bool)

(declare-fun array_inv!1311 (array!4566) Bool)

(declare-fun array_inv!1312 (array!4568) Bool)

(assert (=> b!116252 (= e!75891 (and tp!10557 tp_is_empty!2781 (array_inv!1311 (_keys!4435 newMap!16)) (array_inv!1312 (_values!2695 newMap!16)) e!75882))))

(declare-fun mapIsEmpty!4282 () Bool)

(assert (=> mapIsEmpty!4282 mapRes!4281))

(declare-fun b!116254 () Bool)

(assert (=> b!116254 (= e!75886 tp_is_empty!2781)))

(declare-fun b!116255 () Bool)

(assert (=> b!116255 (= e!75884 tp_is_empty!2781)))

(declare-fun mapNonEmpty!4282 () Bool)

(declare-fun tp!10556 () Bool)

(assert (=> mapNonEmpty!4282 (= mapRes!4281 (and tp!10556 e!75881))))

(declare-fun mapKey!4282 () (_ BitVec 32))

(declare-fun mapValue!4281 () ValueCell!1047)

(declare-fun mapRest!4281 () (Array (_ BitVec 32) ValueCell!1047))

(assert (=> mapNonEmpty!4282 (= (arr!2165 (_values!2695 newMap!16)) (store mapRest!4281 mapKey!4282 mapValue!4281))))

(declare-fun b!116256 () Bool)

(declare-fun res!56970 () Bool)

(assert (=> b!116256 (=> (not res!56970) (not e!75878))))

(assert (=> b!116256 (= res!56970 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6926 newMap!16)) (_size!550 (v!3037 (underlying!409 thiss!992)))))))

(assert (=> b!116257 (= e!75889 (and tp!10558 tp_is_empty!2781 (array_inv!1311 (_keys!4435 (v!3037 (underlying!409 thiss!992)))) (array_inv!1312 (_values!2695 (v!3037 (underlying!409 thiss!992)))) e!75879))))

(declare-fun b!116258 () Bool)

(declare-fun res!56969 () Bool)

(assert (=> b!116258 (=> (not res!56969) (not e!75878))))

(assert (=> b!116258 (= res!56969 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2425 (_keys!4435 (v!3037 (underlying!409 thiss!992)))))))))

(declare-fun b!116259 () Bool)

(declare-fun res!56973 () Bool)

(assert (=> b!116259 (=> (not res!56973) (not e!75878))))

(declare-fun valid!467 (LongMapFixedSize!1002) Bool)

(assert (=> b!116259 (= res!56973 (valid!467 newMap!16))))

(declare-fun res!56968 () Bool)

(assert (=> start!13210 (=> (not res!56968) (not e!75878))))

(declare-fun valid!468 (LongMap!796) Bool)

(assert (=> start!13210 (= res!56968 (valid!468 thiss!992))))

(assert (=> start!13210 e!75878))

(assert (=> start!13210 e!75885))

(assert (=> start!13210 true))

(assert (=> start!13210 e!75891))

(declare-fun b!116253 () Bool)

(declare-fun res!56972 () Bool)

(assert (=> b!116253 (=> (not res!56972) (not e!75878))))

(declare-datatypes ((tuple2!2510 0))(
  ( (tuple2!2511 (_1!1265 (_ BitVec 64)) (_2!1265 V!3355)) )
))
(declare-datatypes ((List!1695 0))(
  ( (Nil!1692) (Cons!1691 (h!2291 tuple2!2510) (t!5969 List!1695)) )
))
(declare-datatypes ((ListLongMap!1649 0))(
  ( (ListLongMap!1650 (toList!840 List!1695)) )
))
(declare-fun getCurrentListMap!513 (array!4566 array!4568 (_ BitVec 32) (_ BitVec 32) V!3355 V!3355 (_ BitVec 32) Int) ListLongMap!1649)

(declare-fun map!1346 (LongMapFixedSize!1002) ListLongMap!1649)

(assert (=> b!116253 (= res!56972 (= (getCurrentListMap!513 (_keys!4435 (v!3037 (underlying!409 thiss!992))) (_values!2695 (v!3037 (underlying!409 thiss!992))) (mask!6926 (v!3037 (underlying!409 thiss!992))) (extraKeys!2501 (v!3037 (underlying!409 thiss!992))) (zeroValue!2579 (v!3037 (underlying!409 thiss!992))) (minValue!2579 (v!3037 (underlying!409 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2712 (v!3037 (underlying!409 thiss!992)))) (map!1346 newMap!16)))))

(declare-fun b!116260 () Bool)

(declare-fun e!75888 () Bool)

(assert (=> b!116260 (= e!75888 false)))

(declare-fun lt!60387 () Bool)

(declare-datatypes ((tuple2!2512 0))(
  ( (tuple2!2513 (_1!1266 Bool) (_2!1266 LongMapFixedSize!1002)) )
))
(declare-fun lt!60386 () tuple2!2512)

(assert (=> b!116260 (= lt!60387 (valid!467 (_2!1266 lt!60386)))))

(declare-fun b!116261 () Bool)

(assert (=> b!116261 (= e!75878 e!75888)))

(declare-fun res!56967 () Bool)

(assert (=> b!116261 (=> (not res!56967) (not e!75888))))

(assert (=> b!116261 (= res!56967 (_1!1266 lt!60386))))

(declare-fun repackFrom!12 (LongMap!796 LongMapFixedSize!1002 (_ BitVec 32)) tuple2!2512)

(assert (=> b!116261 (= lt!60386 (repackFrom!12 thiss!992 newMap!16 (bvsub from!355 #b00000000000000000000000000000001)))))

(assert (= (and start!13210 res!56968) b!116258))

(assert (= (and b!116258 res!56969) b!116259))

(assert (= (and b!116259 res!56973) b!116256))

(assert (= (and b!116256 res!56970) b!116253))

(assert (= (and b!116253 res!56972) b!116251))

(assert (= (and b!116251 res!56971) b!116261))

(assert (= (and b!116261 res!56967) b!116260))

(assert (= (and b!116246 condMapEmpty!4282) mapIsEmpty!4281))

(assert (= (and b!116246 (not condMapEmpty!4282)) mapNonEmpty!4281))

(get-info :version)

(assert (= (and mapNonEmpty!4281 ((_ is ValueCellFull!1047) mapValue!4282)) b!116254))

(assert (= (and b!116246 ((_ is ValueCellFull!1047) mapDefault!4281)) b!116255))

(assert (= b!116257 b!116246))

(assert (= b!116249 b!116257))

(assert (= b!116247 b!116249))

(assert (= start!13210 b!116247))

(assert (= (and b!116245 condMapEmpty!4281) mapIsEmpty!4282))

(assert (= (and b!116245 (not condMapEmpty!4281)) mapNonEmpty!4282))

(assert (= (and mapNonEmpty!4282 ((_ is ValueCellFull!1047) mapValue!4281)) b!116250))

(assert (= (and b!116245 ((_ is ValueCellFull!1047) mapDefault!4282)) b!116248))

(assert (= b!116252 b!116245))

(assert (= start!13210 b!116252))

(declare-fun m!132567 () Bool)

(assert (=> b!116261 m!132567))

(declare-fun m!132569 () Bool)

(assert (=> mapNonEmpty!4281 m!132569))

(declare-fun m!132571 () Bool)

(assert (=> b!116257 m!132571))

(declare-fun m!132573 () Bool)

(assert (=> b!116257 m!132573))

(declare-fun m!132575 () Bool)

(assert (=> b!116253 m!132575))

(declare-fun m!132577 () Bool)

(assert (=> b!116253 m!132577))

(declare-fun m!132579 () Bool)

(assert (=> b!116259 m!132579))

(declare-fun m!132581 () Bool)

(assert (=> b!116260 m!132581))

(declare-fun m!132583 () Bool)

(assert (=> start!13210 m!132583))

(declare-fun m!132585 () Bool)

(assert (=> b!116251 m!132585))

(declare-fun m!132587 () Bool)

(assert (=> mapNonEmpty!4282 m!132587))

(declare-fun m!132589 () Bool)

(assert (=> b!116252 m!132589))

(declare-fun m!132591 () Bool)

(assert (=> b!116252 m!132591))

(check-sat b_and!7251 (not mapNonEmpty!4282) (not b!116261) (not b!116253) (not b!116257) (not b!116252) (not b!116259) (not b_next!2729) (not b!116260) (not start!13210) tp_is_empty!2781 (not b_next!2731) b_and!7249 (not mapNonEmpty!4281))
(check-sat b_and!7249 b_and!7251 (not b_next!2729) (not b_next!2731))
