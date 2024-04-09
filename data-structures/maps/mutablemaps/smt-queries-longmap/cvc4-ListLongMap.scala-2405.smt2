; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38060 () Bool)

(assert start!38060)

(declare-fun b_free!8999 () Bool)

(declare-fun b_next!8999 () Bool)

(assert (=> start!38060 (= b_free!8999 (not b_next!8999))))

(declare-fun tp!31769 () Bool)

(declare-fun b_and!16343 () Bool)

(assert (=> start!38060 (= tp!31769 b_and!16343)))

(declare-fun mapNonEmpty!16092 () Bool)

(declare-fun mapRes!16092 () Bool)

(declare-fun tp!31770 () Bool)

(declare-fun e!237215 () Bool)

(assert (=> mapNonEmpty!16092 (= mapRes!16092 (and tp!31770 e!237215))))

(declare-datatypes ((V!13999 0))(
  ( (V!14000 (val!4880 Int)) )
))
(declare-datatypes ((ValueCell!4492 0))(
  ( (ValueCellFull!4492 (v!7101 V!13999)) (EmptyCell!4492) )
))
(declare-datatypes ((array!23219 0))(
  ( (array!23220 (arr!11068 (Array (_ BitVec 32) ValueCell!4492)) (size!11420 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23219)

(declare-fun mapRest!16092 () (Array (_ BitVec 32) ValueCell!4492))

(declare-fun mapKey!16092 () (_ BitVec 32))

(declare-fun mapValue!16092 () ValueCell!4492)

(assert (=> mapNonEmpty!16092 (= (arr!11068 _values!506) (store mapRest!16092 mapKey!16092 mapValue!16092))))

(declare-fun b!391684 () Bool)

(declare-fun e!237212 () Bool)

(declare-fun e!237217 () Bool)

(assert (=> b!391684 (= e!237212 (and e!237217 mapRes!16092))))

(declare-fun condMapEmpty!16092 () Bool)

(declare-fun mapDefault!16092 () ValueCell!4492)

