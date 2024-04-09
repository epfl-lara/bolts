; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89300 () Bool)

(assert start!89300)

(declare-fun b!1023519 () Bool)

(declare-fun b_free!20305 () Bool)

(declare-fun b_next!20305 () Bool)

(assert (=> b!1023519 (= b_free!20305 (not b_next!20305))))

(declare-fun tp!71951 () Bool)

(declare-fun b_and!32545 () Bool)

(assert (=> b!1023519 (= tp!71951 b_and!32545)))

(declare-fun b!1023518 () Bool)

(declare-fun e!576789 () Bool)

(declare-fun tp_is_empty!24025 () Bool)

(assert (=> b!1023518 (= e!576789 tp_is_empty!24025)))

(declare-fun mapIsEmpty!37455 () Bool)

(declare-fun mapRes!37455 () Bool)

(assert (=> mapIsEmpty!37455 mapRes!37455))

(declare-datatypes ((V!36907 0))(
  ( (V!36908 (val!12063 Int)) )
))
(declare-datatypes ((ValueCell!11309 0))(
  ( (ValueCellFull!11309 (v!14633 V!36907)) (EmptyCell!11309) )
))
(declare-datatypes ((array!64078 0))(
  ( (array!64079 (arr!30847 (Array (_ BitVec 32) (_ BitVec 64))) (size!31359 (_ BitVec 32))) )
))
(declare-datatypes ((array!64080 0))(
  ( (array!64081 (arr!30848 (Array (_ BitVec 32) ValueCell!11309)) (size!31360 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5212 0))(
  ( (LongMapFixedSize!5213 (defaultEntry!5958 Int) (mask!29578 (_ BitVec 32)) (extraKeys!5690 (_ BitVec 32)) (zeroValue!5794 V!36907) (minValue!5794 V!36907) (_size!2661 (_ BitVec 32)) (_keys!11100 array!64078) (_values!5981 array!64080) (_vacant!2661 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5212)

(declare-fun e!576791 () Bool)

(declare-fun e!576790 () Bool)

(declare-fun array_inv!23769 (array!64078) Bool)

(declare-fun array_inv!23770 (array!64080) Bool)

(assert (=> b!1023519 (= e!576790 (and tp!71951 tp_is_empty!24025 (array_inv!23769 (_keys!11100 thiss!1427)) (array_inv!23770 (_values!5981 thiss!1427)) e!576791))))

(declare-fun b!1023520 () Bool)

(assert (=> b!1023520 (= e!576791 (and e!576789 mapRes!37455))))

(declare-fun condMapEmpty!37455 () Bool)

(declare-fun mapDefault!37455 () ValueCell!11309)

