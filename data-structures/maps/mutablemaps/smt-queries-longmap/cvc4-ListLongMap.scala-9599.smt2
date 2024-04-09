; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113496 () Bool)

(assert start!113496)

(declare-fun b_free!31511 () Bool)

(declare-fun b_next!31511 () Bool)

(assert (=> start!113496 (= b_free!31511 (not b_next!31511))))

(declare-fun tp!110339 () Bool)

(declare-fun b_and!50809 () Bool)

(assert (=> start!113496 (= tp!110339 b_and!50809)))

(declare-fun b!1346868 () Bool)

(declare-fun res!893819 () Bool)

(declare-fun e!766364 () Bool)

(assert (=> b!1346868 (=> (not res!893819) (not e!766364))))

(declare-datatypes ((array!91811 0))(
  ( (array!91812 (arr!44357 (Array (_ BitVec 32) (_ BitVec 64))) (size!44908 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91811)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1346868 (= res!893819 (validKeyInArray!0 (select (arr!44357 _keys!1571) from!1960)))))

(declare-fun b!1346869 () Bool)

(declare-fun e!766365 () Bool)

(declare-fun e!766363 () Bool)

(declare-fun mapRes!57973 () Bool)

(assert (=> b!1346869 (= e!766365 (and e!766363 mapRes!57973))))

(declare-fun condMapEmpty!57973 () Bool)

(declare-datatypes ((V!55117 0))(
  ( (V!55118 (val!18830 Int)) )
))
(declare-datatypes ((ValueCell!17857 0))(
  ( (ValueCellFull!17857 (v!21476 V!55117)) (EmptyCell!17857) )
))
(declare-datatypes ((array!91813 0))(
  ( (array!91814 (arr!44358 (Array (_ BitVec 32) ValueCell!17857)) (size!44909 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91813)

(declare-fun mapDefault!57973 () ValueCell!17857)

