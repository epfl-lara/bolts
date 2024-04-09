; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79922 () Bool)

(assert start!79922)

(declare-fun b!939456 () Bool)

(declare-fun b_free!17791 () Bool)

(declare-fun b_next!17791 () Bool)

(assert (=> b!939456 (= b_free!17791 (not b_next!17791))))

(declare-fun tp!61838 () Bool)

(declare-fun b_and!29221 () Bool)

(assert (=> b!939456 (= tp!61838 b_and!29221)))

(declare-fun e!527763 () Bool)

(declare-fun e!527761 () Bool)

(declare-datatypes ((V!32031 0))(
  ( (V!32032 (val!10200 Int)) )
))
(declare-datatypes ((ValueCell!9668 0))(
  ( (ValueCellFull!9668 (v!12731 V!32031)) (EmptyCell!9668) )
))
(declare-datatypes ((array!56562 0))(
  ( (array!56563 (arr!27215 (Array (_ BitVec 32) ValueCell!9668)) (size!27675 (_ BitVec 32))) )
))
(declare-datatypes ((array!56564 0))(
  ( (array!56565 (arr!27216 (Array (_ BitVec 32) (_ BitVec 64))) (size!27676 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4486 0))(
  ( (LongMapFixedSize!4487 (defaultEntry!5534 Int) (mask!27043 (_ BitVec 32)) (extraKeys!5266 (_ BitVec 32)) (zeroValue!5370 V!32031) (minValue!5370 V!32031) (_size!2298 (_ BitVec 32)) (_keys!10378 array!56564) (_values!5557 array!56562) (_vacant!2298 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4486)

(declare-fun tp_is_empty!20299 () Bool)

(declare-fun array_inv!21118 (array!56564) Bool)

(declare-fun array_inv!21119 (array!56562) Bool)

(assert (=> b!939456 (= e!527763 (and tp!61838 tp_is_empty!20299 (array_inv!21118 (_keys!10378 thiss!1141)) (array_inv!21119 (_values!5557 thiss!1141)) e!527761))))

(declare-fun mapIsEmpty!32228 () Bool)

(declare-fun mapRes!32228 () Bool)

(assert (=> mapIsEmpty!32228 mapRes!32228))

(declare-fun b!939457 () Bool)

(declare-fun e!527760 () Bool)

(assert (=> b!939457 (= e!527760 tp_is_empty!20299)))

(declare-fun b!939458 () Bool)

(declare-fun e!527762 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!939458 (= e!527762 (not (validMask!0 (mask!27043 thiss!1141))))))

(declare-fun mapNonEmpty!32228 () Bool)

(declare-fun tp!61837 () Bool)

(assert (=> mapNonEmpty!32228 (= mapRes!32228 (and tp!61837 e!527760))))

(declare-fun mapValue!32228 () ValueCell!9668)

(declare-fun mapKey!32228 () (_ BitVec 32))

(declare-fun mapRest!32228 () (Array (_ BitVec 32) ValueCell!9668))

(assert (=> mapNonEmpty!32228 (= (arr!27215 (_values!5557 thiss!1141)) (store mapRest!32228 mapKey!32228 mapValue!32228))))

(declare-fun res!631963 () Bool)

(assert (=> start!79922 (=> (not res!631963) (not e!527762))))

(declare-fun valid!1705 (LongMapFixedSize!4486) Bool)

(assert (=> start!79922 (= res!631963 (valid!1705 thiss!1141))))

(assert (=> start!79922 e!527762))

(assert (=> start!79922 e!527763))

(assert (=> start!79922 true))

(declare-fun b!939459 () Bool)

(declare-fun e!527764 () Bool)

(assert (=> b!939459 (= e!527764 tp_is_empty!20299)))

(declare-fun b!939460 () Bool)

(assert (=> b!939460 (= e!527761 (and e!527764 mapRes!32228))))

(declare-fun condMapEmpty!32228 () Bool)

(declare-fun mapDefault!32228 () ValueCell!9668)

