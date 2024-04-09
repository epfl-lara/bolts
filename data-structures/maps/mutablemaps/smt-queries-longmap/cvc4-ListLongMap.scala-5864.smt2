; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75746 () Bool)

(assert start!75746)

(declare-fun b!890094 () Bool)

(declare-fun b_free!15689 () Bool)

(declare-fun b_next!15689 () Bool)

(assert (=> b!890094 (= b_free!15689 (not b_next!15689))))

(declare-fun tp!55037 () Bool)

(declare-fun b_and!25947 () Bool)

(assert (=> b!890094 (= tp!55037 b_and!25947)))

(declare-fun b!890088 () Bool)

(declare-fun e!496412 () Bool)

(declare-fun tp_is_empty!18017 () Bool)

(assert (=> b!890088 (= e!496412 tp_is_empty!18017)))

(declare-fun b!890089 () Bool)

(declare-fun e!496410 () Bool)

(assert (=> b!890089 (= e!496410 tp_is_empty!18017)))

(declare-fun res!603208 () Bool)

(declare-fun e!496413 () Bool)

(assert (=> start!75746 (=> (not res!603208) (not e!496413))))

(declare-datatypes ((array!52000 0))(
  ( (array!52001 (arr!25002 (Array (_ BitVec 32) (_ BitVec 64))) (size!25447 (_ BitVec 32))) )
))
(declare-datatypes ((V!28987 0))(
  ( (V!28988 (val!9059 Int)) )
))
(declare-datatypes ((ValueCell!8527 0))(
  ( (ValueCellFull!8527 (v!11531 V!28987)) (EmptyCell!8527) )
))
(declare-datatypes ((array!52002 0))(
  ( (array!52003 (arr!25003 (Array (_ BitVec 32) ValueCell!8527)) (size!25448 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4070 0))(
  ( (LongMapFixedSize!4071 (defaultEntry!5232 Int) (mask!25694 (_ BitVec 32)) (extraKeys!4926 (_ BitVec 32)) (zeroValue!5030 V!28987) (minValue!5030 V!28987) (_size!2090 (_ BitVec 32)) (_keys!9911 array!52000) (_values!5217 array!52002) (_vacant!2090 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4070)

(declare-fun valid!1570 (LongMapFixedSize!4070) Bool)

(assert (=> start!75746 (= res!603208 (valid!1570 thiss!1181))))

(assert (=> start!75746 e!496413))

(declare-fun e!496414 () Bool)

(assert (=> start!75746 e!496414))

(assert (=> start!75746 true))

(declare-fun mapIsEmpty!28580 () Bool)

(declare-fun mapRes!28580 () Bool)

(assert (=> mapIsEmpty!28580 mapRes!28580))

(declare-fun b!890090 () Bool)

(declare-fun res!603210 () Bool)

(assert (=> b!890090 (=> (not res!603210) (not e!496413))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!890090 (= res!603210 (not (= key!785 (bvneg key!785))))))

(declare-fun mapNonEmpty!28580 () Bool)

(declare-fun tp!55036 () Bool)

(assert (=> mapNonEmpty!28580 (= mapRes!28580 (and tp!55036 e!496412))))

(declare-fun mapKey!28580 () (_ BitVec 32))

(declare-fun mapRest!28580 () (Array (_ BitVec 32) ValueCell!8527))

(declare-fun mapValue!28580 () ValueCell!8527)

(assert (=> mapNonEmpty!28580 (= (arr!25003 (_values!5217 thiss!1181)) (store mapRest!28580 mapKey!28580 mapValue!28580))))

(declare-fun b!890091 () Bool)

(declare-fun e!496415 () Bool)

(declare-datatypes ((SeekEntryResult!8788 0))(
  ( (MissingZero!8788 (index!37522 (_ BitVec 32))) (Found!8788 (index!37523 (_ BitVec 32))) (Intermediate!8788 (undefined!9600 Bool) (index!37524 (_ BitVec 32)) (x!75605 (_ BitVec 32))) (Undefined!8788) (MissingVacant!8788 (index!37525 (_ BitVec 32))) )
))
(declare-fun lt!402170 () SeekEntryResult!8788)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890091 (= e!496415 (inRange!0 (index!37523 lt!402170) (mask!25694 thiss!1181)))))

(declare-fun b!890092 () Bool)

(declare-fun e!496409 () Bool)

(assert (=> b!890092 (= e!496409 (and e!496410 mapRes!28580))))

(declare-fun condMapEmpty!28580 () Bool)

(declare-fun mapDefault!28580 () ValueCell!8527)

