; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90336 () Bool)

(assert start!90336)

(declare-fun b!1033517 () Bool)

(declare-fun b_free!20797 () Bool)

(declare-fun b_next!20797 () Bool)

(assert (=> b!1033517 (= b_free!20797 (not b_next!20797))))

(declare-fun tp!73492 () Bool)

(declare-fun b_and!33283 () Bool)

(assert (=> b!1033517 (= tp!73492 b_and!33283)))

(declare-fun b!1033516 () Bool)

(declare-fun e!584232 () Bool)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37563 0))(
  ( (V!37564 (val!12309 Int)) )
))
(declare-datatypes ((ValueCell!11555 0))(
  ( (ValueCellFull!11555 (v!14887 V!37563)) (EmptyCell!11555) )
))
(declare-datatypes ((array!65098 0))(
  ( (array!65099 (arr!31339 (Array (_ BitVec 32) (_ BitVec 64))) (size!31862 (_ BitVec 32))) )
))
(declare-datatypes ((array!65100 0))(
  ( (array!65101 (arr!31340 (Array (_ BitVec 32) ValueCell!11555)) (size!31863 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5704 0))(
  ( (LongMapFixedSize!5705 (defaultEntry!6226 Int) (mask!30078 (_ BitVec 32)) (extraKeys!5958 (_ BitVec 32)) (zeroValue!6062 V!37563) (minValue!6062 V!37563) (_size!2907 (_ BitVec 32)) (_keys!11403 array!65098) (_values!6249 array!65100) (_vacant!2907 (_ BitVec 32))) )
))
(declare-fun lt!456093 () LongMapFixedSize!5704)

(declare-fun thiss!1427 () LongMapFixedSize!5704)

(declare-datatypes ((tuple2!15832 0))(
  ( (tuple2!15833 (_1!7926 (_ BitVec 64)) (_2!7926 V!37563)) )
))
(declare-datatypes ((List!22021 0))(
  ( (Nil!22018) (Cons!22017 (h!23219 tuple2!15832) (t!31224 List!22021)) )
))
(declare-datatypes ((ListLongMap!13869 0))(
  ( (ListLongMap!13870 (toList!6950 List!22021)) )
))
(declare-fun map!14706 (LongMapFixedSize!5704) ListLongMap!13869)

(declare-fun -!526 (ListLongMap!13869 (_ BitVec 64)) ListLongMap!13869)

(assert (=> b!1033516 (= e!584232 (= (map!14706 lt!456093) (-!526 (map!14706 thiss!1427) key!909)))))

(declare-fun e!584229 () Bool)

(declare-fun tp_is_empty!24517 () Bool)

(declare-fun e!584234 () Bool)

(declare-fun array_inv!24079 (array!65098) Bool)

(declare-fun array_inv!24080 (array!65100) Bool)

(assert (=> b!1033517 (= e!584234 (and tp!73492 tp_is_empty!24517 (array_inv!24079 (_keys!11403 thiss!1427)) (array_inv!24080 (_values!6249 thiss!1427)) e!584229))))

(declare-fun res!690631 () Bool)

(declare-fun e!584231 () Bool)

(assert (=> start!90336 (=> (not res!690631) (not e!584231))))

(declare-fun valid!2104 (LongMapFixedSize!5704) Bool)

(assert (=> start!90336 (= res!690631 (valid!2104 thiss!1427))))

(assert (=> start!90336 e!584231))

(assert (=> start!90336 e!584234))

(assert (=> start!90336 true))

(declare-fun b!1033518 () Bool)

(declare-fun e!584233 () Bool)

(assert (=> b!1033518 (= e!584233 tp_is_empty!24517)))

(declare-fun b!1033519 () Bool)

(declare-fun res!690632 () Bool)

(assert (=> b!1033519 (=> (not res!690632) (not e!584231))))

(assert (=> b!1033519 (= res!690632 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1033520 () Bool)

(declare-fun e!584228 () Bool)

(assert (=> b!1033520 (= e!584228 tp_is_empty!24517)))

(declare-fun b!1033521 () Bool)

(declare-fun mapRes!38258 () Bool)

(assert (=> b!1033521 (= e!584229 (and e!584233 mapRes!38258))))

(declare-fun condMapEmpty!38258 () Bool)

(declare-fun mapDefault!38258 () ValueCell!11555)

