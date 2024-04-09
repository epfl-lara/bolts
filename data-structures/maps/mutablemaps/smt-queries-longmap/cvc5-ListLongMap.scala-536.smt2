; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13532 () Bool)

(assert start!13532)

(declare-fun b!124086 () Bool)

(declare-fun b_free!2821 () Bool)

(declare-fun b_next!2821 () Bool)

(assert (=> b!124086 (= b_free!2821 (not b_next!2821))))

(declare-fun tp!10857 () Bool)

(declare-fun b_and!7629 () Bool)

(assert (=> b!124086 (= tp!10857 b_and!7629)))

(declare-fun b!124093 () Bool)

(declare-fun b_free!2823 () Bool)

(declare-fun b_next!2823 () Bool)

(assert (=> b!124093 (= b_free!2823 (not b_next!2823))))

(declare-fun tp!10858 () Bool)

(declare-fun b_and!7631 () Bool)

(assert (=> b!124093 (= tp!10858 b_and!7631)))

(declare-fun b!124078 () Bool)

(declare-fun e!81093 () Bool)

(declare-datatypes ((V!3417 0))(
  ( (V!3418 (val!1458 Int)) )
))
(declare-datatypes ((array!4666 0))(
  ( (array!4667 (arr!2210 (Array (_ BitVec 32) (_ BitVec 64))) (size!2473 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1070 0))(
  ( (ValueCellFull!1070 (v!3095 V!3417)) (EmptyCell!1070) )
))
(declare-datatypes ((array!4668 0))(
  ( (array!4669 (arr!2211 (Array (_ BitVec 32) ValueCell!1070)) (size!2474 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1048 0))(
  ( (LongMapFixedSize!1049 (defaultEntry!2759 Int) (mask!7002 (_ BitVec 32)) (extraKeys!2544 (_ BitVec 32)) (zeroValue!2624 V!3417) (minValue!2624 V!3417) (_size!573 (_ BitVec 32)) (_keys!4488 array!4666) (_values!2742 array!4668) (_vacant!573 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!840 0))(
  ( (Cell!841 (v!3096 LongMapFixedSize!1048)) )
))
(declare-datatypes ((LongMap!840 0))(
  ( (LongMap!841 (underlying!431 Cell!840)) )
))
(declare-fun thiss!992 () LongMap!840)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!124078 (= e!81093 (not (validMask!0 (mask!7002 (v!3096 (underlying!431 thiss!992))))))))

(declare-fun b!124079 () Bool)

(declare-fun e!81100 () Bool)

(declare-fun e!81094 () Bool)

(assert (=> b!124079 (= e!81100 e!81094)))

(declare-fun res!60182 () Bool)

(declare-fun e!81092 () Bool)

(assert (=> start!13532 (=> (not res!60182) (not e!81092))))

(declare-fun valid!493 (LongMap!840) Bool)

(assert (=> start!13532 (= res!60182 (valid!493 thiss!992))))

(assert (=> start!13532 e!81092))

(declare-fun e!81101 () Bool)

(assert (=> start!13532 e!81101))

(assert (=> start!13532 true))

(declare-fun e!81103 () Bool)

(assert (=> start!13532 e!81103))

(declare-fun b!124080 () Bool)

(declare-fun e!81099 () Bool)

(declare-fun tp_is_empty!2827 () Bool)

(assert (=> b!124080 (= e!81099 tp_is_empty!2827)))

(declare-fun b!124081 () Bool)

(declare-fun res!60185 () Bool)

(assert (=> b!124081 (=> (not res!60185) (not e!81092))))

(declare-fun newMap!16 () LongMapFixedSize!1048)

(declare-fun valid!494 (LongMapFixedSize!1048) Bool)

(assert (=> b!124081 (= res!60185 (valid!494 newMap!16))))

(declare-fun mapIsEmpty!4445 () Bool)

(declare-fun mapRes!4445 () Bool)

(assert (=> mapIsEmpty!4445 mapRes!4445))

(declare-fun mapIsEmpty!4446 () Bool)

(declare-fun mapRes!4446 () Bool)

(assert (=> mapIsEmpty!4446 mapRes!4446))

(declare-fun mapNonEmpty!4445 () Bool)

(declare-fun tp!10860 () Bool)

(declare-fun e!81098 () Bool)

(assert (=> mapNonEmpty!4445 (= mapRes!4446 (and tp!10860 e!81098))))

(declare-fun mapRest!4445 () (Array (_ BitVec 32) ValueCell!1070))

(declare-fun mapValue!4445 () ValueCell!1070)

(declare-fun mapKey!4446 () (_ BitVec 32))

(assert (=> mapNonEmpty!4445 (= (arr!2211 (_values!2742 (v!3096 (underlying!431 thiss!992)))) (store mapRest!4445 mapKey!4446 mapValue!4445))))

(declare-fun b!124082 () Bool)

(declare-fun e!81096 () Bool)

(assert (=> b!124082 (= e!81096 e!81093)))

(declare-fun res!60183 () Bool)

(assert (=> b!124082 (=> (not res!60183) (not e!81093))))

(declare-datatypes ((tuple2!2550 0))(
  ( (tuple2!2551 (_1!1285 (_ BitVec 64)) (_2!1285 V!3417)) )
))
(declare-datatypes ((List!1712 0))(
  ( (Nil!1709) (Cons!1708 (h!2309 tuple2!2550) (t!6035 List!1712)) )
))
(declare-datatypes ((ListLongMap!1675 0))(
  ( (ListLongMap!1676 (toList!853 List!1712)) )
))
(declare-fun lt!63835 () ListLongMap!1675)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!871 (ListLongMap!1675 (_ BitVec 64)) Bool)

(assert (=> b!124082 (= res!60183 (contains!871 lt!63835 (select (arr!2210 (_keys!4488 (v!3096 (underlying!431 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2552 0))(
  ( (tuple2!2553 (_1!1286 Bool) (_2!1286 LongMapFixedSize!1048)) )
))
(declare-fun lt!63833 () tuple2!2552)

(declare-fun update!179 (LongMapFixedSize!1048 (_ BitVec 64) V!3417) tuple2!2552)

(declare-fun get!1439 (ValueCell!1070 V!3417) V!3417)

(declare-fun dynLambda!412 (Int (_ BitVec 64)) V!3417)

(assert (=> b!124082 (= lt!63833 (update!179 newMap!16 (select (arr!2210 (_keys!4488 (v!3096 (underlying!431 thiss!992)))) from!355) (get!1439 (select (arr!2211 (_values!2742 (v!3096 (underlying!431 thiss!992)))) from!355) (dynLambda!412 (defaultEntry!2759 (v!3096 (underlying!431 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!124083 () Bool)

(assert (=> b!124083 (= e!81098 tp_is_empty!2827)))

(declare-fun b!124084 () Bool)

(assert (=> b!124084 (= e!81101 e!81100)))

(declare-fun b!124085 () Bool)

(declare-fun res!60184 () Bool)

(assert (=> b!124085 (=> (not res!60184) (not e!81092))))

(assert (=> b!124085 (= res!60184 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2473 (_keys!4488 (v!3096 (underlying!431 thiss!992)))))))))

(declare-fun e!81104 () Bool)

(declare-fun array_inv!1351 (array!4666) Bool)

(declare-fun array_inv!1352 (array!4668) Bool)

(assert (=> b!124086 (= e!81094 (and tp!10857 tp_is_empty!2827 (array_inv!1351 (_keys!4488 (v!3096 (underlying!431 thiss!992)))) (array_inv!1352 (_values!2742 (v!3096 (underlying!431 thiss!992)))) e!81104))))

(declare-fun b!124087 () Bool)

(declare-fun e!81106 () Bool)

(assert (=> b!124087 (= e!81106 (and e!81099 mapRes!4445))))

(declare-fun condMapEmpty!4445 () Bool)

(declare-fun mapDefault!4446 () ValueCell!1070)

