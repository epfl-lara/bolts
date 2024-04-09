; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13086 () Bool)

(assert start!13086)

(declare-fun b!114378 () Bool)

(declare-fun b_free!2625 () Bool)

(declare-fun b_next!2625 () Bool)

(assert (=> b!114378 (= b_free!2625 (not b_next!2625))))

(declare-fun tp!10234 () Bool)

(declare-fun b_and!7065 () Bool)

(assert (=> b!114378 (= tp!10234 b_and!7065)))

(declare-fun b!114371 () Bool)

(declare-fun b_free!2627 () Bool)

(declare-fun b_next!2627 () Bool)

(assert (=> b!114371 (= b_free!2627 (not b_next!2627))))

(declare-fun tp!10233 () Bool)

(declare-fun b_and!7067 () Bool)

(assert (=> b!114371 (= tp!10233 b_and!7067)))

(declare-fun b!114369 () Bool)

(declare-fun e!74406 () Bool)

(declare-fun tp_is_empty!2729 () Bool)

(assert (=> b!114369 (= e!74406 tp_is_empty!2729)))

(declare-fun b!114370 () Bool)

(declare-fun e!74412 () Bool)

(declare-fun e!74409 () Bool)

(assert (=> b!114370 (= e!74412 e!74409)))

(declare-fun res!56289 () Bool)

(assert (=> b!114370 (=> (not res!56289) (not e!74409))))

(declare-datatypes ((V!3285 0))(
  ( (V!3286 (val!1409 Int)) )
))
(declare-datatypes ((tuple2!2462 0))(
  ( (tuple2!2463 (_1!1241 (_ BitVec 64)) (_2!1241 V!3285)) )
))
(declare-datatypes ((List!1671 0))(
  ( (Nil!1668) (Cons!1667 (h!2267 tuple2!2462) (t!5901 List!1671)) )
))
(declare-datatypes ((ListLongMap!1615 0))(
  ( (ListLongMap!1616 (toList!823 List!1671)) )
))
(declare-fun lt!59511 () ListLongMap!1615)

(declare-fun lt!59519 () ListLongMap!1615)

(assert (=> b!114370 (= res!56289 (= lt!59511 lt!59519))))

(declare-datatypes ((array!4458 0))(
  ( (array!4459 (arr!2112 (Array (_ BitVec 32) (_ BitVec 64))) (size!2372 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1021 0))(
  ( (ValueCellFull!1021 (v!2983 V!3285)) (EmptyCell!1021) )
))
(declare-datatypes ((array!4460 0))(
  ( (array!4461 (arr!2113 (Array (_ BitVec 32) ValueCell!1021)) (size!2373 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!950 0))(
  ( (LongMapFixedSize!951 (defaultEntry!2681 Int) (mask!6875 (_ BitVec 32)) (extraKeys!2470 (_ BitVec 32)) (zeroValue!2548 V!3285) (minValue!2548 V!3285) (_size!524 (_ BitVec 32)) (_keys!4403 array!4458) (_values!2664 array!4460) (_vacant!524 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!950)

(declare-fun map!1314 (LongMapFixedSize!950) ListLongMap!1615)

(assert (=> b!114370 (= lt!59519 (map!1314 newMap!16))))

(declare-datatypes ((Cell!748 0))(
  ( (Cell!749 (v!2984 LongMapFixedSize!950)) )
))
(declare-datatypes ((LongMap!748 0))(
  ( (LongMap!749 (underlying!385 Cell!748)) )
))
(declare-fun thiss!992 () LongMap!748)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!499 (array!4458 array!4460 (_ BitVec 32) (_ BitVec 32) V!3285 V!3285 (_ BitVec 32) Int) ListLongMap!1615)

(assert (=> b!114370 (= lt!59511 (getCurrentListMap!499 (_keys!4403 (v!2984 (underlying!385 thiss!992))) (_values!2664 (v!2984 (underlying!385 thiss!992))) (mask!6875 (v!2984 (underlying!385 thiss!992))) (extraKeys!2470 (v!2984 (underlying!385 thiss!992))) (zeroValue!2548 (v!2984 (underlying!385 thiss!992))) (minValue!2548 (v!2984 (underlying!385 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2681 (v!2984 (underlying!385 thiss!992)))))))

(declare-fun e!74407 () Bool)

(declare-fun e!74413 () Bool)

(declare-fun array_inv!1273 (array!4458) Bool)

(declare-fun array_inv!1274 (array!4460) Bool)

(assert (=> b!114371 (= e!74413 (and tp!10233 tp_is_empty!2729 (array_inv!1273 (_keys!4403 newMap!16)) (array_inv!1274 (_values!2664 newMap!16)) e!74407))))

(declare-fun b!114372 () Bool)

(declare-fun e!74403 () Bool)

(declare-fun e!74416 () Bool)

(declare-fun mapRes!4116 () Bool)

(assert (=> b!114372 (= e!74403 (and e!74416 mapRes!4116))))

(declare-fun condMapEmpty!4115 () Bool)

(declare-fun mapDefault!4115 () ValueCell!1021)

