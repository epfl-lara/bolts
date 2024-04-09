; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13438 () Bool)

(assert start!13438)

(declare-fun b!123054 () Bool)

(declare-fun b_free!2785 () Bool)

(declare-fun b_next!2785 () Bool)

(assert (=> b!123054 (= b_free!2785 (not b_next!2785))))

(declare-fun tp!10744 () Bool)

(declare-fun b_and!7561 () Bool)

(assert (=> b!123054 (= tp!10744 b_and!7561)))

(declare-fun b!123058 () Bool)

(declare-fun b_free!2787 () Bool)

(declare-fun b_next!2787 () Bool)

(assert (=> b!123058 (= b_free!2787 (not b_next!2787))))

(declare-fun tp!10743 () Bool)

(declare-fun b_and!7563 () Bool)

(assert (=> b!123058 (= tp!10743 b_and!7563)))

(declare-fun mapIsEmpty!4383 () Bool)

(declare-fun mapRes!4383 () Bool)

(assert (=> mapIsEmpty!4383 mapRes!4383))

(declare-fun b!123046 () Bool)

(declare-fun res!59807 () Bool)

(declare-fun e!80352 () Bool)

(assert (=> b!123046 (=> (not res!59807) (not e!80352))))

(declare-datatypes ((V!3393 0))(
  ( (V!3394 (val!1449 Int)) )
))
(declare-datatypes ((array!4628 0))(
  ( (array!4629 (arr!2192 (Array (_ BitVec 32) (_ BitVec 64))) (size!2454 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1061 0))(
  ( (ValueCellFull!1061 (v!3074 V!3393)) (EmptyCell!1061) )
))
(declare-datatypes ((array!4630 0))(
  ( (array!4631 (arr!2193 (Array (_ BitVec 32) ValueCell!1061)) (size!2455 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1030 0))(
  ( (LongMapFixedSize!1031 (defaultEntry!2748 Int) (mask!6982 (_ BitVec 32)) (extraKeys!2533 (_ BitVec 32)) (zeroValue!2613 V!3393) (minValue!2613 V!3393) (_size!564 (_ BitVec 32)) (_keys!4475 array!4628) (_values!2731 array!4630) (_vacant!564 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1030)

(declare-datatypes ((Cell!822 0))(
  ( (Cell!823 (v!3075 LongMapFixedSize!1030)) )
))
(declare-datatypes ((LongMap!822 0))(
  ( (LongMap!823 (underlying!422 Cell!822)) )
))
(declare-fun thiss!992 () LongMap!822)

(assert (=> b!123046 (= res!59807 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6982 newMap!16)) (_size!564 (v!3075 (underlying!422 thiss!992)))))))

(declare-fun b!123047 () Bool)

(declare-fun e!80353 () Bool)

(declare-fun e!80361 () Bool)

(assert (=> b!123047 (= e!80353 e!80361)))

(declare-fun b!123048 () Bool)

(declare-fun e!80360 () Bool)

(declare-fun tp_is_empty!2809 () Bool)

(assert (=> b!123048 (= e!80360 tp_is_empty!2809)))

(declare-fun b!123049 () Bool)

(declare-fun res!59806 () Bool)

(assert (=> b!123049 (=> (not res!59806) (not e!80352))))

(declare-fun valid!484 (LongMapFixedSize!1030) Bool)

(assert (=> b!123049 (= res!59806 (valid!484 newMap!16))))

(declare-fun res!59808 () Bool)

(assert (=> start!13438 (=> (not res!59808) (not e!80352))))

(declare-fun valid!485 (LongMap!822) Bool)

(assert (=> start!13438 (= res!59808 (valid!485 thiss!992))))

(assert (=> start!13438 e!80352))

(declare-fun e!80354 () Bool)

(assert (=> start!13438 e!80354))

(assert (=> start!13438 true))

(declare-fun e!80362 () Bool)

(assert (=> start!13438 e!80362))

(declare-fun b!123050 () Bool)

(declare-fun e!80359 () Bool)

(assert (=> b!123050 (= e!80359 tp_is_empty!2809)))

(declare-fun b!123051 () Bool)

(assert (=> b!123051 (= e!80354 e!80353)))

(declare-fun b!123052 () Bool)

(declare-fun res!59805 () Bool)

(assert (=> b!123052 (=> (not res!59805) (not e!80352))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!123052 (= res!59805 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2454 (_keys!4475 (v!3075 (underlying!422 thiss!992)))))))))

(declare-fun b!123053 () Bool)

(assert (=> b!123053 (= e!80352 false)))

(declare-datatypes ((tuple2!2540 0))(
  ( (tuple2!2541 (_1!1280 (_ BitVec 64)) (_2!1280 V!3393)) )
))
(declare-datatypes ((List!1706 0))(
  ( (Nil!1703) (Cons!1702 (h!2303 tuple2!2540) (t!6017 List!1706)) )
))
(declare-datatypes ((ListLongMap!1665 0))(
  ( (ListLongMap!1666 (toList!848 List!1706)) )
))
(declare-fun lt!63433 () ListLongMap!1665)

(declare-fun map!1364 (LongMapFixedSize!1030) ListLongMap!1665)

(assert (=> b!123053 (= lt!63433 (map!1364 newMap!16))))

(declare-fun lt!63432 () ListLongMap!1665)

(declare-fun getCurrentListMap!521 (array!4628 array!4630 (_ BitVec 32) (_ BitVec 32) V!3393 V!3393 (_ BitVec 32) Int) ListLongMap!1665)

(assert (=> b!123053 (= lt!63432 (getCurrentListMap!521 (_keys!4475 (v!3075 (underlying!422 thiss!992))) (_values!2731 (v!3075 (underlying!422 thiss!992))) (mask!6982 (v!3075 (underlying!422 thiss!992))) (extraKeys!2533 (v!3075 (underlying!422 thiss!992))) (zeroValue!2613 (v!3075 (underlying!422 thiss!992))) (minValue!2613 (v!3075 (underlying!422 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2748 (v!3075 (underlying!422 thiss!992)))))))

(declare-fun mapIsEmpty!4384 () Bool)

(declare-fun mapRes!4384 () Bool)

(assert (=> mapIsEmpty!4384 mapRes!4384))

(declare-fun e!80356 () Bool)

(declare-fun array_inv!1337 (array!4628) Bool)

(declare-fun array_inv!1338 (array!4630) Bool)

(assert (=> b!123054 (= e!80361 (and tp!10744 tp_is_empty!2809 (array_inv!1337 (_keys!4475 (v!3075 (underlying!422 thiss!992)))) (array_inv!1338 (_values!2731 (v!3075 (underlying!422 thiss!992)))) e!80356))))

(declare-fun mapNonEmpty!4383 () Bool)

(declare-fun tp!10741 () Bool)

(assert (=> mapNonEmpty!4383 (= mapRes!4383 (and tp!10741 e!80360))))

(declare-fun mapKey!4383 () (_ BitVec 32))

(declare-fun mapValue!4383 () ValueCell!1061)

(declare-fun mapRest!4383 () (Array (_ BitVec 32) ValueCell!1061))

(assert (=> mapNonEmpty!4383 (= (arr!2193 (_values!2731 (v!3075 (underlying!422 thiss!992)))) (store mapRest!4383 mapKey!4383 mapValue!4383))))

(declare-fun b!123055 () Bool)

(declare-fun e!80363 () Bool)

(declare-fun e!80351 () Bool)

(assert (=> b!123055 (= e!80363 (and e!80351 mapRes!4384))))

(declare-fun condMapEmpty!4383 () Bool)

(declare-fun mapDefault!4383 () ValueCell!1061)

