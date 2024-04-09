; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78916 () Bool)

(assert start!78916)

(declare-fun b_free!17101 () Bool)

(declare-fun b_next!17101 () Bool)

(assert (=> start!78916 (= b_free!17101 (not b_next!17101))))

(declare-fun tp!59744 () Bool)

(declare-fun b_and!27957 () Bool)

(assert (=> start!78916 (= tp!59744 b_and!27957)))

(declare-fun b!921945 () Bool)

(declare-fun res!621842 () Bool)

(declare-fun e!517350 () Bool)

(assert (=> b!921945 (=> (not res!621842) (not e!517350))))

(declare-datatypes ((array!55206 0))(
  ( (array!55207 (arr!26544 (Array (_ BitVec 32) (_ BitVec 64))) (size!27004 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55206)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55206 (_ BitVec 32)) Bool)

(assert (=> b!921945 (= res!621842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!31170 () Bool)

(declare-fun mapRes!31170 () Bool)

(declare-fun tp!59745 () Bool)

(declare-fun e!517355 () Bool)

(assert (=> mapNonEmpty!31170 (= mapRes!31170 (and tp!59745 e!517355))))

(declare-datatypes ((V!31111 0))(
  ( (V!31112 (val!9855 Int)) )
))
(declare-datatypes ((ValueCell!9323 0))(
  ( (ValueCellFull!9323 (v!12373 V!31111)) (EmptyCell!9323) )
))
(declare-fun mapRest!31170 () (Array (_ BitVec 32) ValueCell!9323))

(declare-fun mapKey!31170 () (_ BitVec 32))

(declare-fun mapValue!31170 () ValueCell!9323)

(declare-datatypes ((array!55208 0))(
  ( (array!55209 (arr!26545 (Array (_ BitVec 32) ValueCell!9323)) (size!27005 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55208)

(assert (=> mapNonEmpty!31170 (= (arr!26545 _values!1231) (store mapRest!31170 mapKey!31170 mapValue!31170))))

(declare-fun b!921946 () Bool)

(declare-fun e!517356 () Bool)

(declare-fun tp_is_empty!19609 () Bool)

(assert (=> b!921946 (= e!517356 tp_is_empty!19609)))

(declare-fun b!921947 () Bool)

(declare-fun e!517353 () Bool)

(assert (=> b!921947 (= e!517353 (and e!517356 mapRes!31170))))

(declare-fun condMapEmpty!31170 () Bool)

(declare-fun mapDefault!31170 () ValueCell!9323)

