; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113602 () Bool)

(assert start!113602)

(declare-fun b_free!31559 () Bool)

(declare-fun b_next!31559 () Bool)

(assert (=> start!113602 (= b_free!31559 (not b_next!31559))))

(declare-fun tp!110486 () Bool)

(declare-fun b_and!50917 () Bool)

(assert (=> start!113602 (= tp!110486 b_and!50917)))

(declare-fun b!1348162 () Bool)

(declare-fun res!894625 () Bool)

(declare-fun e!766969 () Bool)

(assert (=> b!1348162 (=> (not res!894625) (not e!766969))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91907 0))(
  ( (array!91908 (arr!44404 (Array (_ BitVec 32) (_ BitVec 64))) (size!44955 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91907)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!55181 0))(
  ( (V!55182 (val!18854 Int)) )
))
(declare-datatypes ((ValueCell!17881 0))(
  ( (ValueCellFull!17881 (v!21503 V!55181)) (EmptyCell!17881) )
))
(declare-datatypes ((array!91909 0))(
  ( (array!91910 (arr!44405 (Array (_ BitVec 32) ValueCell!17881)) (size!44956 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91909)

(assert (=> b!1348162 (= res!894625 (and (= (size!44956 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44955 _keys!1571) (size!44956 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1348163 () Bool)

(declare-fun res!894622 () Bool)

(assert (=> b!1348163 (=> (not res!894622) (not e!766969))))

(assert (=> b!1348163 (= res!894622 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!894624 () Bool)

(assert (=> start!113602 (=> (not res!894624) (not e!766969))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113602 (= res!894624 (validMask!0 mask!1977))))

(assert (=> start!113602 e!766969))

(declare-fun tp_is_empty!37559 () Bool)

(assert (=> start!113602 tp_is_empty!37559))

(assert (=> start!113602 true))

(declare-fun array_inv!33361 (array!91907) Bool)

(assert (=> start!113602 (array_inv!33361 _keys!1571)))

(declare-fun e!766968 () Bool)

(declare-fun array_inv!33362 (array!91909) Bool)

(assert (=> start!113602 (and (array_inv!33362 _values!1303) e!766968)))

(assert (=> start!113602 tp!110486))

(declare-fun mapIsEmpty!58049 () Bool)

(declare-fun mapRes!58049 () Bool)

(assert (=> mapIsEmpty!58049 mapRes!58049))

(declare-fun b!1348164 () Bool)

(declare-fun e!766966 () Bool)

(assert (=> b!1348164 (= e!766968 (and e!766966 mapRes!58049))))

(declare-fun condMapEmpty!58049 () Bool)

(declare-fun mapDefault!58049 () ValueCell!17881)

