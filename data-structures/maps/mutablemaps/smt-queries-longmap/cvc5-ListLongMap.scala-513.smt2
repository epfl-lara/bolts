; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12530 () Bool)

(assert start!12530)

(declare-fun b!107635 () Bool)

(declare-fun b_free!2545 () Bool)

(declare-fun b_next!2545 () Bool)

(assert (=> b!107635 (= b_free!2545 (not b_next!2545))))

(declare-fun tp!9968 () Bool)

(declare-fun b_and!6653 () Bool)

(assert (=> b!107635 (= tp!9968 b_and!6653)))

(declare-fun b!107639 () Bool)

(declare-fun b_free!2547 () Bool)

(declare-fun b_next!2547 () Bool)

(assert (=> b!107639 (= b_free!2547 (not b_next!2547))))

(declare-fun tp!9965 () Bool)

(declare-fun b_and!6655 () Bool)

(assert (=> b!107639 (= tp!9965 b_and!6655)))

(declare-fun mapIsEmpty!3967 () Bool)

(declare-fun mapRes!3967 () Bool)

(assert (=> mapIsEmpty!3967 mapRes!3967))

(declare-fun b!107627 () Bool)

(declare-fun e!70077 () Bool)

(declare-fun e!70066 () Bool)

(assert (=> b!107627 (= e!70077 e!70066)))

(declare-fun res!53425 () Bool)

(assert (=> b!107627 (=> (not res!53425) (not e!70066))))

(declare-datatypes ((V!3233 0))(
  ( (V!3234 (val!1389 Int)) )
))
(declare-datatypes ((tuple2!2418 0))(
  ( (tuple2!2419 (_1!1219 (_ BitVec 64)) (_2!1219 V!3233)) )
))
(declare-datatypes ((List!1646 0))(
  ( (Nil!1643) (Cons!1642 (h!2240 tuple2!2418) (t!5770 List!1646)) )
))
(declare-datatypes ((ListLongMap!1589 0))(
  ( (ListLongMap!1590 (toList!810 List!1646)) )
))
(declare-fun lt!55216 () ListLongMap!1589)

(declare-fun lt!55217 () ListLongMap!1589)

(assert (=> b!107627 (= res!53425 (= lt!55216 lt!55217))))

(declare-datatypes ((array!4370 0))(
  ( (array!4371 (arr!2072 (Array (_ BitVec 32) (_ BitVec 64))) (size!2328 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1001 0))(
  ( (ValueCellFull!1001 (v!2910 V!3233)) (EmptyCell!1001) )
))
(declare-datatypes ((array!4372 0))(
  ( (array!4373 (arr!2073 (Array (_ BitVec 32) ValueCell!1001)) (size!2329 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!910 0))(
  ( (LongMapFixedSize!911 (defaultEntry!2605 Int) (mask!6763 (_ BitVec 32)) (extraKeys!2406 (_ BitVec 32)) (zeroValue!2478 V!3233) (minValue!2478 V!3233) (_size!504 (_ BitVec 32)) (_keys!4315 array!4370) (_values!2588 array!4372) (_vacant!504 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!910)

(declare-fun map!1289 (LongMapFixedSize!910) ListLongMap!1589)

(assert (=> b!107627 (= lt!55217 (map!1289 newMap!16))))

(declare-datatypes ((Cell!710 0))(
  ( (Cell!711 (v!2911 LongMapFixedSize!910)) )
))
(declare-datatypes ((LongMap!710 0))(
  ( (LongMap!711 (underlying!366 Cell!710)) )
))
(declare-fun thiss!992 () LongMap!710)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!486 (array!4370 array!4372 (_ BitVec 32) (_ BitVec 32) V!3233 V!3233 (_ BitVec 32) Int) ListLongMap!1589)

(assert (=> b!107627 (= lt!55216 (getCurrentListMap!486 (_keys!4315 (v!2911 (underlying!366 thiss!992))) (_values!2588 (v!2911 (underlying!366 thiss!992))) (mask!6763 (v!2911 (underlying!366 thiss!992))) (extraKeys!2406 (v!2911 (underlying!366 thiss!992))) (zeroValue!2478 (v!2911 (underlying!366 thiss!992))) (minValue!2478 (v!2911 (underlying!366 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2605 (v!2911 (underlying!366 thiss!992)))))))

(declare-fun b!107628 () Bool)

(declare-datatypes ((Unit!3336 0))(
  ( (Unit!3337) )
))
(declare-fun e!70063 () Unit!3336)

(declare-fun Unit!3338 () Unit!3336)

(assert (=> b!107628 (= e!70063 Unit!3338)))

(declare-fun b!107629 () Bool)

(declare-fun e!70061 () Bool)

(declare-fun e!70078 () Bool)

(assert (=> b!107629 (= e!70061 e!70078)))

(declare-fun res!53420 () Bool)

(assert (=> b!107629 (=> (not res!53420) (not e!70078))))

(declare-datatypes ((tuple2!2420 0))(
  ( (tuple2!2421 (_1!1220 Bool) (_2!1220 LongMapFixedSize!910)) )
))
(declare-fun lt!55213 () tuple2!2420)

(assert (=> b!107629 (= res!53420 (and (_1!1220 lt!55213) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!55211 () Unit!3336)

(assert (=> b!107629 (= lt!55211 e!70063)))

(declare-fun c!18881 () Bool)

(declare-fun contains!833 (ListLongMap!1589 (_ BitVec 64)) Bool)

(assert (=> b!107629 (= c!18881 (contains!833 lt!55217 (select (arr!2072 (_keys!4315 (v!2911 (underlying!366 thiss!992)))) from!355)))))

(declare-fun lt!55219 () V!3233)

(declare-fun update!160 (LongMapFixedSize!910 (_ BitVec 64) V!3233) tuple2!2420)

(assert (=> b!107629 (= lt!55213 (update!160 newMap!16 (select (arr!2072 (_keys!4315 (v!2911 (underlying!366 thiss!992)))) from!355) lt!55219))))

(declare-fun mapIsEmpty!3968 () Bool)

(declare-fun mapRes!3968 () Bool)

(assert (=> mapIsEmpty!3968 mapRes!3968))

(declare-fun b!107630 () Bool)

(declare-fun res!53421 () Bool)

(assert (=> b!107630 (=> (not res!53421) (not e!70077))))

(assert (=> b!107630 (= res!53421 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6763 newMap!16)) (_size!504 (v!2911 (underlying!366 thiss!992)))))))

(declare-fun b!107631 () Bool)

(declare-fun res!53423 () Bool)

(assert (=> b!107631 (=> (not res!53423) (not e!70077))))

(assert (=> b!107631 (= res!53423 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2328 (_keys!4315 (v!2911 (underlying!366 thiss!992)))))))))

(declare-fun b!107632 () Bool)

(declare-fun e!70075 () Bool)

(declare-fun tp_is_empty!2689 () Bool)

(assert (=> b!107632 (= e!70075 tp_is_empty!2689)))

(declare-fun b!107633 () Bool)

(declare-fun e!70076 () Bool)

(assert (=> b!107633 (= e!70076 (or (not (= (size!2329 (_values!2588 (v!2911 (underlying!366 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6763 (v!2911 (underlying!366 thiss!992)))))) (not (= (size!2328 (_keys!4315 (v!2911 (underlying!366 thiss!992)))) (size!2329 (_values!2588 (v!2911 (underlying!366 thiss!992)))))) (bvslt (mask!6763 (v!2911 (underlying!366 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2406 (v!2911 (underlying!366 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!3967 () Bool)

(declare-fun tp!9967 () Bool)

(declare-fun e!70064 () Bool)

(assert (=> mapNonEmpty!3967 (= mapRes!3967 (and tp!9967 e!70064))))

(declare-fun mapKey!3968 () (_ BitVec 32))

(declare-fun mapRest!3967 () (Array (_ BitVec 32) ValueCell!1001))

(declare-fun mapValue!3967 () ValueCell!1001)

(assert (=> mapNonEmpty!3967 (= (arr!2073 (_values!2588 (v!2911 (underlying!366 thiss!992)))) (store mapRest!3967 mapKey!3968 mapValue!3967))))

(declare-fun b!107634 () Bool)

(declare-fun e!70065 () Bool)

(assert (=> b!107634 (= e!70065 tp_is_empty!2689)))

(declare-fun e!70062 () Bool)

(declare-fun e!70074 () Bool)

(declare-fun array_inv!1247 (array!4370) Bool)

(declare-fun array_inv!1248 (array!4372) Bool)

(assert (=> b!107635 (= e!70062 (and tp!9968 tp_is_empty!2689 (array_inv!1247 (_keys!4315 (v!2911 (underlying!366 thiss!992)))) (array_inv!1248 (_values!2588 (v!2911 (underlying!366 thiss!992)))) e!70074))))

(declare-fun b!107636 () Bool)

(assert (=> b!107636 (= e!70064 tp_is_empty!2689)))

(declare-fun b!107637 () Bool)

(declare-fun res!53419 () Bool)

(assert (=> b!107637 (=> (not res!53419) (not e!70077))))

(declare-fun valid!414 (LongMapFixedSize!910) Bool)

(assert (=> b!107637 (= res!53419 (valid!414 newMap!16))))

(declare-fun b!107638 () Bool)

(declare-fun e!70072 () Bool)

(assert (=> b!107638 (= e!70072 tp_is_empty!2689)))

(declare-fun e!70067 () Bool)

(declare-fun e!70073 () Bool)

(assert (=> b!107639 (= e!70073 (and tp!9965 tp_is_empty!2689 (array_inv!1247 (_keys!4315 newMap!16)) (array_inv!1248 (_values!2588 newMap!16)) e!70067))))

(declare-fun res!53426 () Bool)

(assert (=> start!12530 (=> (not res!53426) (not e!70077))))

(declare-fun valid!415 (LongMap!710) Bool)

(assert (=> start!12530 (= res!53426 (valid!415 thiss!992))))

(assert (=> start!12530 e!70077))

(declare-fun e!70069 () Bool)

(assert (=> start!12530 e!70069))

(assert (=> start!12530 true))

(assert (=> start!12530 e!70073))

(declare-fun b!107640 () Bool)

(assert (=> b!107640 (= e!70066 e!70061)))

(declare-fun res!53424 () Bool)

(assert (=> b!107640 (=> (not res!53424) (not e!70061))))

(assert (=> b!107640 (= res!53424 (and (not (= (select (arr!2072 (_keys!4315 (v!2911 (underlying!366 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2072 (_keys!4315 (v!2911 (underlying!366 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1348 (ValueCell!1001 V!3233) V!3233)

(declare-fun dynLambda!390 (Int (_ BitVec 64)) V!3233)

(assert (=> b!107640 (= lt!55219 (get!1348 (select (arr!2073 (_values!2588 (v!2911 (underlying!366 thiss!992)))) from!355) (dynLambda!390 (defaultEntry!2605 (v!2911 (underlying!366 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!107641 () Bool)

(declare-fun e!70071 () Bool)

(assert (=> b!107641 (= e!70071 e!70062)))

(declare-fun b!107642 () Bool)

(assert (=> b!107642 (= e!70074 (and e!70072 mapRes!3967))))

(declare-fun condMapEmpty!3968 () Bool)

(declare-fun mapDefault!3968 () ValueCell!1001)

