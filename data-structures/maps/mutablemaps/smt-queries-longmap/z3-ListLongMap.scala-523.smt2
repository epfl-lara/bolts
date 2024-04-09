; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13142 () Bool)

(assert start!13142)

(declare-fun b!115284 () Bool)

(declare-fun b_free!2669 () Bool)

(declare-fun b_next!2669 () Bool)

(assert (=> b!115284 (= b_free!2669 (not b_next!2669))))

(declare-fun tp!10369 () Bool)

(declare-fun b_and!7161 () Bool)

(assert (=> b!115284 (= tp!10369 b_and!7161)))

(declare-fun b!115276 () Bool)

(declare-fun b_free!2671 () Bool)

(declare-fun b_next!2671 () Bool)

(assert (=> b!115276 (= b_free!2671 (not b_next!2671))))

(declare-fun tp!10372 () Bool)

(declare-fun b_and!7163 () Bool)

(assert (=> b!115276 (= tp!10372 b_and!7163)))

(declare-fun mapNonEmpty!4185 () Bool)

(declare-fun mapRes!4185 () Bool)

(declare-fun tp!10371 () Bool)

(declare-fun e!75105 () Bool)

(assert (=> mapNonEmpty!4185 (= mapRes!4185 (and tp!10371 e!75105))))

(declare-datatypes ((V!3315 0))(
  ( (V!3316 (val!1420 Int)) )
))
(declare-datatypes ((array!4504 0))(
  ( (array!4505 (arr!2134 (Array (_ BitVec 32) (_ BitVec 64))) (size!2394 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1032 0))(
  ( (ValueCellFull!1032 (v!3007 V!3315)) (EmptyCell!1032) )
))
(declare-datatypes ((array!4506 0))(
  ( (array!4507 (arr!2135 (Array (_ BitVec 32) ValueCell!1032)) (size!2395 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!972 0))(
  ( (LongMapFixedSize!973 (defaultEntry!2695 Int) (mask!6897 (_ BitVec 32)) (extraKeys!2484 (_ BitVec 32)) (zeroValue!2562 V!3315) (minValue!2562 V!3315) (_size!535 (_ BitVec 32)) (_keys!4417 array!4504) (_values!2678 array!4506) (_vacant!535 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!770 0))(
  ( (Cell!771 (v!3008 LongMapFixedSize!972)) )
))
(declare-datatypes ((LongMap!770 0))(
  ( (LongMap!771 (underlying!396 Cell!770)) )
))
(declare-fun thiss!992 () LongMap!770)

(declare-fun mapValue!4186 () ValueCell!1032)

(declare-fun mapKey!4185 () (_ BitVec 32))

(declare-fun mapRest!4186 () (Array (_ BitVec 32) ValueCell!1032))

(assert (=> mapNonEmpty!4185 (= (arr!2135 (_values!2678 (v!3008 (underlying!396 thiss!992)))) (store mapRest!4186 mapKey!4185 mapValue!4186))))

(declare-fun b!115274 () Bool)

(declare-fun e!75100 () Bool)

(declare-fun tp_is_empty!2751 () Bool)

(assert (=> b!115274 (= e!75100 tp_is_empty!2751)))

(declare-fun b!115275 () Bool)

(declare-fun res!56610 () Bool)

(declare-fun e!75101 () Bool)

(assert (=> b!115275 (=> (not res!56610) (not e!75101))))

(declare-fun newMap!16 () LongMapFixedSize!972)

(assert (=> b!115275 (= res!56610 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6897 newMap!16)) (_size!535 (v!3008 (underlying!396 thiss!992)))))))

(declare-fun mapIsEmpty!4185 () Bool)

(declare-fun mapRes!4186 () Bool)

(assert (=> mapIsEmpty!4185 mapRes!4186))

(declare-fun e!75095 () Bool)

(declare-fun e!75104 () Bool)

(declare-fun array_inv!1291 (array!4504) Bool)

(declare-fun array_inv!1292 (array!4506) Bool)

(assert (=> b!115276 (= e!75095 (and tp!10372 tp_is_empty!2751 (array_inv!1291 (_keys!4417 newMap!16)) (array_inv!1292 (_values!2678 newMap!16)) e!75104))))

(declare-fun b!115277 () Bool)

(declare-fun res!56608 () Bool)

(assert (=> b!115277 (=> (not res!56608) (not e!75101))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!115277 (= res!56608 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2394 (_keys!4417 (v!3008 (underlying!396 thiss!992)))))))))

(declare-fun b!115278 () Bool)

(declare-fun e!75102 () Bool)

(declare-fun e!75094 () Bool)

(assert (=> b!115278 (= e!75102 (and e!75094 mapRes!4185))))

(declare-fun condMapEmpty!4185 () Bool)

(declare-fun mapDefault!4185 () ValueCell!1032)

(assert (=> b!115278 (= condMapEmpty!4185 (= (arr!2135 (_values!2678 (v!3008 (underlying!396 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1032)) mapDefault!4185)))))

(declare-fun b!115279 () Bool)

(assert (=> b!115279 (= e!75104 (and e!75100 mapRes!4186))))

(declare-fun condMapEmpty!4186 () Bool)

(declare-fun mapDefault!4186 () ValueCell!1032)

(assert (=> b!115279 (= condMapEmpty!4186 (= (arr!2135 (_values!2678 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1032)) mapDefault!4186)))))

(declare-fun res!56609 () Bool)

(assert (=> start!13142 (=> (not res!56609) (not e!75101))))

(declare-fun valid!450 (LongMap!770) Bool)

(assert (=> start!13142 (= res!56609 (valid!450 thiss!992))))

(assert (=> start!13142 e!75101))

(declare-fun e!75098 () Bool)

(assert (=> start!13142 e!75098))

(assert (=> start!13142 true))

(assert (=> start!13142 e!75095))

(declare-fun b!115280 () Bool)

(assert (=> b!115280 (= e!75101 false)))

(declare-datatypes ((tuple2!2492 0))(
  ( (tuple2!2493 (_1!1256 (_ BitVec 64)) (_2!1256 V!3315)) )
))
(declare-datatypes ((List!1685 0))(
  ( (Nil!1682) (Cons!1681 (h!2281 tuple2!2492) (t!5951 List!1685)) )
))
(declare-datatypes ((ListLongMap!1631 0))(
  ( (ListLongMap!1632 (toList!831 List!1685)) )
))
(declare-fun lt!60056 () ListLongMap!1631)

(declare-fun map!1327 (LongMapFixedSize!972) ListLongMap!1631)

(assert (=> b!115280 (= lt!60056 (map!1327 newMap!16))))

(declare-fun lt!60057 () ListLongMap!1631)

(declare-fun getCurrentListMap!504 (array!4504 array!4506 (_ BitVec 32) (_ BitVec 32) V!3315 V!3315 (_ BitVec 32) Int) ListLongMap!1631)

(assert (=> b!115280 (= lt!60057 (getCurrentListMap!504 (_keys!4417 (v!3008 (underlying!396 thiss!992))) (_values!2678 (v!3008 (underlying!396 thiss!992))) (mask!6897 (v!3008 (underlying!396 thiss!992))) (extraKeys!2484 (v!3008 (underlying!396 thiss!992))) (zeroValue!2562 (v!3008 (underlying!396 thiss!992))) (minValue!2562 (v!3008 (underlying!396 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2695 (v!3008 (underlying!396 thiss!992)))))))

(declare-fun b!115281 () Bool)

(assert (=> b!115281 (= e!75105 tp_is_empty!2751)))

(declare-fun b!115282 () Bool)

(declare-fun e!75096 () Bool)

(assert (=> b!115282 (= e!75098 e!75096)))

(declare-fun b!115283 () Bool)

(declare-fun res!56611 () Bool)

(assert (=> b!115283 (=> (not res!56611) (not e!75101))))

(declare-fun valid!451 (LongMapFixedSize!972) Bool)

(assert (=> b!115283 (= res!56611 (valid!451 newMap!16))))

(declare-fun e!75099 () Bool)

(assert (=> b!115284 (= e!75099 (and tp!10369 tp_is_empty!2751 (array_inv!1291 (_keys!4417 (v!3008 (underlying!396 thiss!992)))) (array_inv!1292 (_values!2678 (v!3008 (underlying!396 thiss!992)))) e!75102))))

(declare-fun b!115285 () Bool)

(declare-fun e!75097 () Bool)

(assert (=> b!115285 (= e!75097 tp_is_empty!2751)))

(declare-fun mapIsEmpty!4186 () Bool)

(assert (=> mapIsEmpty!4186 mapRes!4185))

(declare-fun mapNonEmpty!4186 () Bool)

(declare-fun tp!10370 () Bool)

(assert (=> mapNonEmpty!4186 (= mapRes!4186 (and tp!10370 e!75097))))

(declare-fun mapKey!4186 () (_ BitVec 32))

(declare-fun mapRest!4185 () (Array (_ BitVec 32) ValueCell!1032))

(declare-fun mapValue!4185 () ValueCell!1032)

(assert (=> mapNonEmpty!4186 (= (arr!2135 (_values!2678 newMap!16)) (store mapRest!4185 mapKey!4186 mapValue!4185))))

(declare-fun b!115286 () Bool)

(assert (=> b!115286 (= e!75096 e!75099)))

(declare-fun b!115287 () Bool)

(assert (=> b!115287 (= e!75094 tp_is_empty!2751)))

(assert (= (and start!13142 res!56609) b!115277))

(assert (= (and b!115277 res!56608) b!115283))

(assert (= (and b!115283 res!56611) b!115275))

(assert (= (and b!115275 res!56610) b!115280))

(assert (= (and b!115278 condMapEmpty!4185) mapIsEmpty!4186))

(assert (= (and b!115278 (not condMapEmpty!4185)) mapNonEmpty!4185))

(get-info :version)

(assert (= (and mapNonEmpty!4185 ((_ is ValueCellFull!1032) mapValue!4186)) b!115281))

(assert (= (and b!115278 ((_ is ValueCellFull!1032) mapDefault!4185)) b!115287))

(assert (= b!115284 b!115278))

(assert (= b!115286 b!115284))

(assert (= b!115282 b!115286))

(assert (= start!13142 b!115282))

(assert (= (and b!115279 condMapEmpty!4186) mapIsEmpty!4185))

(assert (= (and b!115279 (not condMapEmpty!4186)) mapNonEmpty!4186))

(assert (= (and mapNonEmpty!4186 ((_ is ValueCellFull!1032) mapValue!4185)) b!115285))

(assert (= (and b!115279 ((_ is ValueCellFull!1032) mapDefault!4186)) b!115274))

(assert (= b!115276 b!115279))

(assert (= start!13142 b!115276))

(declare-fun m!131675 () Bool)

(assert (=> start!13142 m!131675))

(declare-fun m!131677 () Bool)

(assert (=> b!115276 m!131677))

(declare-fun m!131679 () Bool)

(assert (=> b!115276 m!131679))

(declare-fun m!131681 () Bool)

(assert (=> mapNonEmpty!4186 m!131681))

(declare-fun m!131683 () Bool)

(assert (=> b!115284 m!131683))

(declare-fun m!131685 () Bool)

(assert (=> b!115284 m!131685))

(declare-fun m!131687 () Bool)

(assert (=> b!115283 m!131687))

(declare-fun m!131689 () Bool)

(assert (=> mapNonEmpty!4185 m!131689))

(declare-fun m!131691 () Bool)

(assert (=> b!115280 m!131691))

(declare-fun m!131693 () Bool)

(assert (=> b!115280 m!131693))

(check-sat (not b!115280) (not mapNonEmpty!4185) (not b!115284) b_and!7163 tp_is_empty!2751 (not mapNonEmpty!4186) (not b!115283) (not b_next!2669) (not b!115276) (not start!13142) b_and!7161 (not b_next!2671))
(check-sat b_and!7161 b_and!7163 (not b_next!2669) (not b_next!2671))
