; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13446 () Bool)

(assert start!13446)

(declare-fun b!123224 () Bool)

(declare-fun b_free!2801 () Bool)

(declare-fun b_next!2801 () Bool)

(assert (=> b!123224 (= b_free!2801 (not b_next!2801))))

(declare-fun tp!10791 () Bool)

(declare-fun b_and!7577 () Bool)

(assert (=> b!123224 (= tp!10791 b_and!7577)))

(declare-fun b!123215 () Bool)

(declare-fun b_free!2803 () Bool)

(declare-fun b_next!2803 () Bool)

(assert (=> b!123215 (= b_free!2803 (not b_next!2803))))

(declare-fun tp!10792 () Bool)

(declare-fun b_and!7579 () Bool)

(assert (=> b!123215 (= tp!10792 b_and!7579)))

(declare-fun b!123214 () Bool)

(declare-fun e!80518 () Bool)

(assert (=> b!123214 (= e!80518 false)))

(declare-datatypes ((V!3403 0))(
  ( (V!3404 (val!1453 Int)) )
))
(declare-datatypes ((tuple2!2544 0))(
  ( (tuple2!2545 (_1!1282 (_ BitVec 64)) (_2!1282 V!3403)) )
))
(declare-datatypes ((List!1708 0))(
  ( (Nil!1705) (Cons!1704 (h!2305 tuple2!2544) (t!6019 List!1708)) )
))
(declare-datatypes ((ListLongMap!1669 0))(
  ( (ListLongMap!1670 (toList!850 List!1708)) )
))
(declare-fun lt!63457 () ListLongMap!1669)

(declare-datatypes ((array!4644 0))(
  ( (array!4645 (arr!2200 (Array (_ BitVec 32) (_ BitVec 64))) (size!2462 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1065 0))(
  ( (ValueCellFull!1065 (v!3082 V!3403)) (EmptyCell!1065) )
))
(declare-datatypes ((array!4646 0))(
  ( (array!4647 (arr!2201 (Array (_ BitVec 32) ValueCell!1065)) (size!2463 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1038 0))(
  ( (LongMapFixedSize!1039 (defaultEntry!2752 Int) (mask!6988 (_ BitVec 32)) (extraKeys!2537 (_ BitVec 32)) (zeroValue!2617 V!3403) (minValue!2617 V!3403) (_size!568 (_ BitVec 32)) (_keys!4479 array!4644) (_values!2735 array!4646) (_vacant!568 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1038)

(declare-fun map!1368 (LongMapFixedSize!1038) ListLongMap!1669)

(assert (=> b!123214 (= lt!63457 (map!1368 newMap!16))))

(declare-fun lt!63456 () ListLongMap!1669)

(declare-datatypes ((Cell!830 0))(
  ( (Cell!831 (v!3083 LongMapFixedSize!1038)) )
))
(declare-datatypes ((LongMap!830 0))(
  ( (LongMap!831 (underlying!426 Cell!830)) )
))
(declare-fun thiss!992 () LongMap!830)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!523 (array!4644 array!4646 (_ BitVec 32) (_ BitVec 32) V!3403 V!3403 (_ BitVec 32) Int) ListLongMap!1669)

(assert (=> b!123214 (= lt!63456 (getCurrentListMap!523 (_keys!4479 (v!3083 (underlying!426 thiss!992))) (_values!2735 (v!3083 (underlying!426 thiss!992))) (mask!6988 (v!3083 (underlying!426 thiss!992))) (extraKeys!2537 (v!3083 (underlying!426 thiss!992))) (zeroValue!2617 (v!3083 (underlying!426 thiss!992))) (minValue!2617 (v!3083 (underlying!426 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2752 (v!3083 (underlying!426 thiss!992)))))))

(declare-fun b!123216 () Bool)

(declare-fun res!59855 () Bool)

(assert (=> b!123216 (=> (not res!59855) (not e!80518))))

(declare-fun valid!489 (LongMapFixedSize!1038) Bool)

(assert (=> b!123216 (= res!59855 (valid!489 newMap!16))))

(declare-fun b!123217 () Bool)

(declare-fun res!59856 () Bool)

(assert (=> b!123217 (=> (not res!59856) (not e!80518))))

(assert (=> b!123217 (= res!59856 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6988 newMap!16)) (_size!568 (v!3083 (underlying!426 thiss!992)))))))

(declare-fun b!123218 () Bool)

(declare-fun e!80511 () Bool)

(declare-fun e!80513 () Bool)

(assert (=> b!123218 (= e!80511 e!80513)))

(declare-fun b!123219 () Bool)

(declare-fun e!80507 () Bool)

(declare-fun tp_is_empty!2817 () Bool)

(assert (=> b!123219 (= e!80507 tp_is_empty!2817)))

(declare-fun b!123220 () Bool)

(declare-fun res!59854 () Bool)

(assert (=> b!123220 (=> (not res!59854) (not e!80518))))

(assert (=> b!123220 (= res!59854 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2462 (_keys!4479 (v!3083 (underlying!426 thiss!992)))))))))

(declare-fun b!123221 () Bool)

(declare-fun e!80512 () Bool)

(assert (=> b!123221 (= e!80512 tp_is_empty!2817)))

(declare-fun b!123222 () Bool)

(declare-fun e!80509 () Bool)

(declare-fun e!80517 () Bool)

(declare-fun mapRes!4407 () Bool)

(assert (=> b!123222 (= e!80509 (and e!80517 mapRes!4407))))

(declare-fun condMapEmpty!4408 () Bool)

(declare-fun mapDefault!4408 () ValueCell!1065)

(assert (=> b!123222 (= condMapEmpty!4408 (= (arr!2201 (_values!2735 (v!3083 (underlying!426 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1065)) mapDefault!4408)))))

(declare-fun b!123223 () Bool)

(declare-fun e!80508 () Bool)

(declare-fun e!80519 () Bool)

(declare-fun mapRes!4408 () Bool)

(assert (=> b!123223 (= e!80508 (and e!80519 mapRes!4408))))

(declare-fun condMapEmpty!4407 () Bool)

(declare-fun mapDefault!4407 () ValueCell!1065)

(assert (=> b!123223 (= condMapEmpty!4407 (= (arr!2201 (_values!2735 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1065)) mapDefault!4407)))))

(declare-fun array_inv!1343 (array!4644) Bool)

(declare-fun array_inv!1344 (array!4646) Bool)

(assert (=> b!123224 (= e!80513 (and tp!10791 tp_is_empty!2817 (array_inv!1343 (_keys!4479 (v!3083 (underlying!426 thiss!992)))) (array_inv!1344 (_values!2735 (v!3083 (underlying!426 thiss!992)))) e!80509))))

(declare-fun mapNonEmpty!4407 () Bool)

(declare-fun tp!10790 () Bool)

(assert (=> mapNonEmpty!4407 (= mapRes!4408 (and tp!10790 e!80507))))

(declare-fun mapValue!4408 () ValueCell!1065)

(declare-fun mapRest!4408 () (Array (_ BitVec 32) ValueCell!1065))

(declare-fun mapKey!4407 () (_ BitVec 32))

(assert (=> mapNonEmpty!4407 (= (arr!2201 (_values!2735 newMap!16)) (store mapRest!4408 mapKey!4407 mapValue!4408))))

(declare-fun b!123225 () Bool)

(declare-fun e!80516 () Bool)

(assert (=> b!123225 (= e!80516 e!80511)))

(declare-fun mapIsEmpty!4407 () Bool)

(assert (=> mapIsEmpty!4407 mapRes!4407))

(declare-fun e!80515 () Bool)

(assert (=> b!123215 (= e!80515 (and tp!10792 tp_is_empty!2817 (array_inv!1343 (_keys!4479 newMap!16)) (array_inv!1344 (_values!2735 newMap!16)) e!80508))))

(declare-fun res!59853 () Bool)

(assert (=> start!13446 (=> (not res!59853) (not e!80518))))

(declare-fun valid!490 (LongMap!830) Bool)

(assert (=> start!13446 (= res!59853 (valid!490 thiss!992))))

(assert (=> start!13446 e!80518))

(assert (=> start!13446 e!80516))

(assert (=> start!13446 true))

(assert (=> start!13446 e!80515))

(declare-fun mapNonEmpty!4408 () Bool)

(declare-fun tp!10789 () Bool)

(assert (=> mapNonEmpty!4408 (= mapRes!4407 (and tp!10789 e!80512))))

(declare-fun mapValue!4407 () ValueCell!1065)

(declare-fun mapKey!4408 () (_ BitVec 32))

(declare-fun mapRest!4407 () (Array (_ BitVec 32) ValueCell!1065))

(assert (=> mapNonEmpty!4408 (= (arr!2201 (_values!2735 (v!3083 (underlying!426 thiss!992)))) (store mapRest!4407 mapKey!4408 mapValue!4407))))

(declare-fun mapIsEmpty!4408 () Bool)

(assert (=> mapIsEmpty!4408 mapRes!4408))

(declare-fun b!123226 () Bool)

(assert (=> b!123226 (= e!80517 tp_is_empty!2817)))

(declare-fun b!123227 () Bool)

(assert (=> b!123227 (= e!80519 tp_is_empty!2817)))

(assert (= (and start!13446 res!59853) b!123220))

(assert (= (and b!123220 res!59854) b!123216))

(assert (= (and b!123216 res!59855) b!123217))

(assert (= (and b!123217 res!59856) b!123214))

(assert (= (and b!123222 condMapEmpty!4408) mapIsEmpty!4407))

(assert (= (and b!123222 (not condMapEmpty!4408)) mapNonEmpty!4408))

(get-info :version)

(assert (= (and mapNonEmpty!4408 ((_ is ValueCellFull!1065) mapValue!4407)) b!123221))

(assert (= (and b!123222 ((_ is ValueCellFull!1065) mapDefault!4408)) b!123226))

(assert (= b!123224 b!123222))

(assert (= b!123218 b!123224))

(assert (= b!123225 b!123218))

(assert (= start!13446 b!123225))

(assert (= (and b!123223 condMapEmpty!4407) mapIsEmpty!4408))

(assert (= (and b!123223 (not condMapEmpty!4407)) mapNonEmpty!4407))

(assert (= (and mapNonEmpty!4407 ((_ is ValueCellFull!1065) mapValue!4408)) b!123219))

(assert (= (and b!123223 ((_ is ValueCellFull!1065) mapDefault!4407)) b!123227))

(assert (= b!123215 b!123223))

(assert (= start!13446 b!123215))

(declare-fun m!143327 () Bool)

(assert (=> mapNonEmpty!4408 m!143327))

(declare-fun m!143329 () Bool)

(assert (=> mapNonEmpty!4407 m!143329))

(declare-fun m!143331 () Bool)

(assert (=> start!13446 m!143331))

(declare-fun m!143333 () Bool)

(assert (=> b!123214 m!143333))

(declare-fun m!143335 () Bool)

(assert (=> b!123214 m!143335))

(declare-fun m!143337 () Bool)

(assert (=> b!123215 m!143337))

(declare-fun m!143339 () Bool)

(assert (=> b!123215 m!143339))

(declare-fun m!143341 () Bool)

(assert (=> b!123216 m!143341))

(declare-fun m!143343 () Bool)

(assert (=> b!123224 m!143343))

(declare-fun m!143345 () Bool)

(assert (=> b!123224 m!143345))

(check-sat (not b!123214) tp_is_empty!2817 (not b_next!2803) (not b_next!2801) (not b!123215) (not start!13446) (not mapNonEmpty!4407) (not mapNonEmpty!4408) b_and!7579 (not b!123224) (not b!123216) b_and!7577)
(check-sat b_and!7577 b_and!7579 (not b_next!2801) (not b_next!2803))
