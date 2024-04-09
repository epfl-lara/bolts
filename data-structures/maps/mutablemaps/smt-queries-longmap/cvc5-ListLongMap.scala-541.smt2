; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13972 () Bool)

(assert start!13972)

(declare-fun b!129331 () Bool)

(declare-fun b_free!2881 () Bool)

(declare-fun b_next!2881 () Bool)

(assert (=> b!129331 (= b_free!2881 (not b_next!2881))))

(declare-fun tp!11067 () Bool)

(declare-fun b_and!8013 () Bool)

(assert (=> b!129331 (= tp!11067 b_and!8013)))

(declare-fun b!129333 () Bool)

(declare-fun b_free!2883 () Bool)

(declare-fun b_next!2883 () Bool)

(assert (=> b!129333 (= b_free!2883 (not b_next!2883))))

(declare-fun tp!11068 () Bool)

(declare-fun b_and!8015 () Bool)

(assert (=> b!129333 (= tp!11068 b_and!8015)))

(declare-datatypes ((V!3457 0))(
  ( (V!3458 (val!1473 Int)) )
))
(declare-datatypes ((array!4734 0))(
  ( (array!4735 (arr!2240 (Array (_ BitVec 32) (_ BitVec 64))) (size!2506 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1085 0))(
  ( (ValueCellFull!1085 (v!3156 V!3457)) (EmptyCell!1085) )
))
(declare-datatypes ((array!4736 0))(
  ( (array!4737 (arr!2241 (Array (_ BitVec 32) ValueCell!1085)) (size!2507 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1078 0))(
  ( (LongMapFixedSize!1079 (defaultEntry!2823 Int) (mask!7101 (_ BitVec 32)) (extraKeys!2596 (_ BitVec 32)) (zeroValue!2682 V!3457) (minValue!2682 V!3457) (_size!588 (_ BitVec 32)) (_keys!4564 array!4734) (_values!2806 array!4736) (_vacant!588 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!868 0))(
  ( (Cell!869 (v!3157 LongMapFixedSize!1078)) )
))
(declare-datatypes ((LongMap!868 0))(
  ( (LongMap!869 (underlying!445 Cell!868)) )
))
(declare-fun thiss!992 () LongMap!868)

(declare-fun tp_is_empty!2857 () Bool)

(declare-fun e!84421 () Bool)

(declare-fun e!84416 () Bool)

(declare-fun array_inv!1377 (array!4734) Bool)

(declare-fun array_inv!1378 (array!4736) Bool)

(assert (=> b!129331 (= e!84421 (and tp!11067 tp_is_empty!2857 (array_inv!1377 (_keys!4564 (v!3157 (underlying!445 thiss!992)))) (array_inv!1378 (_values!2806 (v!3157 (underlying!445 thiss!992)))) e!84416))))

(declare-fun b!129332 () Bool)

(declare-fun e!84423 () Bool)

(declare-fun e!84424 () Bool)

(assert (=> b!129332 (= e!84423 e!84424)))

(declare-fun e!84422 () Bool)

(declare-fun e!84426 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!1078)

(assert (=> b!129333 (= e!84422 (and tp!11068 tp_is_empty!2857 (array_inv!1377 (_keys!4564 newMap!16)) (array_inv!1378 (_values!2806 newMap!16)) e!84426))))

(declare-fun b!129334 () Bool)

(assert (=> b!129334 (= e!84424 e!84421)))

(declare-fun b!129335 () Bool)

(declare-fun e!84425 () Bool)

(declare-fun e!84413 () Bool)

(assert (=> b!129335 (= e!84425 e!84413)))

(declare-fun res!62427 () Bool)

(assert (=> b!129335 (=> (not res!62427) (not e!84413))))

(declare-datatypes ((tuple2!2590 0))(
  ( (tuple2!2591 (_1!1305 (_ BitVec 64)) (_2!1305 V!3457)) )
))
(declare-datatypes ((List!1727 0))(
  ( (Nil!1724) (Cons!1723 (h!2327 tuple2!2590) (t!6134 List!1727)) )
))
(declare-datatypes ((ListLongMap!1697 0))(
  ( (ListLongMap!1698 (toList!864 List!1727)) )
))
(declare-fun lt!67138 () ListLongMap!1697)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!67139 () ListLongMap!1697)

(assert (=> b!129335 (= res!62427 (and (= lt!67139 lt!67138) (not (= (select (arr!2240 (_keys!4564 (v!3157 (underlying!445 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2240 (_keys!4564 (v!3157 (underlying!445 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1394 (LongMapFixedSize!1078) ListLongMap!1697)

(assert (=> b!129335 (= lt!67138 (map!1394 newMap!16))))

(declare-fun getCurrentListMap!535 (array!4734 array!4736 (_ BitVec 32) (_ BitVec 32) V!3457 V!3457 (_ BitVec 32) Int) ListLongMap!1697)

(assert (=> b!129335 (= lt!67139 (getCurrentListMap!535 (_keys!4564 (v!3157 (underlying!445 thiss!992))) (_values!2806 (v!3157 (underlying!445 thiss!992))) (mask!7101 (v!3157 (underlying!445 thiss!992))) (extraKeys!2596 (v!3157 (underlying!445 thiss!992))) (zeroValue!2682 (v!3157 (underlying!445 thiss!992))) (minValue!2682 (v!3157 (underlying!445 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2823 (v!3157 (underlying!445 thiss!992)))))))

(declare-fun b!129336 () Bool)

(declare-fun e!84419 () Bool)

(assert (=> b!129336 (= e!84419 tp_is_empty!2857)))

(declare-fun mapNonEmpty!4563 () Bool)

(declare-fun mapRes!4564 () Bool)

(declare-fun tp!11066 () Bool)

(declare-fun e!84415 () Bool)

(assert (=> mapNonEmpty!4563 (= mapRes!4564 (and tp!11066 e!84415))))

(declare-fun mapKey!4564 () (_ BitVec 32))

(declare-fun mapRest!4564 () (Array (_ BitVec 32) ValueCell!1085))

(declare-fun mapValue!4564 () ValueCell!1085)

(assert (=> mapNonEmpty!4563 (= (arr!2241 (_values!2806 newMap!16)) (store mapRest!4564 mapKey!4564 mapValue!4564))))

(declare-fun mapIsEmpty!4563 () Bool)

(declare-fun mapRes!4563 () Bool)

(assert (=> mapIsEmpty!4563 mapRes!4563))

(declare-fun b!129337 () Bool)

(declare-fun res!62426 () Bool)

(assert (=> b!129337 (=> (not res!62426) (not e!84425))))

(assert (=> b!129337 (= res!62426 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7101 newMap!16)) (_size!588 (v!3157 (underlying!445 thiss!992)))))))

(declare-fun b!129338 () Bool)

(declare-fun res!62424 () Bool)

(assert (=> b!129338 (=> (not res!62424) (not e!84425))))

(assert (=> b!129338 (= res!62424 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2506 (_keys!4564 (v!3157 (underlying!445 thiss!992)))))))))

(declare-fun b!129339 () Bool)

(declare-fun e!84417 () Bool)

(assert (=> b!129339 (= e!84426 (and e!84417 mapRes!4564))))

(declare-fun condMapEmpty!4563 () Bool)

(declare-fun mapDefault!4563 () ValueCell!1085)

