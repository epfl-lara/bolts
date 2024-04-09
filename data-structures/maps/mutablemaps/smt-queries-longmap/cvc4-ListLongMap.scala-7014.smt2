; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89128 () Bool)

(assert start!89128)

(declare-fun b!1021375 () Bool)

(declare-fun b_free!20141 () Bool)

(declare-fun b_next!20141 () Bool)

(assert (=> b!1021375 (= b_free!20141 (not b_next!20141))))

(declare-fun tp!71455 () Bool)

(declare-fun b_and!32357 () Bool)

(assert (=> b!1021375 (= tp!71455 b_and!32357)))

(declare-fun b!1021373 () Bool)

(declare-fun e!575306 () Bool)

(declare-fun e!575302 () Bool)

(assert (=> b!1021373 (= e!575306 e!575302)))

(declare-fun b!1021374 () Bool)

(declare-fun e!575307 () Bool)

(assert (=> b!1021374 (= e!575302 e!575307)))

(declare-fun res!684432 () Bool)

(declare-fun e!575308 () Bool)

(assert (=> start!89128 (=> (not res!684432) (not e!575308))))

(declare-datatypes ((array!63748 0))(
  ( (array!63749 (arr!30683 (Array (_ BitVec 32) (_ BitVec 64))) (size!31195 (_ BitVec 32))) )
))
(declare-datatypes ((V!36687 0))(
  ( (V!36688 (val!11981 Int)) )
))
(declare-datatypes ((ValueCell!11227 0))(
  ( (ValueCellFull!11227 (v!14550 V!36687)) (EmptyCell!11227) )
))
(declare-datatypes ((array!63750 0))(
  ( (array!63751 (arr!30684 (Array (_ BitVec 32) ValueCell!11227)) (size!31196 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5048 0))(
  ( (LongMapFixedSize!5049 (defaultEntry!5876 Int) (mask!29440 (_ BitVec 32)) (extraKeys!5608 (_ BitVec 32)) (zeroValue!5712 V!36687) (minValue!5712 V!36687) (_size!2579 (_ BitVec 32)) (_keys!11018 array!63748) (_values!5899 array!63750) (_vacant!2579 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1116 0))(
  ( (Cell!1117 (v!14551 LongMapFixedSize!5048)) )
))
(declare-datatypes ((LongMap!1116 0))(
  ( (LongMap!1117 (underlying!569 Cell!1116)) )
))
(declare-fun thiss!1120 () LongMap!1116)

(declare-fun valid!1892 (LongMap!1116) Bool)

(assert (=> start!89128 (= res!684432 (valid!1892 thiss!1120))))

(assert (=> start!89128 e!575308))

(assert (=> start!89128 e!575306))

(declare-fun mapIsEmpty!37206 () Bool)

(declare-fun mapRes!37206 () Bool)

(assert (=> mapIsEmpty!37206 mapRes!37206))

(declare-fun tp_is_empty!23861 () Bool)

(declare-fun e!575301 () Bool)

(declare-fun array_inv!23657 (array!63748) Bool)

(declare-fun array_inv!23658 (array!63750) Bool)

(assert (=> b!1021375 (= e!575307 (and tp!71455 tp_is_empty!23861 (array_inv!23657 (_keys!11018 (v!14551 (underlying!569 thiss!1120)))) (array_inv!23658 (_values!5899 (v!14551 (underlying!569 thiss!1120)))) e!575301))))

(declare-fun mapNonEmpty!37206 () Bool)

(declare-fun tp!71456 () Bool)

(declare-fun e!575303 () Bool)

(assert (=> mapNonEmpty!37206 (= mapRes!37206 (and tp!71456 e!575303))))

(declare-fun mapValue!37206 () ValueCell!11227)

(declare-fun mapKey!37206 () (_ BitVec 32))

(declare-fun mapRest!37206 () (Array (_ BitVec 32) ValueCell!11227))

(assert (=> mapNonEmpty!37206 (= (arr!30684 (_values!5899 (v!14551 (underlying!569 thiss!1120)))) (store mapRest!37206 mapKey!37206 mapValue!37206))))

(declare-fun b!1021376 () Bool)

(declare-fun e!575304 () Bool)

(assert (=> b!1021376 (= e!575301 (and e!575304 mapRes!37206))))

(declare-fun condMapEmpty!37206 () Bool)

(declare-fun mapDefault!37206 () ValueCell!11227)

